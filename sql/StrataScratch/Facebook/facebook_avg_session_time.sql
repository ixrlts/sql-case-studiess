sql
-- StrataScratch
-- Facebook/Meta
-- ID 10352
-- Users By Average Session Time
-- Medium

SELECT user_id, AVG(exit - load) AS avg_session_duration 
FROM (
    SELECT user_id, DATE(timestamp) AS day,
    MAX(CASE WHEN action = 'page_load' THEN timestamp END) AS load,
    MIN(CASE WHEN action = 'page_exit' THEN timestamp END) AS exit
    FROM facebook_web_log
    GROUP BY user_id, DATE(timestamp)
) t
WHERE load < exit
GROUP BY user_id
