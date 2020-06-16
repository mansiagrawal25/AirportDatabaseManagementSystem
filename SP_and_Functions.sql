-- Stored Procedure for Flight on a particular Airport  and given status

Create or ALTER Procedure Flights_Available (@IN_STATUS VARCHAR(10), @Airport_Name VARCHAR(100))
as
Begin

select  c.Airport_Name, f.flight_code ,al.Airline_name ,f.ARRIVAL,f.departure,f.Source,f.Destination,f.STATUS from [CONTAINS] c INNER join AIRLINE al on
al.Airline_ID=c.Airline_ID and @Airport_Name=c.Airport_Name inner join FLIGHT f on al.Airline_ID=f.Airline_ID  and f.[STATUS]=@IN_STATUS 

end


EXECUTE Flights_Available @IN_STATUS='On-Time' ,@Airport_Name='McCarran International Airport'

--Procedure for getting the seat availablility of a flight

Create or ALTER Procedure Seats_Available ( @Flight_code VARCHAR(10),  @seat_available int OUTPUT)
as
Begin
-- DECLARE @Flight_code VARCHAR(10)
DECLARE @capacity INT
DECLARE @Ticket_number INT
-- DECLARE @Seats_Available int

SELECT @capacity=a.Capacity  from AIRCRAFT a , FLIGHT f  where a.Registration_Number= f.Registration_Number and f.Flight_Code=@Flight_code;
SELECT @Ticket_number= Count(Ticket_Number) From INCLUDES where Flight_code=@flight_code;

select @seat_available= @capacity-@Ticket_number;

end
DECLARE @count INT;
EXEC Seats_Available
    @flight_code='ABHA467',
    @seat_available = @count OUTPUT;
SELECT @count AS 'Number of Seats'

