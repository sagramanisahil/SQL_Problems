# Write your MySQL query statement below
SELECT emp.employee_id, emp.name, COUNT(e.employee_id) AS reports_count, ROUND(AVG(e.age)) as average_age
FROM employees e JOIN employees emp
ON e.reports_to = emp.employee_id
GROUP BY employee_id
ORDER BY employee_id;