-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(InvoiceId) AS 'Invoice Count', BillingCountry
FROM Invoice
GROUP BY BillingCountry;

