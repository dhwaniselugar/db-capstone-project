SELECT
    Customers.customer_id,
    Customers.name,
    Orders.order_id,
    Orders.total_cost,
    Menu.menu_name,
    Menu.course,
    Menu.starter
FROM
    Orders
    INNER JOIN Customers ON Orders.customer_id = Customers.customer_id
    INNER JOIN Menu ON Orders.menu_id = Menu.menu_id
WHERE
    Orders.total_cost > 150
ORDER BY
    Orders.total_cost ASC;
