DROP TABLE IF EXISTS Fact_Sales;

CREATE TABLE Fact_Sales (
    Sale_ID INT PRIMARY KEY IDENTITY,
    Date_ID INT FOREIGN KEY REFERENCES Dim_Date(Date_ID),
    Book_Key INT FOREIGN KEY REFERENCES Dim_Book(Book_Key),
    Customer_Key INT FOREIGN KEY REFERENCES Dim_Customer(Customer_Key),
    Method_ID INT FOREIGN KEY REFERENCES Dim_Shipping_Method(Method_ID),
    Address_ID INT,
    Quantity INT,
    Price DECIMAL(5, 2),
    Total_Amount AS (Quantity * Price),
    accm_txn_create_time DATETIME,
    accm_txn_complete_time DATETIME,
    txn_process_time_hours AS DATEDIFF(HOUR, accm_txn_create_time, accm_txn_complete_time)
);
