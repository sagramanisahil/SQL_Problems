SELECT 
	EXTRACT(YEAR FROM payment.payment_ts) AS year, 
	EXTRACT(MONTH FROM payment.payment_ts) AS mon, 
	SUM(payment.amount) AS rev
FROM payment
GROUP BY year, mon;

