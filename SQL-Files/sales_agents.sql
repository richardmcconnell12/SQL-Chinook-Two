-- Provide a query showing only the Employees who are Sales Agents.

SELECT FirstName, LastName, EmployeeId, Title
FROM Employee
WHERE Title = 'Sales Support Agent';