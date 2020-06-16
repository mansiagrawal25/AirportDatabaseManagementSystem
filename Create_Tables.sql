Create DATABASE ADMS;
 USE ADMS



--Create Table City

Create TABLE CITY(
    City_ID CHAR(3) NOT NULL,
    City_Name VARCHAR(20) not null,
    [State] VARCHAR(20) not null,
    Country VARCHAR(20) not null,
    CONSTRAINT PK_City PRIMARY key (City_ID)
)
SELECT * from CITY;
Alter table CITY
Add CHECK (City_ID<>'') 


--Create Table Airport


CREATE TABLE AIRPORT(
    Airport_Name VARCHAR(100) Not NULL,
    City_ID CHAR(3) not null,
    CONSTRAINT PK_Airport PRIMARY key (Airport_Name),
    CONSTRAINT FK_Airport FOREIGN KEY (City_ID) REFERENCES CITY(City_ID) ON DELETE CASCADE

)

--CREATE Table Airline


CREATE TABLE AIRLINE(
    Airline_Id VARCHAR(3) NOT NULL,
    Airline_name VARCHAR(50),
    CONSTRAINT PK_Airline PRIMARY key (Airline_ID)
)


--CREATE Table Contains which links Airlines to Airport


Create TABLE [CONTAINS](
    Airline_ID  VARCHAR(3) NOT NULL,
    Airport_Name VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Contains PRIMARY KEY(Airline_ID,Airport_Name),
    CONSTRAINT FK1_Contains FOREIGN KEY (Airline_ID) REFERENCES AIRLINE(Airline_ID),
    CONSTRAINT FK2_Contains FOREIGN KEY (Airport_Name) REFERENCES AIRPORT(Airport_Name) ON DELETE CASCADE
)

--CREATE Table Aircraft

CREATE TABLE [dbo].[AIRCRAFT]( [Registration_Number]  varchar (20) NOT NULL,
[Model_Number]  varchar (10) NOT NULL,
[Manufacturer] varchar (30) NOT NULL,
[Airline_ID] varchar (3) NOT NULL,
[Capacity] int NOT NULL,
[Airline_Name] varchar(100) NOT NULL,
CONSTRAINT PK_Constrains PRIMARY KEY(Registration_number,Model_Number,Capacity), 
CONSTRAINT FK1_Constrains FOREIGN KEY (Airline_ID) REFERENCES AIRLINE(Airline_ID) on DELETE CASCADE

 )

--CREATE Table Flight

CREATE TABLE FLIGHT(
    Flight_Code VARCHAR(10) NOT NULL,
    Flight_Type VARCHAR(15),
    Airline_ID  VARCHAR(3) NOT NULL,
    Source CHAR(3) not null,
    Destination CHAR(3) not null,
    Departure TIME,
    Arrival TIME,
    Duration VARCHAR(5),
    [STATUS] VARCHAR(10),
    [Registration_Number]  varchar (20) NOT NULL,
    [Model_Number]  varchar (10) NOT NULL,
    [Capacity] int NOT NULL,
    CONSTRAINT PK_Flight PRIMARY KEY (Flight_Code),
    CONSTRAINT FK1_Flight FOREIGN KEY (Airline_ID) REFERENCES Airline(Airline_ID),
    CONSTRAINT FK2_Flight FOREIGN KEY (Source) REFERENCES CITY(City_ID),
    CONSTRAINT FK3_Flight FOREIGN KEY (Destination) REFERENCES CITY(City_ID),
    CONSTRAINT FK4_Flight FOREIGN KEY (Registration_Number,Model_Number,Capacity) REFERENCES AIRCRAFT(Registration_Number,Model_Number,Capacity)

)

--CREATE Table Ticket


Create TABLE TICKET(
    Ticket_Number int not null,
    Price int,
    Source CHAR(3) not null,
    Destination CHAR(3) not null,
    Class VARCHAR(10),
    Seat_Number VARCHAR(5),
    Date_of_Travel Date,
    Layover_time VARCHAR(30),
    No_of_Stops int,
    PID INT,
    CONSTRAINT PK_Ticket PRIMARY KEY (Ticket_Number),
    CONSTRAINT FK1_Ticket FOREIGN KEY (Source) REFERENCES CITY(City_ID),
    CONSTRAINT FK2_Ticket FOREIGN KEY (Destination) REFERENCES CITY(City_ID),
    CONSTRAINT FK3_Ticket FOREIGN KEY (PID) REFERENCES PASSENGER(PID)
)

—CREATE Table Books which keeps the log of ticket booked by a passeneger



CREATE TABLE BOOKS(
    Booking_Code VARCHAR(20) not null,
    Date_of_Booking date,
    Ticket_Number int not null,
    PID int,
    CONSTRAINT PK_Books PRIMARY Key (Booking_Code),
    CONSTRAINT FK1_Books FOREIGN KEY (Ticket_Number) REFERENCES TICKET(Ticket_Number),
    CONSTRAINT FK2_Books FOREIGN KEY (PID) REFERENCES PASSENGER(PID)

)


--CREATE Table Passenger which is a normalized table for Passenger detail. 
CReate TABLE  PASSENGER(
    PID int not null,
    Passport_No VARCHAR(10) not null,
    CONSTRAINT PK_Passenger PRIMARY KEY(PID),
    CONSTRAINT FK_Passeneger FOREIGN KEY (Passport_No) REFERENCES PASSENGERDETAILS(Passport_No)
)


--Create Table Passenger Details

CREATE TABLE [dbo].[PASSENGERDETAILS](
[First_Name]  varchar (30) NOT NULL,
[Middle_Name]  varchar (30) ,
[Last_Name]  varchar (30) NOT NULL,
[DOB] Date NOT NULL,
[Address]  varchar (300) NOT NULL,
[Phone] int  NOT NULL,
[Gender] varchar (10) ,
[Salary] int NOT NULL,
[Passport_No] varchar(10) NOT NULL, 
 CONSTRAINT PK4_Constraints PRIMARY KEY(Passport_No)) 

-- CREATE Table Cancels which keeps the log of ticket cancelled by a passeneger

CREATE TABLE CANCELS( Surcharge int NOT NULL ,
Date_of_Cancellation date NOT NULL,
Ticket_Number int NOT NULL,
PID int NOT NULL ,
CONSTRAINT PK5_Constraints FOREIGN KEY (Ticket_Number) REFERENCES TICKET(Ticket_Number),
CONSTRAINT PK6_Constraints  FOREIGN KEY(PID) REFERENCES PASSENGER(PID)
)

-- Create table Employee 
CREATE TABLE  EMPLOYEE(
SSN int not null,
    Employee_ID INT IDENTITY(1,1) NOT NULL,
First_Name VARCHAR(20),
Middle_Name VARCHAR(20),
Last_Name VARCHAR(20),
Date_of_Birth DATE,
[Address] VARCHAR(50),
Phone int,
Gender VARCHAR(10),
Salary INT,
Jobtype VARCHAR(20),
[Role] VARCHAR(20),
CONSTRAINT PK_EmployeeID PRIMARY KEY(Employee_ID)
)
Alter table employee
Add Salary varchar(20)

-- This table has of an employee of airports
Create table Airport_HAS(
	Airport_Name VARCHAR(100) NOT NULL,
	Employee_ID INT NOT NULL
CONSTRAINT PK_Airport_HAS PRIMARY KEY(Employee_ID,Airport_Name),
CONSTRAINT FK1_Airport_HAS FOREIGN KEY (Airport_Name) REFERENCES AIRPORT(Airport_Name) ON DELETE CASCADE,
CONSTRAINT FK2_Airport_HAS FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
	);
