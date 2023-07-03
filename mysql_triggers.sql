## Create Database
CREATE DATABASE Lucky_Shrub;

## Use Database
USE Lucky_Shrub;

## Create Products table
CREATE TABLE Products (ProductID VARCHAR(10), ProductName VARCHAR(100),BuyPrice DECIMAL(6,2), SellPrice DECIMAL(6,2), NumberOfItems INT);

## Populate Products table
INSERT INTO Products (ProductID, ProductName, BuyPrice, SellPrice, NumberOfITems)

VALUES ("P1", "Artificial grass bags ", 40, 50, 100),  
("P2", "Wood panels", 15, 20, 250),  
("P3", "Patio slates",35, 40, 60),  
("P4", "Sycamore trees ", 7, 10, 50),  
("P5", "Trees and Shrubs", 35, 50, 75),  
("P6", "Water fountain", 65, 80, 15);

## Create Notification table
CREATE TABLE Notifications (NotificationID INT AUTO_INCREMENT, Notification VARCHAR(255), DateTime TIMESTAMP NOT NULL, PRIMARY KEY(NotificationID));

## Task 1: Create an INSERT trigger that checks if the SellPrice of a product is less than the BuyPrice after a new product is inserted in the Products table
## If this happens then insert a notification into the Notifications table
DELIMITER //

CREATE TRIGGER ProductSellPriceInsertCheck 
AFTER INSERT 
ON Products FOR EACH ROW 
BEGIN 
IF NEW.SellPrice <= NEW.BuyPrice
THEN 
INSERT INTO Notifications(Notification,DateTime) VALUES (CONCAT("A SellPrice less than the BuyPrice was inserted for ProductID ",  NEW.ProductID), NOW()); 
END IF;
END;//

## Task 2: Create an UPDATE trigger that checks if a product is updated with a SellPrice less than or equal to the BuyPrice
## If this happens then insert a notification in the Notifications table
DELIMITER //

CREATE TRIGGER ProductSellPriceUpdateCheck
AFTER UPDATE 
ON Products FOR EACH ROW
BEGIN
IF NEW.SellPrice <= NEW.BuyPrice
THEN 
INSERT INTO Notifications(Notification,DateTime) VALUES (CONCAT(NEW.ProductID, "was updated with a Sell Price of ", NEW.SellPrice, " which is the same or less than the BuyPrice"), NOW()); 
END IF;
END;//

## Task 3: Create a DELETE trigger to INSERT a notification in the Notifications table after a product has been deleted from the Products table
DELIMITER //

CREATE TRIGGER NotifyProductDelete
AFTER DELETE 
ON Products FOR EACH ROW 
INSERT INTO Notifications(Notification,DateTime) VALUES (CONCAT("The product with a ProductID ", OLD.ProductID," was deleted"), NOW());

DELIMITER;
