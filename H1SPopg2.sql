/* Creates procedure CompanynameUpper, the company name had to be in upper case, so Upper is used*/
CREATE PROCEDURE CompanyNameUPPER
AS
SELECT UPPER(CompanyName)
FROM Supplier
GO;
/* Executes procedure */
EXEC CompanyNameUPPER;