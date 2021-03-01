-- 18. sales_agent_total_sales.sql: Provide a query 
-- that shows total sales made by each sales agent.

SELECT 
    e.FirstName,
    e.LastName,
    SUM()
FROM Employee e
    JOIN InvoiceLine l 
        ON i.InvoiceId = l.InvoiceId