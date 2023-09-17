-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

    select employee_name, monthly_salary from  employees join salary  
    on employees.id = salary.id 
--------------------------------------------------------------------------------------------------------------------

--  2. Вывести всех работников у которых ЗП меньше 2000.

    select employee_name, monthly_salary from  employees join salary  
    on employees.id = salary.id Where monthly_salary < 2000
--------------------------------------------------------------------------------------------------------------------

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

    select monthly_salary, employee_name
	from employees right join employees_salary
	on employees_salary.id = employees.id
	where employee_name is null;
--------------------------------------------------------------------------------------------------------------------

