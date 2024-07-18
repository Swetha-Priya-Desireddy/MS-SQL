This file provides a quick reference for commonly used commands in Microsoft SQL Server categorized by their function:

1. DDL (Data Definition Language)

CREATE: Creates database objects like tables, views, indexes, etc.
Example: CREATE TABLE Customers (CustomerID int PRIMARY KEY, Name varchar(50), Email nvarchar(100))
ALTER: Modifies existing database objects.
Example: ALTER TABLE Customers ADD PhoneNumber varchar(20)
DROP: Deletes database objects.
Example: DROP TABLE Orders
2. DML (Data Manipulation Language)

INSERT: Adds new data to a table.
Example: INSERT INTO Customers (CustomerID, Name, Email) VALUES (1, 'John Doe', 'john.doe@email.com')
UPDATE: Modifies existing data in a table.
Example: UPDATE Customers SET Email = 'jane.doe@email.com' WHERE CustomerID = 2
DELETE: Removes data from a table.
Example: DELETE FROM Customers WHERE Name = 'Old Customer'
3. DCL (Data Control Language)

GRANT: Assigns permissions to users for accessing database objects.
Example: GRANT SELECT ON Customers TO user1
REVOKE: Removes previously granted permissions.
Example: REVOKE SELECT ON Customers FROM user1
4. TCL (Transaction Control Language)

COMMIT: Saves all changes made within a transaction.
Example: COMMIT (Used after successful DML operations)
ROLLBACK: Undoes all changes made within a transaction.
Example: ROLLBACK (Used in case of errors or to cancel changes)
Note: This is a basic overview. Each command has various options and functionalities. Refer to official documentation for detailed syntax and usage information.
