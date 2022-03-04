# Database-Project---Travel_Consultation_System


project name: Travel Consultation System.

Tools: NetBeans, SQL Server Management Studio

There are 11 tables in our project. Those are:
1. EMPLOYEE
2. CUSTOMER
3. HOTEL
4. PACKAGE
5. PLACE
6. BOOKING
7. FLIGHT
8. TRAIN
9. BUS
10. CAR RENTAL
11. BOOKING_PRICE


Here are the 11 tables of our Database Project.

1. EMPLOYEE Table:
This table keeps information of the EMPLOYEE. Here the primary key is the Emp_ID.
Emp_ID
Emp_Full_Name
Emp_Phone_Number
Emp_Password
create table EMPLOYEE
(
Emp_ID int PRIMARY KEY NOT NULL,
Emp_Full_Name nvarchar(50) NOT NULL,
Emp_Phone_Number nvarchar(50) NOT NULL UNIQUE,
Emp_Password nvarchar(50) NOT NULL
)

2. CUSTOMER Table:
This table keeps information of the CUSTOMER. Here the primary key is the C_ID and foreign key is Emp_ID.
C_ID
Emp_ID
C_Name
C_Email
C_PhoneNo
DOB
NID
Passport_No
C_address
create table CUSTOMER
(
C_ID int PRIMARY KEY NOT NULL,
Emp_ID int NOT NULL FOREIGN KEY REFERENCES EMPLOYEE(Emp_ID),
C_Name nvarchar(50) NOT NULL,
C_Email nvarchar(50) NOT NULL UNIQUE,
C_PhoneNo nvarchar(50) NOT NULL UNIQUE,
DOB date NOT NULL,
NID nvarchar(50) ,
Passport_No nvarchar(50) ,
C_address nvarchar(50)
)

3. HOTEL Table:
This table keeps information of the HOTEL. Here the primary key is the Hotel_ID.
Hotel_ID
Hotel_Name
Hotel_Type
Room_Type
Hotel_Location
Hotel_Price
Contact_info
create table HOTEL
(
Hotel_ID int PRIMARY KEY NOT NULL,
Hotel_Name nvarchar(100) NOT NULL,
Hotel_Type nvarchar(50) NOT NULL,
Room_Type nvarchar(50) NOT NULL,
Hotel_Location nvarchar(100) NOT NULL,
Hotel_Price money NOT NULL,
Contact_info nvarchar(100) NOT NULL
)

4. PACKAGE Table:
This table keeps information of the PACKAGE. Here the primary key is the P_ID.
P_ID
P_Name
P_Price
P_Description
create table PACKAGE
(
P_ID int PRIMARY KEY NOT NULL,
P_Name nvarchar(200) NOT NULL,
P_Price money NOT NULL,
P_Description nvarchar(200) NOT NULL
)

5. PLACE Table:
This table keeps information of the PLACE. Here the primary key is the PL_ID.
PL_ID
PL_Description
PL_Location
create table PLACE
(
PL_ID int PRIMARY KEY NOT NULL,
PL_Description nvarchar(200) NOT NULL,
PL_Location nvarchar(100) NOT NULL
)

6. BOOKING Table:
This table keeps information of the BOOKING. Here the primary key is the Booking_ID and foreign keys are C_ID, P_ID, PL_ID, Hotel_ID.
Booking
_ID
C_ID
P_ID
PL_ID
Hotel_ID
Number_of
_People
Transportation
_Type
Car_Rental
create table BOOKING
(
Booking_ID int PRIMARY KEY NOT NULL,
C_ID int NOT NULL FOREIGN KEY REFERENCES CUSTOMER(C_ID),
P_ID int NOT NULL FOREIGN KEY REFERENCES PACKAGE(P_ID),
PL_ID int NOT NULL FOREIGN KEY REFERENCES PLACE(PL_ID),
Hotel_ID int NOT NULL FOREIGN KEY REFERENCES HOTEL(Hotel_ID), Number_of_People int NOT NULL,
Transportation_Type nvarchar(100) NOT NULL,
Car_Rental nvarchar(100) NOT NULL
)

