sql
-- StrataScratch
-- Yelp
-- 10048
-- Top Businesses With Most Reviews
-- Medium

SELECT name, review_count 
FROM yelp_business
ORDER BY review_count DESC
 FETCH FIRST 5 ROWS WITH TIES
