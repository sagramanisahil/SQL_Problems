# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) AS unit 
FROM products p
JOIN Orders o ON p.product_id = o.product_id
AND order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id
HAVING unit >= 100;