# Write your MySQL query statement below
DELETE per FROM Person p
JOIN Person per
ON p.email = per.email AND p.id < per.id;