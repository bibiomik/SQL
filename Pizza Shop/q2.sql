-- Q2 Total price for each orders  

SELECT
  o.order_date,
  c.customer_name,
  SUM(m.price) AS total_price
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN menus AS m ON o.menu_id = m.menu_id
GROUP BY c.customer_name
ORDER BY total_price DESC
