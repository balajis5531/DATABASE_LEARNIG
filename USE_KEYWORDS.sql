/*
Write a query to get the total salaries payable to employees.
Write a query to get the maximum and minimum salary from employees table.
Write a query to get the average salary and number of employees in the employees table.
Write a query to get the number of employees working with the company.
Write a query to get the number of distinct jobs available in the employees table.
Write a query get all first name from employees table in upper case.
Write a query to get the first 3 characters of first name from employees table.
Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.
Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
Write a query to get monthly salary (round 2 decimal places) of each and every employee
*/

USE exercise_hr;

select * from employees;

select sum(SALARY) FROM employees;

SELECT MIN(SALARY) AS LOWSALARY FROM employees;

SELECT MAX(SALARY) AS HIGHSALARY FROM employees;

SELECT AVG(SALARY) FROM employees;

SELECT COUNT(LAST_NAME) FROM employees;

SELECT DISTINCT(JOB_ID) FROM employees;

SELECT UPPER(FIRST_NAME) FROM employees;

SELECT SUBSTRING(FIRST_NAME, 1,3) FROM employees;

SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) FROM employees;

select length(CONCAT(FIRST_NAME,' ',LAST_NAME)) FROM employees;

SELECT ROUND(SALARY) FROM employees;


-- find enployee names all the employes working in it deprtment



USE exercise_hr;

select first_name, last_name from departments;
select DEPARTMENT_ID from departments where DEPARTMENT_NAME= 'IT';


-- using join 

select * from employees inner join departments
on employees.DEPARTMENT_ID= departments.DEPARTMENT_ID;



select first_name,last_name,d.department_id, d.department_name
from employees as e inner join departments as d 
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;


select employee_id, first_name, last_name, department_name from employees as e inner join departments as d 
on e.DEPARTMENT_ID= d.DEPARTMENT_ID where department_name='IT';

SELECT employees.job_id, employees.FIRST_NAME, (salary- employees.SALARY) AS salary_difference
FROM employees
JOIN departments on employees.DEPARTMENT_ID= departments.DEPARTMENT_ID;

