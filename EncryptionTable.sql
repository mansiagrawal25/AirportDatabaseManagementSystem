CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'Joanofarc#8';

USE  ADMS;
GO  

CREATE CERTIFICATE Employeessn01
   WITH SUBJECT = 'Social Security Number' ;
GO  

CREATE SYMMETRIC KEY SSN_Key_01  
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE Employeessn01;
GO  

USE ADMS;
GO  

-- Create a column in which to store the encrypted data.  
ALTER TABLE Employee
    ADD EncryptedNationalIDNumber varbinary(128);   
GO  

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY SSN_Key_01  
   DECRYPTION BY CERTIFICATE Employeessn01 ;

-- Encrypt the value in column SSN with Symmetric
-- key SSN_Key_01. Save the result in column EncryptedNationalIDNumber.  
UPDATE Employee
SET EncryptedNationalIDNumber = EncryptByKey(Key_GUID('SSN_Key_01'), SSN);
GO  

-- Verify the encryption.  
-- First, open the symmetric key with which to decrypt the data.  
OPEN SYMMETRIC KEY SSN_Key_01  
   DECRYPTION BY CERTIFICATE Employeessn01;
GO  

-- Now list the original ID, the encrypted ID, and the   
-- decrypted ciphertext. If the decryption worked, the original  
-- and the decrypted ID will match.  
SELECT SSN ,  EncryptedNationalIDNumber 
    AS 'Encrypted ID Number',  
    CONVERT(nvarchar, DecryptByKey(EncryptedNationalIDNumber))   
    AS 'Decrypted ID Number'  
    FROM Employee;
GO  


--- Encryption for Passengers Details --
ALTER TABLE [dbo].[PASSENGERDETAILS]
    ADD EncryptedPassno  varbinary(128); 
GO  

  
OPEN SYMMETRIC KEY Pass_Key_01 
   DECRYPTION BY CERTIFICATE Passno ;

  
UPDATE [dbo].[PASSENGERDETAILS]
SET EncryptedPassno = EncryptByKey(Key_GUID('Pass_Key_01'), Passport_No);


GO  
  
OPEN SYMMETRIC KEY Pass_Key_01
   DECRYPTION BY CERTIFICATE Passno;
GO  

 
SELECT [Passport_No], EncryptedPassno
    AS 'Encrypted Passport Number',
    CONVERT(nvarchar, DecryptByKey(EncryptedPassno))   
    AS 'Decrypted Pass Number'
    FROM [dbo].[PASSENGERDETAILS];
GO  

CREATE MASTER KEY ENCRYPTION BY   
PASSWORD = 'Joanofarc#8';


USE  ADMS;
GO  

CREATE CERTIFICATE Employeessn01
   WITH SUBJECT = 'Social Security Number' ;
GO  

CREATE SYMMETRIC KEY SSN_Key_01  
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE Employeessn01;
GO  

USE ADMS;
GO  

-- Create a column in which to store the encrypted data.  
ALTER TABLE Employee
    ADD EncryptedNationalIDNumber varbinary(128);   
GO  

-- Open the symmetric key with which to encrypt the data.  
OPEN SYMMETRIC KEY SSN_Key_01  
   DECRYPTION BY CERTIFICATE Employeessn01 ;

-- Encrypt the value in column SSN with Symmetric
-- key SSN_Key_01. Save the result in column EncryptedNationalIDNumber.  
UPDATE Employee
SET EncryptedNationalIDNumber = EncryptByKey(Key_GUID('SSN_Key_01'), SSN);
GO  

-- Verify the encryption.  
-- First, open the symmetric key with which to decrypt the data.  
OPEN SYMMETRIC KEY SSN_Key_01  
   DECRYPTION BY CERTIFICATE Employeessn01;
GO  

-- Now list the original ID, the encrypted ID, and the   
-- decrypted ciphertext. If the decryption worked, the original  
-- and the decrypted ID will match.  
SELECT SSN ,  EncryptedNationalIDNumber 
    AS 'Encrypted ID Number',  
    CONVERT(nvarchar, DecryptByKey(EncryptedNationalIDNumber))   
    AS 'Decrypted ID Number'  
    FROM Employee;
GO  


--- Encryption for Passengers Details --
ALTER TABLE [dbo].[PASSENGERDETAILS]
    ADD EncryptedPassno  varbinary(128); 
GO  

  
OPEN SYMMETRIC KEY Pass_Key_01 
   DECRYPTION BY CERTIFICATE Passno ;

  
UPDATE [dbo].[PASSENGERDETAILS]
SET EncryptedPassno = EncryptByKey(Key_GUID('Pass_Key_01'), Passport_No);


GO  
  
OPEN SYMMETRIC KEY Pass_Key_01
   DECRYPTION BY CERTIFICATE Passno;
GO  

 
SELECT [Passport_No], EncryptedPassno
    AS 'Encrypted Passport Number',
    CONVERT(nvarchar, DecryptByKey(EncryptedPassno))   
    AS 'Decrypted Pass Number'
    FROM [dbo].[PASSENGERDETAILS];
GO  