7. FLIGHT Table:
This table keeps information of the FLIGT. Here the primary key is the Flight_ID and foreign key Booking_ID.
Flight_ID
F_No
F_Price
F_Deperture_Date
F_Arrival_Date
F_Departure
F_Arrival
Booking_ID
create table FLIGHT
(
Flight_ID nvarchar(100) PRIMARY KEY NOT NULL,
Flight_No nvarchar(100) DEFAULT NULL,
F_Price money DEFAULT NULL,
F_Deperture_Date date DEFAULT NULL,
F_Arrival_Date date DEFAULT NULL,
F_Departure nvarchar(100) DEFAULT NULL,
F_Arrival nvarchar(100) DEFAULT NULL,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID)
)

8. TRAIN Table:
This table keeps information of the TRAIN. Here the primary key is the Train_ID and foreign key Booking_ID.
Train_ID
T_No
T_Price
T_Deperture_Date
T_Arrival_Date
T_Departure
T_Arrival
Booking_ID
create table TRAIN
(
Train_ID nvarchar(100) PRIMARY KEY NOT NULL,
Train_No nvarchar(100) DEFAULT NULL,
T_Price money DEFAULT NULL,
T_Deperture_Date date DEFAULT NULL,
T_Arrival_Date date DEFAULT NULL,
T_Departure nvarchar(100) DEFAULT NULL,
T_Arrival nvarchar(100) DEFAULT NULL,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID)
)

9. BUS Table:
This table keeps information of the BUS. Here the primary key is the Bus_ID and foreign key Booking_ID.
Bus_ID
B_No
B_Price
B_Deperture_Date
B_Arrival_Date
B_Departure
B_Arrival
Booking_ID
create table BUS
(
Bus_ID nvarchar(100) PRIMARY KEY NOT NULL,
Bus_No nvarchar(100) DEFAULT NULL,
B_Price money DEFAULT NULL,
B_Deperture_Date date DEFAULT NULL,
B_Arrival_Date date DEFAULT NULL,
B_Departure nvarchar(100) DEFAULT NULL,
B_Arrival nvarchar(100) DEFAULT NULL,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID)
)

10. CAR_RENTAL Table:
This table keeps information of the CAR_RENTAL. Here the primary key is the Car_ID and foreign key Booking_ID.
Car_I
D
Company_Name
Car_Number
C_Price
C_Issue
_Date
C_Return_
Date
Booking_ID
create table CAR_RENTAL
(
Car_ID nvarchar(100) PRIMARY KEY NOT NULL,
Car_Company_Name nvarchar(100) DEFAULT NULL,
Car_Number nvarchar(100) DEFAULT NULL,
C_Price money DEFAULT NULL,
C_Issue_Date date DEFAULT NULL,
C_Return_Date date DEFAULT NULL,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID)
)

11. BOOKING_PRICE Table:
This table keeps information of the BOOKING. Here the primary key is the Booking_ID and foreign keys are C_ID, P_ID, PL_ID, Hotel_ID.
Booking_Price_ ID
Booking_Id
C_ID
C_PhoneNo
Total_Price
create table BOOKING_PRICE
(
Booking_price_id int IDENTITY(1,1) PRIMARY KEY ,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID),
C_ID int NOT NULL FOREIGN KEY REFERENCES CUSTOMER(C_ID),
C_PhoneNo nvarchar(50) NOT NULL UNIQUE,
Total_Price MONEY NOT NULL
)


Advance queries are used in :
1. Query of Insert, Update, Delete, Search:
2. Query Of Finding Tax In Package Table:
3. Finding The Query of Flight Name Like mg500% in Flight table:
4. Finding The Query of a Customer Total Flight Price:
5. Finding The Query of Email Checking:
6. Finding The Query of Login of an Employee:
7. Finding The Query of Total number Of customer of an Employee:
8. Finding The Query of an Employee as a Customer:
9. Joining Operation in CUSTOMER, HOTEL, PACKAGE, BOOKING Table:
10. Joining Operation in CUSTOMER, HOTEL, PACKAGE, BOOKING Table:
11. Finding The Sum of Total_price in Booking Table:
12. Finding MAX(), MIN(), AVG() in Booking_Price Table:
13. Calculating Discount in Price from Total Price:
14. Finding those customer whose booking price is greater than 5000:
15. Finding those customer whose booking price is greater than 10000:

