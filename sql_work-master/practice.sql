-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 22 2023 г., 06:22
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
-- Структура таблицы `budget_icecreams`
--

CREATE TABLE `budget_icecreams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `chocolates`
--

CREATE TABLE `chocolates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `chocolates`
--

INSERT INTO `chocolates` (`id`, `name`, `country`, `price`) VALUES
(1, 'Ritter Sport', 'Германия', 350),
(2, 'Lindt Excellence', 'Швейцария', 500),
(3, 'Cote d\'Or', 'Бельгия', 200),
(4, 'Milka', 'Швейцария', 250),
(5, 'Alpia', 'Германия', 300),
(6, 'Nestle', 'Швейцария', 150),
(7, 'Kinder', 'Италия', 100),
(8, 'Cadbury', 'Великобритания', 450),
(9, 'Ferrero Rocher', 'Италия', 700),
(10, 'Toblerone', 'Швейцария', 600),
(11, 'Ghirardelli', 'США', 550),
(12, 'Valrhona', 'Франция', 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `icecreams`
--

CREATE TABLE `icecreams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `icecreams`
--

INSERT INTO `icecreams` (`id`, `name`, `country`, `price`) VALUES
(1, 'Ванильный рай', 'Россия', 500),
(2, 'Фисташковый орех', 'Италия', 400),
(3, 'Карамельный бум', 'Франция', 300),
(4, 'Ягодный смеш', 'Россия', 450),
(5, 'Клубничное наслаждение', 'Россия', 350),
(6, 'Печенье-ваниль', 'Германия', 600),
(7, 'Лимонный дождь', 'Россия', 200),
(8, 'Банановое облако', 'Россия', 250),
(9, 'Кокосовое угощение', 'Испания', 750),
(10, 'Шоколадный шторм', 'Франция', 700),
(11, 'Ореховый пирог', 'Германия', 550),
(12, 'Малиновый мармелад', 'Испания', 650);

-- --------------------------------------------------------

--
-- Структура таблицы `premium_chocolates`
--

CREATE TABLE `premium_chocolates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `budget_icecreams`
--
ALTER TABLE `budget_icecreams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chocolates`
--
ALTER TABLE `chocolates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `icecreams`
--
ALTER TABLE `icecreams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `premium_chocolates`
--
ALTER TABLE `premium_chocolates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `budget_icecreams`
--
ALTER TABLE `budget_icecreams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `chocolates`
--
ALTER TABLE `chocolates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `icecreams`
--
ALTER TABLE `icecreams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `premium_chocolates`
--
ALTER TABLE `premium_chocolates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
