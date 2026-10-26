sql
-- StrataScratch
-- Airbnb
-- ID 10156
-- Number Of Units Per Nationality
-- Medium

SELECT nationality, COUNT(DISTINCT unit_id) AS apartment_count
FROM airbnb_hosts 
 JOIN airbnb_units ON airbnb_hosts.host_id = airbnb_units.host_id
WHERE age < 30 AND unit_type = 'Apartment'
GROUP BY nationality
ORDER BY COUNT(DISTINCT unit_id) DESC
