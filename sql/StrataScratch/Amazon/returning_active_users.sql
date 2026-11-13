sql
-- StrataScratch
-- Amazon
-- ID 10322
-- Finding User Purchases
-- Medium

SELECT DISTINCT x.user_id
 FROM amazon_transactions X
 INNER JOIN amazon_transactions y ON x.user_id = y.user_id
WHERE y.created_at::date BETWEEN
 (SELECT MIN(z.created_at::date) +1 FROM amazon_transactions z WHERE x.user_id = z.user_id) AND
 (SELECT MIN(z.created_at::date) +7 FROM amazon_transactions z WHERE x.user_id = z.user_id)
