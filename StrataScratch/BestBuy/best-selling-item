sql
-- StrataScratch
-- BestBuy, Amazon, eBay
-- ID 10172
-- Best Selling Item
-- Hard

SELECT DISTINCT ON (month) EXTRACT(MONTH FROM invoicedate) AS month, description, SUM(unitprice * quantity) AS total_paid
FROM online_retail
WHERE invoiceno NOT LIKE 'C%' AND unitprice > 0
GROUP BY month, description
ORDER BY month, total_paid DESC
