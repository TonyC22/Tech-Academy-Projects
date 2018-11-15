CREATE TABLE Publisher (
	Name VARCHAR(50) PRIMARY KEY,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);


CREATE TABLE Book (
	BookId INT PRIMARY KEY IDENTITY,
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES Publisher(Name)
);


CREATE TABLE Book_Author (
	BookId INT FOREIGN KEY REFERENCES Book(BookId),
	AuthorName VARCHAR(50) NOT NULL
);


CREATE TABLE Library_Branch (
	BranchId INT PRIMARY KEY IDENTITY,
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);


CREATE TABLE Book_Copies (
	BookId INT FOREIGN KEY REFERENCES Book(BookId),
	BranchId INT FOREIGN KEY REFERENCES Library_Branch(BranchId),
	No_Of_Copies INT NOT NULL
);


CREATE TABLE Book_Loans (
	BookId INT FOREIGN KEY REFERENCES Book(BookId),
	BranchId INT FOREIGN KEY REFERENCES Library_Branch(BranchId),
	CardNo INT NOT NULL,
	DateOut DATE,
	DueDate DATE
);


CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY IDENTITY (1000, 1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);


INSERT INTO Publisher (Name, Address, Phone)
	VALUES 
		('Caarl', 'London', 'xxx-xxx-xxx5'),
		('Dasani', 'New York', 'xxx-xxx-xxx5'),
		('Charmy', 'London', 'xxx-xxx-xxx3'),
		('Ray Books', 'Lake Geneva', 'xxx-xxx-xxx4'),
		('Viking', 'New York', 'xxx-xxx-xxx5'),
		('Marios', 'New York', 'xxx-xxx-xxx3'),
		('Bergants', 'Crows Nest', 'xxx-xxx-xxx1'),
		('Pastini', 'Los Angeles', 'xxx-xxx-xxx6'),
		('Indigo', 'New York', 'xxx-xxx-xxx5');


INSERT INTO Book (Title, PublisherName)
	Values
		('Best Water Around','Dasani'),
		('Tasty Water','Dasani'),
		('Fresh Springs','Dasani'),
		('Tastiest Water','Dasani'),
		('Giant Glaciers','Dasani'),
		('Melting Glaciers','Dasani'),
		('Skater Guy','Caarl'),
		('Jake the Skater','Caarl'),
		('Jake the Cripple','Caarl'),
		('Jake Back at it','Caarl'),
		('The Board Strikes Back','Caarl'),
		('Lonely Trails','Caarl'),
		('The Tostito','Charmy'),
		('The Last Call','Charmy'),
		('Luckys Last Hope','Charmy'),
		('Long Trail Home','Charmy'),
		('Infinity Edge','Charmy'),
		('Razer Ride','Charmy'),
		('Skylit Drive','Ray Books'),
		('Banished','Ray Books'),
		('Exiled','Ray Books'),
		('The Costco Trip','Viking'),
		('The Agreement','Viking'),
		('Caarls Last Shot','Caarl'),
		('Caarl Has No Fear','Caarl'),
		('The Shining','Viking'),
		('It','Viking'),
		('The Lost Tribe','Marios'),
		('The Big Bands Bands','Bergants'),
		('The Two Towers','Bergants'),
		('The Secret to Life','Bergants'),
		('Happyness 101','Pastini'),
		('How to Life','Pastini'),
		('The End of Us','Pastini'),
		('Why','Pastini'),
		('The Final Countdown','Indigo'),
		('The End Vol. 1','Indigo'),
		('The End Vol. 2','Indigo'),
		('The End Vol. 3','Indigo'),
		('The End Vol. 4','Indigo');

INSERT INTO Book_Author(BookId, AuthorName)
	VALUES
		(1, 'J.K. Rowling'),
		(2, 'J.K. Rowling'),
		(3, 'J.K. Rowling'),
		(4, 'J.K. Rowling'),
		(5, 'J.K. Rowling'),
		(6, 'J.K. Rowling'),
		(7, 'J.K. Rowling'),
		(8, 'J.K. Rowling'),
		(9, 'J.K. Rowling'),
		(10, 'J.K. Rowling'),
		(11, 'J.K. Rowling'),
		(12, 'J.K. Rowling'),
		(13, 'Shakespeare'),
		(14, 'Shakespeare'),
		(14, 'Shakespeare'),
		(15, 'Shakespeare'),
		(16, 'Shakespeare'),
		(17, 'Shakespeare'),
		(18, 'Shakespeare'),
		(19, 'Leonidase'),
		(20, 'Leonidase'),
		(21, 'Leonidase'),
		(22, 'Matt White'),
		(23, 'Matt White'),
		(24, 'Robert Hampton'),
		(25, 'Robert Hampton'),
		(26, 'Stephen King'),
		(27, 'Stephen King'),
		(28, 'Kyle Rogers'),
		(29, 'Chris Tucker'),
		(30, 'Chris Tucker'),
		(31, 'Chris Tucker'),
		(32, 'Robert Downy'),
		(33, 'Robert Downy'),
		(34, 'Robert Downy'),
		(35, 'Robert Downy'),
		(36, 'Lucky Cap'),
		(37, 'Lucky Cap'),
		(38, 'Lucky Cap'),
		(39, 'Lucky Cap'),
		(40, 'Lucky Cap');


