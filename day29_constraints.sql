-- Create Books table with Primary Key

CREATE DATABASE BookStore;

USE BookStore;CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(20)
);

-- Create Orders table with Foreign Key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    OrderDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE (ISBN);

DELETE FROM Orders
WHERE OrderID = 101;
 
TRUNCATE TABLE Orders;
