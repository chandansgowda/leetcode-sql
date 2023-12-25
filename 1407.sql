SELECT u.name, ifnull(sum(r.distance),0) AS travelled_distance
FROM users u LEFT OUTER JOIN rides r
ON u.id = r.user_id
GROUP BY u.uid
ORDER BY travelled_distance DESC, name ASC;
