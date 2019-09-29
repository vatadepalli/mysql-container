# Conditions

## AND

    SELECT *  
    FROM cus_tbl  
    WHERE cus_firstname = 'Ajeet'  
    AND cus_id > 3;  

## OR

    SELECT *  
    FROM cus_tbl  
    WHERE cus_firstname = 'Ajeet'  
    OR cus_id > 100;  

## AND OR

    SELECT *  
    FROM students  
    WHERE (course_name = 'Java' AND student_name = 'Aryan')  
    OR (student_id < 2);

## LIKE / NOT LIKE

    SELECT officer_name  
    FROM officers  
    WHERE address LIKE 'Luck%';  

    SELECT officer_name  
    FROM officers  
    WHERE address NOT LIKE 'Luck%';  

## IN / NOT IN

    SELECT *  
    FROM officers  
    WHERE officer_name IN ('Ajeet', 'Vimal', 'Deepika'); 

    SELECT *  
    FROM officers  
    WHERE officer_name NOT IN ('Ajeet','Vimal','Deepika');  


## IS NULL / IS NOT NULL

    SELECT *  
    FROM officers  
    WHERE officer_name IS NULL;  

    SELECT *  
    FROM officers  
    WHERE officer_name IS NOT NULL;  

## BETWEEN

    SELECT *  
    FROM officers  
    WHERE officer_id NOT BETWEEN 3 AND 5;  


### TYPE CASTING
