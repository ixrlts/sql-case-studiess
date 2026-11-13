sql
-- StrataScratch
-- Facebook/Meta
-- ID 10087
-- Find all posts which were reacted to with a heart
-- Easy

SELECT * 
FROM facebook_posts 
WHERE post_id IN (
 SELECT post_id
 FROM facebook_reactions
 WHERE reaction = 'heart'
)
