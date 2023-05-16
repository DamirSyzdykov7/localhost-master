-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 23 2023 г., 06:27
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `practice`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Россия'),
(2, 'Германия'),
(3, 'Швейцария'),
(4, 'Италия'),
(5, 'Франция'),
(6, 'Испания'),
(7, 'Бельгия'),
(8, 'Великобритания'),
(9, 'США');

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `country_id`) VALUES
(1, 'Nestle', 2),
(2, 'Danone', 1),
(3, 'Kraft Foods', 1),
(4, 'Unilever', 1),
(5, 'Kellogg\'s', 4),
(6, 'Mars', 4),
(7, 'Coca-Cola', 3),
(8, 'PepsiCo', 7),
(9, 'Ferrero', 7),
(10, 'Hershey\'s', 8),
(11, 'General Mills', 8),
(12, 'Kraft Heinz', 9),
(13, 'Mondelez', 5),
(14, 'Mondelēz International', 6),
(15, 'McCormick & Company', 8),
(16, 'Kikkoman Corporation', 9),
(17, 'Nissin Foods', 4),
(18, 'Calbee', 2),
(19, 'Nongshim', 3),
(20, 'Unicharm', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `shop_id`, `product_id`, `quantity`, `date`) VALUES
(1, 4, 6, 4, '2022-12-06'),
(2, 9, 6, 3, '2022-05-25'),
(3, 12, 11, 7, '2022-11-21'),
(4, 3, 10, 8, '2022-12-13'),
(5, 3, 8, 9, '2022-10-11'),
(6, 6, 4, 10, '2022-09-21'),
(7, 5, 7, 9, '2022-12-24'),
(8, 8, 2, 4, '2022-06-04'),
(9, 7, 6, 10, '2022-11-13'),
(10, 12, 10, 1, '2022-10-04'),
(11, 9, 4, 3, '2022-11-18'),
(12, 7, 5, 4, '2022-10-30'),
(13, 2, 2, 3, '2023-03-12'),
(14, 3, 7, 5, '2023-03-07'),
(15, 9, 6, 2, '2023-01-08'),
(16, 9, 4, 5, '2023-03-31'),
(17, 2, 5, 5, '2022-11-15'),
(18, 5, 9, 5, '2022-04-24'),
(19, 3, 6, 9, '2022-08-19'),
(20, 12, 9, 7, '2022-11-30'),
(21, 7, 5, 3, '2022-05-17'),
(22, 9, 3, 7, '2022-10-27'),
(23, 11, 4, 6, '2022-09-03'),
(24, 6, 9, 5, '2022-08-04'),
(25, 5, 8, 10, '2022-08-18'),
(26, 10, 6, 2, '2023-01-26'),
(27, 4, 1, 3, '2023-02-27'),
(28, 5, 3, 10, '2023-04-09'),
(29, 9, 2, 2, '2022-08-03'),
(30, 6, 11, 10, '2022-10-21'),
(32, 2, 18, 4, '2022-11-29'),
(33, 10, 10, 5, '2022-05-03'),
(34, 9, 17, 2, '2023-03-18'),
(35, 11, 15, 6, '2023-03-31'),
(36, 11, 20, 4, '2022-09-06'),
(37, 9, 8, 6, '2022-12-02'),
(38, 6, 13, 2, '2022-07-22'),
(39, 9, 19, 9, '2023-02-10'),
(40, 6, 20, 9, '2022-12-16'),
(41, 9, 13, 7, '2022-10-19'),
(42, 7, 3, 1, '2023-03-28'),
(43, 5, 7, 1, '2023-01-10'),
(44, 3, 23, 1, '2022-11-28'),
(45, 8, 14, 9, '2023-01-18'),
(46, 12, 12, 7, '2023-01-23'),
(47, 10, 14, 6, '2022-06-23'),
(48, 1, 18, 5, '2022-07-28'),
(49, 10, 4, 5, '2023-02-04'),
(50, 6, 4, 4, '2022-08-07'),
(51, 4, 16, 4, '2023-01-12'),
(52, 7, 15, 4, '2022-06-23'),
(53, 7, 9, 2, '2023-01-10'),
(54, 12, 22, 6, '2023-04-01'),
(55, 1, 8, 6, '2023-03-20'),
(56, 9, 23, 6, '2023-02-16'),
(57, 6, 18, 4, '2023-01-09'),
(58, 5, 16, 2, '2023-04-09'),
(59, 3, 3, 10, '2022-10-11'),
(60, 5, 15, 10, '2023-02-04'),
(61, 1, 24, 8, '2023-01-01');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `type` enum('icecream','chocolate') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chocolate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `manufacturer_id`, `price`, `type`) VALUES
(1, 'Ritter Sport', 12, 350, 'chocolate'),
(2, 'Lindt Excellence', 17, 500, 'chocolate'),
(3, 'Cote d\'Or', 8, 200, 'chocolate'),
(4, 'Milka', 8, 250, 'chocolate'),
(5, 'Alpia', 18, 300, 'chocolate'),
(6, 'Nestle', 1, 150, 'chocolate'),
(7, 'Kinder', 8, 100, 'chocolate'),
(8, 'Cadbury', 5, 450, 'chocolate'),
(9, 'Ferrero Rocher', 1, 700, 'chocolate'),
(10, 'Toblerone', 9, 600, 'chocolate'),
(11, 'Ghirardelli', 20, 550, 'chocolate'),
(12, 'Valrhona', 14, 1000, 'chocolate'),
(13, 'Ванильный рай', 10, 500, 'icecream'),
(14, 'Фисташковый орех', 8, 400, 'icecream'),
(15, 'Карамельный бум', 10, 300, 'icecream'),
(16, 'Ягодный смеш', 3, 450, 'icecream'),
(17, 'Клубничное наслаждение', 7, 350, 'icecream'),
(18, 'Печенье-ваниль', 6, 600, 'icecream'),
(19, 'Лимонный дождь', 6, 200, 'icecream'),
(20, 'Банановое облако', 14, 250, 'icecream'),
(21, 'Кокосовое угощение', 9, 750, 'icecream'),
(22, 'Шоколадный шторм', 4, 700, 'icecream'),
(23, 'Ореховый пирог', 11, 550, 'icecream'),
(24, 'Малиновый мармелад', 4, 650, 'icecream');

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`id`, `name`, `country_id`) VALUES
(1, 'Азбука вкуса', 1),
(2, 'Kaufland', 5),
(3, 'Coop', 9),
(4, 'Coop Italia', 3),
(5, 'Carrefour', 7),
(6, 'Mercadona', 9),
(7, 'Delhaize', 7),
(8, 'Tesco', 4),
(9, 'Walmart', 6),
(10, 'Auchan', 3),
(11, 'Edeka', 9),
(12, 'Пятерочка', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
