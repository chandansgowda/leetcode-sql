SELECT v.customer_id, COUNT(v.visit_id) as count_no_trans
FROM Visits v
LEFT OUTER JOIN Transactions t
    USING (visit_id)
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;
