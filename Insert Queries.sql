
/* City Data Insertion*/
INSERT INTO CITY (City_ID, City_Name, [State], Country)VALUES ('BOS', 'Boston', 'Massachusetts', 'USA');
INSERT INTO CITY (City_ID, City_Name, State, Country)VALUES ('NYC', 'Newyork City', 'New York', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('SFC', 'San Francisco', 'California', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('LA', 'Los Angeles', 'Illinois', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('SDG', 'San Diego', 'California', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('LAV', 'Las Vegas', 'Nevada', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('CHG', 'Chicago', 'Illinois', 'USA');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('LON', 'London', 'London', 'UK');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('MNC', 'Manchester', 'Greater Manchester', 'UK');
INSERT INTO City (City_ID, City_Name, State, Country)VALUES ('DEL', 'New Delhi', 'Delhi', 'India');

SELECT * FROM CITY;

/* Airport Data Insertion*/
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('Logan International Airport', 'BOS');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('John F Kennedy International Airport', 'NYC');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('Heathrow International Airport', 'LON');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('John F Kennedy International Airport', 'NYC');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('Indira Gandhi International Airport', 'DEL');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('OHare International Airport', 'CHG');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('McCarran International Airport', 'LAV');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('San Diego International Airport', 'SDG');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('San Francisco International Airport', 'SFC');
INSERT INTO AIRPORT(Airport_name, City_ID)VALUES ('Los Angeles International Airport', 'LA');

SELECT * FROM AIRPORT;

/* Airline Data */
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('AAL','AMERICAN AIRLINES INC.');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('ACA','AIR CANADA');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('AFR','AIR FRANCE');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('AIC','AIR INDIA LTD.');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('FJI','AIR PACIFIC');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('AFL','AEROFLOT RUSSIAN AIRLINES');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('CCA','AIR CHINA LTD.');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('UAL','UNITED AIRLINES, INC.');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('SQC','SINGAPORE AIRLINES LTD.');
INSERT INTO AIRLINE(Airline_Id, Airline_name)VALUES ('SWR','SWISS INT’L AIR LINES LTD.');

SELECT * FROM AIRLINE;

/* Inserting Aircraft Data*/
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('16HQ','A320','Airbus', 'AAL', '240', 'AMERICAN AIRLINES INC.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('1824W','A330','Airbus', 'ACA', '270', 'AIR CANADA');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('60PM','737Max','Boeing', 'AFL', '324', 'AMERICAN AIRLINES INC.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('19AR','A320','Airbus', 'AFR', '240', 'AIR FRANCE');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('289CP','A380','Airbus', 'AIC', '440', 'AIR INDIA LTD.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('10550','747','Boeing', 'CCA', '380', 'AIR CHINA LTD.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('330DK','747Max','Boeing', 'FJI', '420', 'AIR PACIFIC');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('6745','A340','Airbus', 'SQC', '300', 'SINGAPORE AIRLINES LTD.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('62LH','777','Boeing', 'SWR', '340', 'SWISS INT’L AIR LINES LTD.');
INSERT INTO AIRCRAFT(Registration_Number, Model_Number, Manufacturer, Airline_ID, Capacity, Airline_Name)
VALUES ('686AB','A320','Airbus', 'UAL', '240', 'UNITED AIRLINES INC.');

SELECT * FROM AIRCRAFT;

/*Inserting Flight Data*/
INSERT INTO FLIGHT(Flight_Code, Flight_Type, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('CCA747', 'NonStop', 'CCA', 'NYC', 'LON', '13:30', '19:30', '7hrs', 'Full', '10550','747', '380');
INSERT INTO FLIGHT(Flight_Code, Flight_Type, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('UALA320', '1-Stop', 'UAL', 'DEL', 'BOS', '1:10', '19:30', '18:30', 'Full', '686AB','A320', '240');
INSERT INTO FLIGHT(Flight_Code, Flight_Type, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('SWR777', 'NonStop', 'SWR', 'LA', 'LON', '10:30', '04:00', '17:30', 'Delayed', '62LH','777', '340');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('SQCA340', 'SQC', 'CHG', 'DEL', '08:00', '04:00', '20:00', 'Delayed', '6745','A340', '300');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('AALA320', 'AAL','SFC', 'BOS', '9:30', '12:00', '2:30', 'On-Time', '62LH','777', '340');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('ACAA330', 'ACA','LAV', 'SDG', '2:30', '4:00', '1:30', 'On-Time', '62LH','777', '340');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('AFRA320', 'AFR','NYC', 'LON', '12:10', '8:20', '8:10', 'On-Time', '19AR','A320', '240');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('AICA380', 'AIC','DEL', 'BOS', '03:40', '20:50', '17:10', 'On-Time', '289CP','A380', '440');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('FJI747Max', 'FJI','CHG', 'LON', '11:20', '8:20', '9:00', 'On-Time', '330DK','747Max', '420');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration, STATUS, Registration_Number,
Model_Number, Capacity)
VALUES ('AFL737Max', 'AFL','NYC', 'LA', '05:30', '10:20', '03:50', 'Delayed', '60PM','737Max', '324');

SELECT * FROM FLIGHT;

/*Inserting Passenger Data*/
INSERT INTO PASSENGER(PID, Passport_No) VALUES('1','6ZXtzrNWX');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('2','7oF9s5Yor');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('3','E2lNMSoxT');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('4','HsfBacJkA');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('5','LkaQ3eQHp');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('6','NduvmNTEr');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('7','PtMKUKCek');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('8','TYuhdNby9');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('9','TYuhdNbyV');
INSERT INTO PASSENGER(PID, Passport_No) VALUES('10','zerYU38M4');

SELECT * FROM PASSENGER;

/*Inserting Ticket Data*/
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10001', '300', 'NYC', 'CHG', 'Economy', '12A', '11-19-2019', '3:30', '0', '1');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10002', '280', 'LA', 'BOS', 'Economy', '24B', '11-21-2019', '1:30', '1', '2');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10003', '120', 'CHG', 'BOS', 'Economy', '4C', '11-20-2019', '0', '0', '3');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10004', '445', 'LON', 'BOS', 'Economy', '2B', '11-28-2019', '3:30', '1', '4');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('100045', '280', 'SFC', 'NYC', 'Economy', '46C', '11-20-2019', '0', '0', '5');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10006', '1540', 'LON', 'NYC', 'Business', '8A', '12-01-2019', '5:50', '2', '6');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10007', '800', 'DEL', 'NYC', 'Economy', '4A', '11-20-2019', '8:00', '1', '7');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10008', '2800', 'NYC', 'DEL', 'First', '23B', '11-27-2019', '0', '0', '8');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10009', '80', 'SFC', 'SDG', 'Economy', '1B', '12-10-2019', '0:45', '1', '9');
INSERT INTO TICKET(Ticket_Number, Price, Source, Destination, Class, Seat_Number, Date_of_Travel, Layover_time, No_of_Stops, PID)
VALUES('10010', '230', 'BOS', 'LAV', 'Business', '10C', '12-23-2019', '2:20', '1', '10');

SELECT * FROM TICKET

/*Inserting Into Contains Table*/
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('AAL', 'Logan International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('ACA', 'Heathrow International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('AFL', 'Indira Gandhi International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('AFR', 'John F Kennedy International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('AIC', 'Los Angeles International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('CCA', 'Manchester International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('FJI', 'McCarran International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('SQC', 'OHare International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('SWR', 'San Diego International Airport');
INSERT INTO [CONTAINS]( Airline_ID,Airport_Name) VALUES('UAL', 'San Francisco International Airport');

SELECT * FROM TICKET

/*Inserting Data in Airport_HAS*/
INSERT INTO Airport_HAS VALUES('Bangaluru International Airport', '10');
INSERT INTO Airport_HAS VALUES('Birmingham International Airport','11');
INSERT INTO Airport_HAS VALUES('Logan International Airport','12');
INSERT INTO Airport_HAS VALUES('Bangaluru International Airport','13');
INSERT INTO Airport_HAS VALUES('Bangaluru International Airport','19');
INSERT INTO Airport_HAS VALUES('Logan International Airport','20');
INSERT INTO Airport_HAS VALUES('John F Kennedy International Airport','22');
INSERT INTO Airport_HAS VALUES('Logan International Airport','23');
INSERT INTO Airport_HAS VALUES('Logan International Airport','24');
INSERT INTO Airport_HAS VALUES('Bangaluru International Airport','25');

SELECT * FROM Airport_HAS

/*Inserting Additonal Data in Flight Table*/
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number)
VALUES ('ACAA33', 'ACA','LAV', 'SFC', '2019-11-15 2:30', '2019-11-15 4:00', 'On-Time', '62LH');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number)
VALUES ('ACAA34', 'ACA','SFC', 'NYC', '2019-11-15 5:30', '2019-11-15 9:00', 'On-Time', '60PM');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number)
VALUES ('ACAA30', 'ACA','MUM', 'DEL', '2019/11/24 5:30', '2019/11/24 8:00', 'On-Time', '60PM');
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHA467' , 'ACA' , 'BOS' , 'LAV', '2019-11-17 06:30:00.000' , '2019-11-18 12:30:00.000' , 'On-Time', '60PM')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHA356' , 'ACA' , 'LAV' , 'SFC', '2019-11-18 02:30:00.000' , '2019-11-18 14:30:00.000' , 'On-Time', '6745')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHA098' , 'CCA' , 'SDG' , 'DEL', '2019-11-20 06:30:00.000' , '2019-11-21 09:30:00.000' , 'On-Time', '62LH')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHA345' , 'CCA' , 'DEL' , 'MUM', '2019-11-21 12:30:00.000' , '2019-11-21 16:30:00.000' , 'On-Time', '62LH')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHZ897' , 'FJI' , 'MUM' , 'LON', '2019-11-22 12:30:00.000' , '2019-11-22 20:30:00.000' , 'On-Time', '330DK')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHZ456' , 'FJI' , 'LON' , 'NYC', '2019-11-22 23:30:00.000' , '2019-11-23 09:30:00.000' , 'On-Time', '330DK')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHU789' , 'FJI' , 'DEL' , 'MGM', '2019-11-23 12:30:00.000' , '2019-11-23 20:30:00.000' , 'On-Time', '60PM')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'ABHZ807' , 'FJI' , 'MGM' , 'BHM', '2019-11-23 22:30:00.000' , '2019-11-23 23:30:00.000' , 'On-Time', '60PM')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'SJ123YZ' , 'UAL' , 'BOS' , 'NYC', '2019-12-23 22:30:00.000' , '2019-12-23 23:30:00.000' , 'On-Time', '60PM')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'SJ1245TY' , 'FJI' , 'NYC' , 'BGN', '2019-12-24 18:30:00.000' , '2019-12-25 23:30:00.000' , 'On-Time', '330DK')
INSERT INTO FLIGHT(Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, STATUS, Registration_Number )
values( 'SJGBJGHUJ' , 'CCA' , 'MNC' , 'MUM', '2019-12-25 05:30:00.000' , '2019-12-25 23:30:00.000' , 'On-Time', '62LH')

SELECT * FROM FLIGHT

/*Additonal Data in Ticket Table*/
insert into TICKET values ('13567', '3200' , 'BGN' , 'BOS' , 'Business' , '1D' , '2019-11-15' , '3' , '1' ,'4')
insert into TICKET values ('14677', '1200' , 'BOS' , 'SFC' , 'Economy' , '24E' , '2019-11-17' , '2' , '1' ,'6')
insert into TICKET values ('23457', '1600' , 'DEL' , 'LON' , 'Economy' , '32C' , '2019-11-21' , '8' , '1' ,'9')
insert into TICKET values ('34567', '1800' , 'DEL' , 'BHM' , 'Economy' , '36E' , '2019-11-23' , '2' , '1' ,'2')
insert into TICKET values ('56789', '400' , 'SFC' , 'BOS' , 'Economy' , '42E' , '1900-01-01 ' , '2' , '1' ,'7')
insert into TICKET values ('758940', '500' , 'BOS' , 'NYC' , 'Economy' , '41C' , '2019-12-23  ' , '0' , '0' ,'3')
insert into TICKET values ('754659057', '1700' , 'NYC' , 'BGN' , 'Economy' , '17C' , '2019-12-24 ' , '0' , '0' ,'1')
insert into TICKET values ('34564324', '1700' , 'NYC' , 'BGN' , 'Economy' , '33C' , '2019-12-24 ' , '0' , '0' ,'5')
insert into TICKET values ('340780887', '1300' , 'MNC' , 'MUM' , 'Economy' , '18C' , '2019-12-25 ' , '0' , '0' ,'7')
insert into TICKET values ('340780888', '1300' , 'MNC' , 'MUM' , 'Economy' , '13C' , '2019-12-25 ' , '0' , '0' ,'8')
insert into TICKET values ('340780889', '1300' , 'MNC' , 'MUM' , 'Economy' , '19C' , '2019-12-25 ' , '0' , '0' ,'1')
insert into TICKET values ('340780890', '1300' , 'MNC' , 'MUM' , 'Economy' , '36C' , '2019-12-25 ' , '0' , '0' ,'4')


/*Inserting Data in Include*/
insert into INCLUDES(Ticket_Number,Flight_code)values('13567' ,'ABHA320')
insert into INCLUDES(Ticket_Number,Flight_code)values('14677' ,'ABHA467')
insert into INCLUDES(Ticket_Number,Flight_code)values('23457' ,'ABHA345')
insert into INCLUDES(Ticket_Number,Flight_code)values('34567' ,'ABHU789')
insert into INCLUDES(Ticket_Number,Flight_code)values('100045' ,'ABHA320')
insert into INCLUDES(Ticket_Number,Flight_code)values('754659057' ,'SJ1245TY')
insert into INCLUDES(Ticket_Number,Flight_code)values('34564324' ,'SJ1245TY')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780888' ,'SJGBJGHUJ')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780888' ,'SJGBJGHUJ')
insert into INCLUDES(Ticket_Number,Flight_code)values('758940' ,'SJ123YZ')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780887' ,'SJGBJGHUJ')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780888' ,'SJGBJGHUJ')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780889' ,'SJGBJGHUJ')
insert into INCLUDES(Ticket_Number,Flight_code)values('340780890' ,'SJGBJGHUJ')


/*Inserting into Employee table*/
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Adam','', 'Singh','1978/11/23','Male', 'Administrative','Manager', '85689402',
			       '1234567890', '60 St Germain Street', '220000');
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Oswald','', 'Stacy','1986/12/23','Male', 'Administrative','Manager', '85689489',
			       '1234560890', '70St Germain Street', '220000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Brian','', 'Rose','1987/12/23','Male', 'Security','Gate Safety', '85689490',
			       '1234000890', '70St Alphonsus Street', '110000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Shea','', 'Smith','1967/10/23','Male', 'Maintainance','Janitor', '856880990',
			       '1234046890', '70St Smith Street', '40000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Riya','', 'McSimth','1970/7/18','Female', 'IT','Database Admin', '857680990',
			       '1252046890', '70St State Street', '3000000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Stella','', 'McGregor','1990/7/18','Female', 'Security','Passanger Safety', '876780990',
			       '1122046890', '70St Backbay Street', '3000000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Steve','', 'Shergar','1991/7/18','Male', 'Communications','Engineer', '876245990',
			       '112146890', '70St Smith Street', '1000000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Clark','', 'Davies','1992/9/18','Male', 'Maintainance','Engineer', '871245990',
			       '113489890', '71St Smith Street', '1000000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Derek','', 'Pitts','1996/3/18','Male', 'Transport','Engineer', '867845990',
			       '111239890', '71TetloStreet', '1200000')
