/* Creates procedure to add a new customer to the Customer table*/
CREATE PROCEDURE InsertCustomer

@FirstName nvarchar(40),
@LastName nvarchar(40),
@City nvarchar(40),
@Country nvarchar(40),         
@Phone nvarchar(20),
@CustID int Output
AS
SELECT @FirstName, @LastName, @City, @Country, @Phone
FROM Customer

INSERT INTO Customer(FirstName, LastName, City, Country, Phone) VALUES (@FirstName, @LastName, @City, @Country, @Phone)
GO;
/* Executes the procedure, and gets the custId from the customer, so the id will match with the rest of the customers */
declare @output int;
EXEC InsertCustomer 'Bob','Nielsen','Korsør','Denmark','42 42 42 42', @CustID = @output output
SELECT * FROM Customer


DELETE FROM Customer WHERE FirstName like 'Bob'
