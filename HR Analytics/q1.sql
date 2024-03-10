-- Q1 Since when can employees in our company be employees who work in any salary position? 
SELECT * 
FROM Employee
LEFT JOIN Salary ON Employee.employee_id = Salary.employee_id