INSERT INTO Employee(First_Name, Middle_Name, Last_Name, Date_of_Birth, Gender, Jobtype, Role, Phone, 
                     SSN, Address, Salary)
		    VALUES('Ivan','', 'Thorton','1997/7/18','Male', 'Safety','Engineer', '863545990',
			       '134239890', '71 Wager Street', '1200000')

/*Inserting into PassengerDetails*/
INSERT INTO PASSENGERDETAILS(First_Name,Middle_Name,Last_Name,DOB,[Address],Phone,Gender,Passport_No) 
values('Laura' , 'Leigh','Miller' , '1964/10/7','64 South Railroad Ave Massapequa, NY 11758','2167007853','F', 'LkaQ3eQHp')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Davis','Holly','Estrada','1995/5/2','7789 Shady Ave Saint Cloud, MN 56301','2738209592','M','7oF9s5Yor')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Patience',	'Lizzie','Meyers','1967/4/4','657 Yukon Street Winder, GA 30680','8092646478',	'F','zerYU38M4')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Oswaldo',	    'Carlene',	    'Mcintyre',	'1970/4/6',	    '851 Mill Pond Street Vincentown, NJ 08088'	 , '3053957512','M','E2lNMSoxT')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES (    'Zion',	   ' Marshall',	    'Romero','1967/9/10',	    '8261 Glenwood Drive Metairie, LA 70001'	   , '8785085127',	'M',	'NduvmNTEr')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Liliana',	    'Deirdre',	    'Richards', '1977/8/9',		    '8500 Wood Lane Middletown, CT 06457',	    '8673799320','F','HsfBacJkA')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES (       'Sincere' , 'Althea',  'Carrillo	','1980/7/8','Lnda Ave. Massapequa Park, NY 11762', '7732923710' ,'F','PtMKUKCek')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ( 'Trent' ,' Hiram',  'Roach','1985/7/9',' 2 Delaware Drive Benton Harbor, MI 49022' , '7144539662','M', 'TYuhdNby9')
INSERT INTO PASSENGERDETAILS(First_Name,Middle_Name,Last_Name,DOB,[Address],Phone,Gender,Passport_No) 
values('Laura' , 'Leigh','Miller' , '1964/10/7','64 South Railroad Ave Massapequa, NY 11758','2167007853','F', 'LkaQ3eQHp')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Davis','Holly','Estrada','1995/5/2','7789 Shady Ave Saint Cloud, MN 56301','2738209592','M','7oF9s5Yor')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Patience',	'Lizzie','Meyers','1967/4/4','657 Yukon Street Winder, GA 30680','8092646478',	'F','zerYU38M4')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Oswaldo',	    'Carlene',	    'Mcintyre',	'1970/4/6',	    '851 Mill Pond Street Vincentown, NJ 08088'	 ,   '3053957512',	'M',	'E2lNMSoxT')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES (    'Zion',	   ' Marshall',	    'Romero','1967/9/10',	    '8261 Glenwood Drive Metairie, LA 70001'	   , '8785085127',	'M',	'NduvmNTEr')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ('Liliana',	    'Deirdre',	    'Richards', '1977/8/9',		    '8500 Wood Lane Middletown, CT 06457',	    '8673799320','F','HsfBacJkA')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES (       'Sincere' , 'Althea',  'Carrillo	','1980/7/8','Lnda Ave. Massapequa Park, NY 11762', '7732923710' ,'F','PtMKUKCek')
INSERT INTO PASSENGERDETAILS([First_Name],[Middle_Name],[Last_Name],[DOB],[Address],[Phone],[Gender],[Passport_No])
VALUES ( 'Trent' ,' Hiram',  'Roach','1985/7/9',' 2 Delaware Drive Benton Harbor, MI 49022' , '7144539662','M', 'TYuhdNby9')



