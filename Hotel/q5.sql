-- Q5 Calculate the occupancy rate (Occupancy Rate) 

SELECT
  COALESCE((SUM(CASE WHEN status = 'occupied' THEN 1 ELSE 0 END) * 100.0) / NULLIF(COUNT(*), 0), 0) AS occupancy_rate
FROM rooms
