USE todos;
SHOW TABLES;
-- todos due tomorrow
SELECT *
FROM todos
WHERE dueDate = '2023-02-17';

-- todos order by dueDate

select * from todos order by dueDate asc;

-- find all tasks that contain 'dry'

select * from todos where task regexp 'dry';

-- find all tasks due from next week onwards (From 20-2 onwards)

select * from todos where dueDate >2023-20-02;

-- find all tasks due in the next week (20-2 to 24-02) 

select * from todos where dueDate between 2023-20-02 and 2023-24-02;

-- find all tasks due on 2023-02-17, 2023-02-24, 2023-03-03

select * from todos where dueDate in ('2023-02-17', '2023-02-24' , '2023-03-03');

select * from todos order by  task, dueDate asc;

-- Medium
-- todos order by dueDate and for each dueDate, order by task alphabetically in ascending order 


-- todos starting with Buy and ending with shoes

select * from todos WHERE task LIKE 'Buy%shoes';


-- Requires Internet reference
-- Display the count of todos in the database

select count(id) from todos;

-- Hard
-- Find the task with the last due date

select* from where due_date = (select MAX(due_date) from tasks);

-- Display the days left for 'Buy groceries' task








