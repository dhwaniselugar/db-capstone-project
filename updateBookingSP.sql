DELIMITER $$

CREATE PROCEDURE UpdateBooking(
    IN p_booking_id INT,
    IN p_new_booking_date DATE
)
BEGIN
    UPDATE Bookings
    SET booking_date = p_new_booking_date
    WHERE booking_id = p_booking_id;

    SELECT 'Booking updated successfully.' AS Message;
END $$

DELIMITER ;


CALL UpdateBooking(8, '2023-11-05');