INSERT INTO Library_Branch (BranchName, Address)
	Values
		('Central', '1221 W Buckeye Rd., Phoenix, AZ'),
		('Sharpstown', '2519 Tree St., Phoenix, AZ'),
		('Munds', '1923 24th Ave., Phoenix, AZ'),
		('Tempe', '8332 W Oscar Rd., Phoenix, AZ'),
		('Glendale', '2259 E Bird Ln., Phoenix, AZ');


INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
	Values
		(1, 1, 3),
		(2, 1, 2),
		(3, 1, 2),
		(4, 1, 2),
		(5, 1, 2),
		(27, 1, 3),
		(30, 1, 2),
		(31, 1, 2),
		(36, 1, 4),
		(37, 1, 2),
		(38, 1, 4),
		(39, 1, 2),
		(40, 1, 3),
		(6, 2, 2),
		(7, 2, 3),
		(8, 2, 3),
		(9, 2, 2),
		(18, 2, 2),
		(19, 2, 5),
		(20, 2, 2),
		(21, 2, 2),
		(28, 2, 3),
		(34, 2, 2),
		(35, 2, 2),
		(9, 3, 3),
		(10, 3, 2),
		(11, 3, 2),
		(12, 3, 2),
		(13, 3, 2),
		(24, 3, 4),
		(25, 3, 4),
		(26, 3, 4),
		(35, 3, 2),
		(36, 3, 2),
		(4, 4, 2),
		(5, 4, 3),
		(14, 4, 2),
		(15, 4, 2),
		(16, 4, 5),
		(17, 4, 2),
		(22, 4, 2),
		(25, 4, 2),
		(26, 4, 3),
		(30, 4, 2),
		(31, 4, 4),
		(1, 5, 2),
		(3, 5, 3),
		(13, 5, 2),
		(14, 5, 4),
		(18, 5, 6),
		(23, 5, 2),
		(27, 5, 2),
		(29, 5, 2),
		(32, 5, 3),
		(40, 5, 2);



INSERT INTO Borrower (Name, Address, Phone)
	VALUES
		('Stephen Hawking', '430 SW 13th Ave', '623-555-0142'),
		('Alex Jones', '4359 W Elm St.', '602-555-0175'),
		('Jim Roberts', '3148 Rose Street', '602-555-0187'),
		('Mister Rogers', '5020 Shakes Dr.', '602-555-0100'),
		('Ryan Bands', '492 W 9th Ave', '623-555-0156'),
		('Alex Asper', '242 Jomax Rd.', '602-555-0183'),
		('Conner Bell', '1987 Pleasant Drive', '480-555-0138'),
		('Shad Shirk', '5328 Honda Rd.', '620-555-0172'),
		('Rob Big', '3591 Beaver St.', '602-555-0189'),
		('The Rock', '9295 Bacon Dr.', '480-2536-3486');



