-- Базы данных и SQL, семинар 1, практическое задание:
-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
-- Необходимые поля таблицы: product_name (название товара), manufacturer (производитель), 
-- product_count (количество), price (цена). Заполните БД произвольными данными.
-- 2. Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2
-- 3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
-- 4.* С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
-- 4.1.* Товары, в которых есть упоминание "Iphone"
-- 4.2.* Товары, в которых есть упоминание "Samsung"
-- 4.3.* Товары, в названии которых есть ЦИФРЫ
-- 4.4.* Товары, в названии которых есть ЦИФРА "8"

CREATE SCHEMA Homework1;

USE Homework1;

CREATE TABLE mobile_phones (
  product_name varchar(90) NOT NULL,
  manufacturer varchar(45) DEFAULT NULL,
  product_count int DEFAULT '0',
  price decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (product_name),
  UNIQUE KEY product_name_UNIQUE (product_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO mobile_phones (product_name, manufacturer, product_count, price) 
VALUES 
('Samsung Galaxy Z Fold4 12mobile_phones/256GB черный (F936)', 'Samsung', '2', '139990'),
('Samsung Galaxy A33 5G 6/128GB голубой (A336)', 'Samsung', '1', '25990'),
('Samsung Galaxy S23 Ultra 12/256Gb бежевый', 'Samsung', '4', '109990'),
('Xiaomi 12 Lite 8/128GB черный', 'Xiaomi', '5', '34990'),
('HONOR 70 8/128GB полночный черный', 'HONOR', '10', '35990'),
('HONOR 70 8/128GB изумрудный зеленый', 'HONOR', '3', '35990'),
('Apple iPhone 11 128GB с новой комплектацией черный', 'Apple', '6', '46890'),
('Apple iPhone 11 64GB с новой комплектацией черный', 'Apple', '4', '42490'),
('realme 10 4G 8/256GB белый', 'realme', '3', '21990'),
('realme C31 32GB зеленый', 'realme', '12', '6990');

-- 2. Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2

SELECT product_name, manufacturer, price FROM mobile_phones
WHERE product_count > 2;

-- 3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”

SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';

-- 4.* С помощью SELECT-запроса с оператором LIKE / REGEXP найти:

-- 4.1.* Товары, в которых есть упоминание "Iphone"

SELECT * FROM mobile_phones
WHERE product_name LIKE '%Iphone%';

-- 4.2.* Товары, в которых есть упоминание "Samsung"

SELECT * FROM mobile_phones
WHERE product_name REGEXP 'Samsung';

-- 4.3.* Товары, в названии которых есть ЦИФРЫ

SELECT * FROM mobile_phones
WHERE product_name REGEXP '[0-9]';

-- 4.4.* Товары, в названии которых есть ЦИФРА "8"

SELECT * FROM mobile_phones
WHERE product_name REGEXP '8';








