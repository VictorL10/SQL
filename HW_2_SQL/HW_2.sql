
--  1. Вывести все поля и все строки.

    SELECT * FROM student;


--  2. Вывести всех студентов в таблице

    SELECT name FROM student;


--  3. Вывести только Id пользователей

    SELECT DISTINCT id FROM student;


--  4. Вывести только имя пользователей

    SELECT DISTINCT name FROM student;


--  5. Вывести только email пользователей

    SELECT DISTINCT email FROM student;


--  6. Вывести имя и email пользователей

    SELECT name, email FROM student;


--  7. Вывести id, имя, email и дату создания пользователей

    SELECT id, name, email, created_on FROM ;


--  8. Вывести пользователей где password 12333

    SELECT * from student WHERE password = '12333';


--  9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

    SELECT * FROM student WHERE created_on = '2021-03-26 00:00:00';

--  10. Вывести пользователей где в имени есть слово Анна

    SELECT * FROM student WHERE name LIKE '%Анна%';

--  11. Вывести пользователей где в имени в конце есть 8

    SELECT * FROM student WHERE name LIKE '%8';

--  12. Вывести пользователей где в имени в есть буква a

    SELECT * FROM student WHERE name LIKE '%a%';

--  13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

    SELECT * FROM student WHERE created_on = '2021-07-12 00:00:00';

--  14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

    SELECT * FROM student WHERE created_on = '2021-07-12 00:00:00'
    AND password = '1m313';

--  15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и y которых в имени есть слово Andrey

    SELECT * FROM student WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';

--  16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и y которых в имени есть цифра 8

    SELECT * FROM student WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%';

--  17. Вывести пользователя y которых id равен 110

    SELECT * FROM student WHERE id = '110';

--  18. Вывести пользователя y которых id равен 153

    SELECT * FROM student WHERE id > '10';

--  19. Вывести пользователей y которых id больше 140

    SELECT * FROM student WHERE id > '140';

--  20. Вывести пользователей y которых id меньше 130

    SELECT * FROM student WHERE id < '130';

--  21. Вывести пользователей y которых id меньше 127 или больше 188

    SELECT * FROM student WHERE id < '127' OR id > '188';

--  22. Вывести пользователей y которых id меньше либо равно 137

    SELECT * FROM student WHERE id <= '137';

--  23. Вывести пользователей y которых id больше либо равно 137

    SELECT * FROM student WHERE id >='137';

--  24. Вывести пользователей y которых id больше 180 но меньше 190

    SELECT * FROM student WHERE id > '180' AND id < '190';

--  25. Вывести пользователей y которых id между 180 и 190
        
    SELECT * FROM student WHERE id BETWEEN 180 and 190;

--  26. Вывести пользователей где password равен 12333, 1m313, 123313

    SELECT * FROM student WHERE password in ('12333', '1m313','123313');

--  27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

    SELECT * FROM student WHERE created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00','2021-03-26 00:00:00');
--  28. Вывести минимальный id 

    SELECT min(id) FROM student;

--  29. Вывести максимальный.

    SELECT max(id) FROM student;

--  30. Вывести количество пользователей

    SELECT count(id) FROM student;

--  31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

    SELECT id, name, created_on FROM student ORDER BY created_on; 

--  32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

    SELECT id, name, created_on FROM student ORDER BY created_on DESC;