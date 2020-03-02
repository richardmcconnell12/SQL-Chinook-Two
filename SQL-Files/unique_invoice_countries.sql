-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT COUNT(CustomerId) as CustomerId, BillingCountry 
FROM Invoice
GROUP BY BillingCountry
ORDER BY COUNT(CustomerId);