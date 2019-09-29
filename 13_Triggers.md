# Triggers

* **Types**
    1. After / Before Insert
    2. After / Before Update
    3. After / Before Delete

## After / Before Insert Trigger

        CREATE TRIGGER trigger_name  
        AFTER/BEFORE INSERT  
        ON table_name FOR EACH ROW  
            BEGIN  
                --variable declarations  
                --trigger code  
            END;  


**Example**

        CREATE TRIGGER 'student_insert' 
        AFTER INSERT 
        ON 'student' FOR EACH ROW 
            INSERT INTO student2 
            values(null, new.id, 'inserted', NOW());

## After / Before Update Trigger

        CREATE TRIGGER trigger_name  
            AFTER/BEFORE UPDATE  
                ON table_name FOR EACH ROW  
                BEGIN  
                    --variable declarations  
                    --trigger code  
                END;  

**Example**

        CREATE TRIGGER 'student_update' 
        AFTER UPDATE 
        ON 'student' FOR EACH ROW 
            UPDATE student2 
            SET name=new.name 
            WHERE id=id;

## After / Before Delete Trigger

        CREATE TRIGGER trigger_name  
        AFTER/BEFORE DELETE  
        ON table_name FOR EACH ROW  
        BEGIN  
            --variable declarations  
            --trigger code  
        END;  

**Example**

        CREATE TRIGGER 'student_delete' 
        AFTER DELETE 
        ON 'student' FOR EACH ROW 
            DELETE FROM student2 
            WHERE student.id=student1.id;


## Drop Trigger

        Drop TRIGGER[ IF EXISTS ] Trigger_name;  


        DROP TRIGGER student_update;

