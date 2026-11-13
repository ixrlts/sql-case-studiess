sql
-- StrataScratch
-- Google, Amazon
-- ID 10090
-- Find the percentage of shipable orders
-- Medium

SELECT (100.0* COUNT(address) / COUNT(order_date) )
FROM orders
 LEFT JOIN customers ON cust_id = customers.id
