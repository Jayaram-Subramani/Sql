/* highest and lowest salary in each department */
select d.department_name,
max(e.salary) as highest_salary,
min(e.salary) as minimum_salary
from employees e
inner join departments d on e.department_id = d.department_id
group by department_name;

/* Second highest salary */
select max(salary) as second_largest
from employees
where salary > (select max(salary) from employees);

/* employee joined 30 days ago */
select * from employees
where join_date >= current_date - interval 30 day ;

 
 /* Employees in each department */
 select d.department_name,
 count(e.employee_id) as total_emolotees
 from employees e
inner join department d on e.department_id = d.department_id
 group by d.department_name;
 
 /* Total salary paid in each department */
 select d.department_name, sum(e.salary) as total_salary
 from employees e
 inner join departments d on e.department_id = d.department.id
 group by department_name;
 
