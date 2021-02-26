-- 1
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Customer.Country != "USA";

-- 2
SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Customer.Country = "Brazil";

-- 3
SELECT 
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
JOIN Invoice i
            ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil";

-- 4
SELECT 
   *
FROM Employee e
WHERE e.Title = "Sales Support Agent";

-- 5
SELECT DISTINCT
    i.BillingCountry
FROM Invoice i;

-- 6
SELECT 
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Employee e
JOIN Customer c 
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId;

-- 7
SELECT 
    i.Total,
    c.FirstName AS customer_first,
    c.LastName AS customer_last,
    i.BillingCountry,
    e.FirstName employee_first,
    e.LastName AS employee_last
FROM Customer c
JOIN Employee e 
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId;

-- 8
SELECT 
    COUNT()
FROM Invoice i 

-- 9 wrong
SELECT SUM(total),
    i.Total,
    i.InvoiceDate
FROM Invoice i 
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "%2011%";

-- 10 
SELECT 
    COUNT(InvoiceLineId)
FROM InvoiceLine 
WHERE InvoiceId = 37 

-- 11 wrong
SELECT 
    COUNT(InvoiceLineId)
FROM InvoiceLine 
GROUP BY InvoiceId

-- 12

-- 13

-- 14

-- 15

-- 16

-- 17

-- 18

-- 19
SELECT 
    SUM(i.total) AS TotalSales,
    e.firstname

-- 20

-- 21

-- 22

-- 23

-- 24

-- 25

-- 26

-- 27