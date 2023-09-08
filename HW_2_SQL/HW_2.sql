
--  1. Вывести все поля и все строки.

    SELECT * FROM users;


--  2. Вывести всех студентов в таблице

    SELECT stutent FROM users;


--  3. Вывести только Id пользователей

    SELECT DISTINCT id FROM users;


--  4. Вывести только имя пользователей

    SELECT DISTINCT names FROM users;


--  5. Вывести только email пользователей

    SELECT DISTINCT email FROM users;


--  6. Вывести имя и email пользователей

    SELECT names, email FROM users;


--  7. Вывести id, имя, email и дату создания пользователей

    SELECT id, names, email, created_on FROM users;


--  8. Вывести пользователей где password 12333

    SELECT * from users WHERE passwords = '12333';


--  9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

    SELECT * FROM users WHERE created_on = '2021-03-26 00:00:00';

--  10. Вывести пользователей где в имени есть слово Анна

    SELECT * FROM users WHERE names LIKE '%Анна%';

--  11. Вывести пользователей где в имени в конце есть 8

    SELECT * FROM users WHERE names LIKE '%8';

--  12. Вывести пользователей где в имени в есть буква a

    SELECT * FROM users WHERE names LIKE '%a%';

--  13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

    SELECT * FROM users WHERE created_on = '2021-07-12 00:00:00';

--  14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

    SELECT * FROM users WHERE created_on = '2021-07-12 00:00:00'
    AND passwords = '1m313';

--  15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и y которых в имени есть слово Andrey

    SELECT * FROM users WHERE created_on = '2021-07-12 00:00:00' AND names LIKE '%Andrey%';

--  16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и y которых в имени есть цифра 8

    SELECT * FROM users WHERE created_on = '2021-07-12 00:00:00' AND names LIKE '%8%';

--  17. Вывести пользователя y которых id равен 110

    SELECT * FROM users WHERE id = '110';

--  18. Вывести пользователя y которых id равен 153

    SELECT * FROM users WHERE id > '10';

--  19. Вывести пользователей y которых id больше 140

    SELECT * FROM users WHERE id > '140';

--  20. Вывести пользователей y которых id меньше 130

    SELECT * FROM users WHERE id < '130';

--  21. Вывести пользователей y которых id меньше 127 или больше 188

    SELECT * FROM users WHERE id < '127' OR id > '188';

--  22. Вывести пользователей y которых id меньше либо равно 137

    SELECT * FROM users WHERE id <= '137';

--  23. Вывести пользователей y которых id больше либо равно 137

    SELECT * FROM users WHERE id >='137';

--  24. Вывести пользователей y которых id больше 180 но меньше 190

    SELECT * FROM users WHERE id > '180' AND id < '190';

--  25. Вывести пользователей y которых id между 180 и 190
        
    SELECT * FROM users WHERE id BETWEEN 180 and 190;

--  26. Вывести пользователей где password равен 12333, 1m313, 123313

    SELECT * FROM users WHERE passwords in ('12333', '1m313','123313');

--  27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

    SELECT * FROM users WHERE created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00','2021-03-26 00:00:00');
--  28. Вывести минимальный id 

    SELECT min(id) FROM users;

--  29. Вывести максимальный.

    SELECT max(id) FROM users;

--  30. Вывести количество пользователей

    SELECT count(id) FROM users;

--  31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

    SELECT id, names, reated_on FROM users ORDER BY reated_on; 

--  32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

    SELECT id, names, reated_on FROM users ORDER BY reated_on DESC;