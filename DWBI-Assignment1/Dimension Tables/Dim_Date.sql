DROP TABLE IF EXISTS Dim_Date;

CREATE TABLE Dim_Date (
    Date_ID INT PRIMARY KEY,
    Full_Date DATE,
    Day INT,
    Month_Name VARCHAR(10),
    Quarter VARCHAR(10),
    Year INT
);
