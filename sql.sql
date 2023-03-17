USE store;

use store;

-- sql single line command

/*  

multiline command

we will follow
UPPERCASE: KEWORDS
LOWERCASE: NON-KEYWORDS



*/ 

show tables;

USE exercise_hr;
SHOW TABLES;

USE store;
SELECT *
FROM customers
ORDER BY first_name;

SELECT* 

FROM customers
ORDER BY first_name DESC;

SELECT *
FROM employees;


SELECT first_name, last_name, address, city FROM customers;

USE exercies_hr;
SHOW TABLES;

select 1,2;

select 1+2;

select 100-50/2 as 'value';

use store;
show tables;

SELECT *
from customers;

select first_name, last_name, points, point + 10 as 'new_point'
from customers;

select 171*214+625;

use exercise_hr;

select first_name as 'FIRST NAME' , last_name as 'LAST NAME'
FROM employees;

SELECT first_name, last_name, salary, salary * 15/100 as PF
from employees;

select * from employees;

use store;
select state
from customers;

select distinct state
from customers;



use store;
select * from products;


select *
from customers
where state="FL";

select *
from customers
where points>3000;

select *   
from customers
where birth_date>='1990-01-01';
 

select *
from customers
where phone='804-427-9456';


select *   
from customers
where points>3000 or birth_date >= '1990-1-01';

select *   
from customers
where points>3000 and birth_date >= '1990-1-01';


select *   
from customers
where points<4000 and state='fl';

select *   
from customers
where points<4000 or state='fl';

select *  --  --born after 1889 or points greter than 1000 and va
from customers
where birth_date >1990-01-01 and points >1000 or state='fl';

select *  --  --born after 1889 or points greter than 1000 and va
from customers
where birth_date >1990-01-01 and points >1000 or state='fl';

select *
from customers
where not (state ='fl');



use store;

-- custmer living in fl or va ga

select *
from customers where state = 'fl' or state ='va' or state= 'ga';

select * from customers where state in ('fl', 'ga', 'va');

select * from products where quantity_in_stock in (49, 38, 72);

select * from customers where points> 3000 and points<10000;

select * from customers where points BETWEEN 3000 and 10000;

select * from customers where birth_date between '1990-01-01' and '2000-01-01';

select * from customers where last_name like 'macCaffrey';

select * from customers where last_name like '%age%';

select * from customers where last_name like 'b%';


select * from customers where address like '%trail%' or address like '%avenue%';
select * from customers where phone like '%9';
select * from customers where phone  not like '%9';

select * from customers where last_name like '_____y';

select * from customers where last_name like 'b%' and last_name like '_____y';


select * from customers where last_name like 'b____y';

select * from customers where last_name like 'b%y';

select * from customers where last_name regexp '^mac';

select * from customers where last_name regexp 'age';

select * from customers where last_name regexp 'field$';

select * from customers where last_name regexp '^mac|field$|rose';

select * from customers;



-- ^- start with
-- $- end with

-- |- logical or


select * from customers;

select * from customers where last_name regexp 'ff|qf|cf';

select * from customers where last_name regexp '[fqc]f';
use exercise_hr;

select * from employees where first_name like "%b%" and first_name like "%c%";
select * from employees where first_name regexp "b" and first_name regexp "c";

select * from employees where last_name like "______";
use store;
select *
from orders;



select * from orders where shipper_id is null;    

-- show rows 2 to 4
 select * from orders where shipper_id is not null limit 1,3;

select * from order_items;

use store;
select *from customers;

select *from customers order by points desc limit 3;

use exercise_hr;

explain select * from employees where last_name = "De Haan";

explain select * from employees where employee_id=102;

select * from employees where employee_id=102;





