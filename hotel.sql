-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2023 г., 05:44
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hotel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `apartment`
--

CREATE TABLE `apartment` (
  `idapartment` int(11) NOT NULL COMMENT 'id апартаментов',
  `numberofrooms` int(11) NOT NULL COMMENT 'номер комнаты',
  `roomtype` varchar(100) NOT NULL COMMENT 'тип комнаты',
  `employmentallroom` varchar(100) NOT NULL COMMENT 'занятость комнаты',
  `floor` int(11) NOT NULL COMMENT 'этаж'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `apartment`
--

INSERT INTO `apartment` (`idapartment`, `numberofrooms`, `roomtype`, `employmentallroom`, `floor`) VALUES
(196, 0, '', '', 0),
(197, 0, '', '', 0),
(198, 0, '', '', 0),
(200, 0, '', '', 0),
(201, 0, '', '', 0),
(202, 0, '', '', 0),
(203, 0, '', '', 0),
(204, 0, '', '', 0),
(205, 0, '', '', 0),
(206, 0, '', '', 0),
(207, 0, '', '', 0),
(208, 0, '', '', 0),
(209, 0, '', '', 0),
(210, 0, '', '', 0),
(211, 0, '', '', 0),
(212, 0, '', '', 0),
(213, 0, '', '', 0),
(214, 0, '', '', 0),
(215, 0, '', '', 0),
(216, 0, '', '', 0),
(217, 0, '', '', 0),
(218, 0, '', '', 0),
(219, 0, '', '', 0),
(220, 0, '', '', 0),
(221, 0, '', '', 0),
(222, 0, '', '', 0),
(223, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `registrationcards`
--

CREATE TABLE `registrationcards` (
  `idregistration` int(11) NOT NULL COMMENT 'id регистрации',
  `firstname` varchar(100) NOT NULL COMMENT 'Имя',
  `secondname` varchar(100) NOT NULL COMMENT 'Фамилия',
  `midlename` varchar(100) NOT NULL COMMENT 'Отчество',
  `passportseries` int(11) NOT NULL COMMENT 'серия паспорта',
  `passportnumber` int(11) NOT NULL COMMENT 'номер паспорта',
  `pasportregistration` varchar(100) NOT NULL COMMENT 'регистрация по паспорту',
  `dateofbirth` date NOT NULL COMMENT 'дата рождения',
  `gender` varchar(100) NOT NULL COMMENT 'пол',
  `telephone` varchar(100) NOT NULL COMMENT 'телефон',
  `mail` varchar(100) NOT NULL COMMENT 'электронная почта'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `registrationcards`
--

INSERT INTO `registrationcards` (`idregistration`, `firstname`, `secondname`, `midlename`, `passportseries`, `passportnumber`, `pasportregistration`, `dateofbirth`, `gender`, `telephone`, `mail`) VALUES
(48, '', '', '', 0, 0, '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `idroom` int(11) NOT NULL COMMENT 'id комнаты',
  `numberofseats` int(11) NOT NULL COMMENT 'количество мест в комнате',
  `numberofoccupiedseats` int(11) NOT NULL COMMENT 'количество занятых мест в комнате',
  `availabilityofbookin` varchar(100) NOT NULL COMMENT 'наличие забронированных мест',
  `havingaphone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'наличие телефона в номере',
  `cost` varchar(100) NOT NULL COMMENT 'цена'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`idapartment`);

--
-- Индексы таблицы `registrationcards`
--
ALTER TABLE `registrationcards`
  ADD PRIMARY KEY (`idregistration`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`idroom`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `apartment`
--
ALTER TABLE `apartment`
  MODIFY `idapartment` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id апартаментов', AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT для таблицы `registrationcards`
--
ALTER TABLE `registrationcards`
  MODIFY `idregistration` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id регистрации', AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `idroom` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id комнаты', AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
