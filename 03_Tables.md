# TABLES

## CREATE TABLE

        CREATE TABLE IF NOT EXISTS table_name(column_name column_type...);

        CREATE TABLE cus_table(
            cus_id INT NOT NULL AUTO_INCREMENT,
            cus_firstname VARCHAR(100) NOT NULL,
            cus_surname VARCHAR(100) NOT NULL,
            PRIMARY KEY(cus_id)
        );

**CREATE A TABLE USING ANOTHER TABLE**

* If we create a new table using an old table, the new table will be filled with the existing value from the old table.

        CREATE TABLE table_name  AS  
        SELECT column1, column2,...   
        FROM old_table_name WHERE ..... ;  
 
  
        CREATE TABLE EmployeeCopy AS  
        SELECT EmployeeID, FirstName, Email  
        FROM Employee;  

## SHOW TABLES

        SHOW TABLES;

**SEE TABLE STRUCTURE**

        DESCRIBE cus_table;
        
        DESC cus_table;

## ALTER TABLE

1. **Add a column in the table**

        ALTER TABLE cus_tbl  
        ADD cus_age varchar(40) NOT NULL;  

2. **Add multiple columns in the table**

        ALTER TABLE cus_tbl

        ADD cus_address VARCHAR(100) NOT NULL
        AFTER cus_surname,

        ADD cus_salary INT(100) NOT NULL
        AFTER cus_age;

3. **MODIFY Column in the table**

        ALTER TABLE table_name  
        MODIFY column_name column_definition  

        ALTER TABLE cus_tbl  
        MODIFY cus_surname varchar(50) NULL;  

4. **DROP Column in table**

        ALTER TABLE cus_tbl  
        DROP COLUMN cus_address;  

5. **Rename Column in a table**

        ALTER TABLE table_name  
        CHANGE COLUMN old_name new_name   
        column_definition  
        [ FIRST | AFTER column_name ]  


        ALTER TABLE  cus_tbl  
        CHANGE COLUMN cus_surname cus_title  
        varchar(20) NOT NULL;  


6. **Rename Table**

        ALTER TABLE cus_tbl  
        RENAME TO cus_table;  


## DELETE TABLE

* Used to delete rows from a table.

        DELETE
        FROM table_name
        [WHERE condition];

* To Remove all the Rows

        DELETE
        FROM table_name;

## TRUNCATE TABLE

* Removes complete data, without removing its structure.

        TRUNCATE TABLE  table_name;

## Difference between TRUNCATE & DELETE & DROP

* **Delete**
	* Delete statement only deletes the rows from the table based on the condition defined by WHERE clause 
	* or - Delete all the rows when condition is not specified.
	* Does not free space occupied by table.
* **Truncate**
	* Delete all rows from the table 
	* and free the containing space.
	* Table structure still exists.

* **DROP**
	* Table structure will be dropped
	* Relationship will be dropped
	* Integrity constratints will be dropped
	* Access privilleges will also be dropped

## COPY TABLE
* copy a SQL table into another table in the same Database.

        SELECT *
        INTO destination_table
        FROM source_table;

        SELECT *
        INTO admin_employee
        FROM hr_employee;

## TEMP TABLE

* Can be created at run-time and can do all kinds of operations that a normal table can do.
* Created inside tempdb database.
* Two Types of Temp Tables
    * Local Temp Variables
		* Are only available at current connection time.
		* Automatically deleted when user disconnects from instances.
		* Starts with #

				CREATE TABLE #local temp table (  
					User id int,  
					Username varchar (50),  
					User address varchar (150)  
				)  

    * Global Temp Variables
		* Start with ##
		* It is like a permanent table.
		* Always ready for all users and not deleted until the total connection is withdrawn.

				CREATE TABLE ##new global temp table (  
					User id int,  
					User name varchar (50),  
					User address varchar (150)  
				)  

## VIEWS

### Create View
* A virtual table created by a query by joining one or more tables.

        CREATE [OR REPLACE] VIEW view_name AS  
        SELECT columns  
        FROM tables  
        [WHERE conditions];


        CREATE VIEW trainer AS  
        SELECT course_name, course_trainer   
        FROM courses;

### Using a View

        SELECT * FROM view_name;

### Update View

*  Modify or update the already created VIEW without dropping it.

        ALTER VIEW view_name AS  
        SELECT columns  
        FROM table  
        WHERE conditions;  


        ALTER VIEW trainer AS  
        SELECT course_name, course_trainer, course_id  
        FROM courses; 

### Drop View

        DROP VIEW [IF EXISTS] view_name;  

        DROP VIEW trainer;