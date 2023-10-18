SELECT user_id, IF(action IS NOT NULL, ROUND(SUM(action="confirmed")/COUNT(*),2), 0) as confirmation_rate
FROM Signups s
LEFT OUTER JOIN Confirmations c
    USING (user_id)
GROUP BY user_id;
