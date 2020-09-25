-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.Id, Product.ProductName, Category.CategoryName
from Product
Join Category
on Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].Id, Shipper.CompanyName
from [order]
join Shipper 
on ShipVia = Shipper.Id
where [Order].OrderDate < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, OrderDetail.Quantity
FROM OrderDetail
JOIN Product
ON OrderDetail.ProductId = Product.Id
Where OrderId = 10251
ORDER BY Product.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
-- select [order].Id, customer.CompanyName, employee.LastName
-- from [order]
-- join customer
-- on [order].customerId
-- join employee 
-- on [order].employeeId