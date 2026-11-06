sql
-- StrataScratch
-- Dropbox, Amazon
-- ID 9892
-- Second Highest Salary
-- Medium

SELECT DISTINCT salary
FROM (
 SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
 FROM employee
) ranked
WHERE rnk = 2
