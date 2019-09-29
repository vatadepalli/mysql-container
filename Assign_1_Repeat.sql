USE banna;

-- 1. Write a query in SQL to display all the information of the employees
SELECT * FROM EMP;


-- 2. Write a query in SQL to find the salaries of all employees
SELECT ename, sal
FROM EMP;


-- 3. Write a query in SQL to display the unique designations for the
-- employees.
SELECT DISTINCT job
FROM EMP;


-- 4. Write a query in SQL to list the emp_name and salary is increased by 15%
-- and expressed as no.of Dollars.
SELECT ename, concat(sal*1.15, " $")
FROM EMP;



-- 5. Write a query in SQL to produce the output of employees name and job
-- name as a fromat of "Employee & Job".
SELECT concat(ename, " & ", job) "Employee & Job"
FROM EMP;


-- 6. Write a query in SQL to produce the output of employees as follows:
-- Employee
-- JONAS(manager).
SELECT CONCAT(ename, ' (', job, ')') 'Employee(Job)'
FROM EMP;


-- 7. Write a query in SQL to list the employees with Hire date in the format like
-- February 22, 1991.
SELECT ename, 
concat(
    monthname(hiredate), " ", 
    day(hiredate), " ", 
    year(hiredate)
    )
FROM EMP;


-- NUMBER OF LETTERS ------------------------------------------
-- 8. Write a query in SQL to count the no. of characters without considering the
-- spaces for each name.
SELECT ename, LENGTH(REPLACE(ename, ' ', '')) 'Number of letters'
FROM EMP
GROUP BY ename; # This line is not necessary here.




-- 9. Write a query in SQL to list the emp_id,salary, and commission of all the
-- employees.
SELECT empno, sal, comm
FROM EMP;



-- 10. Write a query in SQL to display the unique department with jobs.
select * from EMP;
SELECT DISTINCT deptno, job
from DEPT;



-- 11. Write a query in SQL to list the employees who does not belong to
-- department 2001.
select ename, deptno
from EMP
where deptno != '20';



-- 12. Write a query in SQL to list the employees who joined before 1981.

select *
from EMP;

select ename, hiredate
from EMP
where year(hiredate) < 1981;



-- 13. Write a query in SQL to display the average salaries of all the employees
-- who works as ANALYST.



-- 14. Write a query in SQL to display the details of the employee KING.



-- 15. Write a query in SQL to display all the details of the employees whose
-- commission is more than their salary.



-- 16. Write a query in SQL to list the employees whose salary is more than
-- 3000 after giving 25% increment.



-- 17. Write a query in SQL to list the name of the employees, those having six characters to their name.



-- 18. Write a query in SQL to list the employees who joined in the month
-- January.




-- 19. Write a query in SQL to list the name of employees and their manager
-- separated by the string 'works for'.



-- 20. Write a query in SQL to list all the employees whose designation is
-- CLERK.



-- 21. Write a query in SQL to list the employees whose experience is more than
-- 38 years. 



-- 22. Write a query in SQL to list the employees whose salaries are less than
-- 3500.



-- 23. Write a query in SQL to list the name, job_name, and salary of any
-- employee whose designation is ANALYST.



-- 24. Write a query in SQL to list the employees who have joined in the year
-- 1981.



-- 25. Write a query in SQL to list the name, id, hire_date, and salary of all the
-- employees joined before 1 apr 1981..




-- 26. Write a query in SQL to list the employee name, and job_name who are
-- not working under a manager.



-- 27. Write a query in SQL to list all the employees joined on 3rd dec 81.



-- 28. Write a query in SQL to list the id, name, salry, and experiences of all the
-- employees working for the manger 7698.



-- 29. Write a query in SQL to list the id, name, salary, and experience of all the
-- employees who earn more than 100 as daily salary.



-- 30. Write a query in SQL to list the employees who are retiring after 31-Dec 89 after completion of 8 years of service period.



-- 31. Write a query in SQL to list those employees whose salary is an odd
-- value.



-- 32. Write a query in SQL to list those employees whose salary contain only 3
-- digits.



-- 33. Write a query in SQL to list the employees who joined in the month of
-- APRIL.



-- 34. Write a query in SQL to list the employees those who joined in company
-- before 19th of the month.




-- 35. Write a query in SQL to list the employees who are SALESMAN and
-- gathered an experience over 10 years. 


