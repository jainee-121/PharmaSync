import mysql.connector
from datetime import datetime
import matplotlib.pyplot as plt

def register():
    print("\nRegistering new customer:")
    cid = input("Enter Customer ID: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # Check if the customer already exists
    query = "SELECT * FROM pharmacy.customers WHERE Cid = %s"
    cursor.execute(query,(cid,))
    existing_customer = cursor.fetchone()

    if existing_customer:
        print("\nCustomer already exists")
    else:
        # insert customer detail
        name = input("Enter Customer Name: ")
        while True:
                ph_number = input("Enter Phone Number: ")
                if len(ph_number)==10:
                    query = "INSERT INTO pharmacy.customers(cid,name, phNumber) VALUES (%s,%s, %s)"
                    cursor.execute(query, (cid,name, ph_number))
                    conn.commit()
                    print("\nCustomer registered successfully!")
                    break
                else:
                    print("\nPhone number should have 10 digit!")


    cursor.fetchall()                    
    cursor.close()
    conn.close()

def change_customer():

    while True:
        print("\n")
        print("1. Modify Customer Detail")
        print("2. Delete Customer")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            modify_customer_detail()
        elif choice == "2":
            delete_customer()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")

def modify_customer_detail():
    cid = input("\nEnter Customer ID: ")
    new_name = input("Enter New Name: ")
    new_ph_number = input("Enter New Phone Number: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # Check if the customer exists
    query = "SELECT * FROM pharmacy.customers WHERE Cid = %s"
    cursor.execute(query, (cid,))
    existing_customer = cursor.fetchone()

    if existing_customer:
        # update customer details
        update_query = "UPDATE pharmacy.customers SET name = %s, phNumber = %s WHERE Cid = %s"
        cursor.execute(update_query, (new_name, new_ph_number, cid))
        conn.commit()
        print("\nCustomer details updated successfully!")
    else:
        print("\nCustomer not found.")

    cursor.close()
    conn.close()


def delete_customer():
    cid = input("\nEnter Customer ID: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # Check if the customer exists
    query = "SELECT * FROM pharmacy.customers WHERE Cid = %s"
    cursor.execute(query, (cid,))
    existing_customer = cursor.fetchone()

    if existing_customer:
        # delete customer
        delete_purchase_query = "DELETE FROM pharmacy.purchase WHERE Cid = %s"
        cursor.execute(delete_purchase_query, (cid,))
        conn.commit()
        delete_query = "DELETE FROM pharmacy.customers WHERE Cid = %s"
        cursor.execute(delete_query, (cid,))
        conn.commit()
        print("\nCustomer deleted successfully!")
    else:
        print("\nCustomer not found.")

    cursor.close()
    conn.close()


def view_customer_records():
    print("\nViewing Customer records:")
    cid = input("Enter Customer ID: ")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve records for the given customer ID
    query = "SELECT * FROM pharmacy.customers WHERE Cid = %s"
    cursor.execute(query, (cid,))
    records = cursor.fetchall()

    if records:
            for record in records:
                print("\n")
                print("-------------------------")
                print("Customer ID:", record[0])
                print("Customer Name:", record[1])
                print("Phone Number:", record[2])
                print("-------------------------")
    else:
            print("\nNo records found.")

    cursor.close()
    conn.close()

def view_all_records():
    print("\nViewing all records:")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve all records from the database
    query = "SELECT * FROM pharmacy.customers"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:
        for record in records:
            print("\n")
            print("-------------------------")
            print("Customer ID:", record[0])
            print("Customer Name:", record[1])
            print("Phone Number:", record[2])
            print("-------------------------")
    else:
        print("\nNo records found.")

    cursor.close()
    conn.close()

def view():
    while True:
        print("\n")
        print("1. Search Records of a Customer")
        print("2. View All Records of a Customer")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            view_customer_records()
        elif choice == "2":
            view_all_records()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")


def add_med():
    print("\nAdding Medicine Detail:")
    mid = input("Enter Medicine ID: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # check if the medicine already exists
    query = "SELECT * FROM pharmacy.medicines WHERE mid = %s"
    cursor.execute(query, (mid,))
    existing_medicine = cursor.fetchone()

    if existing_medicine:
        print("\nMedicine already exists")
    else:
        # insert data 
        mname = input("Enter Medicine Name: ")
        mprice = input("Enter Medicine Price: ")
        query = "INSERT INTO pharmacy.medicines(mid, mname, mprice) VALUES (%s, %s, %s)"
        cursor.execute(query, (mid, mname, mprice))
        conn.commit()
        print("\nMedicine added successfully!")

    cursor.fetchall()
    cursor.close()
    conn.close()

def change_med():
     while True:
        print("\n")
        print("1. Modify Medicine Detail")
        print("2. Delete Medicine")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            modify_med()
        elif choice == "2":
            delete_med()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")


def modify_med():
        print("\nChanging Medicine Detail:")
        mid = input("Enter Medicine ID: ")

        conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
        cursor = conn.cursor()

        # check 
        query = "SELECT * FROM pharmacy.medicines WHERE mid = %s"
        cursor.execute(query, (mid,))
        existing_medicine = cursor.fetchone()

        if existing_medicine:
            new_name = input("Enter New Medicine Name: ")
            new_price = input("Enter New Medicine Price: ")
            
            # update medicine details
            update_query = "UPDATE pharmacy.medicines SET mname = %s, mprice = %s WHERE mid = %s"
            cursor.execute(update_query, (new_name, new_price, mid))
            conn.commit()
            print("\nMedicine details updated successfully!")
        else:
            print("\nMedicine not found.")

        cursor.close()
        conn.close()


def delete_med():
        print("\nDeleting Medicine:")
        mid = input("Enter Medicine ID: ")

        conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
        cursor = conn.cursor()

        # check 
        query = "SELECT * FROM pharmacy.medicines WHERE mid = %s"
        cursor.execute(query, (mid,))
        existing_medicine = cursor.fetchone()

        if existing_medicine:
            # delete the medicine
            delete_query = "DELETE FROM pharmacy.medicines WHERE mid = %s"
            cursor.execute(delete_query, (mid,))
            conn.commit()
            print("\nMedicine deleted successfully!")
        else:
            print("\nMedicine not found.")

        cursor.close()
        conn.close()

def view_med_records():
    print("\nViewing Medicine records:")
    mid = input("Enter Medicine ID: ")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve records for the given customer ID
    query = "SELECT * FROM pharmacy.medicines WHERE mid = %s"
    cursor.execute(query, (mid,))
    records = cursor.fetchall()

    if records:
            for record in records:
                print("\n")
                print("-------------------------")
                print("Medicine ID:", record[0])
                print("Medicine Name:", record[1])
                print("Price:", record[2])
                print("-------------------------")
    else:
            print("\nNo records found.")

    cursor.close()
    conn.close()

def view_all_records_med():
    print("\nViewing all records:")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve all records from the database
    query = "SELECT * FROM pharmacy.medicines"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:
        for record in records:
            print("\n")
            print("-------------------------")
            print("Medicine ID:", record[0])
            print("Medicine Name:", record[1])
            print("Price:", record[2])
            print("-------------------------")
    else:
        print("\nNo records found.")

    cursor.close()
    conn.close()

def view_med():
    while True:
        print("\n")
        print("1. Search Records of a Medicine")
        print("2. View All Records of Medicine")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            view_med_records()
        elif choice == "2":
            view_all_records_med()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")


def add_cart():
    print("\nAdding Medicine to Cart:")
    mid = input("Enter Medicine ID: ")
    cid = input("Enter Customer ID: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # check if the medicine and customer exist
    query_medicine = "SELECT * FROM pharmacy.medicines WHERE mid = %s"
    query_customer = "SELECT * FROM pharmacy.customers WHERE Cid = %s"
    cursor.execute(query_medicine, (mid,))
    existing_medicine = cursor.fetchone()
    cursor.execute(query_customer, (cid,))
    existing_customer = cursor.fetchone()

    if existing_medicine and existing_customer:
        quantity = int(input("\nEnter Quantity: "))
        date_str = input("Enter the date (YYYY-MM-DD): ")
        
        try:
            date_obj = datetime.strptime(date_str, "%Y-%m-%d").date()
        except ValueError:
            print("Invalid date format. Please enter date in YYYY-MM-DD format.")
            return

        cursor.execute("SELECT mprice, mquantity FROM pharmacy.medicines WHERE mid = %s", (mid,))
        row = cursor.fetchone()
        if row:
            mprice, mquantity = row
            if mquantity < quantity:
                print("Insufficient quantity available.")
                return
        final_price = quantity * mprice

        # insert data in cart
        query = "INSERT INTO pharmacy.purchase(mid, cid, order_date, quantity, total_price) VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(query, (mid, cid, date_obj, quantity, final_price))

        # Update the quantity of the medicine in the medicines table
        update_query = "UPDATE pharmacy.medicines SET mquantity = mquantity - %s WHERE mid = %s"
        cursor.execute(update_query, (quantity, mid))
        
        conn.commit()
        print("\nMedicine added to cart successfully!")
    else:
        if not existing_customer and not existing_medicine:
            print("\nCustomer and Medicine not found.")
        elif not existing_customer:
            print("\nCustomer not found.")
        else:
            print("\nMedicine not found.")

    cursor.close()
    conn.close()



def change_cart():
    pid = input("\nEnter Purchase ID: ")

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()
    query = "SELECT bill_generated FROM pharmacy.purchase WHERE purchase_id = %s"
    cursor.execute(query, (pid,))
    purchases = cursor.fetchall()

    if purchases:


        for purchase in purchases:

            bill_generated=purchase[0]

            if bill_generated!="yes":
                    while True:
                        print("\n")
                        print("1. Modify Cart Item")
                        print("2. Delete Cart Item")
                        print("3. Exit")

                        choice = input("\nEnter your choice: ")

                        if choice == "1":
                            modify_cart_item(pid)
                        elif choice == "2":
                            delete_cart_item(pid)
                        elif choice == "3":
                            print("\nExiting")
                            break
                        else:
                            print("\nInvalid choice. Please try again.")
            else:
                print("\nBill has been generated no change possible.")
                break
    else:
        print("\nNo purchases found for Purchase ID:", pid)


def delete_cart_item(pid):
    
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # check if the purchase exists
    query = "SELECT mid, quantity FROM pharmacy.purchase WHERE purchase_id = %s"
    cursor.execute(query, (pid,))
    existing_purchase = cursor.fetchone()

    if existing_purchase:
        mid, quantity = existing_purchase

        # delete from cart
        delete_query = "DELETE FROM pharmacy.purchase WHERE purchase_id = %s"
        cursor.execute(delete_query, (pid,))

        # Update the quantity of the medicine in the medicines table
        update_query = "UPDATE pharmacy.medicines SET mquantity = mquantity + %s WHERE mid = %s"
        cursor.execute(update_query, (quantity, mid))

        conn.commit()
        print("\nCart item deleted successfully!")
    else:
        print("\nCart item not found.")

    cursor.close()
    conn.close()


def modify_cart_item(pid):
    new_quantity = int(input("Enter New Quantity: "))

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # check if the purchase exists
    query = "SELECT mid, quantity FROM pharmacy.purchase WHERE purchase_id = %s"
    cursor.execute(query, (pid,))
    existing_purchase = cursor.fetchone()

    if existing_purchase:
        mid, old_quantity = existing_purchase

        cursor.execute("SELECT mprice, mquantity FROM pharmacy.medicines WHERE mid = %s", (mid,))
        row = cursor.fetchone()
        if row:
            mprice, mquantity = row
            if (mquantity + old_quantity) < new_quantity:
                print("Insufficient quantity available.")
                return

        # Update the quantity of the medicine in the medicines table
        update_query = "UPDATE pharmacy.medicines SET mquantity = mquantity + %s WHERE mid = %s"
        cursor.execute(update_query, (old_quantity, mid))
        cursor.execute(update_query, (-new_quantity, mid))

        update_query = "UPDATE pharmacy.purchase SET quantity = %s WHERE purchase_id = %s"
        cursor.execute(update_query, (new_quantity, pid))
        conn.commit()
        print("\nCart item quantity updated successfully!")
    else:
        print("\nCart item not found.")

    cursor.close()
    conn.close()


def view_cart_records():
    print("\nViewing Cart records:")
    pid = input("Enter Purchase ID: ")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve records
    query = "SELECT * FROM pharmacy.purchase WHERE purchase_id = %s"
    cursor.execute(query, (pid,))
    records = cursor.fetchall()

    if records:
            for record in records:
                print("\n")
                print("-------------------------")
                print("Purchase ID:", record[0])
                print("Customer ID:", record[1])
                print("Medicine ID:", record[2])
                print("Order Date:", record[3])
                print("Quantity:", record[4])
                print("Total Price:", record[5])
                print("-------------------------")
    else:
            print("\nNo records found.")

    cursor.close()
    conn.close()

def view_all_records_cart():
    print("\nViewing all records:")
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()

    # retrieve all records 
    query = "SELECT * FROM pharmacy.purchase"
    cursor.execute(query)
    records = cursor.fetchall()

    if records:
        for record in records:
            print("\n")
            print("-------------------------")
            print("Purchase ID:", record[0])
            print("Customer ID:", record[1])
            print("Medicine ID:", record[2])
            print("Order Date:", record[3])
            print("Quantity:", record[4])
            print("Total Price:", record[5])
            print("-------------------------")
    else:
        print("\nNo records found.")

    cursor.close()
    conn.close()

def view_cart():
    while True:
        print("\n")
        print("1. Search Records of a Cart")
        print("2. View All Records of Cart")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            view_cart_records()
        elif choice == "2":
            view_all_records_cart()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")


def generate_bill():
    cid = input("\nEnter Customer ID: ")
    order_date = input("\nEnter order date in YYYY-MM-DD: ")
    try:
        date_obj = datetime.strptime(order_date, "%Y-%m-%d").date()
    except ValueError:
        print("\nInvalid date format. Please enter date in YYYY-MM-DD format.")
        return

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()


    # get customer id
    query = "SELECT * FROM pharmacy.purchase WHERE cid = %s and order_date=%s"
    cursor.execute(query, (cid,date_obj))
    purchases = cursor.fetchall()

    if purchases:
        total_quantity = 0
        total_cost = 0

        for purchase in purchases:
            pid = purchase[0]
            mid = purchase[2]
            quantity = purchase[4]
            total_price = purchase[5]
            bill_generated=purchase[6]

            if bill_generated!="yes":
                                
                                print("\n--------------------------------------------------")
                                print(f"Bill for Customer ID: {cid} on date {date_obj}")
                                print("--------------------------------------------------")

                                # get medicine data
                                cursor.execute("SELECT mname, mprice FROM pharmacy.medicines WHERE mid = %s", (mid,))
                                medicine_details = cursor.fetchone()

                                if medicine_details:
                                    mname, mprice = medicine_details
                                    cost_per_item = quantity * mprice
                                            
                                    
                                    print("Purchase ID:", pid)
                                    print("Medicine:", mname)
                                    print("Quantity:", quantity)
                                    print("Price per unit:", mprice)
                                    print("Total cost for this item:", cost_per_item)
                                    print("--------------------------------------------------")

                                    total_quantity += quantity
                                    total_cost += cost_per_item

                                else:
                                    print("Medicine details not found.")

                                print("\n--------------------------------------------------")
                                print("Total Quantity Purchased:", total_quantity)
                                print("Total Bill Amount:", total_cost)
                                print("--------------------------------------------------")

                                
                                update_query = "UPDATE pharmacy.purchase SET bill_generated = %s where cid=%s and order_date=%s"
                                cursor.execute(update_query,("yes",cid,date_obj))
                                conn.commit()
                
            else:
                print("\n Bill has been already generated.")
                break
    else:
        print("\nNo purchases found for Customer ID:", cid)

    cursor.close()
    conn.close()


def sales_trend():

    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()
    cursor.execute("SELECT order_date, total_price FROM pharmacy.purchase where bill_generated='yes' order by order_date asc")
    records = cursor.fetchall()

    dates = [record[0] for record in records]
    total_prices = [record[1] for record in records]

    cursor.close()
    conn.close()

    plt.figure(figsize=(10, 6))
    plt.plot(dates, total_prices, marker='o', linestyle='-')
    plt.title('Sales Trend V/S Time')
    plt.xlabel('Date')
    plt.ylabel('Total Sales Amount')
    plt.xticks(rotation=45)
    plt.grid(True)
    plt.tight_layout()
    plt.show()


def plot_total_sales_per_medicine():
    conn = mysql.connector.connect(host="localhost", user="root", password="Jainee121.", database="pharmacy")
    cursor = conn.cursor()
    cursor.execute("SELECT mname, SUM(total_price) FROM pharmacy.purchase JOIN pharmacy.medicines ON pharmacy.purchase.mid = pharmacy.medicines.mid where bill_generated='yes' GROUP BY mname ")
    records = cursor.fetchall()

    medicine_names = [record[0] for record in records]
    total_sales = [record[1] for record in records]

    cursor.close()
    conn.close()

    plt.figure(figsize=(8, 8))
    plt.pie(total_sales, labels=medicine_names, autopct='%1.1f%%', startangle=140)
    plt.title('Total SALE per Medicine')
    plt.axis('equal')
    plt.show()


def analyse():
    while True:
        print("\n")
        print("1. Total Sales per Medicine")
        print("2. Sales Trend Over Time")
        print("3. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            plot_total_sales_per_medicine()
        elif choice == "2":
            sales_trend()
        elif choice == "3":
            print("\nExiting")
            break
        else:
            print("\nInvalid choice. Please try again.")

def main():
    print("PHARMACY MANAGEMENT SYSTEM")

    while True:
        print("\nMenu:")
        print("1. Register New Customer")
        print("2. Change Customer Detail")
        print("3. View Customer Detail")
        print("---------------------------------")
        print("4. Add Medicine into Cart")
        print("5. Change Medicine from Cart")
        print("6. View Medicine Cart")
        print("---------------------------------")
        print("7. Add Medicine Detail")
        print("8. Change Medicine Detail")
        print("9. View Medicine Detail")
        print("---------------------------------")
        print("10. Analyse")
        print("11. Generate Bill")
        print("12. Exit")

        choice = input("\nEnter your choice: ")

        if choice == "1":
            register()
        elif choice == "2":
           change_customer()
        elif choice == "3":
            view()
        elif choice == "4":
            add_cart()
        elif choice == "5":
            change_cart()
        elif choice == "6":
            view_cart()
        elif choice == "7":
            add_med()
        elif choice == "8":
            change_med()
        elif choice == "9":
            view_med()
        elif choice == "10":
            analyse()
        elif choice == "11":
            generate_bill()
        elif choice == "12":
            print("\nExiting program.")
            break
        else:
            print("\nInvalid choice. Please try again.")

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print("\ntry again\n")
        main()
