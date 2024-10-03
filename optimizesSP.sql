DELIMITER $$

CREATE PROCEDURE CancelOrder(IN p_order_id INT)
BEGIN
    DELETE FROM Orders WHERE order_id = p_order_id;
    SELECT 'Order has been cancelled.' AS Message;
END $$

DELIMITER ;
