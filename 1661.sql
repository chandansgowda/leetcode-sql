SELECT machine_id, ROUND(SUM(a2.timestamp-a1.timestamp)/COUNT(distinct a1.process_id),3) as processing_time
FROM Activity a1
INNER JOIN Activity a2
    USING (machine_id, process_id)
    WHERE a1.activity_type='start' AND a2.activity_type='end'
GROUP BY a1.machine_id;
