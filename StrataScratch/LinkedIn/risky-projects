sql
-- StrataScratch
-- LinkedIn
-- ID 10304
-- Risky Projects
-- Medium

SELECT linkedin_projects.title, linkedin_projects.budget,
 CEIL(SUM(linkedin_employees.salary*((end_date - start_date)/365.0))) AS prorated_employee_expense
FROM linkedin_projects
 JOIN linkedin_emp_projects ON linkedin_projects.id = project_id
 JOIN linkedin_employees ON emp_id = linkedin_employees.id
GROUP BY linkedin_projects.title, linkedin_projects.budget
 HAVING linkedin_projects.budget < (SUM(linkedin_employees.salary*((end_date - start_date)/365.0)))