--PROCEDURE to get all the employee of an airport
Create or ALTER Procedure Employee_details ( @airport_name VARCHAR(100)
as
BEGIN


SELECT  ah.Employee_ID, e.first_name from AIRPORT_HAS ah, employee e where ah.AIRPORT_name=@airport_name and ah.Employee_ID=e.employee_id


end
DECLARE @count INT;
EXEC Employee_details
	@airport_name='Bangaluru International Airport';

--Procedure to get employee details of an Airport for a jobtype

Create or ALTER Procedure EmployeeJobtype_details ( @airport_name VARCHAR(100),@jobType VARCHAR(20))

as
BEGIN

SELECT  ah.Employee_ID, e.first_name, e.jobtype from AIRPORT_HAS ah, employee e where ah.AIRPORT_name=@airport_name and e.jobtype=@jobType and ah.Employee_ID=e.employee_id



end


EXEC EmployeeJobtype_details
    @airport_name='Bangaluru International Airport',
    @Jobtype='Administrative';



SELECT * FROM CITY;
SELECT * FROM FLIGHT;

-- /Procedure to Insert Data in City Table/
CREATE Procedure Insert_City
	@City_ID char(3),
	@City_Name varchar(20),
	@State varchar(20),
	@Country varchar(20)

AS 
BEGIN
	SET NOCOUNT ON
	INSERT INTO CITY
			( City_ID, City_Name, State, Country)
	VALUES (@City_ID, @City_Name, @State, @Country)
END
GO

EXEC Insert_City @City_ID = "MUM", @City_Name = "Mumbai", @State = "Maharastra", @Country = "India";
EXEC Insert_City @City_ID = "BGN", @City_Name = "Bangaluru", @State = "Karnatka", @Country = "India";
EXEC Insert_City @City_ID = "BHM", @City_Name = "Birmingham", @State = "Alabama", @Country = "USA";
EXEC Insert_City @City_ID = "DHN", @City_Name = "Dothan", @State = "Alabama", @Country = "USA";
EXEC Insert_City @City_ID = "HSV", @City_Name = "Huntsville", @State = "Alabama", @Country = "USA";
EXEC Insert_City @City_ID = "MGM", @City_Name = "Montomery", @State = "Alabama", @Country = "USA";



-- /Procedure to Insert Data in Airport Table/
CREATE Procedure Insert_Airport
	@Airport_Name varchar(100),
	@City_ID char(3)
AS 
BEGIN
	SET NOCOUNT ON
	INSERT INTO AIRPORT
			( Airport_Name, City_ID)
	VALUES (@Airport_Name, @City_ID)
END
GO

SELECT * FROM AIRPORT;
EXEC Insert_Airport @Airport_Name = "Shivaji International Airport", @City_ID = "MUM";
EXEC Insert_Airport @Airport_Name = "Bangaluru International Airport", @City_ID = "BGN";
EXEC Insert_Airport @Airport_Name = "Birmingham International Airport", @City_ID = "BHM";
EXEC Insert_Airport @Airport_Name = "Dothan Regional Airport", @City_ID = "DHN";
EXEC Insert_Airport @Airport_Name = "Huntsville International Airport", @City_ID = "HSV";
EXEC Insert_Airport @Airport_Name = "Montgomery Regional Airport", @City_ID = "MGM";




-- /Procedure to Find number of flights in any given day/
ALTER PROCEDURE Num_of_Flight
	@Departure date
AS
BEGIN
	SET NOCOUNT ON
	SELECT (SELECT CONVERT (date, Departure)) from FLIGHT where Departure = @Departure
END
GO
EXEC Num_of_Flight @Departure = "2019-11-24";


-- /Stored Procedure for Flight from Source to a Destination/

Create Procedure FlightFrom (
	@destination char(3), @source char(3),
	@flight_count INT OUTPUT
)
AS 
BEGIN
	SELECT
		Flight_Code, Source, Destination, Departure, Arrival
	FROM
		FLIGHT
	WHERE
		Source = @source AND Destination = @destination;
	SELECT @flight_count = @@ROWCOUNT;
END;

DECLARE @count INT;
EXEC FlightFrom
	@destination = "BOS",
	@source = "SFC",
	@flight_count = @count OUTPUT;
SELECT @count AS 'Number of flights found';

-- /Stored Procedure for number of flights by an airline on a particular day from a particular airport/
Alter Procedure Count_of_flight_from_destination(
	@date date, @Source char(3), @Airline_ID varchar(3),
	@num_flight INT OUTPUT)
AS
BEGIN
	SELECT
		Flight_Code, Airline_ID, Source, Destination, Departure, Arrival, Duration
	FROM FLIGHT
	WHERE 
		Source = @Source AND 
		(SELECT CONVERT (date, Departure)) = @date AND
		Airline_ID = @Airline_ID;
	SELECT @num_flight = @@ROWCOUNT;
END;

DECLARE @count INT;
EXEC Count_of_flight_from_destination
	@date = "2019-11-24",
	@Source = "MUM",
	@Airline_ID = "ACA",
	@num_flight = @count OUTPUT;
SELECT @count AS 'Number of flights '
		
SELECT * FROM Employee;

-- /Stored Procedure belonging to certain Job Type/
Create Procedure Employee_Data(
	@role varchar(20),
	@roleCount INT OUTPUT)
AS BEGIN
	SELECT Employee_ID, First_Name, Middle_Name, Last_Name, Gender, Jobtype, Role
	FROM Employee
	WHERE
		Role = @role;
	SELECT @roleCount = @@ROWCOUNT;
END;

DECLARE @count INT;
EXEC Employee_Data
	@role = "Manager",
	@roleCount = @count OUTPUT;
SELECT @count AS 'Number of people in Role'



--Computed Function to calculate Age of Passengers and Employees

Create function CalculateAge
(@in_DOB AS date,@now as date)

returns int

as

begin

DECLARE @age int

IF cast(datepart(m,@now) as int) > cast(datepart(m,@in_DOB) as int)

SET @age = cast(datediff(yyyy,@in_DOB,@now) as int)

else

IF cast(datepart(m,@now) as int) = cast(datepart(m,@in_DOB) as int)

IF datepart(d,@now) >= datepart(d,@in_DOB)

SET @age = cast(datediff(yyyy,@in_DOB,@now) as int)

ELSE

SET @age = cast(datediff(yyyy,@in_DOB,@now) as int) -1

ELSE

SET @age = cast(datediff(yyyy,@in_DOB,@now) as int) - 1

RETURN @age

end

Select First_Name, DOB, dbo.CalculateAge(DOB, GetDate()) As Age From PASSENGERDETAILS


--Computed Function to calculate Duration of a Flight from it’s arrival and departure time

Create or ALTER function CalculateDuration(@Arrival AS DATETIME,@Departure as DATETIME)
RETURNS DATETIME
  AS
    BEGIN 
    
     DECLARE @DATE1 datetime =CONVERT(datetime,@Departure);
 DECLARE @DATE2 datetime =convert(datetime,@Arrival);
  DECLARE @TotalHours DATETIME=  @Date2-@Date1


RETURN @TotalHours
    END

