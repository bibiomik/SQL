-- Q5 Highest food prices  

SELECT
  menu_name,
  price
FROM menus
WHERE price = (SELECT MAX(price)
               FROM menus)
