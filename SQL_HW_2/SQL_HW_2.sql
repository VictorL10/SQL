-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

    select employee_name, monthly_salary from employees join salary  
    on employees.id = salary.id; 
--------------------------------------------------------------------------------------------------------------------

--  2. Вывести всех работников у которых ЗП меньше 2000.

    select employee_name, monthly_salary from  employees join salary  
    on employees.id = salary.id Where monthly_salary < 2000;
--------------------------------------------------------------------------------------------------------------------

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
   
    select monthly_salary,employee_id
    from salary join employee_salary on salary.id=employee_salary.salary_id 
    where employee_id > 70; 

    --2-ой вариант
    select monthly_salary, employee_name, employee_id
	from employees right join employee_salary
	on employee_salary.employee_id = employees.id
	join salary on salary.id=employee_salary.salary_id 
	where employee_name is null;
--------------------------------------------------------------------------------------------------------------------

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

    select monthly_salary, employee_name, employee_id
	from employees right join employee_salary
	on employee_salary.employee_id = employees.id
	join salary on salary.id=employee_salary.salary_id 
	where employee_name is null and monthly_salary < 2000;

    --2-ой вариант
    select monthly_salary,employee_id
    from salary join employee_salary on salary.id=employee_salary.salary_id 
    where employee_id > 70 and monthly_salary < 2000;
--------------------------------------------------------------------------------------------------------------------

--  5. Найти всех работников кому не начислена ЗП.

    select employee_name, salary_id   
    from employees left join employee_salary on employees.id=employee_salary.employee_id 
    where salary_id is null; 
--------------------------------------------------------------------------------------------------------------------

--  6. Вывести всех работников с названиями их должности.

    select employee_name, role_name 
    from roles_employee join employees on employees.id = roles_employee.employee_id 
    join roles on roles.id=roles_employee.role_id;
--------------------------------------------------------------------------------------------------------------------

--  7. Вывести имена и должность только Java разработчиков.

    select employee_name, role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%Java %';

    --2-ой вариант
    select employee_name, role_name 
    from roles_employee join employees on employees.id = roles_employee.employee_id 
    join roles on roles.id=roles_employee.role_id 
    where role_name =('Middle Java developer') 
    or role_name = ('Junior Java developer')
    or role_name = ('Senior Java developer')
	;
--------------------------------------------------------------------------------------------------------------------

--  8. Вывести имена и должность только Python разработчиков.

    select employee_name, role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%Python%';
--------------------------------------------------------------------------------------------------------------------

--  9. Вывести имена и должность всех QA инженеров.

    select employee_name, role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%QA%';
--------------------------------------------------------------------------------------------------------------------

--  10. Вывести имена и должность ручных QA инженеров.

    select employee_name, role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%manual%';
--------------------------------------------------------------------------------------------------------------------

--  11. Вывести имена и должность автоматизаторов QA

    select employee_name, role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%Automation%';
--------------------------------------------------------------------------------------------------------------------

--  12. Вывести имена и зарплаты Junior специалистов

    select employee_name,role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	inner join salary  on salary.id = employee_salary.salary_id
	where role_name like '%Junior%';
--------------------------------------------------------------------------------------------------------------------

--  13. Вывести имена и зарплаты Middle специалистов

    select employee_name,role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	inner join salary  on salary.id = employee_salary.salary_id
	where role_name like '%Middle%';
--------------------------------------------------------------------------------------------------------------------

--  14. Вывести имена и зарплаты Senior специалистов

    select employee_name,role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	inner join salary  on salary.id = employee_salary.salary_id
	where role_name like '%Senior%';
--------------------------------------------------------------------------------------------------------------------

--  15. Вывести зарплаты Java разработчиков

    select role_name, monthly_salary
	from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary.id = employee_salary.salary_id
	where role_name like '%Java %';
--------------------------------------------------------------------------------------------------------------------

--  16. Вывести зарплаты Python разработчиков

    select role_name, monthly_salary
	from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary.id = employee_salary.salary_id
	where role_name like '%Python%';
--------------------------------------------------------------------------------------------------------------------

--  17. Вывести имена и зарплаты Junior Python разработчиков

    select employee_name, role_name, monthly_salary from employee_salary es 
    join employees e on e.id = es.employee_id 
    join salary s on s.id = es.salary_id 
    join roles_employee re on re.employee_id = es.employee_id 
    join roles r on r.id = re.role_id 
    where role_name like '%Junior Python%';
