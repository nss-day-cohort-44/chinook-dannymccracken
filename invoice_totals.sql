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