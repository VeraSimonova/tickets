-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 18 2022 г., 12:26
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test-task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `barcode`
--

CREATE TABLE `barcode` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `barcode`
--

INSERT INTO `barcode` (`id`, `code`) VALUES
(1, 11111),
(2, 22222);

-- --------------------------------------------------------

--
-- Структура таблицы `barcode_tickets`
--

CREATE TABLE `barcode_tickets` (
  `barcode_id` int(11) DEFAULT NULL,
  `tickets_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `barcode_tickets`
--

INSERT INTO `barcode_tickets` (`barcode_id`, `tickets_id`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `from_a_to_b`
--

CREATE TABLE `from_a_to_b` (
  `id` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `from_a_to_b`
--

INSERT INTO `from_a_to_b` (`id`, `dateTime`, `price`) VALUES
(1, '2021-08-21 18:00:00', 700),
(2, '2021-08-21 18:30:00', 700),
(3, '2021-08-21 18:45:00', 700),
(4, '2021-08-21 19:00:00', 700),
(5, '2021-08-21 19:15:00', 700),
(6, '2021-08-21 21:00:00', 700);

-- --------------------------------------------------------

--
-- Структура таблицы `from_b_to_a`
--

CREATE TABLE `from_b_to_a` (
  `id` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `from_b_to_a`
--

INSERT INTO `from_b_to_a` (`id`, `dateTime`, `price`) VALUES
(1, '2021-08-21 18:30:00', 700),
(2, '2021-08-21 18:45:00', 700),
(3, '2021-08-21 19:00:00', 700),
(4, '2021-08-21 19:15:00', 700),
(5, '2021-08-21 19:35:00', 700),
(6, '2021-08-21 21:50:00', 700),
(7, '2021-08-21 21:55:00', 700);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_resets_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2022_10_16_152700_create_ticket_types_table', 1),
(48, '2022_10_17_080023_create_tickets_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(20) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_date` datetime NOT NULL,
  `ticket_adult_price` int(11) NOT NULL,
  `ticket_adult_quantity` int(11) NOT NULL,
  `ticket_kid_price` int(11) NOT NULL,
  `ticket_kid_quantity` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `equal_price` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ticket_types_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `event_id`, `event_date`, `ticket_adult_price`, `ticket_adult_quantity`, `ticket_kid_price`, `ticket_kid_quantity`, `barcode`, `user_id`, `equal_price`, `created`, `ticket_types_id`) VALUES
(1, 3, '2022-10-17 10:24:55', 700, 1, 450, 0, 11111111, 451, 700, '2022-10-17 10:24:55', 1),
(2, 6, '2022-10-17 10:46:01', 1000, 0, 800, 2, 22222222, 364, 1600, '2022-10-17 10:46:01', NULL),
(3, 3, '2022-10-17 10:47:12', 700, 4, 450, 3, 33333333, 15, 4150, '2022-10-17 10:47:12', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `name_of_type`, `price`) VALUES
(1, 'льготный', 300),
(2, 'групповой', 400);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `barcode_tickets`
--
ALTER TABLE `barcode_tickets`
  ADD KEY `barcode_id` (`barcode_id`,`tickets_id`),
  ADD KEY `tickets_id` (`tickets_id`);

--
-- Индексы таблицы `from_a_to_b`
--
ALTER TABLE `from_a_to_b`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `from_b_to_a`
--
ALTER TABLE `from_b_to_a`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_types_id` (`ticket_types_id`);

--
-- Индексы таблицы `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `barcode`
--
ALTER TABLE `barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `from_a_to_b`
--
ALTER TABLE `from_a_to_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `from_b_to_a`
--
ALTER TABLE `from_b_to_a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `barcode_tickets`
--
ALTER TABLE `barcode_tickets`
  ADD CONSTRAINT `barcode_tickets_ibfk_1` FOREIGN KEY (`barcode_id`) REFERENCES `barcode` (`id`),
  ADD CONSTRAINT `barcode_tickets_ibfk_2` FOREIGN KEY (`tickets_id`) REFERENCES `tickets` (`id`);

--
-- Ограничения внешнего ключа таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`ticket_types_id`) REFERENCES `ticket_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
