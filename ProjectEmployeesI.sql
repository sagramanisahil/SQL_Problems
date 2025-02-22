# Write your MySQL query statement below
SELECT project_id, ROUND(sum(experience_years)/count(project_id),2) AS average_years FROM Project p LEFT JOIN Employee e
ON p.employee_id = e.employee_id 
GROUP BY p.project_id;