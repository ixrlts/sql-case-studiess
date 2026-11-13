sql
-- StrataScratch
-- Salesforce
-- ID 9905
-- Highest Target Under Manager
-- Medium

SELECT first_name, target
FROM salesforce_employees
WHERE manager_id = '13' AND target = (
 SELECT MAX(target) FROM salesforce_employees
 WHERE manager_id = '13'
)
