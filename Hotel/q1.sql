-- Q1: Retrieve room type information and the number of rooms available in each category

SELECT room_type, COUNT(*) AS available_rooms
FROM Rooms
WHERE status = 'available'
GROUP BY room_type
