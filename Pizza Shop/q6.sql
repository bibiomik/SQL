-- Q6 Which menu do customers buy the most--

SELECT 
  m.menu_name,
  COUNT(o.order_id) AS total_order
FROM orders AS o
JOIN menus AS m ON o.menu_id = m.menu_id
GROUP BY m.menu_name
ORDER BY total_order DESC
LIMIT 3
