sql
-- StrataScratch
-- Amazon
-- ID 9856
-- Employees With the Same Salary
-- Medium

SELECT worker_id, first_name, salary
FROM worker a
WHERE EXISTS (
 SELECT * FROM worker b
  WHERE a.salary = b.salary AND a.worker_id <> b.worker_id
)
ORDER BY salary
