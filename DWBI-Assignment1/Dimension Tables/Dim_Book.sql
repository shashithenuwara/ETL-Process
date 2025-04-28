DROP TABLE IF EXISTS Dim_Book;

CREATE TABLE Dim_Book (
    Book_Key INT PRIMARY KEY IDENTITY,
    Book_ID INT,
    Title VARCHAR(400),
    ISBN13 VARCHAR(13),
    Language VARCHAR(50),
    Pages INT,
    Publisher VARCHAR(400),
    Author VARCHAR(400)
);
