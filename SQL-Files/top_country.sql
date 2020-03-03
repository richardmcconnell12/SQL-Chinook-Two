-- Which country's customers spent the most?

SELECT MAX(CountrySales.CountryName) AS [CountryName], MAX(TotalSales) AS [TotalSales]
FROM (SELECT BillingCountry as [CountryName], 
SUM(Total) as [TotalSales] 
FROM Invoice
GROUP BY BillingCountry) as CountrySales;