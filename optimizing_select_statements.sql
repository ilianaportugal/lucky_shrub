## Create Database
CREATE DATABASE Lucky_Shrub;

## Use the Database
USE Lucky_Shrub;

## Create an Orders table
CREATE TABLE Orders(OrderID INT NOT NULL, ClientID VARCHAR(10) DEFAULT NULL, ProductID VARCHAR(10) DEFAULT NULL, Quantity INT DEFAULT NULL, Cost DECIMAL(6,2) DEFAULT NULL, Date DATE DEFAULT NULL, PRIMARY KEY (OrderID)); 

## Create an Employees table
CREATE TABLE Employees(EmployeeID INT DEFAULT NULL, FullName VARCHAR(100) DEFAULT NULL, Role VARCHAR(50) DEFAULT NULL, Department VARCHAR(255) DEFAULT NULL); 

## Insert data into the Orders table
INSERT INTO Orders (OrderID, ClientID, ProductID , Quantity, Cost, Date)  
VALUES  
(1, "Cl1", "P1", 10, 500, "2020-09-01"), 
(2, "Cl2", "P2", 5, 100, "2020-09-05"),  
(3, "Cl3", "P3", 20, 800, "2020-09-03"),  
(4, "Cl4", "P4", 15, 150, "2020-09-07"),  
(5, "Cl3", "P3", 10, 450, "2020-09-08"),  
(6, "Cl2", "P2", 5, 800, "2020-09-09"),  
(7, "Cl1", "P4", 22, 1200, "2020-09-10"),  
(8, "Cl3", "P1", 15, 150, "2020-09-10"),  
(9, "Cl1", "P1", 10, 500, "2020-09-12"),  
(10, "Cl2", "P2", 5, 100, "2020-09-13"),  
(11, "Cl1", "P2", 15, 80, "2020-09-12"), 
(12, "Cl1", "P1", 10, 500, "2022-09-01"),  
(13, "Cl2", "P2", 5, 100, "2022-09-05"),  
(14, "Cl3", "P3", 20, 800, "2022-09-03"),  
(15, "Cl4", "P4", 15, 150, "2022-09-07"),  
(16, "Cl3", "P3", 10, 450, "2022-09-08"),  
(17, "Cl2", "P2", 5, 800, "2022-09-09"),  
(18, "Cl1", "P4", 22, 1200, "2022-09-10"),  
(19, "Cl3", "P1", 15, 150, "2022-09-10"),  
(20, "Cl1", "P1", 10, 500, "2022-09-12"),  
(21, "Cl2", "P2", 5, 100, "2022-09-13"),   
(22, "Cl2", "P1", 10, 500, "2021-09-01"),  
(23, "Cl2", "P2", 5, 100, "2021-09-05"),  
(24, "Cl3", "P3", 20, 800, "2021-09-03"),  
(25, "Cl4", "P4", 15, 150, "2021-09-07"),  
(26, "Cl1", "P3", 10, 450, "2021-09-08"),  
(27, "Cl2", "P1", 20, 1000, "2022-09-01"),  
(28, "Cl2", "P2", 10, 200, "2022-09-05"),  
(29, "Cl3", "P3", 20, 800, "2021-09-03"); 

## Insert data into the Employees table
INSERT INTO Employees (EmployeeID, FullName,  Role, Department)  
VALUES    
(1, "Seamus Hogan", "Manager", "Management"),    
(2, "Thomas Eriksson", "Assistant ", "Sales"),   
(3, "Simon Tolo", "Executive", "Management"),   
(4, "Francesca Soffia", "Assistant  ", "Human Resources"),   
(5, "Emily Sierra", "Accountant", "Finance"),    
(6, "Greta Galkina", "Accountant", "Finance"), 
(7, "Maria Carter", "Executive", "Human Resources"), 
(8, "Rick Griffin", "Manager", "Marketing"); 

## Task 1
## Use SELECT query to retrieve all data from Orders table
SELECT * FROM Orders;

## Optimize above SELECT query to show OrderID, ProductID, Quantity and Date columns
SELECT OrderID, ProductID, Quantity, Date FROM Orders;

## Task 2
## Find order placed by client 'Cl1'
SELECT * FROM Orders WHERE ClientID = ‘CL1’;

## Run query with EXPLAIN statement
EXPLAIN SELECT * FROM Orders WHERE ClientID = ‘CL1’;

## Optimize above SELECT query by creating an index 
CREATE INDEX IdxClientID ON Orders(ClientID);

## RUN EXPLAIN SELECT query again
EXPLAIN SELECT * FROM Orders WHERE ClientID = ‘CL1’;

## Task 3
## Write a SELECT query to find the details of the employee whose last name is "Tolo"
SELECT * FROM Employees WHERE FullName LIKE "%Tolo"; 

## Add a new column to the Employee table called ReverseFullName
ALTER TABLE Employees ADD COLUMN ReverseFullName VARCHAR(200);

## Populate column with the name of each employee as its values, but in reverse
UPDATE Employees SET ReverseFullName = CONCAT(SUBSTRING_INDEX(FULLName, ‘ ‘, -1), ‘ ‘, SUBSTRING_INDEX(FullName, ‘ ‘, 1));

## Create an index on the ReverseFullName column
CREATE INDEX IdxReverseFullName ON Employees(ReverseFullName);

## Write a SELECT query using a trailing wildcard to find employee whose last name is "Tolo"
SELECT * FROM Employees WHERE FullName LIKE "Tolo%"; 