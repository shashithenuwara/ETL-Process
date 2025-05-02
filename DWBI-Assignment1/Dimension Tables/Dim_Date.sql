CREATE TABLE Dim_Date (
    Date_ID INT PRIMARY KEY,
    Full_Date DATE,
    Day INT,
    Month_Name VARCHAR(10),    -- This line defines the column!
    Quarter VARCHAR(10),
    Year INT
);
DECLARE @StartDate DATE = '2020-01-01';
DECLARE @EndDate DATE = '2025-12-31';

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO dbo.Dim_Date (
        Date_ID,
        Full_Date,
        Day,
        Month_Name,
        Quarter,
        Year
    )
    VALUES (
        CONVERT(INT, FORMAT(@StartDate, 'yyyyMMdd')),  
        @StartDate,                                     
        DAY(@StartDate),                             
        DATENAME(MONTH, @StartDate),                    
        DATEPART(QUARTER, @StartDate),                  
        YEAR(@StartDate)                                
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;

