SELECT product_name, SUM(o.unit) as unit
FROM Products p, Orders o
WHERE p.product_id=o.product_id AND 
YEAR(o.order_date)='2020' AND MONTH(o.order_date)='02'
GROUP BY p.product_id
HAVING SUM(o.unit)>=100;
