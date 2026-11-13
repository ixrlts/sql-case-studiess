sql
-- StrataScratch
-- Facebook/Meta
-- ID 2007
-- Rank Variance Per Country
-- Hard

SELECT d.country
FROM  (
  SELECT country, DENSE_RANK() OVER (ORDER BY SUM(number_of_comments)DESC) AS dec_rank
  FROM fb_comments_count
   JOIN fb_active_users ON fb_comments_count.user_id = fb_active_users.user_id 
  WHERE EXTRACT(YEAR FROM created_at) = 2019 AND EXTRACT(MONTH FROM created_at) = 12
   GROUP BY country
  ) d
 JOIN
  (SELECT country, DENSE_RANK() OVER (ORDER BY SUM(number_of_comments)DESC) AS jan_rank
  FROM fb_comments_count
   JOIN fb_active_users ON fb_comments_count.user_id = fb_active_users.user_id 
  WHERE EXTRACT(YEAR FROM created_at) = 2020 AND EXTRACT(MONTH FROM created_at) = 01
   GROUP BY country
  ) j
 ON d.country = j.country
WHERE jan_rank < dec_rank
  
