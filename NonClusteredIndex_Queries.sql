--NONCLUSTERED Index for Passenger Details

create NonClustered index Passenger_info
      on PASSENGERDETAILS (First_Name ASC) 

-- Adding Constraints
Alter table CITY
Add CHECK (City_ID<>'') 

--Alter Commands

Alter table flight
Drop COLUMN Flight_Type; 


ALTER TABLE BOOKS 
  ADD CONSTRAINT FK2_Books 
  FOREIGN KEY (PID) 
  REFERENCES PASSENGER(PID) 
  ON DELETE CASCADE;


--  Select Statements for Retrieving data from the tables

select * from Flight;
SELECT * from [CONTAINS];
SELECT * from AIRLINE



-- —Delete query

Delete from Ticket where Ticket_Number ='10040'
SELECT * from CANCELS;

-- —Alter command for dropping a constraint
Alter TABLE Flight
Drop CONSTRAINT FK4_Flight;

-- —Alter command for adding a constraint in a table
Alter table Airport
Add constraint chk1_Airport CHECK (City_ID<>'' and Airport_Name<>''); 



--Drop Tables command
 drop table PASSENGER;
drop table Ticket;
drop table books;
drop table CANCELS;

--Truncate table command
 TRUNCATE TABLE [CONTAINS];