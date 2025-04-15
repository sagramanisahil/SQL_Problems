# Write your MySQL query statement below
SELECT P.product_id, 
COALESCE(ROUND(SUM(1.0*price*units)/SUM(units), 2), 0) AS average_price 
FROM UnitsSold U 
RIGHT JOIN Prices P 
ON U.product_id = P.product_id 
AND purchase_date BETWEEN start_date AND end_date 
GROUP BY P.product_id;