use test;
show tables;

select * from EMP;

/* 
  1. Write a function to compute the following. Function
  should take Emp_ num and return
  the cost to company.
  DA = 15% Salary, HRA= 20% of Salary, TA= 8% of Salary.
  Special Allowance will be decided based on the service in
  the company.
  < 1 Year Nil
  >=1 Year< 2 Year 10% of Salary
  >=2 Year< 4 Year 20% of Salary
  >4 Year 30% of Salary
*/

delimiter ;
DROP FUNCTION IF EXISTS costToCompany;
SET GLOBAL log_bin_trust_function_creators = 1;
delimiter //
CREATE FUNCTION costToCompany(eid INT(10)) RETURNS DECIMAL(9,2)
begin
	DECLARE cost DECIMAL(9,2);
    DECLARE fsal DECIMAL(9,2);
    DECLARE years INT;
    
	SELECT sal, FLOOR(DATEDIFF(CURDATE(), hiredate)/365)
    INTO fsal, years
    FROM EMP
    WHERE empno = eid;
    
    IF years < 32 THEN 
		SET cost = fsal + (fsal * 0.15) + (fsal*0.2) + (fsal*0.08) + (fsal*0);
	elseif years < 35 then
		SET cost =  fsal + (fsal * 0.15) + (fsal*0.2) + (fsal*0.08) + (fsal*0.1);
    elseif years < 37 then
		SET cost =  fsal + (fsal * 0.15) + (fsal*0.2) + (fsal*0.08) + (fsal*0.2);
    else
		SET cost =  fsal + (fsal * 0.15) + (fsal*0.2) + (fsal*0.08) + (fsal*0.3);
    end if;
    
    return cost;

end //
delimiter ;

select ename, sal, FLOOR(DATEDIFF(CURDATE(), hiredate)/365) exp, costToCompany(empno)
from EMP;


/*
  2. Write a procedure that displays the following information of all emp
  Emp_Name		Department Name 	Designation 	Salary Status
  Note: - Status will be (Greater, Lesser or Equal) respective
  to average salary of their own
  department. 
  
  Display an error message Emp table is emmty or if there is no matching record.
*/
USE banna;

DELIMITER $$

CREATE PROCEDURE status(INOUT status_list VARCHAR(200))
BEGIN
	DECLARE is_done INTEGER DEFAULT 0;
	DECLARE s_name VARCHAR(100) DEFAULT "";

	DECLARE stud_cursor CURSOR FOR
	SELECT sal FROM EMP;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
	OPEN stud_cursor;

		get_list: LOOP
			FETCH stud_cursor INTO s_name;
				IF is_done - 1 THEN
				LEAVE get_list;
				END IF;
			SET status_list = CONCAT(s_name, "; ", name_list);
		END LOOP get_list;

	CLOSE stud_cursor;
END $$

delimiter ;

SET @status_list="";  
CALL status(@status_list);  
SELECT @status_list;

/*

3. Write a function to compute the following. Function
should take Emp_num and return
the cost to company.
DA = 15% Salary, HRA= 20% of Salary, TA= 8% of Salary.
Special Allowance will be decided based on the service in
the company.
< 1 Year Nil
>=1 Year< 2 Year 10% of Salary
>=2 Year< 4 Year 20% of Salary
>4 Year 30% of Salary
4. Write a procedure that displays the following
information of all emp
Emp_Name Department Name Designation Salary Status
Note: - Status will be (Greater, Lesser or Equal) respective
to average salary of their own
department. Display an error message table is if there is
no matching
record.
*/

/*
5. Write a procedure that accept Emp_num and update
the salary and store the old salary
details in Emp _Back (Emp _Back has the same structure
without any
constraint) table.
Exp< 2 then no Update
Exp> 2 and < 5 then 20% of salary
Exp> 5 then 25% of salary
*/


/*
6. Write a procedure and a function.
Function: This function will return years of experience for a
emp. This function will take the
empid of the emp as an input parameter. The output will be
rounded to the nearest year
(1.4 year will be considered as 1 year and 1.5 year will be
considered as 2 year).

Procedure: Capture the value returned by the above
function to calculate the additional
allowance for the emp based on the experience.
Additional Allowance = Year of experience x 3000
Calculate the additional allowance and store Emp_num,
Date of Joining, and Experience in
years and additional allowance in Emp_Allowance table.
*/

/*
Q2. Trigger
1. Write a trigger which add entry in audit table when user
tries to insert or delete records in employee table on sat
or sun
2. Create table order_history. Write a trigger to store old
qty and old cost of order in history table before you
update qty and cost of order. 
*/