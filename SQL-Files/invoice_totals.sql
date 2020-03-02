-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.InvoiceId, i.Total, 
c.CustomerId, c.FirstName AS 'Cust FirstName', 
c.LastName AS 'Cust LastName', 
c.Country AS 'Cust Country', 
c.SupportRepId, 
e.FirstName AS 'Emp FirstName', 
e.LastName AS 'Emp LastName'
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId;