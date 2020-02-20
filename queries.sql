Categories-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Category.categoryname, product.productname FROM category join product on category.id = product.categoryid

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].id, [order].orderdate, shipper.companyname FROM [Order] join shipper on [order].shipvia = shipper.id where [order].orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT orderdetail.quantity, product.productname FROM orderdetail join product on orderdetail.productid = product.id where orderdetail.orderid='10251'order by productname


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].id, customer.companyname, employee.lastname FROM [order] join customer on [order].customerid = customer.id join employee on employee.id = [order].employeeid