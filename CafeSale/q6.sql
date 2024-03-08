-- Q6 Calculate total sales for each day of the week classified by Dairy and Non dairy products 

WITH ProductCategories AS (
  SELECT
    i.item_id,
    i.item_name,
    CASE
      WHEN i.item_id IN (3, 4, 5, 8, 9) THEN 'Dairy Product'
      ELSE 'Non-Dairy Product'
    END AS product_category
  FROM Items i
)
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
      pc.product_category,
      SUM(inv.quantity) AS total_sold
FROM Invoices inv
JOIN ProductCategories pc ON inv.item_id = pc.item_id
JOIN Items i ON inv.item_id = i.item_id
GROUP BY day_of_week, pc.product_category
ORDER BY day_of_week, pc.product_category
