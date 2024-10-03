DELIMITER $$

CREATE PROCEDURE AddBooking(
    IN p_booking_id INT,
    IN p_customer_id INT,
    IN p_booking_date DATE,
    IN p_table_number INT
)
BEGIN
    INSERT INTO Bookings (booking_id, cust_id, booking_date, table_number)
    VALUES (p_booking_id, p_customer_id, p_booking_date, p_table_number);
    
    SELECT 'Booking added successfully.' AS Message;
END $$

DELIMITER ;


CALL AddBooking(8, 1, '2023-10-25', 5);
