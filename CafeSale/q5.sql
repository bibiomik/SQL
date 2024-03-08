-- Q5 Calculate total sales for each day of the week (Sunday to Saturday) 

SELECT
  CASE
  WHEN strftime('%w', inv.order_date) = '0' THEN 'Sunday'
  WHEN strftime('%w', inv.order_date) = '1' THEN 'Monday'
  WHEN strftime('%w', inv.order_date) = '2' THEN 'Tuesday'
  WHEN strftime('%w', inv.order_date) = '3' THEN 'Wednesday'
  WHEN strftime('%w', inv.order_date) = '4' THEN 'Thursday'
  WHEN strftime('%w', inv.order_date) = '5' THEN 'Friday'
  WHEN strftime('%w', inv.order_date) = '6' THEN 'Saturday'
  END AS day_of_week,
  SUM(i.price * inv.quantity) AS total_sold
FROM Invoices inv
JOIN Items i ON inv.item_id = i.item_id
GROUP BY day_of_week
ORDER BY day_of_week
