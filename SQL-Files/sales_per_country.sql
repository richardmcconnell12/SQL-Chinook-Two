-- Provide a query that shows the total sales per country.

SELECT SUM(i.Total) AS TotalSales, 
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry; 