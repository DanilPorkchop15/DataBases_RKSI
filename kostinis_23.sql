-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 26 2023 г., 19:15
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kostinis_23`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `cnum` int NOT NULL,
  `cname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pol` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `snum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`cnum`, `cname`, `pol`, `city`, `rating`, `snum`) VALUES
(2001, 'Hoffman', 'м', 'Paris', 100, 1001),
(2002, 'Giovanni', 'м', 'Rome', 200, 1003),
(2003, 'Liu', 'ж', 'San Jose', 200, 1002),
(2004, 'Grass', 'м', 'Berlin', 300, 1002),
(2006, 'Clemens', 'ж', 'Paris', 100, 1001),
(2007, 'Pereira', 'м', 'Rome', 100, 1004),
(2008, 'Cisneros', 'м', 'San Jose', 300, 1007);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `onum` int NOT NULL,
  `amt` float(10,2) DEFAULT NULL,
  `dostavka` int DEFAULT NULL,
  `oplata` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `odate` date DEFAULT NULL,
  `cnum` int DEFAULT NULL,
  `snum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`onum`, `amt`, `dostavka`, `oplata`, `odate`, `cnum`, `snum`) VALUES
(3001, 18.69, 1000, ' наличный', '2021-03-10', 2008, 1007),
(3002, 1900.10, 2000, 'безналичный', '2021-03-10', 2007, 1004),
(3003, 767.19, 2316, ' наличный', '2021-03-10', 2001, 1001),
(3005, 5160.45, 1245, 'безналичный', '2021-03-10', 2003, 1003),
(3006, 1098.16, 7654, ' наличный', '2021-03-10', 2008, 1007),
(3007, 75.75, 4324, ' наличный', '2021-04-10', 2004, 1002),
(3008, 4723.00, 7644, 'безналичный', '2021-05-10', 2006, 1001),
(3009, 1713.23, 5392, 'безналичный', '2021-04-10', 2002, 1003),
(3010, 1309.95, 1240, ' наличный', '2021-06-10', 2004, 1002);

-- --------------------------------------------------------

--
-- Структура таблицы `salespeople`
--

CREATE TABLE `salespeople` (
  `snum` int NOT NULL,
  `sname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `naprav` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comm` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `salespeople`
--

INSERT INTO `salespeople` (`snum`, `sname`, `naprav`, `city`, `comm`) VALUES
(1001, 'Peel', 'табачные изделия', 'London', 0.12),
(1002, 'Serres', 'молочная продукция', 'San Jose', 0.16),
(1003, 'Axelrod', 'колбасная продукция', 'New York', 0.10),
(1004, 'Motika', 'мясная продукция', 'London', 0.11),
(1007, 'Rifkin', 'алкогольная продукция', 'Barcelona', 0.16);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v71`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v71` (
`city` varchar(30)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v72`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v72` (
`rating` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v73`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v73` (
`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v74`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v74` (
`snum` int
,`sname` varchar(30)
,`naprav` varchar(30)
,`city` varchar(30)
,`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v75`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v75` (
`snum` int
,`sname` varchar(30)
,`naprav` varchar(30)
,`city` varchar(30)
,`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v76`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v76` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v77`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v77` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v78`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v78` (
`onum` int
,`amt` float(10,2)
,`dostavka` int
,`oplata` varchar(30)
,`odate` date
,`cnum` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v79`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v79` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v81`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v81` (
`Количество продавцов` bigint
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v82`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v82` (
`Города продавцов` bigint
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v83`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v83` (
`Количество строк` bigint
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v84`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v84` (
`Общий рейтинг заказчиков` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v85`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v85` (
`Сумма заказов` double(19,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v86`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v86` (
`Средний рейтинг заказчиков` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v87`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v87` (
`Средняя стоимость заказов` double(22,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v88`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v88` (
`Минимальный рейтинг заказчика` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v89`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v89` (
`Максимальная комиссия продавца` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v710`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v710` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v711`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v711` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v712`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v712` (
`onum` int
,`amt` float(10,2)
,`dostavka` int
,`oplata` varchar(30)
,`odate` date
,`cnum` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v713`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v713` (
`snum` int
,`sname` varchar(30)
,`naprav` varchar(30)
,`city` varchar(30)
,`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v714`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v714` (
`snum` int
,`sname` varchar(30)
,`naprav` varchar(30)
,`city` varchar(30)
,`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v715`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v715` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v716`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v716` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v717`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v717` (
`onum` int
,`amt` float(10,2)
,`dostavka` int
,`oplata` varchar(30)
,`odate` date
,`cnum` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v718`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v718` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v719`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v719` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v720`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v720` (
`cnum` int
,`cname` varchar(30)
,`pol` varchar(30)
,`city` varchar(30)
,`rating` int
,`snum` int
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v810`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v810` (
`Общая стоимость заказа` double(22,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v810v2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v810v2` (
`Общая стоимость заказа` double(22,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v811`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v811` (
`cname` varchar(30)
,`city` varchar(30)
,`rating` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v812`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v812` (
`sname` varchar(30)
,`city` varchar(30)
,`comm` double(22,2)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v813`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v813` (
`Name_exp_1` varchar(18)
,`snum` int
,`sname` varchar(30)
,`city` varchar(30)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v814`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v814` (
`Name_exp_1` varchar(18)
,`snum` int
,`sname` varchar(30)
,`city` varchar(30)
,`комиссия, %` varchar(11)
,`comm` float(3,2)
);

-- --------------------------------------------------------

--
-- Структура для представления `v71`
--
DROP TABLE IF EXISTS `v71`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v71`  AS SELECT DISTINCT `customers`.`city` AS `city` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v72`
--
DROP TABLE IF EXISTS `v72`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v72`  AS SELECT DISTINCT `customers`.`rating` AS `rating` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v73`
--
DROP TABLE IF EXISTS `v73`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v73`  AS SELECT DISTINCT `salespeople`.`comm` AS `comm` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v74`
--
DROP TABLE IF EXISTS `v74`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v74`  AS SELECT `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`naprav` AS `naprav`, `salespeople`.`city` AS `city`, `salespeople`.`comm` AS `comm` FROM `salespeople` WHERE (`salespeople`.`city` = 'London') ;

-- --------------------------------------------------------

--
-- Структура для представления `v75`
--
DROP TABLE IF EXISTS `v75`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v75`  AS SELECT `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`naprav` AS `naprav`, `salespeople`.`city` AS `city`, `salespeople`.`comm` AS `comm` FROM `salespeople` WHERE (`salespeople`.`comm` > 0.12) ;

-- --------------------------------------------------------

--
-- Структура для представления `v76`
--
DROP TABLE IF EXISTS `v76`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v76`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`city` = 'Rome') ;

-- --------------------------------------------------------

--
-- Структура для представления `v77`
--
DROP TABLE IF EXISTS `v77`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v77`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`rating` in (100,300)) ;

-- --------------------------------------------------------

--
-- Структура для представления `v78`
--
DROP TABLE IF EXISTS `v78`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v78`  AS SELECT `orders`.`onum` AS `onum`, `orders`.`amt` AS `amt`, `orders`.`dostavka` AS `dostavka`, `orders`.`oplata` AS `oplata`, `orders`.`odate` AS `odate`, `orders`.`cnum` AS `cnum`, `orders`.`snum` AS `snum` FROM `orders` WHERE (`orders`.`amt` < 1000) ;

-- --------------------------------------------------------

--
-- Структура для представления `v79`
--
DROP TABLE IF EXISTS `v79`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v79`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE ((`customers`.`rating` = 200) AND (`customers`.`city` = 'Rome')) ;

-- --------------------------------------------------------

--
-- Структура для представления `v81`
--
DROP TABLE IF EXISTS `v81`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v81`  AS SELECT count(0) AS `Количество продавцов` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v82`
--
DROP TABLE IF EXISTS `v82`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v82`  AS SELECT count(distinct `salespeople`.`city`) AS `Города продавцов` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v83`
--
DROP TABLE IF EXISTS `v83`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v83`  AS SELECT count(0) AS `Количество строк` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v84`
--
DROP TABLE IF EXISTS `v84`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v84`  AS SELECT sum(`customers`.`rating`) AS `Общий рейтинг заказчиков` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v85`
--
DROP TABLE IF EXISTS `v85`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v85`  AS SELECT sum(`orders`.`amt`) AS `Сумма заказов` FROM `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `v86`
--
DROP TABLE IF EXISTS `v86`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v86`  AS SELECT round(avg(`customers`.`rating`),2) AS `Средний рейтинг заказчиков` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v87`
--
DROP TABLE IF EXISTS `v87`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v87`  AS SELECT round(avg(`orders`.`amt`),2) AS `Средняя стоимость заказов` FROM `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `v88`
--
DROP TABLE IF EXISTS `v88`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v88`  AS SELECT min(`customers`.`rating`) AS `Минимальный рейтинг заказчика` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v89`
--
DROP TABLE IF EXISTS `v89`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v89`  AS SELECT max(`salespeople`.`comm`) AS `Максимальная комиссия продавца` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v710`
--
DROP TABLE IF EXISTS `v710`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v710`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE ((`customers`.`rating` = 300) OR (`customers`.`city` = 'Berlin')) ;

-- --------------------------------------------------------

--
-- Структура для представления `v711`
--
DROP TABLE IF EXISTS `v711`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v711`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`snum` in (1001,1002,1007)) ;

-- --------------------------------------------------------

--
-- Структура для представления `v712`
--
DROP TABLE IF EXISTS `v712`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v712`  AS SELECT `orders`.`onum` AS `onum`, `orders`.`amt` AS `amt`, `orders`.`dostavka` AS `dostavka`, `orders`.`oplata` AS `oplata`, `orders`.`odate` AS `odate`, `orders`.`cnum` AS `cnum`, `orders`.`snum` AS `snum` FROM `orders` WHERE (`orders`.`cnum` in (2001,2004,2008)) ;

-- --------------------------------------------------------

--
-- Структура для представления `v713`
--
DROP TABLE IF EXISTS `v713`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v713`  AS SELECT `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`naprav` AS `naprav`, `salespeople`.`city` AS `city`, `salespeople`.`comm` AS `comm` FROM `salespeople` WHERE (`salespeople`.`snum` between 1001 and 1005) ;

-- --------------------------------------------------------

--
-- Структура для представления `v714`
--
DROP TABLE IF EXISTS `v714`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v714`  AS SELECT `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`naprav` AS `naprav`, `salespeople`.`city` AS `city`, `salespeople`.`comm` AS `comm` FROM `salespeople` WHERE (`salespeople`.`comm` between 0.10 and 0.13) ;

-- --------------------------------------------------------

--
-- Структура для представления `v715`
--
DROP TABLE IF EXISTS `v715`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v715`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`cname` between 'A%' and 'G%') ;

-- --------------------------------------------------------

--
-- Структура для представления `v716`
--
DROP TABLE IF EXISTS `v716`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v716`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`city` between 'A%' and 'L%') ;

-- --------------------------------------------------------

--
-- Структура для представления `v717`
--
DROP TABLE IF EXISTS `v717`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v717`  AS SELECT `orders`.`onum` AS `onum`, `orders`.`amt` AS `amt`, `orders`.`dostavka` AS `dostavka`, `orders`.`oplata` AS `oplata`, `orders`.`odate` AS `odate`, `orders`.`cnum` AS `cnum`, `orders`.`snum` AS `snum` FROM `orders` WHERE (`orders`.`odate` between '2021-03-10' and '2021-05-10') ;

-- --------------------------------------------------------

--
-- Структура для представления `v718`
--
DROP TABLE IF EXISTS `v718`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v718`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`cname` like 'C%') ;

-- --------------------------------------------------------

--
-- Структура для представления `v719`
--
DROP TABLE IF EXISTS `v719`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v719`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`cname` like 'G%') ;

-- --------------------------------------------------------

--
-- Структура для представления `v720`
--
DROP TABLE IF EXISTS `v720`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v720`  AS SELECT `customers`.`cnum` AS `cnum`, `customers`.`cname` AS `cname`, `customers`.`pol` AS `pol`, `customers`.`city` AS `city`, `customers`.`rating` AS `rating`, `customers`.`snum` AS `snum` FROM `customers` WHERE (`customers`.`cname` like 'G%s') ;

-- --------------------------------------------------------

--
-- Структура для представления `v810`
--
DROP TABLE IF EXISTS `v810`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v810`  AS SELECT (sum(`orders`.`amt`) + sum(`orders`.`dostavka`)) AS `Общая стоимость заказа` FROM `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `v810v2`
--
DROP TABLE IF EXISTS `v810v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v810v2`  AS SELECT (`orders`.`amt` + `orders`.`dostavka`) AS `Общая стоимость заказа` FROM `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `v811`
--
DROP TABLE IF EXISTS `v811`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v811`  AS SELECT `customers`.`cname` AS `cname`, `customers`.`city` AS `city`, round((`customers`.`rating` / 50),2) AS `rating` FROM `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `v812`
--
DROP TABLE IF EXISTS `v812`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v812`  AS SELECT `salespeople`.`sname` AS `sname`, `salespeople`.`city` AS `city`, round((sin(`salespeople`.`comm`) * 10),2) AS `comm` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v813`
--
DROP TABLE IF EXISTS `v813`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v813`  AS SELECT 'номер заказчика - ' AS `Name_exp_1`, `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`city` AS `city` FROM `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `v814`
--
DROP TABLE IF EXISTS `v814`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `v814`  AS SELECT 'номер заказчика - ' AS `Name_exp_1`, `salespeople`.`snum` AS `snum`, `salespeople`.`sname` AS `sname`, `salespeople`.`city` AS `city`, 'комиссия, %' AS `комиссия, %`, `salespeople`.`comm` AS `comm` FROM `salespeople` ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cnum`),
  ADD KEY `snum` (`snum`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`onum`),
  ADD KEY `snum` (`snum`),
  ADD KEY `cnum` (`cnum`);

--
-- Индексы таблицы `salespeople`
--
ALTER TABLE `salespeople`
  ADD PRIMARY KEY (`snum`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`snum`) REFERENCES `salespeople` (`snum`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`snum`) REFERENCES `salespeople` (`snum`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cnum`) REFERENCES `customers` (`cnum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
