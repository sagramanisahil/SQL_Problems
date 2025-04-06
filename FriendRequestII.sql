# Write your MySQL query statement below
SELECT requester_id AS id, count(*) AS num FROM 
    (SELECT requester_id FROM RequestAccepted
    UNION ALL 
    SELECT accepter_id AS requester_id 
    FROM RequestAccepted
    ) AS AcceptedRequest
GROUP BY requester_id
ORDER BY num DESC
LIMIT 1;