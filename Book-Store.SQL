CREATE DATABASE DB_Books

USE DB_Books

---  Basic Questions 

-- 1) Retrieve all books in the Fiction Genre

SELECT * FROM Books
WHERE Genre= 'Fiction'

--1.1) Count the total no. of Fiction Genre

SELECT COUNT(*) AS total_Fiction_genre from Books
WHERE Genre= 'Fiction'

--2) Find book published after the year 1950 

SELECT * From Books
WHERE Published_year >1950

-- 3) List all cutomer from canada

SELECT * FROM Customers
WHERE Country = 'Canada'

-- 4) Show orders placed in nov 2023

SELECT * FROM Orders
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30'

--5) Retrieve the total amount of books available

SELECT SUM(Stock) AS Total_stock
From Books

--6) Find the details of the most expensive books

SELECT TOP 1 * FROM Books
ORDER BY Price DESC

--7) Show all customer who order more then 1 quantity of a book

SELECT * FROM Orders
WHERE Quantity >1

-- 8) Retrieve all order where the total amount exceed 20$

SELECT * FROM Orders
WHERE Total_Amount >20

-- 9) List all genre available in the book genre

SELECT DISTINCT Genre FROM Books

--10) Find the book with the lowest stock

SELECT TOP 1 * FROM Books
ORDER BY Stock ASC

--11) Calculate the total revenue genreted from all orders

SELECT SUM(Total_Amount) AS total_revenue
FROM Orders


----Advance Query

SELECT * FROM Books
SELECT * FROM Orders
SELECT * FROM Customers

-- 1) Total no. of books sold on each genre

SELECT b.Genre, SUM(Quantity)AS total_sold_genre
FROM orders o
JOIN Books b
ON b.Book_ID = o.Order_ID
GROUP BY b.Genre

-- 2) Find avg price of books in the 'Fantasy' genre

SELECT AVG(price) AS avg_price
FROM Books
WHERE Genre = 'Fantasy'

--- 3) List customers who have placed at least 2 orders

SELECT o.Customer_ID, c.name, COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c 
ON o.Customer_ID = c.Customer_ID
GROUP BY o.Customer_ID, c.name
HAVING COUNT (order_id) >=2

-- 4) Find the most frequently ordered book

SELECT TOP 2
o.Book_id, b.title, COUNT (O.Order_id) AS order_count
FROM Orders o
JOIN Books b
ON o.Book_ID = b.Book_ID
GROUP BY o.Book_ID, b.Title
ORDER BY order_count DESC 

-- 5) Show the top 3 MOST expensiv books of 'Fantasy' Genre

SELECT TOP 3 * FROM Books
WHERE Genre ='Fantasy'
ORDER BY Price DESC 

ALTER TABLE Books
ALTER COLUMN Price DECIMAL(10,2)

-- 6)Retrieve the total quantity of books sold by each author

SELECT b.Author , SUM (Quantity) AS Total_sold_books
FROM orders o
JOIN Books b
ON b.Book_ID = o.Order_ID
GROUP BY b.Author

--7) List the cities where customer who spent the most on orders

SELECT c.city, o.total_amount
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
WHERE Total_Amount > 30
ORDER BY Total_Amount DESC

--8) Find the customer who spent the most on orders

SELECT TOP 1 c.*, o.quantity
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
ORDER BY Quantity DESC

-- 9) Calculate the stock remaining after fullfilling all orders

SELECT b.book_id, b.title, b.stock, COALESCE(SUM(o.quantity),0) AS order_quantity,
b.stock-COALESCE(SUM(o.quantity),0) AS remaining_quantity
FROM Books b
LEFT JOIN Orders O
ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID,b.title, b.stock 
ORDER BY b.Book_ID 


