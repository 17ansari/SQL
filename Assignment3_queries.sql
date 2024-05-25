USE customerdb;

-- 1. Display all columns from the "Employees" table.
select * from employees;


-- 2. Show the distinct values of the "City" column from the "Customer" table.
select distinct city from customer;


-- 3. Calculate the total price of all products from the "Products" table.
select sum(Price) from products;


-- 4. Find customers who do not have a "PostalCode" specified in the "customer" table.
select * from customer
where PostalCode is null;


-- 5. Select all orders with a "Quantity" greater than 50 from the "OrderDetails" table.
select * from orderdetails
where Quantity > 50;


-- 6. Retrieve products with a "Price" less than or equal to 20 from the "Products" table.
select ProductID, ProductName from products
where Price <= 20;


-- 7. List all Customers who are either from "London" or "Berlin" from the "Customer" table.
select * from customer
where City in ("London", "Berlin");


-- 8. Retrieve orders with a "Quantity" greater than 20 AND a "ProductID" of 10 or higher from the "OrderDetails" table.
select * from orderdetails
where Quantity > 20 and ProductID >=10;


-- 9. Select customers whose names start with 'A' from the "Customer" table.
select * from customer
where CustomerName like "A%";


-- 10. Find products with names containing 'Apples' anywhere in the name from the "Products" table.
select * from products
where ProductName like "%apples%";


-- 11. Retrieve employees from the "Employees" table whose "BirthDate" is before '1970-01-01'.
select * from employees
where year(BirthDate) < "1970-01-01";


-- 12. List orders with a "OrderDate" in 1996 from the "Orders" table.
select * from orders
where year(OrderDate) = 1996;


-- 13. Sort products by "Price" in descending order from the "Products" table.
SELECT ProductName, price FROM products 
ORDER BY price DESC;


-- 14. Display the top 5 highest priced products from the "Products" table.
SELECT ProductName, price FROM products 
ORDER BY Price DESC LIMIT 5 ;


-- 15. Show the first 10 orders placed from the "Orders" table.
SELECT * FROM orders 
ORDER BY OrderID DESC LIMIT 10;


-- 16. Count the number of orders for each customer from the "Orders" table.
SELECT OrderID, Count(Orders.OrderID) AS TotalOrders
FROM Orders
Where OrderID = OrderID 
GROUP BY OrderID
Order BY Count(orders.OrderID) DESC;



-- 17. Calculate the total quantity of products ordered for each supplier from the "OrderDetails" table.
select orderdetails.ProductID, products.SupplierID, count(products.SupplierID) as TotalQty_ordered
from orderdetails, products
left join products on orderdetails.ProductID = products.ProductID
group by products.SupplierID
order by products.SupplierID;


-- 18. List customers who have placed more than 5 orders from the "Customer" and "Orders" tables.
select customer.CustomerName from customer, orders
where orders.orderID >=5
group by customer.CustomerName ;


-- 19. Find orders placed on '1996-08-01' from the "Orders" table.
select * from orders
where OrderDate='1996-08-01';


-- 20. Extract the first 3 characters of the "contact_title" from the "customer" table.
select substring(ContactName,1,3) from customer;

