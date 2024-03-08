-- Q3 Customer Most Orders  

SELECT 
  c.customer_name,
  COUNT(o.order_id) AS total_order
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_order DESC
LIMIT 1
