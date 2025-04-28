DROP TABLE IF EXISTS Dim_Customer;

CREATE TABLE Dim_Customer (
    Customer_Key INT PRIMARY KEY IDENTITY,
    Customer_ID INT,
    First_Name VARCHAR(200),
    Last_Name VARCHAR(200),
    Email VARCHAR(350),
    City VARCHAR(100),
    Country VARCHAR(200),
    Effective_From DATE,
    Effective_To DATE,
    Is_Current BIT
);
