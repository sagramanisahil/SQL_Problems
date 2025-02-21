# Write your MySQL query statement below
Select contest_id, ROUND(COUNT(distinct user_id) * 100 / (Select COUNT(user_id) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;