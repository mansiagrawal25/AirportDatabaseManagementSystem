/*Trigger to automatically fill the book tickets table*/
CREATE TRIGGER trg_bookingSlot
ON TICKET
AFTER INSERT
AS 
 BEGIN
		SET NOCOUNT ON;
		INSERT INTO BOOKS(
		Booking_Code,
		Date_of_Booking,
		Ticket_Number,
		PID)
		SELECT
			(SELECT CAST(RAND() * 1000000 AS INT) AS [RandomNumber]),
			GETDATE(),
			i.Ticket_Number,
			i.PID
		FROM inserted i;
 END
GO

/*Trigger to automatically put cancelled tickets in cancel table*/
Create TRIGGER CancelTable ON Ticket
FOR Delete
AS
BEGIN
    INSERT INTO [dbo].[CANCELS]
    (
    [Surcharge],
    [Date_of_Cancellation],
    [Ticket_Number],
    PID
    
    )
    SELECT 
    (SELECT CAST(RAND() * 100 AS INT) AS [RandomNumber]),GetDate(),[Ticket_Number], PID
    
    FROM deleted

END;
