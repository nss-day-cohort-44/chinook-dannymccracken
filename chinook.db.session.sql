SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Customer.Country != "USA";

SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Customer.Country = "Brazil";

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

SELECT 
   *
FROM Employee e
WHERE e.Title = "Sales Support Agent";

SELECT DISTINCT
    i.BillingCountry
FROM Invoice i;

SELECT 
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Employee e
JOIN Customer c 
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId;

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