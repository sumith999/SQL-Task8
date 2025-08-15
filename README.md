# SQL Task 8 – Stored Procedures \& Functions



This task focuses on creating and executing **stored procedures** and **functions** in MySQL to perform various operations on a sample database.



---



## Files Included

- **task8.sql** – SQL script containing:

&nbsp; - Creation of stored procedures

&nbsp; - Creation of functions

&nbsp; - Execution of procedures and functions

- **Screenshots.docx** – Contains screenshots of the executed queries and their outputs



---



##  Operations Performed



### **Stored Procedures**

1. **ShowCustomerName** – Displays customer name by `CustomerID`

2. **CountTotalCustomers** – Returns the total number of customers

3. **GetOrdersByCustomer** – Shows all orders for a given customer





### **Functions**

1. **CalculateSquare** – Returns the square of a given number

2. **GetTotalOrders** – Returns the total number of orders for a given customer





---



## How to Run

1. Open **MySQL Workbench**

2. Connect to your MySQL server

3. Run the SQL script:

4. Execute procedures/functions using:

&nbsp;  CALL ProcedureName(parameters);

&nbsp;  SELECT FunctionName(parameters);



---



## Notes

* DELIMITER is used to change the command terminator while defining procedures/functions to avoid conflicts with semicolons inside the code.
* DETERMINISTIC is specified for functions that always return the same result for the same input.



---



## Author

**Sumith Poojary**



GitHub: [sumith999](https://github.com/sumith999)



