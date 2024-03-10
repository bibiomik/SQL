-- Q4 Employees with a salary higher than 75,000 are called Managers, salaries from 45,000 to 75,000 are called Seniors, and those with salaries less than that are called Staff 
SELECT
  E.employee_id,
  E.first_name,
  E.last_name,
  S.salary,
  CASE
    WHEN S.salary > 75000 THEN 'Manager'
    WHEN S.salary <= 75000 AND S.salary > 45000 THEN 'Senior'
    ELSE 'Staff'
  END AS employee_category
FROM Employee E
JOIN Salary S ON E.employee_id = S.employee_id
