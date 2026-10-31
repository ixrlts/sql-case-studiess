sql
-- StrataScratch
-- Netflix, Uber, DoorDash
-- ID 2172
-- Customers with Large Orders
-- Medium

SELECT DISTINCT online_store_customers.customer_id, online_store_customers.customer_name
FROM online_store_customers
 JOIN online_store_orders ON online_store_customers.customer_id = online_store_orders.customer_id
WHERE amount > '100'
