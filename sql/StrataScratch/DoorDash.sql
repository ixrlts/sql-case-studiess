sql
-- StrataScratch
-- DoorDash
-- ID 10789
-- Busiest Restaurants in June 2025
-- Medium

SELECT o.restaurant_id, name, COUNT(*) AS delivered_orders
FROM fooddelivery_orders o
 JOIN fooddelivery_restaurants r ON o.restaurant_id = r.restaurant_id
WHERE status = 'delivered' 
 AND EXTRACT(MONTH FROM placed_at) = 06
GROUP BY o.restaurant_id, name
ORDER BY delivered_orders DESC
 FETCH FIRST 5 ROWS WITH TIES
