-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName, e.LastName, invoices.*
FROM employees as E JOIN customers ON e.EmployeeId = customers.SupportRepId JOIN invoices on customers.CustomerId = invoices.CustomerId;
