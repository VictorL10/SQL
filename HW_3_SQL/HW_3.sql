-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

    select employee_name, monthly_salary from  employees join salary  
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
    join roles on roles.id=roles_employee.role_id
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
	join salary  on salary.id = employee_salary.salary_id
	where role_name like '%Junior%';
--------------------------------------------------------------------------------------------------------------------

--  13. Вывести имена и зарплаты Middle специалистов

    select employee_name,role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary  on salary.id = employee_salary.salary_id
	where role_name like '%Middle%';
--------------------------------------------------------------------------------------------------------------------

--  14. Вывести имена и зарплаты Senior специалистов

    select employee_name,role_name, monthly_salary
	from roles_employee
	inner join roles on roles.id = roles_employee.role_id
	inner join employees on employees.id = roles_employee.employee_id
	inner join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary  on salary.id = employee_salary.salary_id
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
    where role_name like '%Junior Python%'
--------------------------------------------------------------------------------------------------------------------