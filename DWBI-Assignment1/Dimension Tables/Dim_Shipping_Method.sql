DROP TABLE IF EXISTS Dim_Shipping_Method;

CREATE TABLE Dim_Shipping_Method (
    Method_ID INT PRIMARY KEY,
    Method_Name VARCHAR(100),
    Cost DECIMAL(6, 2)
);