--------------------------------------------------------------------------------------------------------------------

--  18. Вывести имена и зарплаты Middle JS разработчиков

	select employee_name, role_name, monthly_salary from employee_salary 
	join employees on employees.id = employee_salary.employee_id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Middle JavaScript%';
--------------------------------------------------------------------------------------------------------------------

--  19. Вывести имена и зарплаты Senior Java разработчиков

	select employee_name, role_name, monthly_salary from employee_salary 
	join employees on employees.id = employee_salary.employee_id 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Senior Java %';
--------------------------------------------------------------------------------------------------------------------

--  20. Вывести зарплаты Junior QA инженеров

	select role_name, monthly_salary from employee_salary 
	join salary on salary.id = employee_salary.salary_id 
	join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
	join roles on roles.id = roles_employee.role_id 
	where role_name like '%Junior%';
--------------------------------------------------------------------------------------------------------------------
--  21. Вывести среднюю зарплату всех Junior специалистов

	select AVG(monthly_salary) AS AVG_Salary_Junior from employee_salary
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%Junior%';
--------------------------------------------------------------------------------------------------------------------

--  22. Вывести сумму зарплат JS разработчиков

	select sum(monthly_salary) AS SUM_Salary_JS from employee_salary
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%JavaScript%';
--------------------------------------------------------------------------------------------------------------------

--  23. Вывести минимальную ЗП QA инженеров

	select min(monthly_salary) AS MIN_Salary_QA from employee_salary
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%QA%';
--------------------------------------------------------------------------------------------------------------------

--  24. Вывести максимальную ЗП QA инженеров

	select MAX(monthly_salary) AS MAX_Salary_QA from employee_salary
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%QA%';
--------------------------------------------------------------------------------------------------------------------

--  25. Вывести количество QA инженеров

	select count(role_name) AS Count_QA from roles
	join roles_employee on roles.id = roles_employee.role_id 
	where role_name like '%QA%';
--------------------------------------------------------------------------------------------------------------------

--  26. Вывести количество Middle специалистов.

	select count(role_name) AS Count_Middle from roles
	join roles_employee on roles.id = roles_employee.role_id 
	where role_name like '%Middle%';
--------------------------------------------------------------------------------------------------------------------

--  27. Вывести количество разработчиков

	select count(role_name) AS count_dev from roles
	join roles_employee on roles.id = roles_employee.role_id 
	where role_name like '%developer%';
--------------------------------------------------------------------------------------------------------------------

--  28. Вывести фонд (сумму) зарплаты разработчиков.

	select sum(monthly_salary) as SUM_Salary_Dev from employee_salary
	join salary on employee_salary.salary_id = salary.id 
	join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%developer%';
--------------------------------------------------------------------------------------------------------------------

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию

	select employee_name, role_name, monthly_salary from roles_employee 
	join employees on employees.id = roles_employee.employee_id  
	join roles on roles.id=roles_employee.role_id 
	join employee_salary  on employees.id=employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	order by salary.monthly_salary;
--------------------------------------------------------------------------------------------------------------------

--  30. Вывести имена, должности и ЗП всех специалистов по возрастанию y специалистов y которых ЗП от 1700 до 2300

	select employee_name, role_name, monthly_salary from roles_employee 
	join employees on employees.id = roles_employee.employee_id  
	join roles on roles.id=roles_employee.role_id 
	join employee_salary  on employees.id=employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	where monthly_salary between 1700 and 2300  
	order by salary.monthly_salary;
--------------------------------------------------------------------------------------------------------------------

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию y специалистов y которых ЗП меньше 2300

	select employee_name, role_name, monthly_salary from roles_employee 
	join employees on employees.id = roles_employee.employee_id  
	join roles on roles.id=roles_employee.role_id 
	join employee_salary  on employees.id=employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	where monthly_salary < 2300  
	order by salary.monthly_salary;
--------------------------------------------------------------------------------------------------------------------

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию y специалистов 
-- y которых ЗП равна 1100, 1500, 2000

	select employee_name, role_name, monthly_salary from roles_employee 
	join employees on employees.id = roles_employee.employee_id  
	join roles on roles.id=roles_employee.role_id 
	join employee_salary  on employees.id=employee_salary.employee_id
	join salary on employee_salary.salary_id = salary.id
	where monthly_salary in (1100, 1500, 2000) 
	order by salary.monthly_salary;
--------------------------------------------------------------------------------------------------------------------