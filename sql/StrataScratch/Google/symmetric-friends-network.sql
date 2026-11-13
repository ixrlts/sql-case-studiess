sql
-- StrataScratch
-- Google
-- ID 9813
-- Make the friends network symmetric
-- Medium

SELECT user_id, friend_id 
FROM google_friends_network
 UNION
SELECT friend_id, user_id 
FROM google_friends_network
