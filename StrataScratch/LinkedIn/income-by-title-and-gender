sql
-- StrataScratch
-- LinkedIn
-- ID 10077
-- Income By Title and Gender
-- Medium

SELECT employee_title, sex, AVG(salary + total_bonus)
FROM sf_employee e
 RIGHT JOIN (
  SELECT worker_ref_id, SUM(bonus) AS total_bonus
  FROM sf_bonus
  GROUP BY worker_ref_id
 ) b ON e.id = b.worker_ref_id
GROUP BY employee_title, sex
