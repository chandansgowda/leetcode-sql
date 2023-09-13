SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p
    USING (product_id);
