sql
-- StrataScratch
-- Walmart, BestBuy, Amazon
-- ID 2110
-- Salary Less Than Twice The Average
-- Medium

SELECT m.manager_empl_id, mgr.salary, AVG(d.salary) AS avg_employee_salary
FROM map_employee_hierarchy m
 JOIN dim_employee d ON m.empl_id = d.empl_id
 JOIN dim_employee mgr ON m.manager_empl_id = mgr.empl_id
GROUP BY m.manager_empl_id, mgr.salary
 HAVING mgr.salary < 2*AVG(d.salary)
