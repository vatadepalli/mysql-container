# Queries

## BASIC

1. Create Database

        CREATE DATABAS db1;

2. Select / Use Database

        USE db1;

3. Create Table Query

        CREATE TABLE customers (
            id INT(10),    
            name VARCHAR(50),    
            city VARCHAR(50),  
            PRIMARY KEY (id )    
        );    

4. Alter Table Query

        ALTER TABLE customers   
        ADD age VARCHAR(50);    

5. Insert Values into table Query

        INSERT INTO customers 
        VALUES(101,'rahul','delhi');  

6. Update Records in a table Query

        UPDATE customers 
        SET name='bob', city='london' 
        WHERE id=101;

7. Delete Query

        DELETE FROM customers 
        WHERE id=101;

8. Select Query

        SELECT * 
        FROM customers;

9. Truncate Table Query

        TRUNCATE TABLE customers; 

10. Drop Table Query

        DROP TABLE customers;

## INSERT

1. Field name is optional if all full record is filled.

        INSERT INTO table_name 
        VALUES ( value1, value2,...valueN );  

2. Can your fieled names too

        INSERT INTO emp(id,name,salary)
        VALUES (7, 'Sonoo', 40000);

3. Partial fileds need filed names

        INSERT INTO emp(id,name) 
        VALUES (7, 'Sonoo');  

4. Insert into multiple records

        INSERT INTO cus_tbl  
        (cus_id, cus_firstname, cus_surname)  
        VALUES  
        (5, 'Ajeet', 'Maurya'),  
        (6, 'Deepika', 'Chopra'),  
        (7, 'Vimal', 'Jaiswal');  

## UPDATE

* Used with **SET** & **WHERE** Clause

        UPDATE table_name   
        SET field1=new-value1, field2=new-value2, ...  
        WHERE cus_id = 5;

* Can update vals in a single table at a time.
* **WHERE** is used to update selected rows.
* One or more fields can be updated altogether.


## DELETE

        DELETE FROM cus_table
        WHERE cus_id=6;

## SELECT

* General Select Syntax

        SELECT expressions  
        FROM tables  
        [WHERE conditions];  

* Select all records from a table

        SELECT * FROM officers;

* Select from multiple tables

        SELECT officers.officer_if, students.student_name
        FROM students
        INNER JOIN officers
        ON students.student_id = officers.officer_id
        ORDER BY student_id;