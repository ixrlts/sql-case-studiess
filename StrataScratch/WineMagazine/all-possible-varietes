sql
-- StrataScratch
-- Wine Magazine
-- ID 10025
-- Find all possible varieties which occur in either of the winemag datasets
-- Medium

SELECT variety FROM winemag_p1
UNION
SELECT variety FROM winemag_p2
WHERE variety IS NOT NULL
ORDER BY variety ASC
