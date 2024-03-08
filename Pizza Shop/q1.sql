-- Q1 JOIN 3 TABLES  

SELECT 
  o.order_date,
  c.customer_name, 
  m.menu_name, 
  m.price
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN menus AS m ON o.menu_id = m.menu_id
