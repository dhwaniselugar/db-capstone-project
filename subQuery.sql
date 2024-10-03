SELECT menu_name
FROM Menu
WHERE menu_id = ANY (
    SELECT menu_id
    FROM Orders
    WHERE quantity > 2
);
