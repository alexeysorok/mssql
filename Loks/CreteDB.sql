-- CREATE DATABASE MyLoks
-- USE MyLoks
CREATE TABLE Orders
(
    OrderId INT NOT NULL,
    CustomerId INT NOT NULL,
    /* */
    CONSTRAINT PK_Orders
    PRIMARY KEY CLUSTERED(OrderID)
);

ALTER TABLE Orders
ADD Processed INT;

