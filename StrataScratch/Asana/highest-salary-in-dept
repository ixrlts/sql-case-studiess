sql
-- StrataScratch
-- Twitter, Asana
-- ID 9897
-- Highest Salary In Department
-- Medium

SELECT a.department, a.first_name, a.salary
FROM employee a
WHERE a.salary = (
 SELECT MAX(b.salary)
 FROM employee b
 WHERE b.department = a.department
)
