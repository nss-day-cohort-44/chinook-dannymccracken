SELECT 
    CustomerId,
    FirstName,
    LastName,
    Country
FROM Customer
WHERE Customer.Country != "USA";
