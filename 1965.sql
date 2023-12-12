SELECT employee_id FROM Employees
WHERE employee_id not in (SELECT e.employee_id
FROM Employees e 
INNER JOIN
Salaries s
ON e.employee_id = s.employee_id)
UNION
SELECT employee_id FROM Salaries
WHERE employee_id not in (SELECT e.employee_id
FROM Employees e 
INNER JOIN
Salaries s
ON e.employee_id = s.employee_id)
ORDER BY employee_id ASC;
