
# BUYIT
# Aryan khatana (2021237)
# Aryesh Shakya (2021238)


import mysql.connector
from rich import print
from rich.console import Console
from rich.table import Table

console = Console()

db = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="1234",
    database="buyit"
)

cursor = db.cursor()

trigger_1 = """CREATE TRIGGER delete_vendor_products
                BEFORE DELETE ON vendor
                FOR EACH ROW
                DELETE FROM products WHERE vendor_id = OLD.vendor_id;"""

trigger_2 = """CREATE TRIGGER delete_from_cart
                                        BEFORE DELETE ON cart
                                        FOR EACH ROW
                                        UPDATE products SET product_qty = product_qty + 1 WHERE product_id = OLD.productID;"""


OLAP = {
    1: "select customerID, count(customerID) from cart group by customerID with rollup;",
    2: "select distinct payment_status, delivery_status, sum(net_amount) from orders group by payment_status, delivery_status with rollup union select distinct payment_status, delivery_status, sum(net_amount) from orders group by delivery_status, payment_status with rollup;",
    3: "select p.vendor_id, p.category_id, max(v.vendor_name) as vendor_name,  avg(product_rating) as avg_rating from  products as p inner join  vendor AS v on p.vendor_id = v.vendor_id GROUP BY p.vendor_id, p.category_id with rollup;",
    4: "select distinct vendor_id, category_id, avg(product_price) from products group by vendor_id, category_id with rollup union select distinct vendor_id, category_id, avg(product_price) from products group by category_id, vendor_id with rollup;"
}
DISCOUNT = 0
while True:
    print("[blue]========== Welcome to BuyIt! ==========[/blue]")
    print("1. Sign Up")
    print("2. Log In")
    ch1 = input("Enter your choice: ")
    if ch1 == "1":  # sign up
        print("1. Sign up as customer")
        print("2. Sign up as vendor")
        ch12 = input("Enter your choice: ")
        if ch12 == "1":  # sign up as customer
            cursor.execute("SELECT * FROM customer;")
            last_entry = list(cursor)[-1]
            last_id = list(last_entry)[0]
            new_id = last_id + 1
            name = input("Enter your name: ")
            email = input("Enter your email: ")
            password = input("Enter your password: ")
            address = input("Enter your address: ")
            number = input("Enter your phone number: ")
            cursor.execute("INSERT INTO customer VALUES (" + str(new_id) + ", '" + name + "', '" + email + "', '" + password + "', '" + address + "', '" + number + "');")
            db.commit()
            print("[green]Sign up successful![/green]")
        elif ch12 == "2":  # sign up as vendor
            cursor.execute("SELECT * FROM vendor;")
            last_entry = list(cursor)[-1]
            last_id = list(last_entry)[0]
            new_id = last_id + 1
            name = input("Enter your name: ")
            passw = input("Enter your password: ")
            addre = input("Enter your address: ")
            num = input("Enter your phone number: ")
            adm_id = '1'
            cursor.execute("INSERT INTO vendor VALUES (" + str(new_id) + ", '" + name + "', '" + passw + "', '" + addre + "', '" + num + "', " + adm_id + ");")
            db.commit()
            print("[green]Sign up successful![/green]")
    else:
        print("1. Login as admin")
        print("2. Login as customer")
        print("3. Login as vendor")
        print("4. Login as delivery agent")
        print("5. Exit")

        choice = input("Enter your choice: ")
        if choice == "1":  # admin login
            username = input("Enter your username: ")
            password = input("Enter your password: ")
            cursor.execute("SELECT * FROM admin WHERE admin_email = '" + username + "' AND admin_pass = '" + password + "';")
            if cursor.fetchone() is None:
                print("[red]Invalid username or password![/red]")
            else:
                print("[green]Login successful![/green]")
                while True:
                    print("[blue]+++++++++++++ Admin Menu +++++++++++++[/blue]")
                    print("1. Delete Vendor")
                    print("2. Show Website stats")
                    print("3. Logout")
                    print("4. Add Discount")
                    ch4 = input("Enter your choice: ")

                    if ch4 == "1":
                        # create an sql trigger to also delete the products of the vendor while deleting the vendor
                        vendor_id = input("Enter vendor id: ")
                        try:
                            cursor.execute(trigger_1)
                        except:
                            pass
                        db.commit()
                        cursor.execute("DELETE FROM vendor WHERE vendor_id = " + vendor_id + ";")
                        db.commit()
                        print("Vendor deleted successfully!")
                    
                    elif ch4 == "2":
                        print("1. Display how many products are in customers cart which havent delivered or ordered yet")
                        print("2. Display the total amount with regards to payment status and delivery status")
                        print("3. Display the average rating of each vendor's products on each category")
                        print("4. Display the average product price category wise and vendor wise in a cube fashion ")
                        ch8 = input("Enter your choice: ")
                        if ch8 == "1":
                            table = Table(show_header=True, header_style="bold")
                            cursor.execute(OLAP[1])
                            print("Customer ID\t\tNumber of products")
                            table.add_column("Customer ID", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Number of products", justify="center", style="cyan", no_wrap=True)

                            for x in cursor:
                                # print(x)
                                table.add_row(str(x[0]), str(x[1]))
                            console.print(table)
                        elif ch8 == "2":
                            table = Table(show_header=True, header_style="bold")
                            cursor.execute(OLAP[2])
                            print("Payment Status\t\tDelivery Status\t\tNet Amount")
                            table.add_column("Payment Status", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Delivery Status", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Net Amount", justify="center", style="cyan", no_wrap=True)

                            for x in cursor:
                                # print(x)
                                table.add_row(str(x[0]), str(x[1]), str(x[2]))
                            console.print(table)
                        elif ch8 == "3":
                            table = Table(show_header=True, header_style="bold")
                            cursor.execute(OLAP[3])
                            print("Vendor ID\t\tCategory ID\t\tVendor Name\t\tAverage Rating")
                            table.add_column("Vendor ID", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Category ID", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Vendor Name", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Average Rating", justify="center", style="cyan", no_wrap=True)

                            for x in cursor:
                                # print(x)
                                table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]))
                            console.print(table)
                        elif ch8 == "4":
                            table = Table(show_header=True, header_style="bold")
                            cursor.execute(OLAP[4])
                            print("Vendor ID\t\tCategory ID\t\tAverage Product Price")
                            table.add_column("Vendor ID", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Category ID", justify="center", style="cyan", no_wrap=True)
                            table.add_column("Average Product Price", justify="center", style="cyan", no_wrap=True)

                            for x in cursor:
                                # print(x)
                                table.add_row(str(x[0]), str(x[1]), str(x[2]))
                            console.print(table)
                    elif ch4 == "3":
                        break
                    
                    elif ch4 == "4":
                        DISCOUNT = int(input("Enter discount: "))
                        print("Discount added successfully!")

        elif choice == "5":  # exit
            break

        elif choice == "2":  # customer login
            username = input("Enter your username: ")
            password = input("Enter your password: ")
            cart = []
            cursor.execute("SELECT * FROM customer WHERE customer_email = '" + username + "' AND customer_pass = '" + password + "';")
            x = cursor.fetchone()
            if x is None:
                print("[red]Invalid username or password![/red]")
            else:
                print("[green]Login successful![/green]")
                current_customer_id = x[0]
                print("Current customer id: ", current_customer_id)
                while True:
                    print("[blue]+++++++++++++ Customer Menu +++++++++++++[/blue]")
                    print("1. Add to cart")
                    print("2. Delete from cart")
                    print("3. Logout")
                    print("4. View products")
                    print("5. View cart")
                    print("6. View Wallet Balance")
                    print("7. Add money to wallet")
                    print("8. Checkout")
                    print("9. View Orders")
                    print("10. Cancel Order")
                    print("11. View products by category")
                    print("12. Change password")
                    print("13. Change address")

                    ch5 = input("Enter your choice: ")
                    if ch5 == "1":
                        product_id = input("Enter product id: ")
                        cart.append(product_id)
                        cursor.execute("SELECT * FROM cart;")
                        last_entry = list(cursor)[-1]
                        last_id = list(last_entry)[0]
                        new_cart_id = last_id + 1
                        cursor.execute("INSERT INTO cart VALUES (" + str(new_cart_id) + ", " + str(current_customer_id) + ", " + str(product_id) + ");")
                        # Get current product quantity
                        cursor.execute("SELECT product_qty FROM products WHERE product_id = " + str(product_id) + ";")
                        current_qty = cursor.fetchone()[0]
                        # write the Update query to subtract from the product quantity in the products table
                        cursor.execute(f"UPDATE products SET product_qty = {current_qty - 1} WHERE product_id = " + str(product_id) + ";")
                        db.commit()
                        print("[green]Product added to cart successfully![/green]")

                    elif ch5 == "2":
                        product_id = input("Enter product id: ")
                        # find the number of entries in the cart table with the product id
                        # cursor.execute("SELECT COUNT(*) FROM cart WHERE product_id = " + str(product_id) + ";")
                        # count = cursor.fetchone()[0]
                        # Write a trigger to first add the product quantity to the products table and then delete the entry from the cart table
                        # cursor.execute(trigger_2)
                        try:
                            cursor.execute(trigger_2)
                        except:
                            pass
                        cursor.execute("DELETE FROM cart WHERE productID = " + str(product_id) + ";")
                        db.commit()
                        print("Product deleted from cart successfully!")
                        
                    elif ch5 == "3":
                        break

                    elif ch5 == "4":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM products;")
                        print("Product ID\t\tProduct Name\t\tProduct Price\t\tProduct Quantity")
                        table.add_column("Product ID", justify="center")
                        table.add_column("Product Name", justify="center")
                        table.add_column("Product Price", justify="center")
                        table.add_column("Product Desc", justify="center")
                        table.add_column("Product Quantity", justify="center")
                        table.add_column("Product Rating", justify="center")
                        table.add_column("Product Reviews", justify="center")
                        table.add_column("Product Vendor_id", justify="center")
                        table.add_column("Product Cat_id", justify="center")
                        

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]), str(x[6]), str(x[7]), str(x[8]))
                        console.print(table)
                        # sort the products by price
                        while True:
                            print("1. Sort by price (low to high)")
                            print("2. back")
                            ch10 = input("Enter your choice: ")
                            if ch10 == "1":
                                table = Table(show_header=True, header_style="bold")
                                cursor.execute("SELECT * FROM products ORDER BY product_price;")
                                print("Product ID\t\tProduct Name\t\tProduct Price\t\tProduct Quantity")
                                table.add_column("Product ID", justify="center")
                                table.add_column("Product Name", justify="center")
                                table.add_column("Product Price", justify="center")
                                table.add_column("Product Quantity", justify="center")

                                for x in cursor:
                                    # print(x)
                                    table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]))
                                console.print(table)
                            elif ch10 == "2":
                                break

                    elif ch5 == "5":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT products.product_id, products.product_name, products.product_price FROM cart JOIN products ON cart.productID = products.product_id WHERE cart.customerID = %s", (current_customer_id,))
                        total_price = 0
                        print("Product ID\tProduct Name\tProduct Price")
                        table.add_column("Product ID", justify="center")
                        table.add_column("Product Name", justify="center")
                        table.add_column("Product Price", justify="center")
                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]))
                            total_price += x[2]
                        console.print(table)
                        print("Total Cart Value: ", total_price,)

                    elif ch5 == "6":
                        cursor.execute("SELECT wallet_amount FROM wallet WHERE customer_id = %s", (current_customer_id,))
                        print("Wallet Balance: " + str(cursor.fetchone()[0]))
                    
                    elif ch5 == "7":
                        amount = input("Enter amount to add: ")
                        payment_mode = input("Enter payment mode: ")
                        cursor.execute("SELECT wallet_amount FROM wallet WHERE customer_id = %s", (current_customer_id,))
                        current_amount = cursor.fetchone()[0]
                        cursor.execute("UPDATE wallet SET wallet_amount = " + str(current_amount + int(amount)) + " WHERE customer_id = " + str(current_customer_id) + ";")
                        db.commit()
                        print("[green]Amount added successfully![/green]")

                    elif ch5 == "8":
                        cursor.execute("SELECT wallet_amount FROM wallet WHERE customer_id = %s", (current_customer_id,))
                        current_wallet_amount = cursor.fetchone()[0]
                        cursor.execute("SELECT products.product_price FROM cart JOIN products ON cart.productID = products.product_id WHERE cart.customerID = %s", (current_customer_id,))
                        total_price = 0
                        for x in cursor:
                            total_price += x[0]
                        total_price = total_price - (total_price * DISCOUNT / 100)
                        print("Total discount: ", DISCOUNT, "%")
                        print("Total Cart Value: ", total_price)
                        if current_wallet_amount < total_price:
                            print("[red]Insufficient balance![/red]")
                        else:
                            current_wallet_amount -= total_price
                            # Update the wallet amount
                            cursor.execute("UPDATE wallet SET wallet_amount = " + str(current_wallet_amount) + " WHERE customer_id = " + str(current_customer_id) + ";")
                            # get all the product ids from the cart table
                            cursor.execute("SELECT productID FROM cart WHERE customerID = " + str(current_customer_id) + ";")
                            c = list(cursor)
                            d = {}
                            for x in c:
                                if x[0] in d:
                                    d[x[0]] += 1
                                else:
                                    d[x[0]] = 1
                            # print(d)
                            # Get current order id
                            cursor.execute("SELECT order_id FROM orders;")
                            last_entry = list(cursor)[-1]
                            last_id = list(last_entry)[0]
                            new_order_id = last_id + 1
                            # Get the cart_ids from the cart table
                            cursor.execute("SELECT cartID FROM cart WHERE customerID = " + str(current_customer_id) + ";")
                            list_of_cart_ids = list(cursor)
                            print(new_order_id, total_price, current_customer_id)
                            for cart_id in list_of_cart_ids:
                                # print("INSERT INTO orders (order_id, payment_status, net_amount, discount, customer_id, delivery_status, cart_id) VALUES (" + str(new_order_id) + ", true, " + str(total_price) + ", 0, " + str(current_customer_id) + ", false, " + str(cart_id[0]) + ");")
                                cursor.execute("INSERT INTO orders (order_id, payment_status, net_amount, discount, customer_id, delivery_status, cart_id) VALUES (" + str(new_order_id) + ", true, " + str(total_price) + ", 0, " + str(current_customer_id) + ", false, " + str(cart_id[0]) + ");")
                                break
                            # Remove the entries from the cart table
                            cursor.execute("DELETE FROM cart WHERE customerID = " + str(current_customer_id) + ";")
                            # Add the entries to the products table using the dictionary
                            for x in d:
                                cursor.execute("SELECT product_qty FROM products WHERE product_id = " + str(x) + ";")
                                current_qty = cursor.fetchone()[0]
                                cursor.execute("UPDATE products SET product_qty = " + str(current_qty - d[x]) + " WHERE product_id = " + str(x) + ";")
                            db.commit()
                            print("[green]Checkout successful![/green]")
                        
                    elif ch5 == "9":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM orders WHERE customer_id = %s", (current_customer_id,))
                        print("Order ID\tPayment Status\tNet Amount\tDiscount\tCustomer ID\tDelivery Status\tCart ID")
                        table.add_column("Order ID", justify="center")
                        table.add_column("Payment Status", justify="center")
                        table.add_column("Net Amount", justify="center")
                        table.add_column("Discount", justify="center")
                        table.add_column("Customer ID", justify="center")
                        table.add_column("Delivery Status", justify="center")
                        table.add_column("Cart ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(DISCOUNT), str(x[4]), str(x[5]), str(x[6]))
                        console.print(table)
                    
                    elif ch5 == "10":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM orders WHERE customer_id = %s", (current_customer_id,))
                        print("Order ID\tPayment Status\tNet Amount\tDiscount\tCustomer ID\tDelivery Status\tCart ID")
                        table.add_column("Order ID", justify="center")
                        table.add_column("Payment Status", justify="center")
                        table.add_column("Net Amount", justify="center")
                        table.add_column("Discount", justify="center")
                        table.add_column("Customer ID", justify="center")
                        table.add_column("Delivery Status", justify="center")
                        table.add_column("Cart ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]), str(x[6]))
                        console.print(table)
                        order_id = input("Enter order id: ")
                        cursor.execute("SELECT delivery_status FROM orders WHERE order_id = " + str(order_id) + ";")
                        delivery_status = cursor.fetchone()[0]
                        # print(delivery_status)
                        if delivery_status == "1":
                            print("[red]Order already delivered and cannot be cancelled![/red]")
                        else:
                            # Delete the order from the orders table and the delivery table and add the net_amount to the wallet
                            cursor.execute("SELECT net_amount FROM orders WHERE order_id = " + str(order_id) + ";")
                            net_amount = cursor.fetchone()[0]
                            cursor.execute("SELECT wallet_amount FROM wallet WHERE customer_id = " + str(current_customer_id) + ";")
                            current_wallet_amount = cursor.fetchone()[0]
                            cursor.execute("UPDATE wallet SET wallet_amount = " + str(current_wallet_amount + net_amount) + " WHERE customer_id = " + str(current_customer_id) + ";")
                            cursor.execute("DELETE FROM orders WHERE order_id = " + str(order_id) + ";")
                            cursor.execute("DELETE FROM delivery WHERE order_id = " + str(order_id) + ";")
                            print("[blue]Order Cancelled and money refunded successfully![/blue]")

                            db.commit()
                    elif ch5 == "11":
                        table = Table(show_header=True, header_style="bold")
                        # take input of category_id and then display all the products in that category
                        cat_id = input("Enter category id: ")
                        cursor.execute("SELECT * FROM products WHERE category_id = " + str(cat_id) + ";")
                        print("Product ID\tProduct Name\tProduct Price\tProduct Quantity\tCategory ID\tVendor ID")
                        table.add_column("Product ID", justify="center")
                        table.add_column("Product Name", justify="center")
                        table.add_column("Product Price", justify="center")
                        table.add_column("Product Quantity", justify="center")
                        table.add_column("Category ID", justify="center")
                        table.add_column("Vendor ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]))
                        console.print(table)
                    
                    elif ch5 == "12":
                        new_pass = input("Enter new password: ")
                        cursor.execute("UPDATE customer SET customer_pass = '" + str(new_pass) + "' WHERE customer_id = '" + str(current_customer_id) + "';")
                        db.commit()
                        print("[green]Password updated successfully![/green]")
                    
                    elif ch5 == "13":
                        new_addr = input("Enter new address: ")
                        cursor.execute("UPDATE customer SET customer_address = '" + str(new_addr) + "' WHERE customer_id = '" + str(current_customer_id) + "';")
                        db.commit()
                        print("[green]Address updated successfully![/green]")

        elif choice == "3":  # vendor login
            username = input("Enter your phone no: ")
            password = input("Enter your password: ")
            cursor.execute("SELECT * FROM vendor WHERE vendor_no = '" + username + "' AND vendor_pass = '" + password + "';")
            x = cursor.fetchone()
            if x is None:
                print("[red]Invalid username or password![/red]")
            else:
                print("[green]Login successful![/green]")
                current_vendor = x
                while True:
                    print("[blue]+++++++++++++ Vendor Menu +++++++++++++[/blue]")
                    print("1. Add Product")
                    print("2. Update product price")
                    print("3. Logout")
                    print("4. Delete product")
                    print("5. Update Password")

                    ch2 = input("Enter your choice: ")
                    if ch2 == "1":
                        cursor.execute("SELECT * FROM products;")
                        last_entry = list(cursor)[-1]
                        last_id = list(last_entry)[0]
                        new_id = last_id + 1
                        print("New product id: " + str(new_id))
                        name = input("Enter product name: ")
                        price = input("Enter product price: ")
                        desc = input("Enter product description: ")
                        qty = input("Enter product quantity: ")
                        rating = 0
                        reviews = 'good'
                        vendorid = current_vendor[0]
                        cat_id = input("Enter category id: ")
                        cursor.execute("INSERT INTO products VALUES (" + str(new_id) + ", '" + name + "', " + price + ", '" + desc + "', " + qty + ", " + str(rating) + ", '" + reviews + "', " + str(vendorid) + ", " + str(cat_id) + ");")
                        db.commit()
                        print("[green]Product added successfully![/green]")
                    
                    elif ch2 == "2":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM products where vendor_id =" + str(current_vendor[0]) + ";")
                        print("Product ID\tProduct Name\tProduct Price\tProduct Description\tProduct Quantity\tProduct Rating\tProduct Reviews\tVendor ID\tCategory ID")
                        table.add_column("Product ID", justify="center")
                        table.add_column("Product Name", justify="center")
                        table.add_column("Product Price", justify="center")
                        table.add_column("Product Description", justify="center")
                        table.add_column("Product Quantity", justify="center")
                        table.add_column("Product Rating", justify="center")
                        table.add_column("Product Reviews", justify="center")
                        table.add_column("Vendor ID", justify="center")
                        table.add_column("Category ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]), str(x[6]), str(x[7]), str(x[8]))
                        console.print(table)
                        product_id = input("Enter product id: ")
                        new_price = input("Enter new price: ")
                        cursor.execute("UPDATE products SET product_price = " + str(new_price) + " WHERE product_id = " + str(product_id) + ";")
                        db.commit()
                        print("[green]Product price updated successfully![/green]")
                    elif ch2 == "3":
                        break

                    elif ch2 == "4":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM products where vendor_id =" + str(current_vendor[0]) + ";")
                        print("Product ID\tProduct Name\tProduct Price\tProduct Description\tProduct Quantity\tProduct Rating\tProduct Reviews\tVendor ID\tCategory ID")
                        table.add_column("Product ID", justify="center")
                        table.add_column("Product Name", justify="center")
                        table.add_column("Product Price", justify="center")
                        table.add_column("Product Description", justify="center")
                        table.add_column("Product Quantity", justify="center")
                        table.add_column("Product Rating", justify="center")
                        table.add_column("Product Reviews", justify="center")
                        table.add_column("Vendor ID", justify="center")
                        table.add_column("Category ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]), str(x[6]), str(x[7]), str(x[8]))
                        console.print(table)

                        product_id = input("Enter product id: ")
                        # first delete the product from the cart
                        cursor.execute("DELETE FROM cart WHERE productID = " + str(product_id) + ";")
                        # then delete the product from the products table
                        cursor.execute("DELETE FROM products WHERE product_id = " + str(product_id) + ";")
                        print("[green]Product deleted successfully![/green]")
                        db.commit()

                    elif ch2 == "5":
                        new_pass = input("Enter new password: ")
                        cursor.execute("UPDATE vendor SET vendor_pass = '" + str(new_pass) + "' WHERE vendor_id = '" + str(current_vendor) + "';")
                        db.commit()
                        print("[green]Password updated successfully![/green]")
        
        elif choice == '4': # delivery login
            username = input("Enter your phone no: ")
            cursor.execute("SELECT * FROM delivery WHERE phone_no = '" + username + "';")
            x = cursor.fetchone()
            if x is None:
                print("[red]Invalid username or password![/red]")
            else:
                print("[green]Login successful![/green]")
                while True:
                    print("[blue]+++++++++++++ Delivery Menu +++++++++++++[/blue]")
                    print("1. View Orders")
                    print("2. Mark order as delivered")
                    print("3. Logout")

                    ch2 = input("Enter your choice: ")
                    if ch2 == "1":
                        table = Table(show_header=True, header_style="bold")
                        cursor.execute("SELECT * FROM orders WHERE delivery_status = false;")
                        print("Order ID\tPayment Status\tNet Amount\tDiscount\tCustomer ID\tDelivery Status\tCart ID")
                        table.add_column("Order ID", justify="center")
                        table.add_column("Payment Status", justify="center")
                        table.add_column("Net Amount", justify="center")
                        table.add_column("Discount", justify="center")
                        table.add_column("Customer ID", justify="center")
                        table.add_column("Delivery Status", justify="center")
                        table.add_column("Cart ID", justify="center")

                        for x in cursor:
                            # print(x)
                            table.add_row(str(x[0]), str(x[1]), str(x[2]), str(x[3]), str(x[4]), str(x[5]), str(x[6]))
                        console.print(table)
                    elif ch2 == "2":
                        order_id = input("Enter order id: ")
                        cursor.execute("UPDATE orders SET delivery_status = true WHERE order_id = " + str(order_id) + ";")
                        db.commit()
                        print("[green]Order delivered successfully![/green]")
                    elif ch2 == "3":
                        break


# khaldin0@mit.edu | viY3BbDx0PP (admin login details)
# lsavary2r@liveinternet.ru | 96Mfaxqm (customer login details)
# 8378434 | 123 (vendor login details)


# |       102 | aheofff     | 1234         | asdfsdwefr     | 8478333    |        4 |
# |       103 | aweheofff   | 12345        | asdfsdwefr     | 8413       |        4 |

# 1941457557 (delivery)
