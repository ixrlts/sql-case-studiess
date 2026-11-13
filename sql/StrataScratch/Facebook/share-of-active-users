sql 
-- StrataScratch
-- Facebook/Meta
-- ID 2005
-- Share of Active Users
-- Medium

SELECT (
 100.0 * COUNT(DISTINCT CASE WHEN country = 'USA' AND status = 'open' THEN user_id END) 
 / COUNT(*)
) AS us_active_share
FROM fb_active_users
