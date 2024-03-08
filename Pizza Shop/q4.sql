-- Q4 How many people ordered on the 8th Noveber 2023  

SELECT 
  c.customer_name,
  COUNT(o.order_id) AS total_order
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
WHERE o.order_date = '2023-11-08'
GROUP BY c.customer_name
ORDER BY total_order DESC
