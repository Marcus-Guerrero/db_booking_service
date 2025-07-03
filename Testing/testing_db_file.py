import mysql.connector
from datetime import datetime

db= mysql.connector.connect(
    host = "127.0.0.1",
    user= "root",
    password= "cryptic2$&45+?",
    database = "booking"
)

fetching = db.cursor()

booking_id = 1
user_id= 1
matrix_id = 1
driver_id = 1
booking_type= "book now"
booking_date = datetime.now()
status = "Searching"
origin = "MNL"
destination= "CVT"
travel_length = 750.00
payment_id = 1
payment_status = None
total = 500

# fetching.callproc("create_booking", [user_id, booking_type, booking_date, status, origin, destination, travel_length, payment_id, payment_status])
# db.commit()

fetching.callproc("update_booking", [booking_id, driver_id, matrix_id, total])
db.commit()

fetching.execute("SELECT * FROM booking_info")
for f in fetching:
    print(f)

fetching.close()
db.close()