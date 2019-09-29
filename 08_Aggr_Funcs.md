# Aggregate Functions

## COUNT

* NON-NULL values will be counted.

        SELECT COUNT(officer_name)  
        FROM officers;  


## SUM

        SELECT SUM (working_hours) AS "Total working hours"  
        FROM employees  
        WHERE working_hours > 5;  

## AVG

        SELECT AVG(working_hours) AS "Avg working hours"  
        FROM employees  
        WHERE working_hours > 5; 

## MIN

        SELECT MIN (working_hours) AS "Minimum working hours"  
        FROM employees;  

## MAX

        SELECT MAX (working_hours) AS "Maximum working hours"  
        FROM employees; 

## FIRST ELEMENT

        SELECT officer_name   
        FROM officers  
        LIMIT 1;  


        SELECT officer_name   
        FROM officers  
        LIMIT 2;  

## LAST ELEMENT

        SELECT officer_name   
        FROM officers  
        ORDER BY officer_id DESC  
        LIMIT 1;  

## LIMIT

        SELECT column_name  
        FROM table_name  
        LIMIT 1;  