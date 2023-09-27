-- Выполенения упражнений на ресурсе https://sql-ex.ru/index.php
-- user: Victor535  



-- 1) Задание: 1 (Serge I: 2002-09-30)
-- Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

    SELECT model, speed, hd FROM PC WHERE price < 500
---------------------------------------------------------------------------------------------------------------------------

-- 2) Задание: 2 (Serge I: 2002-09-21)
-- Найдите производителей принтеров. Вывести: maker

    SELECT DISTINCT maker FROM Product WHERE type = 'Printer'
---------------------------------------------------------------------------------------------------------------------------

-- 3) Задание: 3 (Serge I: 2002-09-30)
-- Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

    SELECT model, ram, screen FROM Laptop WHERE price > 1000
    ---------------------------------------------------------------------------------------------------------------------------

-- 4) Задание: 4 (Serge I: 2002-09-21)
-- Найдите все записи таблицы Printer для цветных принтеров.

    SELECT * FROM Printer WHERE color = 'y'
---------------------------------------------------------------------------------------------------------------------------

-- 5) Задание: 5 (Serge I: 2002-09-30)
-- Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

    SELECT model, speed, hd FROM PC WHERE cd IN ('12x','24x') AND price < 600
---------------------------------------------------------------------------------------------------------------------------

-- 6) Задание: 6 (Serge I: 2002-10-28)
-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, 
-- найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

    SELECT DISTINCT maker, speed FROM Product INNER JOIN Laptop ON Product.model = Laptop.model WHERE hd >= 10
---------------------------------------------------------------------------------------------------------------------------

-- 7) Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

    SELECT product.model, pc.price FROM Product INNER JOIN PC ON product.model = pc.model where maker = 'B'
    UNION
    SELECT product.model, Laptop.price FROM Product INNER JOIN Laptop ON product.model = Laptop.model where maker = 'B'
    UNION
    SELECT product.model,  Printer.price FROM Product INNER JOIN Printer ON product.model = Printer.model where maker = 'B'
---------------------------------------------------------------------------------------------------------------------------

-- 8)Задание: 8 (Serge I: 2003-02-03)
-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.

    SELECT maker FROM Product WHERE type IN ('PC')
    EXCEPT
    SELECT maker FROM Product WHERE type IN ('Laptop')
---------------------------------------------------------------------------------------------------------------------------

-- 9) Задание: 9 (Serge I: 2002-11-02)
-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

    SELECT DISTINCT maker FROM Product Inner JOIN PC ON product.model = pc.model WHERE speed >='450'
---------------------------------------------------------------------------------------------------------------------------

-- 10) Задание: 10 (Serge I: 2002-09-23)
-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

    SELECT model, price FROM Printer
    WHERE price = (SELECT MAX(price) FROM Printer)
---------------------------------------------------------------------------------------------------------------------------

-- 11)Задание: 11 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК.

    SELECT avg(speed) FROM PC
---------------------------------------------------------------------------------------------------------------------------

-- 12)Задание: 12 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

    SELECT avg(speed) AS avg_speed FROM Laptop WHERE price > 1000
---------------------------------------------------------------------------------------------------------------------------

-- 13)Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.

    Select avg(speed) AS avg_speed FROM PC
    JOIN product ON pc.model = product.model WHERE maker = 'A'
---------------------------------------------------------------------------------------------------------------------------

-- 14)Задание: 14 (Serge I: 2002-11-05)
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий

    Select Ships.class, Ships.name, Classes.country FROM Ships 
    JOIN Classes ON Ships.class = Classes.class WHERE numGuns >= 10
---------------------------------------------------------------------------------------------------------------------------

-- 15)Задание: 15 (Serge I: 2003-02-03)
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

    Select hd FROM PC  GROUP BY hd HAVING count(model) >=2
---------------------------------------------------------------------------------------------------------------------------