INSERT INTO Book_Loans (BookId, BranchId, CardNo, DateOut, DueDate)
	VAlUES
		(1, 1, 1000, '2015-01-02', '2015-07-27'),
		(2, 1, 1000, '2015-01-02', '2015-07-27'), 
		(3, 1, 1000, '2015-01-02', '2015-07-27'), 
		(4, 1, 1000, '2015-01-02', '2015-07-27'), 
		(5, 1, 1000, '2015-01-02', '2015-07-27'), 
		(27, 1, 1000, '2015-01-02', '2015-07-27'), 
		(36, 1, 1000, '2015-01-02', '2015-07-27'), 
		(37, 1, 1000, '2015-01-02', '2015-07-27'), 
		(6, 2, 1001, '2015-01-02', '2015-08-04'), 
		(32, 5, 1001, '2015-01-05', '2015-08-11'), 
		(18, 2, 1002, '2015-01-05', '2015-07-29'), 
		(19, 2, 1002, '2015-01-05', '2015-07-29'), 
		(20, 2, 1002, '2015-01-05', '2015-07-29'), 
		(21, 2, 1002, '2015-01-05', '2015-07-29'), 
		(34, 2, 1002, '2015-01-05', '2015-07-29'), 
		(35, 2, 1002, '2015-01-05', '2015-07-29'), 
		(12, 3, 1003, '2015-01-09', '2015-08-13'),
		(13, 3, 1003, '2015-01-09', '2015-08-13'), 
		(25, 3, 1003, '2015-01-09', '2015-08-13'), 
		(26, 3, 1003, '2015-01-09', '2015-08-13'), 
		(23, 5, 1003, '2015-01-09', '2015-08-13'), 
		(4, 4, 1004, '2015-01-14', '2015-08-01'),  
		(14, 4, 1004, '2015-01-14', '2015-08-01'),  
		(15, 4, 1004, '2015-01-14', '2015-08-01'),  
		(16, 4, 1004, '2015-01-14', '2015-08-01'),  
		(17, 4, 1004, '2015-01-14', '2015-08-01'),  
		(18, 5, 1004, '2015-01-15', '2015-08-02'),  
		(23, 5, 1004, '2015-06-27', '2015-08-02'),  
		(27, 5, 1004, '2015-06-27', '2015-08-02'),  
		(7, 2, 1005, '2015-01-05', '2015-07-29'),  
		(8, 2, 1005, '2015-01-05', '2015-07-29'),
		(9, 2, 1005, '2015-01-05', '2015-07-29'),
		(5, 4, 1005, '2015-06-27', '2015-08-27'),
		(16, 4, 1005, '2015-06-27', '2015-08-27'),
		(31, 4, 1005, '2015-06-27', '2015-08-27'),
		(13, 5, 1006, '2015-05-23', '2015-07-23'),
		(14, 5, 1006, '2015-05-23', '2015-07-23'),
		(32, 5, 1006, '2015-05-23', '2015-07-23'),
		(40, 5, 1006, '2015-05-23', '2015-07-23'),
		(9, 3, 1007, '2015-06-17', '2015-08-17'),
		(10, 3, 1007, '2015-06-17', '2015-08-17'),
		(11, 3, 1007, '2015-06-17', '2015-08-17'),
		(35, 3, 1007, '2015-06-17', '2015-08-17'),
		(30, 4, 1007, '2015-06-17', '2015-08-17'),
		(36, 1, 1008, '2015-05-16', '2015-07-16'),
		(38, 1, 1008, '2015-05-16', '2015-07-16'),
		(19, 2, 1008, '2015-05-16', '2015-07-16'),
		(24, 3, 1008, '2015-07-18', '2015-09-18'),
		(25, 3, 1008, '2015-07-18', '2015-09-18'),
		(26, 3, 1008, '2015-07-18', '2015-09-18');


GO
CREATE PROCEDURE sp1_Task1
AS
SELECT Title, Library_Branch.BranchName, No_Of_Copies from Book_Copies 
INNER JOIN Book ON  Book_Copies.BookId = Book.BookId
INNER JOIN Library_Branch ON Book_Copies.BranchId = Library_Branch.BranchId
WHERE Title = 'The Lost Tribe' AND Library_Branch.BranchName = 'Sharpstown';
Go



GO
CREATE PROCEDURE sp2_Task2
AS
SELECT Title, Library_Branch.BranchName, No_Of_Copies from Book_Copies 
INNER JOIN Book ON  Book_Copies.BookId =Book.BookId
INNER JOIN Library_Branch ON Book_Copies.BranchId = Library_Branch.BranchId
where Title = 'The Lost Tribe';
GO



GO
CREATE PROCEDURE sp3_Task3
AS
SELECT Borrower.Name FROM Borrower
WHERE Borrower.CardNo NOT IN(SELECT Book_Loans.CardNo FROM Book_Loans);
GO



GO
CREATE PROCEDURE sp4_Task4 @TodayDate NVARCHAR(30)
AS
SELECT Title, Borrower.Name, Borrower.Address FROM Borrower
INNER JOIN Book_Loans ON Borrower.CardNo = Book_Loans.CardNo
INNER JOIN Book ON Book_Loans.BookId = Book.BookId
WHERE BranchId = 2 And DueDate = @TodayDate;
GO



GO 
CREATE PROCEDURE sp5_Task5
AS
SELECT BranchName, COUNT(BookId) AS Number_Of_Loans FROM Library_Branch
INNER JOIN Book_Loans ON Library_Branch.BranchId = Book_Loans.BranchId
GROUP BY BranchName;
GO



GO 
CREATE PROCEDURE sp6_Task6
AS
SELECT Borrower.Name, COUNT(Book_Loans.BookId) AS Books_Out, Borrower.Address FROM Borrower
INNER JOIN Book_Loans ON Borrower.CardNo = Book_Loans.CardNo
GROUP BY Borrower.Name, Borrower.Address
HAVING COUNT(Book_Loans.BookId) > 5;
GO



GO
CREATE PROCEDURE sp7_Task
AS
SELECT Title, No_Of_Copies, BranchName FROM Book
INNER JOIN Book_Copies ON Book.BookId = Book_Copies.BookId
INNER JOIN Book_Author ON Book.BookId = Book_Author.BookId
INNER JOIN Library_Branch ON  Book_Copies.BranchId = Library_Branch.BranchId
WHERE AuthorName = 'Stephen King' AND Library_Branch.BranchName = 'Central';
GO

