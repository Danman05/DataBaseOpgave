USE [Master]
GO

CREATE DATABASE [Sales]
GO

USE [Sales]
GO

CREATE TABLE [dbo].[Product]
(
[ProductId] [uniqueidentifier] DEFAULT NEWID() NOT NULL,
[ProductName] [nchar](50) NULL,
[ProductDescription] [nchar](3000) NULL,
[ProductPrice] MONEY NULL
) ON [PRIMARY]
GOUSE [Sales]
GO

WHILE (1=1)
 BEGIN
 TRUNCATE TABLE [Sales].[dbo].[Product]
 DECLARE @Record INT
 SET @Record=1
 WHILE @Record<=10000
 BEGIN
 INSERT INTO [Sales].[dbo].[Product]
 ([ProductName] ,[ProductDescription],[ProductPrice])
 VALUES ('Product ' + STR(@Record), 'Description ' + STR(@Record), @Record*100/3)
 SET @RECORD = @RECORD+1
 END
 SELECT COUNT(ProductID) as RecordsCreated FROM [Sales].[dbo].[Product]
ENDUSE ERD_TestDB
CREATE LOGIN oh WITH PASSWORD = 'Kode1234';
CREATE LOGIN [Ip] WITH PASSWORD = 'Kode1234';
CREATE LOGIN ll WITH PASSWORD = 'Kode1234!';
CREATE LOGIN Daniel WITH PASSWORD = 'Kode1234!';SELECT CURRENT_TIMESTAMP;
SELECT * from dbo.Product
SELECT CURRENT_TIMESTAMP;
