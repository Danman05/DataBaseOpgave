/* Creates procedure That returns customers full name, in one coloumn, so concat is used*/
CREATE PROCEDURE ReturnCustFullName
AS
SELECT CONCAT(FirstName, ' ', LastName) AS 'Full Name'
FROM Customer
ORDER BY [Full Name]
GO;

/*  Executes the procedure*/
EXEC ReturnCustFullName;


