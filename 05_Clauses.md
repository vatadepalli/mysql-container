# Clauses

## WHERE

        SELECT *
        FROM officers
        WHERE address = 'Mau';

* Usage with AND condition

        SELECT *
        FROM officers
        WHERE address = 'Lucknow'
        AND officer_id < 5;

## DISTINCT

        SELECT DISTINCT expressions  
        FROM tables  
        [WHERE conditions];

* From single expression

        SELECT DISTINCT address  
        FROM officers;  

* From multiple expressions

        SELECT DISTINCT officer_name, address  
        FROM officers;

## FROM

        FROM table1  
        [ { INNER JOIN | LEFT [OUTER] JOIN| RIGHT [OUTER] JOIN } table2  
        ON table1.column1 = table2.column1 ]  

* Select from one table

        SELECT *  
        FROM officers  
        WHERE officer_id <= 3;  

* Select from two tables with INNER JOIN

        SELECT officers.officer_id, students.student_name  
        FROM students  
        INNER JOIN officers  
        ON students.student_id = officers.officer_id;  

* Select from two tables with OUTER JOIN

        SELECT officers.officer_id, students.student_name  
        FROM officers  
        LEFT OUTER JOIN students  
        ON officers.officer_id = students.student_id;  

## ORDER BY

        SELECT expressions  
        FROM tables  
        [WHERE conditions]  
        ORDER BY expression [ ASC | DESC ];  -- Defaults to ASC

        SELECT *  
        FROM officers  
        WHERE address = 'Lucknow'  
        ORDER BY officer_name ASC; 

* Using both ASC & DESC

        SELECT officer_name, address  
        FROM officers  
        WHERE officer_id < 5  
        ORDER BY officer_name DESC, address ASC;  


## GROUP BY

        SELECT expression1, expression2, ... expression_n,   
        aggregate_function (expression)  
        FROM tables  
        [WHERE conditions]  
        GROUP BY expression1, expression2, ... expression_n;  


        SELECT address, count(*)
        FROM officers
        GROUP BY address;

        SELECT emp_name, SUM(working_hours) AS "Total working hours"
        FROM employees
        GROUP BY emp_name;

        SELECT emp_name, MIN(working_hours) AS "Minimum working hour"  
        FROM employees  
        GROUP BY emp_name;  

        SELECT emp_name, MAX (working_hours) AS "Minimum working hour"  
        FROM employees  
        GROUP BY emp_name;  

        SELECT emp_name, AVG(working_hours) AS "Average working hour"  
        FROM employees  
        GROUP BY emp_name;  

## HAVING

* It shows only those groups in result set whose conditions are TRUE.

        SELECT emp_name, SUM(working_hours) AS "Total working hours"
        FROM employees
        GROUP BY emp_name
        HAVING SUM(working_hours) > 5;