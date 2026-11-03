sql
-- StrataScratch
-- Google
-- ID 9881
-- Titanic Survivors and Non-Survivors
-- Medium

SELECT survived, 
 COUNT(*) FILTER(WHERE pclass = '1') AS first_class,
 COUNT(*) FILTER(WHERE pclass = '2') AS second_class,
 COUNT(*) FILTER(WHERE pclass = '3') AS third_class
FROM titanic
GROUP BY survived
