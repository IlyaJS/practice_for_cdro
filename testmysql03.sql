-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 05 2021 г., 12:59
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `testmysql03`
--

-- --------------------------------------------------------

--
-- Структура таблицы `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
  `id_institut` int(11) NOT NULL AUTO_INCREMENT,
  `itsnitut_number` int(11) NOT NULL,
  `institute` varchar(255) NOT NULL,
  PRIMARY KEY (`id_institut`),
  UNIQUE KEY `itsnitut_number` (`itsnitut_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `institute`
--

INSERT INTO `institute` (`id_institut`, `itsnitut_number`, `institute`) VALUES
(1, 1, 'ГУО "Брестский областной ИРО"'),
(2, 2, 'ГУО "Витебский областной ИРО"'),
(3, 3, 'ГУО "Гомельский областной ИРО"'),
(4, 4, 'ГУО "Гродненский областной ИРО"'),
(5, 5, 'ГУО "Минский областной ИРО"'),
(6, 6, 'УО "Могилевский государственный областной ИРО"'),
(7, 7, 'ГУО "Минский городской ИРО"'),
(8, 8, 'ГУО "Академия последипломного образования"');

-- --------------------------------------------------------

--
-- Структура таблицы `tablelistener`
--

CREATE TABLE IF NOT EXISTS `tablelistener` (
  `id_listener` int(11) NOT NULL AUTO_INCREMENT,
  `categorialistener` varchar(255) NOT NULL,
  PRIMARY KEY (`id_listener`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `tablelistener`
--

INSERT INTO `tablelistener` (`id_listener`, `categorialistener`) VALUES
(1, 'Руководители учреждений образования'),
(2, 'Педагогические работники учреждений дошкольного образования'),
(3, 'Специалисты образования, работающие с детьми с особенностями психофизического развития'),
(4, 'Педагоги-психологи'),
(5, 'Классные руководители, педагогические работники, реализующие программы воспитания'),
(6, 'Педагоги дополнительного образования'),
(7, 'Учителя начальных классов'),
(8, 'Учителя учебных предметов');

-- --------------------------------------------------------

--
-- Структура таблицы `tablemodule`
--

CREATE TABLE IF NOT EXISTS `tablemodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `id_categorieslistener` int(11) NOT NULL,
  `id_institute` int(11) NOT NULL,
  `minvalue` varchar(255) NOT NULL,
  `maxvalue` varchar(255) NOT NULL,
  `typelesson` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `infofile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categorieslistener` (`id_categorieslistener`),
  KEY `id_institute` (`id_institute`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `tablemodule`
--

INSERT INTO `tablemodule` (`id`, `id_module`, `module_name`, `id_categorieslistener`, `id_institute`, `minvalue`, `maxvalue`, `typelesson`, `text`, `infofile`) VALUES
(1, 1, 'Учебное пособие', 4, 6, '2', '8', '3л+4пз', '', '1625351871dokyment.pdf'),
(2, 2, 'Внеурочные занятие', 6, 8, '3', '6', '2Л+4ПЗ', 'их нету', '1625413748dokyment.pdf'),
(3, 3, 'Педагогическая деятельность воспитания', 5, 6, '2', '4', '2Л+2ПЗ', 'нет', '1625414391dokyment.pdf'),
(4, 4, 'Педагогическая деятельность воспитания', 1, 1, '3', '6', '2Л+4ПЗ', 'нету', '1625414589dokyment.pdf'),
(5, 5, 'Современные технологии организации родительского университета', 1, 1, '6', '8', '5Л+3ПЗ', 'нет', '1625437125dokyment.pdf'),
(6, 6, 'Психология восприятия', 4, 5, '6', '10', '5л+5ПЗ', 'что-то', '1625475298dokyment.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `tablepersonalities`
--

CREATE TABLE IF NOT EXISTS `tablepersonalities` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `id_institute` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_personal`),
  KEY `id_institute` (`id_institute`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `tablepersonalities`
--

INSERT INTO `tablepersonalities` (`id_personal`, `id_module`, `fullname`, `degree`, `id_institute`, `unit`, `position`, `phone`, `email`) VALUES
(1, 1, 'Кондратьев Илья Дмитриевич', 'Бакалавар', 6, 'Кафедра инженерной психологии', 'Доцент', '+375 774 927 371 ', 'praktika@gmail.com'),
(2, 2, 'Иванов Иван Иванович', 'Магистр', 8, 'Высокое', 'Старший преподователь', '+375 2753329', 'proverka.gmail.com'),
(3, 3, 'Артут Гриневич Гриневечев', 'Магистр', 6, 'Высокое', 'Старший преподователь', '+375 2753329', 'proverka.gmail.com'),
(4, 4, 'Петр Петрович петров', 'Магистр', 1, 'Высокое', 'Старший преподователь', '+375 2753329', 'proverka.gmail.com'),
(5, 5, 'Евгений Евгеньевич Космос', 'Магистр', 1, 'Высокое', 'Старший преподователь', '+375 2753329', 'proverka.gmail.com'),
(6, 6, 'Малинана Ирина Юрьевна', 'магист', 5, 'кафедра физики', 'ректа', '+375 774532732', 'proverka@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `tabletrainingmodules`
--

CREATE TABLE IF NOT EXISTS `tabletrainingmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `modulename` varchar(255) NOT NULL,
  `id_teachingstuff` int(11) NOT NULL,
  `id_institute` int(11) NOT NULL,
  `donwloadfile` varchar(255) NOT NULL,
  `modulecard` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_institute` (`id_institute`),
  KEY `id_teachingstuff` (`id_teachingstuff`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `tabletrainingmodules`
--

INSERT INTO `tabletrainingmodules` (`id`, `number`, `modulename`, `id_teachingstuff`, `id_institute`, `donwloadfile`, `modulecard`) VALUES
(1, '1001', 'Психогигиена труда педагога ', 2, 1, '1001.pdf', 'pagination.php'),
(2, '1002', 'Психолого-педагогические проблемы выявления и сопровождения одаренных учащихся ', 2, 1, '1002.pdf', 'pagination.php'),
(3, '1003', 'Кибераадикции учащихся и их предупреждение', 2, 1, '1003.pdf', 'pagination.php'),
(4, '1004', 'Психологическое здоровье семьи учителя как фактор профессиональной адаптированности ', 2, 1, '1004.pdf', 'pagination.php'),
(5, '1005', 'Системный подход к гендерному воспитанию детей разных возрастных групп', 2, 1, '1005.pdf', 'pagination.php'),
(6, '1006', 'Технологические функции и операции педагогического общения ', 2, 1, '1006.pdf', 'pagination.php'),
(7, '1007', 'Методика организации и проведения воспитательных мероприятий  с детьми и подростками ', 5, 1, '1007.pdf', 'pagination.php'),
(8, '1008', 'Современные технологии организации родительского университета ', 5, 1, '1008.pdf', 'pagination.php'),
(9, '1009', 'Использование средств мнемотехники  в процессе обучения младших школьников ', 5, 1, '1009.pdf', 'pagination.php'),
(10, '1010', 'Контроль и оценка результатов учебной деятельности учащихся по иностранному языку ', 5, 1, '1010.pdf', 'pagination.php'),
(11, '1011', 'Профилактика жестокого обращения с детьми ', 4, 1, '1011.pdf', 'pagination.php'),
(12, '1012', 'Воспитание личности через формирование ученического коллектива ', 4, 1, '1012.pdf', 'pagination.php'),
(13, '1013', 'Современные аспекты профилактической работы с подростками ', 7, 1, '1013.pdf', 'pagination.php'),
(14, '1014', 'Учебное занятие как форма организации образовательной деятельности в системе дополнительного образования детей  и молодёжи ', 5, 1, '1014.pdf', 'pagination.php');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tablemodule`
--
ALTER TABLE `tablemodule`
  ADD CONSTRAINT `tablemodule_ibfk_1` FOREIGN KEY (`id_categorieslistener`) REFERENCES `tablelistener` (`id_listener`),
  ADD CONSTRAINT `tablemodule_ibfk_2` FOREIGN KEY (`id_institute`) REFERENCES `institute` (`itsnitut_number`);

--
-- Ограничения внешнего ключа таблицы `tablepersonalities`
--
ALTER TABLE `tablepersonalities`
  ADD CONSTRAINT `tablepersonalities_ibfk_2` FOREIGN KEY (`id_institute`) REFERENCES `institute` (`itsnitut_number`),
  ADD CONSTRAINT `tablepersonalities_ibfk_4` FOREIGN KEY (`id_module`) REFERENCES `tablemodule` (`id_module`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tabletrainingmodules`
--
ALTER TABLE `tabletrainingmodules`
  ADD CONSTRAINT `tabletrainingmodules_ibfk_1` FOREIGN KEY (`id_institute`) REFERENCES `institute` (`itsnitut_number`),
  ADD CONSTRAINT `tabletrainingmodules_ibfk_2` FOREIGN KEY (`id_teachingstuff`) REFERENCES `tablelistener` (`id_listener`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
