Create Database [Travel Colsultation System];
Use [Travel Colsultation System];


create table EMPLOYEE
(
Emp_ID int PRIMARY KEY NOT NULL, 
Emp_Full_Name nvarchar(50) NOT NULL,
Emp_Phone_Number nvarchar(50) NOT NULL UNIQUE,
Emp_Password nvarchar(50) NOT NULL
)




create table CUSTOMER
(
C_ID int PRIMARY KEY NOT NULL, 
Emp_ID int NOT NULL FOREIGN KEY REFERENCES EMPLOYEE(Emp_ID),
C_Name nvarchar(50) NOT NULL,
C_Email nvarchar(50) NOT NULL UNIQUE,
C_PhoneNo nvarchar(50) NOT NULL UNIQUE,
DOB date NOT NULL,
NID nvarchar(50)  ,
Passport_No nvarchar(50) ,
C_address nvarchar(50)
)

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

create table PACKAGE
(
P_ID int PRIMARY KEY NOT NULL,
P_Name nvarchar(200) NOT NULL,
P_Price money NOT NULL,
P_Description nvarchar(200) NOT NULL 
)

create table PLACE
(
PL_ID int PRIMARY KEY NOT NULL,
PL_Description nvarchar(200) NOT NULL,
PL_Location nvarchar(100) NOT NULL
)


create table BOOKING
( 
Booking_ID int PRIMARY KEY NOT NULL, 
C_ID int NOT NULL FOREIGN KEY REFERENCES CUSTOMER(C_ID), 
P_ID int NOT NULL FOREIGN KEY REFERENCES PACKAGE(P_ID), 
PL_ID int NOT NULL FOREIGN KEY REFERENCES PLACE(PL_ID), 
Hotel_ID int NOT NULL FOREIGN KEY REFERENCES HOTEL(Hotel_ID), 
Number_of_People int NOT NULL, 
Transportation_Type nvarchar(100) NOT NULL, 
Car_Rental nvarchar(100) NOT NULL 
) 

create table BOOKING_PRICE
( 
Booking_price_id int IDENTITY(1,1) PRIMARY KEY ,
Booking_ID int NOT NULL FOREIGN KEY REFERENCES BOOKING(Booking_ID), 
C_ID int NOT NULL FOREIGN KEY REFERENCES CUSTOMER(C_ID), 
C_PhoneNo nvarchar(50) NOT NULL UNIQUE,
Total_Price MONEY NOT NULL
) 



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




select * from EMPLOYEE
select * from CUSTOMER
select * from HOTEL
select * from PACKAGE
select * from PLACE
select * from BOOKING
select * from FLIGHT
select * from TRAIN
select * from BUS
select * from CAR_RENTAL
select * from BOOKING_PRICE
