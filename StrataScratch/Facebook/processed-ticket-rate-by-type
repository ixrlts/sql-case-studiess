sql
-- StrataScratch
-- Facebook/Meta
-- ID 9781
-- Processed Ticket Rate By Type
-- Medium

SELECT type, 
 (SUM(CASE WHEN processed = 'TRUE' THEN 1 ELSE 0 END)*1.0/COUNT(*)) AS processed_rate
FROM facebook_complaints
GROUP BY type