-- 16)Задание: 16 (Serge I: 2003-02-03)
-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, 
-- т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

    SELECT DISTINCT PC.model AS PC_MAX, PC_MIN.model AS PC_MIN, PC.speed, PC.RAM 
    FROM PC, PC as PC_MIN 
    Where 
    PC.model > PC_MIN.model 
    AND PC.ram = PC_MIN.ram 
    AND PC.speed = PC_MIN.speed
---------------------------------------------------------------------------------------------------------------------------

-- 17)Задание: 17 (Serge I: 2003-02-03)
-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed

    SELECT  DISTINCT Product.type, Laptop.model, Laptop.speed 
    FROM Laptop, Product Where laptop.speed < (Select min(speed) FROM PC)
    AND product.type='Laptop'
---------------------------------------------------------------------------------------------------------------------------

-- 18)Задание: 18 (Serge I: 2003-02-03)
-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

    SELECT DISTINCT product.maker, Printer.price FROM Printer 
    JOIN Product ON Printer.model = Product.model 
    WHERE price = (SELECT MIN(price) FROM Printer Where color = 'y') 
    AND color = 'y'
---------------------------------------------------------------------------------------------------------------------------

-- 19)Задание: 19 (Serge I: 2003-02-13)
-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.

    SELECT maker,avg(screen) AS avg_screen FROM Laptop 
    JOIN Product ON Product.model = Laptop.model GROUP BY maker
---------------------------------------------------------------------------------------------------------------------------

-- 20)Задание: 20 (Serge I: 2003-02-13)
-- Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

-- SELECT product.maker, count(*) AS count_model FROM PC
-- JOIN Product ON product.model = PC.model Where product.type = 'PC' 
-- GROUP BY product.maker
-- HAVING count(*) >= 3

    SELECT maker, count(*) AS count_model
    FROM product
    WHERE type = 'pc'
    GROUP BY maker
    HAVING COUNT(*) > = 3
---------------------------------------------------------------------------------------------------------------------------

-- 21)Задание: 21 (Serge I: 2003-02-13)
-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.

    SELECT maker, MAX(price) AS max_price
    FROM Product JOIN PC ON product.model=pc.model 
    WHERE type = 'pc'
    GROUP BY maker
---------------------------------------------------------------------------------------------------------------------------

-- 22)Задание: 22 (Serge I: 2003-02-13)
-- Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. 
-- Вывести: speed, средняя цена.

    SELECT speed, avg(price) AS avg_price FROM PC 
    WHERE speed > 600  GROUP BY speed
---------------------------------------------------------------------------------------------------------------------------

-- 23)Задание: 23 (Serge I: 2003-02-14)
-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker

    SELECT DISTINCT maker FROM product 
    WHERE model IN 
    (SELECT model FROM PC WHERE speed >= 750) 
    OR model IN 
    (SELECT model FROM Laptop WHERE speed >= 750);


    SELECT DISTINCT maker FROM Product
    JOIN PC ON Product.model = pc.model
    Where speed >= '750' 
    UNION
    SELECT DISTINCT maker
    FROM product JOIN laptop ON Product.model=laptop.model
    WHERE speed>=750

---------------------------------------------------------------------------------------------------------------------------

-- Задание: 24 (Serge I: 2003-02-03)
-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

    Select model
    from (select price,model from PC
    UNION ALL
    SELECT price,model from Laptop
    UNION ALL
    SELECT price,model from Printer)X
    where price >= ALL( SELECT price FROM PC
    UNION ALL 
    SELECT price FROM Laptop
    UNION ALL SELECT price FROM Printer)
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 25 (Serge I: 2003-02-14)
-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, 
-- имеющих наименьший объем RAM. Вывести: Maker

    Select  distinct maker from product where maker in 
    ( select maker from product join pc on product.model=pc.model where maker IN 
    ( select maker from product where (type ='printer') 
    and ram =(select min(ram) from pc ) and speed =(select max(speed) from pc where ram= (select min(ram) from pc ))))

