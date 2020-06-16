/*Departing Flight View*/
CREATE VIEW DepartingFlightView 
AS 
SELECT Airline_Name, Flight_Code, Source, Destination, Departure, STATUS
FROM FLIGHT,AIRCRAFT;

/*Employee Information View*/
CREATE VIEW EmployeeInformation AS
SELECT First_Name, Middle_Name, Last_Name, Address, Date_of_birth, Phone, Gender, Salary, Jobtype
FROM EMPLOYEE;

SELECT * FROM EmployeeInformation