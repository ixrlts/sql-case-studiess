sql
-- StrataScratch
-- Amazon
-- ID 10553
-- Finding Purchases
-- Medium

SELECT DISTINCT x.user_id
FROM amazon_transactions x
INNER JOIN amazon_transactions y ON x.user_id = y.user_id
WHERE y.created_at::date BETWEEN x.created_at::date + 1 AND x.created_at::date + 7
