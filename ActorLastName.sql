SELECT DISTINCT last_name, COUNT(last_name) AS count
FROM actor
WHERE last_name IN ('DAVIS', 'BRODY', 'ALLEN', 'BERRY')
GROUP BY last_name