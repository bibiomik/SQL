-- Q3 Find the average salary for each position 
SELECT
  role,
  AVG(salary) AS average_salary
FROM salary
GROUP BY role
