/*Procedure to compare the product price, the procedue takes 1 input as the price, and will display all products that costs more than the input*/
CREATE PROCEDURE ReturnProductToPrice
@UnitPrice int
AS
SELECT UnitPrice
FROM Product
WHERE UnitPrice > @UnitPrice
GO;

/* Executes procedure */
EXEC ReturnProductToPrice 50;
