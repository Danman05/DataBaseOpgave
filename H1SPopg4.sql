/* Procedure to search an customer by taking input*/
CREATE PROCEDURE SearchCustomer
@CustomerFirst varchar(30)

AS
SELECT FirstName, LastName
FROM Customer
WHERE FirstName like @CustomerFirst
GO;
/* Executes the procedure, and will find Daniel Tonini*/
EXEC SearchCustomer 'Daniel'

