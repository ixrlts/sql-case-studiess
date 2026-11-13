sql
-- StrataScratch
-- Amazon
-- ID 9858
-- Duplicate HR Department Employees
-- Medium

SELECT first_name, department FROM worker
WHERE department = 'HR'
 UNION ALL
SELECT first_name, department FROM worker
WHERE department = 'HR'
