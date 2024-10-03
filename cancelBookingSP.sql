DELIMITER $$

CREATE PROCEDURE CancelBooking(
    IN p_booking_id INT
)
BEGIN
    DELETE FROM Bookings
    WHERE booking_id = p_booking_id;

    SELECT 'Booking cancelled successfully.' AS Message;
END $$

DELIMITER ;


CALL CancelBooking(8);
