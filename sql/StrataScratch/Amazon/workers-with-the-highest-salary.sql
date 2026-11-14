sql
-- StrataScratch
-- Amazon, DoorDash
-- ID 10353
-- Workers With The Highest Salary
-- Easy

SELECT worker_title AS best_paid_title
FROM (
 SELECT t.worker_title,
  RANK() OVER (ORDER BY w.salary DESC) AS rnk
 FROM worker w
  JOIN title t ON w.worker_id = t.worker_ref_id
) 
WHERE rnk = 1
ORDER BY best_paid_title
