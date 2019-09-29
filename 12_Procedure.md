# Procedure

* A procedure can return one or more than one value through parameters or may not return at all.

## Creating a Procedure

        CREATE [OR REPLACE] PROCEDURE procedure_name
        [(parameter_name [IN | OUT | IN OUT] type [, ...])] 
        {IS | AS} 
        BEGIN
            <procedure_body>
        END procedure_name;


**Example**

        CREATE OR REPLACE PROCEDURE greetings 
        AS 
        BEGIN 
            dbms_output.put_line('Hello World!'); 
        END; 
        /

**Example**

        DELIMITER $$  
        CREATE PROCEDURE get_student()  
        BEGIN  
            SELECT * FROM table1;  
        END$$  


## Calling a Procedure

**Executing a standalone procedure**

        CALL get_student();

        EXECUTE greetings;



## Drop a Procedure

**Deleting a standalone procedure**

        DROP PROCEDURE [IF EXISTS] procedure_name;

        DROP PROCEDURE greetings;

        DROP PROCEDURE get_student;