-- 36. Write a query in SQL to list the employees of department id 20 or 10
-- joined in the year 1981.


-- 37. Write a query in SQL to list the employees of department id 10 or 20
-- joined in the year 1981.



-- 38. Write a query in SQL to list all the employees of designation CLERK in
-- department no 20



-- 39. Write a query in SQL to list the ID, name, salary, and job_name of the
-- employees for -
-- 1. Annual salary is below 34000 but receiving some commission which should
-- not be more than the salary,
-- 2. And designation is SALESMAN and working for department 3001.



-- 40. Write a query in SQL to list the employees who are either CLERK or
-- MANAGER.


 
-- 41. Write a query in SQL to list the employees who joined in any year except
-- the month February.



-- 42. Write a query in SQL to list the employees who joined in the year 81.



-- 43. Write a query in SQL to list the employees who joined in the month of
-- June in 1981.




-- 44. Write a query in SQL to list the employees whose annual salary is within
-- the range 24000 and 50000.



-- 45. Write a query in SQL to list the employees who have joined on the
-- following dates 1st May,20th Feb, and 03rd Dec in the year 1981.



-- 46. Write a query in SQL to list the employees working under the managers
-- 7902, 7698, 7698



-- 47. Write a query in SQL to list the employees who joined after the month
-- JUNE in the year 1981.



-- 48. Write a query in SQL to list the employees who joined in 80's.



-- 49. Write a query in SQL to list the managers of department 10 or 20. 




-- 51. Write a query in SQL to list all the employees who joined before or after
-- 1981.


-- 52. Write a query in SQL to list the employees along with department name.



-- 53. Write a query in SQL to list the name, job name, annual salary,
-- department id, department name and grade of the employees who earn 60000
-- in a year or not working as an ANALYST.


-- 54. Write a query in SQL to list the name, job name, manager id, salary,
-- manager name, manager's salary for those employees whose salary is greater
-- than the salary of their managers.



-- 55. Write a query in SQL to list the employees name, department, salary and
-- commission. For those whose salary is between 1000 and 5000 while location
-- is PERTH.




-- 56. Write a query in SQL to list the grade, employee name for the department
-- id 10 or 30 but salary grade is not 4 while they joined the company before
-- 1992-12-31.



-- 57. Write a query in SQL to list the employees whose manager name is
-- JONAS.



-- 58. Write a query in SQL to list the name and salary of FRANK if his salary is
-- equal to max_sal of his grade.



-- CHECK LATER #CHECKED!!!




-- 60. Write a query in SQL to list the id, name, salary, and location of the
-- employees working at PERTH,or MELBOURNE with an experience over 10
-- years.



-- 61. Write a query in SQL to list the employees along with their location who
-- belongs to SYDNEY, MELBOURNE with a salary range between 2000 and
-- 5000 and joined in 1991. 


-- 62. Write a query in SQL to list the employees with their location and grade for
-- MARKETING department who comes from MELBOURNE or PERTH within
-- the grade 3 to 5 and experience over 5 years.



-- 63. Write a query in SQL to list the employees who are senior to their own
-- manager.


-- 64. Write a query in SQL to list the employee with their grade for the grade
-- 4.


-- 65. Write a query in SQL to list the employees of grade 3 in department
-- PRODUCTION or AUDIT who joined after 1991 and they are not MARKER or
-- ADELYN to their name.



-- 66. Write a query in SQL to list the employees in the ascending order of their
-- salaries.



-- 67. Write a query in SQL to list the details of the employees in ascending
-- order to the department_id and descending order to the jobs.
-- and then orders in segement by dept no



-- 69. Write a query in SQL to list the id, name, monthly salary, daily salary of all
-- the employees in the ascending order of their annual salary.


-- 70. Write a query in SQL to list the employees in descending order who are
-- either 'CLERK' or 'ANALYST'.


-- 71. Write a query in SQL to display the location of CLARE.


-- 72. Write a query in SQL to list the employees in ascending order of seniority
-- who joined on 1-MAY-91,or 3-DEC-91, or 19-JAN-90.



-- 73. Write a query in SQL to list the employees who are drawing the salary less
-- than 1000 and sort the output in ascending order on salary.


-- 74. Write a query in SQL to list the details of the employees in ascending
-- order on the salary.


