
-- 		  HW_SQL_DDL_1

-- ====================================================================================
-- 1)Создать таблицу employees
-- -id. serial,  primary key,
-- -employee_name. Varchar(50), not null

	create table employees (
	id SERIAL primary key,
	employee_name VARCHAR (50) not NULL
	);

-- ====================================================================================
-- 2)Наполнить таблицу employee 70 строками.

	insert into employees (employee_name) 
	values
	('Aндрей'),('Вадим'),('Егор'),
	('Aнтон'),('Виктор'),('Игорь'),
	('Анна'),('Лена'),('Наталья'),
	('Марат'),('Роман'),('Виктория'),
	('Снежана'),('Варвара'),('Дмитрий'),
	('Олег'),('Любовь'),('Людмила'),
	('Ксения'),('Глеб'),('Захар'),
	('Инна'),('Дарья'),('Оксана'),
	('Валерия'),('Руслан'),('Валерий'),
	('Христофор'),('Мария'),('Алина'),
	('Ангелина'),('Королина'),('Милана'),
	('Татьяна'),('Яков'),('Игнат'),
	('Кирилл'),('Семён'),('Виталий'),
	('Ольга'),('Илларион'),('Виолетта'),
	('Аркадий'),('Юрий'),('Милана'),
	('Изобелла'),('Вероника'),('Доменика'),
	('Лика'),('Тимофей'),('Иван'),
	('Марк'), ('Савелий'), ('Александра'),
	('Алёна'), ('Алиса'), ('Алла'),
	('Анастасия'), ('Ангелина'), ('Кристина'),
	('Арина'), ('Фёдор'), ('Василиса'),
	('Вера'), ('Надежда'), ('Ева'), 
	('Галина'), ('Евдокия'), ('Жанна'),
	('Зинаида')
	;

-- ====================================================================================
-- 3)Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null

	create table salary (
	id SERIAL primary key,
	monthly_salary INT not NULL
	);

-- ====================================================================================
-- 4)Наполнить таблицу salary 16 строками:
-- - 1000
-- - 1100
-- - 1200
-- - 1300
-- - 1400
-- - 1500
-- - 1600
-- - 1700
-- - 1800
-- - 1900
-- - 2000
-- - 2100
-- - 2200
-- - 2300
-- - 2400
-- - 2500

	insert into salary (monthly_salary)
	values
	(1000),(1100),(1200),
	(1300),(1400),(1500),
	(1600),(1700),(1800),
	(1900),(2000),(2100),
	(2200),(2300),(2400),
	(2500)
	;

-- ====================================================================================
-- 5)Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null

	create table employee_salary (
	id SERIAL primary key,
	employee_id INT not null unique,
	salary_id INT not null
	);

-- ====================================================================================
-- 6)Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

	insert into employee_salary (employee_id, salary_id)
	values
	(3,7),(1,4),(5,9),
	(122,13),(145,4),(11,2),
	(161,10),(15,13),(133,4),
	(210,1),(150,7),(140,1),
	(100,9),(110,8),(138,12),
	(90,3),(10,16),(2,16),
	(17,14),(4,13),(18,15),
	(6,13),(7,12),(8,11),
	(9,10), (19,13),(20,3),
	(16,1),(21,2),(14,3),
	(13,4),(12,5),(22,6),
	(23,7),(24,7),(25,8),
	(26,9),(27,8),(28,7),
	(29,5)
	;

-- ====================================================================================
-- 7)Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique

	create table roles (
	id SERIAL primary key,
	role_name INT not null unique
	);

-- ====================================================================================
-- 8)Поменять тип столба role_name с int на varchar(30)

	alter table roles alter column role_name type varchar (30);

-- ====================================================================================
-- 9)Наполнить таблицу roles 20 строками:

	insert into roles (role_name) 
	values
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer')
	;

-- ====================================================================================
-- 10)Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

	create table roles_employee (
	id SERIAL primary key,
	employee_id INT not null unique,
	foreign key (employee_id) references employees(id),
	role_id INT not null,
	foreign key (role_id) references roles(id)
	);

-- ====================================================================================
-- 11)Наполнить таблицу roles_employee 40 строками:

	insert into roles_employee (employee_id, role_id)
	values
	(20,4),(3,9),(21,5),
	(30,1),(19,2),(18,3),
	(32,6),(31,7),(33,8),
	(22,9),(23,10),(16,10),
	(15,11),(14,12),(13,11),
	(12,12),(10,13),(2,16),
	(17,14),(4,13),(34,15),
	(6,13),(7,12),(8,11),
	(9,10), (29,13),(36,3),
	(37,1),(1,2),(38,3),
	(39,4),(35,5),(40,6),
	(11,7),(24,7),(25,8),
	(26,9),(27,8),(28,7),
	(5,5)
	;
-- ====================================================================================





