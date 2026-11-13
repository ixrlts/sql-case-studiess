python pandas
-- StrataScratch
-- Facebook/Meta
-- ID 10087
-- Find all posts which were reacted to with a heart
-- Easy

facebook_posts[facebook_posts['post_id'].isin(
    facebook_reactions[facebook_reactions['reaction'] == 'heart']['post_id'])]
