Create Table Product (ProductID INT IDENTITY (1,1) Not Null PRIMARY KEY, 
ProductName Varchar(50) Not Null,
CategoryID INT Not Null REFERENCES Category(CategoryID),
SizeID INT Not Null References Size(SizeID),
ColorID INT Not Null references Color(ColorID),
Price INT NOt NULL) 

Select * from Product

Create Table Category(CategoryID INT IDENTITY(1,1) Not Null Primary Key,
CategoryName Varchar(50) Not Null)

Select * from Category

Create Table Size (SizeID INT IDENTITY(1,1) Not Null Primary Key,
SizeLabel Varchar(10) Not Null)

Select * from Size 

Create Table Color (ColorID INT IDENTITY (1,1) Not Null Primary Key,
ColorName Varchar(50) Not Null)

Select * from Color 

Insert into Color Values ('red'),('green'),('white'),('black'), ('gray'), ('orange'), ('purple'), ('blue'),('yellow'), ('pink')

Insert into Size Values ('XS'),('S'),('M'),('L'),('XL')

Insert into Category Values ('Tshirt'), ('Top'), ('Short'), ('Pant'), ('Sweatshirt'), ('Dress'), ('Underwears')

Insert into Product Values ('LcWaikiki',1,2,5,10),
('H&M',5,3,9,15), ('H&M',4,2,7,20),
('H&M',7,3,9,30),('Chanel',4,2,8,120),
('Chanel',1,4,11,250), ('Chanel',2,5,10,350),
('Chanel',7,3,8,550), ('TrendyolWoman', 2,3,6,5),
('Puma',2,3,7,100), ('Puma',2,3,7,220),
('Puma',1,4,6,450), ('GymShark',3,5,7,380),
('GymShark',4,4,6,240), ('Primark',6,5,7,9),
('Primark',6,4,11,5), ('Primark',3,5,4,7),
('Primark',7,5,10,15), ('Zara',1,2,3,60),
('Zara',5,5,4,160), ('Zara',1,5,11,140),
('Zara',5,1,9,130), ('Zara',7,5,11,200), 
('TommyHilfiger',2,2,9,230), ('TommyHilfiger',6,4,6,450),
 ('TommyHilfiger',1,3,5,430), ('TommyHilfiger',5,3,3,1150),
('TommyHilfiger',3,2,7,630), ('TommyHilfiger',6,5,11,550);

-- Question 1: What are available Product Names with SizeLabel greater than S
Select ProductName from Product as P
Where SizeID > 3

-- Question 2: What are the average price for the product name 'TommyHilfiger'
Select AVG(Price) from Product
Where ProductName = 'TommyHilfiger'

--- Question 3: What is the most sold color of Zara brand
Select Top 1 ColorName as TotalSold from Color as C
Join Product as P
on c.ColorID = p.ColorID
Where ProductName = 'Zara'
GROUP BY Colorname 

--- Question 4: What is the most expensive product name exist in Product Table
Select TOP 1 MAX(Price), ProductName from Product 
Group By ProductName 

--- Question 5: What is the most sold product name:
SELECT TOP 1 ProductName, COUNT(*) as CountOfProduct
FROM Product
GROUP BY ProductName
ORDER BY COUNT(*) DESC;


