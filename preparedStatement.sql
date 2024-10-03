-- Step 1: Prepare the statement
PREPARE GetOrderDetail FROM
'SELECT order_id, quantity, total_cost FROM Orders WHERE customer_id = ?';

-- Step 2: Set the variable
SET @id = 1;

-- Step 3: Execute the prepared statement
EXECUTE GetOrderDetail USING @id;

