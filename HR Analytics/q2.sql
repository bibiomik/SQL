-- Q2 Who are the three most recently hired employees? What team are they on? What day do they come to work? 
SELECT 
  team_id,
  first_name,
  last_name,
  email,
  hire_date,
RANK() OVER (ORDER BY hire_date) AS hire_date_rank
FROM Employee
LIMIT 3
