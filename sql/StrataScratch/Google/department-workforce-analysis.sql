sql
-- StrataScratch
-- Google, Microsoft, Oracle
-- ID 2170
-- Department Workforce Analysis
-- Medium

SELECT department, COUNT(*) AS headcount, SUM(salary) AS total_payroll, AVG(salary) AS avg_salary
FROM techcorp_workforce
WHERE joining_date > '2020-12-31'
GROUP BY department
 HAVING COUNT(*) >= 5
