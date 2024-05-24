-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 24 2024 г., 13:24
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itechmarket`
--

-- --------------------------------------------------------

--
-- Структура таблицы `assortment`
--

CREATE TABLE `assortment` (
  `ID_Product` bigint(20) NOT NULL,
  `Name_Product` varchar(1064) NOT NULL,
  `Quantity` bigint(20) NOT NULL,
  `Price` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `assortment`
--

INSERT INTO `assortment` (`ID_Product`, `Name_Product`, `Quantity`, `Price`) VALUES
(1, 'Механическая клавиатура для компьютера Cyberlynx K99', 30, 2500),
(2, 'GTHANG Беспроводная игровая мышь с усовершенствованным оптическим светодиодом', 43, 3000),
(3, 'iTech Diamond 5', 68, 2670),
(4, 'iTetch Titan 6 GT', 56, 2640),
(5, 'Игровая мышка для компьютера Redragon Legend Chroma X', 73, 4500),
(6, 'Игровая Мышь  GTHANG(V-31)', 43, 1200),
(7, 'Игровая мышь компьютерная Defender Titan RGB Macro 6 кнопок 6400 dpi', 22, 1350);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL,
  `Email` varchar(1064) NOT NULL,
  `Login` varchar(1064) NOT NULL,
  `Password` varchar(1064) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `assortment`
--
ALTER TABLE `assortment`
  ADD PRIMARY KEY (`ID_Product`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `assortment`
--
ALTER TABLE `assortment`
  MODIFY `ID_Product` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
