DELIMITER $$

CREATE PROCEDURE CheckBooking(IN p_booking_date DATE, IN p_table_number INT)
BEGIN
    DECLARE booking_count INT;

    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE booking_date = p_booking_date AND table_number = p_table_number;

    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', p_table_number, ' is already booked on ', p_booking_date, '.') AS Message;
    ELSE
        SELECT CONCAT('Table ', p_table_number, ' is available on ', p_booking_date, '.') AS Message;
    END IF;
END $$

DELIMITER ;


CALL CheckBooking('2023-10-15', 5);
