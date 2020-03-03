-- Provide a query that shows total sales made by each sales agent.

SELECT e.EmployeeId, e.FirstName, e.LastName, SUM(i.Total) AS [Total Sales]
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId, e.FirstName, e.LastName;