-- 75. Write a query in SQL to list the employees in ascending order on job name
-- and descending order on employee id. 



-- 76. Write a query in SQL to list the unique jobs of department 2001 and 3001
-- in descending order.



-- 77. Write a query in SQL to list all the employees except PRESIDENT and
-- MANAGER in ascending order of salaries.



-- 78. Write a query in SQL to list the employees in ascending order of the salary
-- whose annual salary is below 25000.



-- 79. Write a query in SQL to list the employee id, name, annual salary, daily
-- salary of all the employees in the ascending order of annual salary who works
-- as a SALESMAN.


-- 80. Write a query in SQL to list the employee id, name, hire_date, current date
-- and experience of the employees in ascending order on their experiences.



-- 81. Write a query in SQL to list the employees in ascending order of
-- designations of those, joined after the second half of 1982.




-- 82. Write a query in SQL to list the total information of employees table along
-- with department, and location of all the employees working under Accounting
-- and sales in the ascending department no.



-- 83. Write a query in SQL to display the total information of the employees
-- along with grades in ascending order.



-- 84. Write a query in SQL to list the name, job name, department, salary, and
-- grade of the employees according to the department in ascending order.



-- 85. Write a query in SQL to list the name, job name, salary, grade and
-- department name of employees except CLERK and sort result set on the
-- basis of highest salary.



-- 86. Write a query in SQL to list the employee ID, name, salary, department,
-- grade, experience, and annual salary of employees working for department
-- 1001 or 2001.



-- 87. Write a query in SQL to list the details of the employees along with the
-- details of their departments.



-- 88. Write a query in SQL to list the employees who are senior to their own
-- MANAGERS.



 
-- 89. Write a query in SQL to list the employee id, name, salary, and
-- department id of the employees in ascending order of salary who works in the
-- department 10.



-- 90. Write a query in SQL to find the highest salary from all the employees.



-- 91. Write a query in SQL to find the average salary and average total
-- remuneration(salary and commission) for each type of job.



-- 92. Write a query in SQL to find the total annual salary distributed against
-- each job in the year 1981.



-- 93. Write a query in SQL to list the employee id, name, department id, location
-- of all the employees.



-- 94. Write a query in SQL to list the employee id, name, location, department of
-- all the employees in  departments 10 and 20.



-- 95. Write a query in SQL to list the employee id, name, location, department of
-- all the departments 10 and 20.



-- 96. Write a query in SQL to list the manager no and the number of employees
-- working for those managers in ascending order on manager id.



-- 97. Write a query in SQL to display the number of employee for each job in
-- each department.



-- 98. Write a query in SQL to list the department where at least two employees
-- are working.



-- 99. Write a query in SQL to display the Grade, Number of employees, and
-- maximum salary of each grade.



-- 100. Write a query in SQL to display the department name, grade, no. of
-- employees where at least two employees are working as a SALESMAN.




-- 101. Write a query in SQL to list the no. of employees in each department
-- where the no. is less than 4.



-- 102. Write a query in SQL to list the name of departments where atleast 2
-- employees are working in that department. 



-- 103. Write a query in SQL to check whether all the employees numbers are
-- indeed unique.



-- 104. Write a query in SQL to list the no. of employees and average salary
-- within each department for each job name.



-- 105. Write a query in SQL to list the names of those employees starting with
-- 'A' and with five characters in length.



-- 106. Write a query in SQL to list the employees whose name is six characters
-- in length and third character must be 'R'.



-- 107. Write a query in SQL to list the name of the employee of five characters
-- long and starting with 'A' and ending with 'N'.




-- 108. Write a query in SQL to list the employees who joined in the month of
-- which second character is 'a'.



-- 109. Write a query in SQL to list the employees whose names containing the
-- character set 'AR' together.




-- 110. Write a query in SQL to list the employees those who joined in 90's.




-- 111. Write a query in SQL to list the employees whose ID not starting with
-- digit 78.



-- 112. Write a query in SQL to list the employees whose names containing the
-- letter 'A'.




-- 113. Write a query in SQL to list the employees whose name is ending with 'S'
-- and five characters long.




-- 114. Write a query in SQL to list the employees who joined in the month
-- having char 'A' at any position.



-- 115. Write a query in SQL to list the employees who joined in the month
-- having second char is 'A'. 

