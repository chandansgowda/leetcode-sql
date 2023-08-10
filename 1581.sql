-- 1
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits 
WHERE visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id;

-- 2
SELECT v.customer_id, COUNT(v.visit_id) as count_no_trans
FROM Visits v
LEFT OUTER JOIN Transactions t
    USING (visit_id)
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;
