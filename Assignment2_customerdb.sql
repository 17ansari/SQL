use customerdb;

-- 1. Display all columns from the "Employees" table.
select * from employees;

-- . Show the distinct values of the "City" column from the "Customer" table.
select distinct(city)
from customer;

-- Calculate the total price of all products from the "Products" table.
select round(sum(price),2) as Total_amount_of_price
from products;

-- find customers who do not have a "PostalCode" specified in the "customer" table.
select *
from customer
where PostalCode = "NULL";

-- Select all orders with a "Quantity" greater than 50 from the "OrderDetails" table.
select OrderID, Quantity
from orderdetails
where Quantity >=50;

-- 6. Retrieve products with a "Price" less than or equal to 20 from the "Products" table.
select productid,productname,price
from products
where price <=20;

-- 7. List all Customers who are either from "London" or "Berlin" from the "Customer" table.
select * 
from customer
where City = "London" or City = "Berlin";

-- 8. Retrieve orders with a "Quantity" greater than 20 AND a "ProductID" of 10 or higher from the "OrderDetails" table.
select orderid, productid, quantity
from orderdetails
where Quantity >= 20 and productid >= 10;

-- select customers whose names start with 'A' from the "Customer" table.
select * 
from customer
where customername  like "A%";

-- 10. Find products with names containing 'Apples' anywhere in the name from the "Products" table.
select * from 
products
where productname like   "%Apples%";

-- 1. Retrieve employees from the "Employees" table whose "BirthDate" is before '1970-01-01'.
select * 
from employees 
where  date("1970-01-01") > BirthDate ;

-- 12. List orders with a "OrderDate" in 1996 from the "Orders" table.
select * 
from orders
where  year(orderdate) = "1996";

-- 13 . Sort products by "Price" in descending order from the "Products" table.
select * from products
order by price desc;

-- 14  Display the top 5 highest priced products from the "Products" table 
select * from products
order by price desc
limit 5 ;

-- 15. Show the first 10 orders placed from the "Orders" table.
select * from orders
limit 10;

-- 16. Count the number of orders for each customer from the "Orders" table.
select count(orderid) AS Total_OrderCount , CustomerID
from orders
group by CustomerID;


-- 17. Calculate the total quantity of products ordered for each supplier from the "OrderDetails" table.
select sum(quantity) as Calculated_Quantity , productid
from orderdetails
group by productid;

select * from orderdetails;

-- 8. List customers who have placed more than 5 orders from the "Customer" and "Orders" Tables

SELECT C.CustomerID, C.CustomerName, COUNT(O.OrderID) AS OrderCount
FROM Customer C
inner JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CustomerName
HAVING COUNT(O.OrderID) > 5;

-- .19 Find orders placed on '1996-08-01' from the "Orders" table.
select *
from orders
where orderdate = '1996-08-01';

-- 20  Extract the first 3 characters of the "contact_title" from the "customer" table
select substring(ContactName,1,3) as Extracted_Name
from customer;

------------------ End ---------------------















