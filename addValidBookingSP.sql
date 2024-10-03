DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN booking_date DATE,
    IN table_number INT,
    IN cust_id INT
)
BEGIN
    DECLARE table_count INT;
    
    -- Start transaction
    START TRANSACTION;
    
    -- Check if the table is already booked on the specified date
    SELECT COUNT(*)
    INTO table_count
    FROM Bookings
    WHERE booking_date = booking_date
    AND table_number = table_number;

    -- If table is booked, rollback transaction, otherwise insert new booking and commit
    IF table_count > 0 THEN
        -- Rollback if table is already booked
        ROLLBACK;
        SELECT 'Booking failed: Table is already booked on this date.' AS message;
    ELSE
        -- Insert the new booking if table is available
        INSERT INTO Bookings (booking_date, table_number, cust_id)
        VALUES (booking_date, table_number, cust_id);

        -- Commit transaction
        COMMIT;
        SELECT 'Booking successful!' AS message;
    END IF;
    
END //

DELIMITER ;


CALL AddValidBooking("2023-10-10", 5, 1);


DROP PROCEDURE IF EXISTS AddValidBooking;

