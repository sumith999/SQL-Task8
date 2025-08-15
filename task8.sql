-- Using the Sales Database
use Sales;

-- Stored Procedure
-- 1) ShowCustomerName: Show name of a Customer by ID
DELIMITER //
CREATE PROCEDURE ShowCustomerName(IN cust_id INT)
begin
    SELECT CustomerName 
    FROM Customers
    WHERE CustomerID = cust_id;
END //
DELIMITER;

-- Call the procedure
call ShowCustomerName(3);

-- 2) CountTotalCustomers : Returns the total number of customers
DELIMITER //
CREATE PROCEDURE CountTotalCustomers ()
BEGIN
    SELECT COUNT(*) AS TotalCustomers
    FROM Customers;
END //
DELIMITER ;

-- Call the procedure
CALL CountTotalCustomers();

-- 3) GetOrdersByCustomer: Shows all orders of a given customer
DELIMITER //
CREATE PROCEDURE GetOrdersByCustomer (IN cust_id INT)
BEGIN
    SELECT *
    FROM Orders
    WHERE CustomerID = cust_id;
END //
DELIMITER ;

-- Call the procedure
CALL GetOrdersByCustomer(5);



-- 1) CalculateSqaure: A Function which calculates the square of a given number 
DELIMITER //
CREATE FUNCTION CalculateSquare(input_number INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result = input_number * input_number;
    RETURN result;
END //

DELIMITER ;

-- Using the function
SELECT CalculateSquare(56) AS SquareResult;

-- GetTotalOrders: Returns the total number of orders for a given customer
DELIMITER //
CREATE FUNCTION GetTotalOrders (
    cust_id INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_orders INT;
    SELECT COUNT(*) INTO total_orders
    FROM Orders
    WHERE CustomerID = cust_id;
    RETURN total_orders;
END //

DELIMITER ;

-- Using the function
select GetTotalOrders(1) as Totalorders;













    
