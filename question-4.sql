-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName, e.EmployeeId, SUM(ii.Quantity) as TotalCount , i.InvoiceDate
FROM employees as e JOIN customers ON e.EmployeeId = customers.SupportRepId JOIN invoices as i ON customers.CustomerId = i.CustomerId JOIN invoice_items as ii ON i.InvoiceId = ii.InvoiceId
WHERE i.InvoiceDate LIKE '2010-%' GROUP BY e.EmployeeId ORDER BY TotalCount DESC;