/*Inserting Additional Passenger Details*/
INSERT INTO PASSENGER VALUES('12' , '7oF9s5Yor')
INSERT INTO PASSENGER VALUES('33','LkaQ3eQHp')
INSERT INTO PASSENGER VALUES('45', 'zerYU38M4')
INSERT INTO PASSENGER VALUES( '92' ,'zerYU38M4')
INSERT INTO PASSENGER VALUES('25', 'E2lNMSoxT')
INSERT INTO PASSENGER VALUES('09',  'NduvmNTEr')
INSERT INTO PASSENGER VALUES('07' ,  'HsfBacJkA' )
INSERT INTO PASSENGER VALUES('75' , 'PtMKUKCek')
INSERT INTO PASSENGER VALUES('5' , 'TYuhdNbyV')
INSERT INTO PASSENGER VALUES('01' , 'HsfBacJkA' )
INSERT INTO PASSENGER VALUES('12' , '7oF9s5Yor')
INSERT INTO PASSENGER VALUES('33','LkaQ3eQHp')
INSERT INTO PASSENGER VALUES('45', 'zerYU38M4')
INSERT INTO PASSENGER VALUES( '92' ,'zerYU38M4')
INSERT INTO PASSENGER VALUES('25', 'E2lNMSoxT')
INSERT INTO PASSENGER VALUES('09',  'NduvmNTEr')
INSERT INTO PASSENGER VALUES('07' ,  'HsfBacJkA' )
INSERT INTO PASSENGER VALUES('75' , 'PtMKUKCek')
INSERT INTO PASSENGER VALUES('5' , 'TYuhdNbyV')
INSERT INTO PASSENGER VALUES('01' , 'HsfBacJkA' )


