sql
-- StrataScratch
-- Facebook/Meta
-- ID 10285
-- Acceptance Rate By Date
-- Medium

SELECT x.date,
 ROUND(1.0*COUNT(DISTINCT y.user_id_sender || '-' || y.user_id_receiver)
 /COUNT(DISTINCT x.user_id_sender || '-' || x.user_id_receiver), 2)
FROM fb_friend_requests x
  LEFT JOIN fb_friend_requests y ON (x.user_id_sender = y.user_id_sender) 
  AND (x.user_id_receiver =  y.user_id_receiver)
  AND y.action = 'accepted'
 WHERE x.action = 'sent'
GROUP BY x.date 
HAVING COUNT(DISTINCT y.user_id_sender || '-' || y.user_id_receiver) > 0
ORDER BY x.date ASC
