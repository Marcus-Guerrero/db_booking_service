#These imports are necessary 
import mysql.connector
from datetime import datetime
import datetime

#Connecting to the localhost (Connecting to mysql)
db= mysql.connector.connect(
    host = "127.0.0.1",
    user= "root",
    password= "cryptic2$&45+?",
    database = "booking"
)

#To interact with the database
fetching = db.cursor()

#Dummy info (info gotten from the users)
first_name = "George"
last_name = "Washington"
address= "Caloocan"
birth_date = datetime.date (2001, 9, 11)
email = "skibidi@gmail.com"
phone_number = "0945-5769-2310"
password = "whatasigma"
payment_type = "Cash"

#To store data from Python to Database (callproc is for storing, updating, changing inputs to database)
#Structure: variable_storing_cursor.callproc("function_name_in_mysql", [parameter 1, parameter 2, ...])
#Note: the parameter matches the designation(placement) of data from mysql, so make sure to look where the specific data is placed 
fetching.callproc("load_user_info", [first_name, last_name, address, birth_date, email, phone_number, password, payment_type])
db.commit() #To insert the data to mysql (this is important)

#Dummy info 2:
user_id = 1
#for retrieving the data, same step with inserting
fetching.callproc("get_user_info", [user_id])

#stored.results() is necessary for collecting all the data
for fetch in fetching.stored_results():
    user_info = fetch.fetchall() #Takes all the data
    for user in user_info:
        print("ID:", user[0])
        print("Name:", user[1])
        print("Address:", user[2])
        print("Birth_date:", user[3])
        print("Email:", user[4])
        print("Phone_number:", user[5])
        print("Password:", user[6])

#For cleaning up
fetching.close()
db.close()

#This is how you'll input data for the sign up + what are information about the users stored