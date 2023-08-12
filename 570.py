SELECT e2.name
FROM Employee e1
INNER JOIN Employee e2
ON e1.managerId=e2.ixd
GROUP BY e1.managerId
HAVING COUNT(*)>=5;
