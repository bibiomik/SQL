-- Q5 If there are employees coming on 14-Oct-23 in the Marketing position with a salary of 45,000 baht, what will the latest average salary for the Marketing position be? 

-- Insert new employee 
INSERT INTO employee (employee_id, first_name, last_name, email, hire_date, team_id)
VALUES (1, 'Warde', 'Remon', 'wremon0@zimbio.com','1-Jun-23', 1),
       (2, 'Orlando', 'Groneway', 'ogroneway1@wikipedia.org', '22-Jun-23', 1),
       (3, 'Amalita', 'Shorland', 'ashorland2@npr.org', '25-Mar-23', 1),
       (4, 'Reinwald', 'Pickersail', 'rpickersail3@skyrock.com', '24-Jun-23', 1),
       (5, 'Ilario', 'Anfrey', 'ianfrey4@google.com','2-Jan-23',1),
       (6,'Davey', 'Frowen', 'dfrowen5@nsw.gov.au', '3-Mar-23', 6),
       (7, 'Leigha', 'Randlesome', 'lrandlesome6@alibaba.com', '15-Oct-22', 6),
       (8,'Junia', 'Yakovliv', 'jyakovliv7@artisteer.com', '31-Jul-23', 6),
       (9, 'Rochell', 'Waggatt', 'rwaggatt8@opera.com', '15-Apr-23', 6),
       (10, 'Moises', 'Ardley', 'mardley9@webnode.com', '21-Jun-23', 6),
       (11, , , , '11-Oct-23', );

INSERT INTO Salary (employee_id, salary)
VALUES (1, 'Sales', 40153),
       (2, 'Marketing', 46670),
       (3, 'Legal', 71983),
       (4, 'Sales', 15857),
       (5, 'Software Engineer', 95174),
       (6, 'Sales', 27819),
       (7, 'Legal', 75323),
       (8, 'Software Engineer', 90525),
       (9, 'Tax Accountant', 85946),
       (10, 'Marketing', 56575),
       (11, 'Marketing', 45000);

-- Find the average salary for new Marketing professionals 
SELECT
  role,
  AVG(salary) AS average_salary
FROM salary
GROUP BY role
HAVING role = 'Marketing'
