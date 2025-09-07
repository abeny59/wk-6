--1--
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM salesdb.employees e
INNER JOIN salesdb.offices o
    ON e.officeCode = o.officeCode;

--2--
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM salesdb.products p
LEFT JOIN salesdb.productlines pl
    ON p.productLine = pl.productLine;

--3--
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM salesdb.customers c
RIGHT JOIN salesdb.orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
