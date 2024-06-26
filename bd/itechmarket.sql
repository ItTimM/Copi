-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 27 2024 г., 10:19
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
CREATE DATABASE IF NOT EXISTS `itechmarket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `itechmarket`;

-- --------------------------------------------------------

--
-- Структура таблицы `assortment`
--

DROP TABLE IF EXISTS `assortment`;
CREATE TABLE `assortment` (
  `ID_Product` bigint(20) NOT NULL,
  `Name_Product` varchar(1064) NOT NULL,
  `Quantity` bigint(20) NOT NULL,
  `Price` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Очистить таблицу перед добавлением данных `assortment`
--

TRUNCATE TABLE `assortment`;
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
(7, 'Игровая мышь компьютерная Defender Titan RGB Macro 6 кнопок 6400 dpi', 22, 1350),
(8, 'K99-red switch-White&Blue&Violet', 41, 3200),
(9, 'Игровая клавиатура для компьютера Defender', 23, 2400),
(10, 'Игровая клавиатура для компьютера iTech Mayhem pro', 64, 3200),
(11, 'Игровая клавиатура для компьютера iTech White мембранная (Full-size)', 43, 4500),
(12, 'Механическая клавиатура для компьютера игровая iTech Raven', 35, 3200),
(13, 'Игровой коврик для мыши Коврик для мышки iTech с RGB подсветкой, XXL, черный матовый', 67, 3000),
(14, 'Игровой коврик для мышки iTech C большой с подсветкой 80х30см', 32, 4000),
(15, 'ETianSu 32 Монитор игровой монитор 32 дюйма2K 165гц FPS Игровой монитор, черный', 12, 23400),
(16, 'iTech Digital 32 Монитор 32 165 Гц 2K изогнутый игровой монитор VA с фильтрацией синего света, без рамки, черный', 45, 36400),
(17, 'Xiaomi 23.79 Монитор Xiaomi Redmi Display G24 165HZ 23,8(A24FAA-RG), черный', 54, 23000),
(18, 'Игровая мышь компьютерная iTech Titan RGB Macro 6 кнопок 6400 dpi', 43, 1700),
(19, 'ECOM GREEN Наушники проводные с микрофоном, 3.5 мм, USB, черный', 34, 3250),
(20, 'Наушники игровые проводные с RGB подсветкой накладные SVEN  Гарнитура с микрофоном для ПК, компьютера, ноутбука AP-U980MV черный-синий  звук 7.1  USB  LED', 42, 4600);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL,
  `Email` varchar(1064) NOT NULL,
  `Login` varchar(1064) NOT NULL,
  `Password` varchar(1064) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Очистить таблицу перед добавлением данных `users`
--

TRUNCATE TABLE `users`;
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
  MODIFY `ID_Product` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
