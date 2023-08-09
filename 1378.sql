SELECT eu.unique_id, e.name
FROM Employees e
LEFT OUTER JOIN EmployeeUNI eu
    USING (id);