-- 26)Задание: 26 (Serge I: 2003-02-14)
-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.

    SELECT AVG(price) AS avg_price FROM 
    (
    SELECT price FROM pc WHERE model 
    IN
    (SELECT model FROM product WHERE maker='A' AND type='PC')
    UNION all
    SELECT price FROM laptop WHERE model 
    IN
    (SELECT model FROM product WHERE maker='A' AND type='Laptop')
    ) AS avg_price
---------------------------------------------------------------------------------------------------------------------------

-- 27)Задание: 27 (Serge I: 2003-02-03)
-- Найдите средний размер диска ПК каждого из тех производителей, 
-- которые выпускают и принтеры. Вывести: maker, средний размер HD.

    select product.maker, avg(hd) AS avg_hd From product 
    join pc on product.model = pc.model AND product.maker 
    IN 
    (Select DISTINCT maker FROM product Where type = 'printer') GROUP BY maker
---------------------------------------------------------------------------------------------------------------------------

-- 28)Задание: 28 (Serge I: 2012-05-04)
-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

    SELECT count(maker) AS count_maker FROM product GROUP BY maker HAVING COUNT(model) = '1'
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 29 (Serge I: 2003-02-14)
-- В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], написать запрос с выходными данными (пункт, дата, приход, расход). 
-- Использовать таблицы Income_o и Outcome_o.

    Select Income_o.point, Income_o.date, inc, out From Income_o left join Outcome_o
    ON Outcome_o.point = Income_o.point AND Outcome_o.date = Income_o.date    
    union
    Select Outcome_o.point, Outcome_o.date, inc, out From Income_o right join 
    Outcome_o ON Income_o.point = Outcome_o.point AND Income_o.date = Outcome_o.date
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 30 (Serge I: 2003-02-14)
-- В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное число раз 
-- (первичным ключом в таблицах является столбец code), требуется получить таблицу, в которой каждому пункту за каждую дату 
-- выполнения операций будет соответствовать одна строка.
-- Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc). 
-- Отсутствующие значения считать неопределенными (NULL).

    SELECT point, date, SUM(out) AS sum_out, SUM(inc) AS sum_inc
    FROM (SELECT point, date, out, null AS inc FROM Outcome
    UNION ALL
    SELECT point, date, null AS out, inc FROM Income) my_table
    GROUP BY point, date
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 31 (Serge I: 2002-10-22)
-- Для классов кораблей, калибр орудий которых не менее 16 дюймов, укажите класс и страну.

    Select class, country from Classes Where bore >= 16
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 32 (Serge I: 2003-02-17)
-- Одной из характеристик корабля является половина куба калибра его главных орудий (mw). С точностью 
-- до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, у которой есть корабли в базе данных.
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 33 (Serge I: 2002-11-02)
-- Укажите корабли, потопленные в сражениях в Северной Атлантике (North Atlantic). Вывод: ship.

    Select ship from Outcomes where result = 'sunk' AND battle = 'North Atlantic'
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 34 (Serge I: 2002-11-04)
-- По Вашингтонскому международному договору от начала 1922 г. запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. 
-- Укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом спуска на воду). Вывести названия кораблей.

    Select name from Ships join Classes on Classes.class = Ships.class where displacement > 35000 AND type = 'bb' 
    AND launched IS NOT null AND launched >= 1922
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 35 (qwrqwr: 2012-11-23)
-- В таблице Product найти модели, которые состоят только из цифр или только из латинских букв (A-Z, без учета регистра).
-- Вывод: номер модели, тип модели.

    select model, type From product Where model LIKE '%[0-9]%' or model LIKE '%[A-Z]%'

    select model, type From product Where model not LIKE '%[^0-9]%' or model not LIKE '%[^A-Z]%'
---------------------------------------------------------------------------------------------------------------------------

-- Задание: 36 (Serge I: 2003-02-17)
-- Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).

    SELECT name FROM Ships
    JOIN Classes ON Classes.class = Ships.name
    UNION
    SELECT ship FROM Outcomes
    JOIN Classes ON class= ship

