# Cursor

> A cursor is a select statement, defined in the declaration section in MySQL.

1. **Declare Cursor**

        DECLARE cursor_name CURSOR FOR  
        SELECT statement; 

2. **Open Cursor**

        OPEN cursor_name;

3. **Fetch Cursor**

    It is used to fetch the row or the column.

        FETCH [ NEXT [ FROM ] ] cursor_name INTO variable_list;  

4. **Close Cursor**

        CLOSE cursor_name;



## Example Program Using Procedure

        USE test;
        SELECT * FROM table_1;

        DELIMITER ##

        CREATE PROCEDURE list_name(INOUT name_list VARCHAR(4000))
        BEGIN

        DECLARE is_done INTEGER DEFAULT 0;
        DECLARE s_name VARCHAR(100) DEFAULT "";
        
        DECLARE stud_cursor CURSOR FOR
        SELECT name FROM table_1;

        DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
        OPEN stud_cursor;

            get_list: LOOP
                FETCH stud_cursor INTO s_name;
                    IF is_done - 1 THEN
                    LEAVE get_list;
                    END IF;
                SET name_list = CONCAT(s_name, "; ", name_list);
            END LOOP get_list;
        
        CLOSE stud_cursor;

        END##



        DELIMITER ;

        SET @name_list ="";  
        CALL list_name(@name_list);  
        SELECT @name_list;


## CURSOR inside a PROCEDURE

        use banna;
        DELIMITER $$
        DROP PROCEDURE IF EXISTS createEmailList $$
        CREATE PROCEDURE createEmailList (
            INOUT emailList varchar(4000)
        )
        BEGIN
            DECLARE finished INTEGER DEFAULT 0;
            DECLARE empnumber INTEGER default 0;
        
            -- declare cursor for employee email
            DEClARE curEmail 
                CURSOR FOR 
                    SELECT e.empno 
                    FROM EMP e;
        
            -- declare NOT FOUND handler
            DECLARE CONTINUE HANDLER 
                FOR NOT FOUND SET finished = 1;
        
            OPEN curEmail;

            getEmail: LOOP
                
                FETCH curEmail INTO empnumber;
                IF finished = 1 THEN 
                    LEAVE getEmail;
                END IF;
                
                UPDATE EMP
                SET STATUS_='Cool'
                WHERE EMPNO=empnumber;
                
            END LOOP getEmail;
            CLOSE curEmail;
        
        END$$
        DELIMITER ;

        SELECT * FROM EMP;

        ALTER TABLE EMP  
        ADD STATUS_ varchar(40);
            

        SET @emailList = ""; 
        CALL createEmailList(@emailList); 

        SELECT *
        FROM EMP;

        ALTER TABLE EMP  
            DROP COLUMN STATUS_;