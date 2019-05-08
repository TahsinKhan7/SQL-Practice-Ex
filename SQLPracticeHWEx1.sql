--SQL Practice Sheet
--Excersise 1

USE Northwind
--1.1
--SELECT CustomerID, CompanyName, [Address] + ', ' + PostalCode + ', ' + City + ', ' + Country AS 'Full Address' FROM Customers WHERE City = 'Paris' OR City = 'London';

--1.2
--SELECT ProductName FROM Products WHERE QuantityPerUnit LIKE '%bottles%';

--1.3
--SELECT Products.*, Suppliers.CompanyName, Suppliers.Country FROM Products INNER JOIN Suppliers 
--ON Products.SupplierID = Suppliers.SupplierID WHERE QuantityPerUnit LIKE '%bottles%';

--1.4
--SELECT Products.CategoryID, CategoryName, COUNT(ProductName) AS 'PerCategoryCount'
--FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID 
--GROUP BY Products.CategoryID, CategoryName ORDER BY [PerCategoryCount] DESC;

--1.5
--SELECT FirstName +' '+ LastName AS 'Employee Name', City AS 'City of Residence' FROM Employees;

--1.6 List Sales Totals for all Sales Regions (via the Territories table using 4 joins) 
-- with a Sales Total greater than 1,000,000. Use rounding or FORMAT to present the numbers.
--1.6 IS INCOMPLETE
--SELECT Territories.TerritoryID FROM Territories INNER JOIN EmployeeTerritories ON Territories.TerritoryID = EmployeeTerritories.TerritoryID 
--WHERE EXISTS (SELECT EmployeeTerritories.EmployeeID FROM EmployeeTerritories INNER JOIN Orders ON EmployeeTerritories.EmployeeID = Orders.OrderID 
--WHERE EXISTS (SELECT [Order Details].OrderID, SUM(UnitPrice*Quantity - (UnitPrice*Quantity*Discount)) AS 'Total' FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID GROUP BY [Order Details].OrderID));

--1.7
--SELECT COUNT(OrderID) AS 'Orders With Freight > 100.00 in USA or UK' FROM Orders 
--WHERE Freight > 100.00 AND ShipCountry = 'USA' OR ShipCountry = 'UK'; 

--1.8
--SELECT TOP 1 OrderID AS 'OrderID of the order with the highest discount applied', Discount FROM [Order Details] ORDER BY Discount DESC;