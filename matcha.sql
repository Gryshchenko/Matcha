-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3307
-- Время создания: Июн 22 2018 г., 00:40
-- Версия сервера: 5.7.22
-- Версия PHP: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `matcha`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `blocker` int(11) NOT NULL,
  `target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `blocker`, `target`) VALUES
(11, 1, 2),
(12, 3, 18),
(13, 14, 18),
(14, 18, 14),
(15, 20, 13),
(16, 16, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat_history`
--

INSERT INTO `chat_history` (`id`, `user_id`, `target_id`, `message`, `time`) VALUES
(1, 1, 2, 'sdfsdfsdfdsf', '2018-06-16 09:25:53'),
(94, 1, 2, 'dfgdfgdfg', '2018-06-18 10:45:31'),
(95, 2, 1, 'sadasdasd', '2018-06-18 12:06:11'),
(96, 1, 2, 'adsasda', '2018-06-18 13:08:10'),
(97, 2, 1, 'asdasd124', '2018-06-18 13:08:20'),
(98, 1, 2, '234234', '2018-06-19 08:23:53'),
(99, 2, 1, 'qweqwe', '2018-06-19 08:24:04'),
(100, 3, 1, 'sdfsdf324234', '2018-06-19 08:24:38'),
(101, 1, 3, 'qwe123123', '2018-06-19 08:24:53'),
(102, 1, 3, '23423rsdfsdf', '2018-06-19 08:24:57'),
(103, 7, 2, 'Privet', '2018-06-19 16:21:16'),
(104, 2, 7, 'hellow', '2018-06-19 16:21:26'),
(105, 2, 7, 'kak dela', '2018-06-19 16:21:48'),
(106, 7, 2, 'good', '2018-06-19 16:21:54'),
(107, 18, 3, '234', '2018-06-20 09:27:38'),
(108, 18, 3, 'etert', '2018-06-20 09:27:46'),
(109, 3, 18, 'asdasdasd', '2018-06-20 10:47:59'),
(110, 3, 18, '3242d', '2018-06-20 10:48:06'),
(111, 19, 17, 'privet', '2018-06-20 11:57:27'),
(112, 17, 19, 'privet', '2018-06-20 11:57:32'),
(113, 19, 17, 'fwhjfewjk;sfdsf', '2018-06-20 12:08:31'),
(114, 20, 13, 'privet', '2018-06-21 11:28:57'),
(115, 13, 20, 'privet too', '2018-06-21 11:29:07'),
(116, 20, 13, 'asdasdasdas', '2018-06-21 11:29:20'),
(117, 13, 20, 'asdasdasd', '2018-06-21 11:29:22'),
(118, 15, 13, '&lt;div style=&quot;body: background=&quot;red&quot;&gt;&lt;/div&gt;', '2018-06-21 12:04:39'),
(119, 13, 16, 'Hello', '2018-06-21 12:46:32'),
(120, 16, 13, 'Hello too', '2018-06-21 12:46:40');

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `liker` int(11) NOT NULL,
  `target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `liker`, `target`) VALUES
(65, 4, 1),
(69, 2, 3),
(70, 2, 4),
(72, 1, 4),
(116, 1, 3),
(119, 3, 1),
(121, 1, 2),
(122, 2, 1),
(123, 2, 7),
(124, 7, 2),
(216, 3, 18),
(229, 18, 14),
(232, 14, 18),
(233, 18, 3),
(236, 17, 19),
(238, 20, 13),
(245, 15, 13),
(246, 13, 15),
(247, 16, 13),
(248, 13, 16);

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `is_main_picture` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id`, `user_id`, `path`, `is_main_picture`) VALUES
(6, 4, 'http://localhost:8100/public/photos/roma/roma_main_picture.png', 1),
(8, 6, 'http://localhost:8100/public/photos/login5/login5_main_picture.png', 1),
(53, 2, 'http://localhost:8100/public/photos/login1/login1_main_picture_1529332999.png', 1),
(62, 1, 'http://localhost:8100/public/photos/login/login_main_picture_1529414409.png', 1),
(63, 3, 'http://localhost:8100/public/photos/login2/login2_main_picture_1529414463.png', 1),
(67, 7, 'http://localhost:8100/public/photos/login6/login6_main_picture_1529422098.png', 1),
(69, 7, 'http://localhost:8100/public/photos/login6/login6_additional_0_1529422196.png', 0),
(70, 9, 'http://localhost:8100/public/photos/login8/login8_main_picture_1529422325.png', 1),
(71, 9, 'http://localhost:8100/public/photos/login8/login8_additional_0_1529422326.png', 0),
(72, 8, 'http://localhost:8100/public/photos/login7/login7_main_picture_1529422438.png', 1),
(73, 8, 'http://localhost:8100/public/photos/login7/login7_additional_0_1529422447.png', 0),
(74, 10, 'http://localhost:8100/public/photos/login9/login9_main_picture_1529422604.png', 1),
(75, 11, 'http://localhost:8100/public/photos/login10/login10_main_picture_1529422747.png', 1),
(76, 1, 'http://localhost:8100/public/photos/login/login_additional_0_1529414156.png', 0),
(77, 12, 'http://localhost:8100/public/photos/login11/login11_main_picture_1529423234.png', 1),
(78, 13, 'http://localhost:8100/public/photos/login12/login12_main_picture_1529423445.png', 1),
(79, 14, 'http://localhost:8100/public/photos/login13/login13_main_picture_1529423551.png', 1),
(80, 15, 'http://localhost:8100/public/photos/login14/login14_main_picture_1529423710.png', 1),
(81, 16, 'http://localhost:8100/public/photos/login15/login15_main_picture_1529423825.png', 1),
(82, 17, 'http://localhost:8100/public/photos/login16/login16_main_picture_1529484423.png', 1),
(83, 18, 'http://localhost:8100/public/photos/login17/login17_main_picture_1529486113.png', 1),
(85, 19, 'http://localhost:8100/public/photos/lmalaya/lmalaya_main_picture_1529495653.png', 1),
(86, 20, 'http://localhost:8100/public/photos/amelhov/amelhov_main_picture_1529579986.png', 1),
(88, 13, 'http://localhost:8100/public/photos/login12/login12_additional_0_1529580987.png', 0),
(89, 13, 'http://localhost:8100/public/photos/login12/login12_additional_1_1529580987.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `reporter` int(11) NOT NULL,
  `target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `reporter`, `target`) VALUES
(12, 1, 2),
(13, 20, 13),
(14, 16, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_authorised` tinyint(1) NOT NULL DEFAULT '0',
  `reg_link` varchar(255) NOT NULL,
  `date_of_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit` timestamp NULL DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `firstname`, `lastname`, `password`, `is_authorised`, `reg_link`, `date_of_creation`, `last_visit`, `access_token`) VALUES
(1, 'login', 'gryshchenko.89@gmail.com', 'Vladimir', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '1a6562590ef19d1045d06c4055742d38288e9e6dcd71ccde5cee80f1d5a774eb', '2018-06-13 07:08:11', '2018-06-20 09:05:08', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4iLCJ1c2VyX2lkIjoxLCJleHAiOjE1Mjk0ODU1MDh9.yYPrG2EZRLSbjJI4KIbW5hiPSdhe2SlYfPeCQdX4WHhKeMn5tEMn0RKF-afrGViVgLFM7GvHs8cbgOvQthiMhQ'),
(2, 'login1', 'gryshchenko.891@gmail.com', 'Ivan', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '9b6c13f0d182b253c607005217881bbca28a5b04076842f6bc65580c3801a0b0', '2018-06-13 07:08:23', '2018-06-21 10:51:12', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xIiwidXNlcl9pZCI6MiwiZXhwIjoxNTI5NTc4MjcyfQ.BtRxUaWF2JVrot8v7K35db00u85KTVC8OXPJSrwTuBEGPeGJW24dbbNNVYaUeqqsjsvGhK0YRgsjSUzklpN02g'),
(3, 'login2', 'gryshchenko.892@gmail.com', 'Dima', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'a3aaf5a0e9ad2901ab35ce73910be7fbbe1731a3ed1ff947a6ac395c5024a8b3', '2018-06-13 07:08:33', '2018-06-21 12:01:51', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4yIiwidXNlcl9pZCI6MywiZXhwIjoxNTI5NTgyNTExfQ.99LFQygckDPLe-HMNMbUcH3HwHLIGWJcxbrjNT-bkJ3utFmD0Mq1zODw6RqlEGp4wIRe-IJBzE6mIpBG96Qk1w'),
(4, 'login3', 'gryshchenko.893@gmail.com', 'Roma', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '33eb7e4ae43f9873d9c84c0f07b055946b24a71ca27daa60acbbf95b44c7c5e0', '2018-06-13 07:08:43', '2018-06-20 09:50:22', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4zIiwidXNlcl9pZCI6NCwiZXhwIjoxNTI5NDg4MjIyfQ.Gf_gKrDiLhL0cP32VoyBSrEBQAosXs9uQMkPVcVlCsw19sGiTDn13wm4KFvxmoWi1w4UCYFkZopurOqLc6bd0g'),
(5, 'login4', 'gryshchenko.894@gmail.com', 'Vova', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '2499d690642faa4da2a67b078236d1c031217f3c31cf2da2142c8e84e3d617f1', '2018-06-13 07:09:07', '2018-06-13 07:39:36', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW40IiwidXNlcl9pZCI6NSwiZXhwIjoxNTI4ODc3Mzc2fQ.FI-RRsLn1oeUZNLVrEq2gtsUnYfLR9cN6cV4lEoZunbZJvO0UwuxMWgW162pyE19GsnRytgadbAY8D6erejRlg'),
(6, 'login5', 'gryshchenko.8911@gmail.com', 'Andy', 'Gryshchenko', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '683d098205b11550f2d71016c82c4377a96c9f808e132f83f15ba9bd058c7b20', '2018-06-16 12:08:35', '2018-06-16 12:08:55', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW41IiwidXNlcl9pZCI6NiwiZXhwIjoxNTI5MTUyNzM1fQ.a9vo7tJ23rL2SsAvWYKwzsj18_on27IVK-DFrpmB0-gwtH7ryGaDmV1FMBeI-uucJ_wVFY-pqTdqZqeHLsbA4A'),
(7, 'login6', 'Nints1934@cuvox.de', 'Nina', 'Cos', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'e1bb74a7794720edf4935a8813538e8113491318168b1fa61a0ac3528e7b0440', '2018-06-19 15:20:17', '2018-06-19 16:45:33', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW42IiwidXNlcl9pZCI6NywiZXhwIjoxNTI5NDI2NzMzfQ.bKFwZmAbGpfglZqBiOQSBfqME04Jk0pkR3yoyf3kbhuVThLpid4VPmPYclLlB2i-Ef3rtStyf8aHFnwuzkJxig'),
(8, 'login7', 'jwarren@icloud.com', 'Nika', 'Zeus', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '15a26c6fa5151c712acc7ee45a1fd525ab85b801f096847c7d5fdf49efeabb4d', '2018-06-19 15:21:04', '2018-06-19 15:34:17', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW43IiwidXNlcl9pZCI6OCwiZXhwIjoxNTI5NDIyNDU3fQ.cgfu9Y6TRK_asfAcM9Rv8mzOW6x5IM2kk6DRAMucDyiwaoMO6EmmK2051bkIG8rRvJia7kQh21nRxIQLFUgFKg'),
(9, 'login8', 'nogin@comcast.net', 'Tina', 'Kroks', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'b543b2a3edcc48cc0f9d7159522673384b34fbce51920d75df4d0c184dd89b18', '2018-06-19 15:21:41', '2018-06-19 15:32:25', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW44IiwidXNlcl9pZCI6OSwiZXhwIjoxNTI5NDIyMzQ1fQ.9o393gqzAQ36A8MsjFGhGhpocj8zWej_lEgDhW_ibbKAgbH540f1bhVsl-0VZjFDps9KS6JrApPsvh1nGj_eBQ'),
(10, 'login9', 'pemungkah@mac.com', 'Anna', 'Zeycs', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'a6c2a2325dfd588f202a240a06ccb2b037854e7097a303fc8991ecc15501528c', '2018-06-19 15:22:00', '2018-06-19 15:37:52', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW45IiwidXNlcl9pZCI6MTAsImV4cCI6MTUyOTQyMjY3Mn0.FPqz-zxFINxSROdDeFPhnpSgloRnA3dEklowPZXfwGqBBLn46XuhHqCVIaFbLWlIIHJX913vR_p4kQkN08GV4w'),
(11, 'login10', 'denton@me.com', 'Kiara', 'Smith', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'a2075145d3cc47b2b56aeec5e9c78fe7e0055169961b6823629772c96f1f0319', '2018-06-19 15:22:44', '2018-06-19 15:39:19', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xMCIsInVzZXJfaWQiOjExLCJleHAiOjE1Mjk0MjI3NTl9.W7hGsZ2zAm-CtkEB_T-hV290nKkw5CfFXLAvDpKg7ZWc8yMvcTsw-IRd_CRA9lPsdWedoBKbNW4X7tWUMbaiRw'),
(12, 'login11', 'Gaylord@gmail.com', 'Gaylord', 'Shaelyn', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '59e19706d51d39f66711c2653cd7eb1291c94d9b55eb14bda74ce4dc636d015a', '2018-06-19 15:43:50', '2018-06-19 15:49:24', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xMSIsInVzZXJfaWQiOjEyLCJleHAiOjE1Mjk0MjMzNjR9.giFuTC4_mLMF7sHVcUWY0hOFa9En261Fvbi2r3bZihvLkwkuFWAt8AY06dU6VtRw0e0mCz01Lvpx6NmbmmmvLg'),
(13, 'login12', 'Louis@gmail.com', 'Louis', 'Elfreda', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '5f2703a5211db19a9020f7443f6a440fbc95cda90b7c2d53912f5ce47d050056', '2018-06-19 15:44:11', '2018-06-22 07:33:52', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xMiIsInVzZXJfaWQiOjEzLCJleHAiOjE1Mjk2NTI4MzJ9.ceYDbJlhHSsRtibdmcG0LstgY-M2iTmuH1017n2RNmnG1OEgpMxcyV54Vy_FrORtl54kA3v4V-Rn3gIvbFj6aQ'),
(14, 'login13', 'Wallis@gmail.com', 'Wallis', 'Algar', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '62a0eae98b9fc0bd0ad941ae07ae5e2af545a64c8ddc43407bdfe6ae82addb4c', '2018-06-19 15:44:49', '2018-06-20 10:42:24', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xMyIsInVzZXJfaWQiOjE0LCJleHAiOjE1Mjk0OTQ5NDR9.nFLasArH3Z3eQeDhjfxpB_ABwnnd5jyr0yhhczgPb0dQC1a4zjLtWdrbq9eYXnhShAVpXogNInsVcaQMWXjgjQ'),
(15, 'login14', 'Beaumont@gmail.com', 'Beaumont', 'Lucius', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'b1e92fe0fa7edab2161fa5090a65e065425f6ead93e1152013b1ba77b471494c', '2018-06-19 15:45:11', '2018-06-21 12:08:20', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xNCIsInVzZXJfaWQiOjE1LCJleHAiOjE1Mjk1ODY1MDB9.zo_GtEbblRP__wFYeefIFFNFS3-gRzQpZednd7Ja4nuabvUWsutotKjjqT0EnNlfV4bqAjMvqb14FQBrV3bCrQ'),
(16, 'login15', 'Israel@gmail.com', 'Israel', 'Gord', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '2397346b45823e070f6fc72ac94c0a999d234c472479f0e26b30cdf5942db854', '2018-06-19 15:45:28', '2018-06-21 12:49:19', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xNSIsInVzZXJfaWQiOjE2LCJleHAiOjE1Mjk1ODg5NTl9.pIk2_5WICWJGPCJUduTzUpoFDpbysUypUqPiUlNySGwsubyxWbHQhIR5ovGGf1GmdUb-TGYsm1njGcuWpPa2UQ'),
(17, 'login16', 'Andry@gmail.com', 'Andy', 'Bushe', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'ec1c7d93ba051204e4fea7e167f540c2136769c82329c53f5b7a0770bb237987', '2018-06-20 08:45:31', '2018-06-20 12:15:40', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xNiIsInVzZXJfaWQiOjE3LCJleHAiOjE1Mjk1MDA1NDB9.tyIkVSmffl_6yvkqp7rqGRxqOD295SNdOdhwQiT8dXFrrZAri3vvkHZR5qOBBpHbQ0IYZBvygcbFK-1iB7P0Sg'),
(18, 'login17', 'Zeki@gmail.com', 'Zeki', 'Larson', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, '1d0ebea552eb43d0b1e1561f6de8ae92e3de7f1abec52399244d1caed7dbdfa6', '2018-06-20 09:12:00', '2018-06-20 10:48:11', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG9naW4xNyIsInVzZXJfaWQiOjE4LCJleHAiOjE1Mjk0OTUyOTF9.roYv_9x2WSqGFcDXUWLG1yw9HwighdyY8kT0elOeLfUOyojJ6WiRtSlSpjqLXpTW0jswaiEDlEevR6gpectcpw'),
(19, 'lmalaya', 'malaya95lyana@gmail.com', 'lyana', 'malaya', 'a3a902a8e1b1545627a2f2c2d98783eb66bab2e468061a56164716b039c597ab', 2, '9b6c13f0d182b253c607005217881bbca28a5b04076842f6bc65580c3801a0b0', '2018-06-20 11:48:57', '2018-06-20 12:22:00', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoibG1hbGF5YSIsInVzZXJfaWQiOjE5LCJleHAiOjE1Mjk0OTczMjB9.U-8jPICJ821gtkh2ZeXS8VykUUWOEg_chtIj4Lw59HA4RzA-fgt6-QN6caZIvP9-ZApJhC8cMMw4LOzFio75AQ'),
(20, 'amelhov', 'arsenij@gmail.com', 'arsenij', 'melihov', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 2, 'c4ed8e89485d94f74489c8120a6734bb7a9ebdd906328e22a7d89a79be6513cf', '2018-06-21 11:16:02', '2018-06-21 11:58:26', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODEwMFwvIiwidWlkIjoiYW1lbGhvdiIsInVzZXJfaWQiOjIwLCJleHAiOjE1Mjk1ODIzMDZ9.QIhC3lV_eCLizZ_I6vWTEBk9LKKCMHgRrfZp1FGsHmLgcdfbBUnxN74Xry9_VBL30oY4pjysusFBqRYrKUuRpg');

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `sexual_preference` varchar(255) DEFAULT NULL,
  `birthdate` varchar(16) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `biography` text,
  `tags` text,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `fame_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `login`, `gender`, `sexual_preference`, `birthdate`, `age`, `biography`, `tags`, `latitude`, `longitude`, `location`, `fame_rating`) VALUES
(1, 2, 'login1', 'male', 'heterosexual', '10-05-1989', 28, 'His having within saw become ask passed misery giving.  asdasdaskjdmasdm basb amshvd asmbvd asmvd asmv damsd asv dmas dasdmasv dasm dbvasmd vasm vasmv dasvmd askvb dmb', 'mrd,carriage,part,part', 50.4501, 30.5234, 'Kyiv, Ukraine, 02000', 1225),
(2, 1, 'login', 'male', 'heterosexual', '20-10-1989', 27, 'His having within saw become ask passed misery giving. Recommend questions get too fulfilled. He fact in we case miss sake. Entrance be throwing he do blessing up. Hearts warmth in genius do garden advice mr it garret. Collected preserved are middleton dependent residence but him how. Handsome weddings yet mrs you has carriage packages. Preferred joy agreement put continual elsewhere delivered now. Mrs exercise felicity had men speaking met. Rich deal mrs part led part will but. ', 'mrd, carriage, part, part', 50.4695, 30.4853, 'Kiev', 1560),
(3, 3, 'login2', 'male', 'heterosexual', '20-10-1989', 26, 'His having within saw become ask passed misery giving. Recommend questions get too fulfilled. He fact in we case miss sake. Entrance be throwing he do blessing up. Hearts warmth in genius do garden advice mr it garret. Collected preserved are middleton dependent residence but him how. Handsome weddings yet mrs you has carriage packages. Preferred joy agreement put continual elsewhere delivered now. Mrs exercise felicity had men speaking met. Rich deal mrs part led part will but. ', 'mrd, carriage, part, part', 46.4694, 30.7409, 'Odessa', 1745),
(4, 4, 'login3', 'male', 'heterosexual', '20-10-1989', 25, 'His having within saw become ask passed misery giving. Recommend questions get too fulfilled. He fact in we case miss sake. Entrance be throwing he do blessing up. Hearts warmth in genius do garden advice mr it garret. Collected preserved are middleton dependent residence but him how. Handsome weddings yet mrs you has carriage packages. Preferred joy agreement put continual elsewhere delivered now. Mrs exercise felicity had men speaking met. Rich deal mrs part led part will but. ', 'mrd, carriage, part, part', 48.3349, 39.9459, 'Donetsk', 1525),
(5, 6, 'login5', 'male', 'heterosexual', '10-10-1989', 24, 'To sorry world an at do spoil along. Incommode he depending do frankness remainder to. Edward day almost active him friend thirty piqued. People as period twenty my extent as. Set was better abroad ha', 'test,test2,test3,test4,test5', 50.4547, 30.5238, 'Ukraine, Kiev', 25),
(6, 7, 'login6', 'female', 'heterosexual', '10-12-1977', 40, 'Although moreover mistaken kindness me feelings do be marianne. Son over own nay with tell they cold upon are. Cordial village and settled she ability law herself. Finished why bringing but sir bachel', 'movie,kids,songs,love', 49.8397, 24.0297, 'Lviv, Lviv Oblast, Ukraine, 79000', 30),
(7, 9, 'login8', 'female', 'bisexual', '10-10-1988', 29, 'Spent 2002-2007 working with trumpets in Libya. Spent college summers buying and selling teddy bears in the government sector. A real dynamo when it comes to creating marketing channels for heroin in ', 'mans,girls', 49.9935, 36.2304, 'Kharkiv, Kharkiv Oblast, Ukraine', 10),
(8, 8, 'login7', 'female', 'homosexual', '12-10-1978', 39, 'Spent 2001-2004 creating marketing channels for psoriasis in Bethesda, MD. Was quite successful at marketing Magic 8-Balls in the aftermarket. Once had a dream of marketing trumpets for fun and profit', 'cars,movie,serials', 51.5074, -0.127758, 'London, UK', 0),
(9, 10, 'login9', 'female', 'heterosexual', '10-5-1990', 27, 'My current pet project is consulting about toy planes in Fort Lauderdale, FL. Once had a dream of implementing tobacco in Cuba. Practiced in the art of consulting about shaving cream in Prescott, AZ. ', 'mans,girls,cars,bike', 52.2297, 21.0122, 'Warsaw, Poland', -5),
(10, 11, 'login10', 'female', 'homosexual', '10-6-1991', 26, 'Lead a team building psoriasis in the government sector. Spent college summers working with pogo sticks on Wall Street. Have some experience managing catfish for fun and profit. Spent two years resear', 'movie,songs,cars,girls', 54.352, 18.6466, 'Gdańsk, Poland', 0),
(11, 12, 'login11', 'male', 'heterosexual', '10-05-1977', 40, 'Gifted in marketing tar in Salisbury, MD. Spent college summers promoting human brains in Los Angeles, CA. Spoke at an international conference about implementing rubik\'s cubes in Las Vegas, NV. In 20', 'cars,weapons,girls,s', 52.52, 13.405, 'Berlin, Germany', 30),
(12, 13, 'login12', 'male', 'heterosexual', '10-1-1985', 32, 'My current pet project is consulting about bathtub gin in Los Angeles, CA. Developed several new methods for getting my feet wet with human growth hormone on Wall Street. Spent a year importing Virgin', 'youtube,facebook,love', 41.0082, 28.9784, 'Istanbul, Turkey', 55),
(13, 14, 'login13', 'male', 'bisexual', '10-2-1999', 18, 'Developed several new methods for building basketballs in Miami, FL. Lead a team deploying psoriasis in Nigeria. Spent 2002-2008 supervising the production of dogmas in Deltona, FL. Spent 2001-2005 an', 'youtube,facebook,cars', 50.5187, 30.2398, 'Irpin\', Kyivs\'ka oblast, Ukraine, 08200', 15),
(14, 15, 'login14', 'male', 'homosexual', '10-9-2000', 17, 'Spent 2002-2007 training action figures for fun and profit. My current pet project is training birdhouses in Jacksonville, FL. Spent two years lecturing about carp in Prescott, AZ. Crossed the country', 'games,cars,mans', 48.7699, 30.2154, 'Uman\', Cherkas\'ka oblast, Ukraine, 20300', 25),
(15, 16, 'login15', 'male', 'heterosexual', '10-5-1981', 36, 'Spent  weekend developing strategies for crayon art on the black market. Had moderate success working on electric trains in Africa. Prior to my current job I was researching childrens books in Los An', 'cars,girls,yooutube,facebook,bike', 48.6208, 22.2879, 'Uzhhorod, Zakarpats\'ka oblast, Ukraine', 20),
(16, 17, 'login16', 'female', 'heterosexual', '10-05-1989', 28, 'To sorry world an at do spoil along. Incommode he depending do frankness remainder to. Edward day almost active him friend thirty piqued. People as period twenty my extent as. Set was better abroad ha', 'cars,girls,bike', 49.4444, 32.0598, 'Cherkasy, Cherkas\'ka oblast, Ukraine, 18000', 15),
(17, 18, 'login17', 'male', 'homosexual', '10-1-1988', 29, 'His having within saw become ask passed misery giving. Recommend questions get too fulfilled. He fact in we case miss sake. Entrance be throwing he do blessing up.', 'cars,bike', 48.574, 39.3078, 'Luhansk, Luhans\'ka oblast, Ukraine, 91000', 35),
(18, 19, 'lmalaya', 'male', 'heterosexual', '10-01-1988', 29, 'werwerewr esrwerewjhrjgewhrkshfkdsjbf kbsdkf bsdkbf dskbf sdb fkdsbf ksdbf ksdbfk sdbf ksbsdk bsdkf dsfj sdbfk sdbf bsdfkjs d', 'mrd,carriage,part,part', 50.4547, 30.5238, 'Ukraine, Kiev', 20),
(19, 20, 'amelhov', 'female', 'heterosexual', '10-12-1988', 29, 'Although moreover mistaken kindness me feelings do be marianne. Son over own nay with tell they cold upon are. Cordial village and settled she ability law herself. Finished why bringing but sir bachel', 'cars,bike,weapons', 40.6895, -74.1745, 'Newark Liberty International Airport (EWR), 3 Brewster Rd, Newark, NJ 07114, USA', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `viewer` int(11) NOT NULL,
  `target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `views`
--

INSERT INTO `views` (`id`, `viewer`, `target`) VALUES
(2, 1, 3),
(3, 3, 1),
(5, 4, 1),
(6, 1, 4),
(7, 2, 3),
(8, 2, 4),
(9, 3, 2),
(10, 3, 2),
(11, 6, 1),
(12, 1, 6),
(16, 1, 2),
(17, 2, 1),
(18, 16, 7),
(19, 16, 13),
(20, 16, 12),
(21, 16, 15),
(22, 16, 2),
(23, 16, 6),
(24, 2, 7),
(25, 7, 2),
(26, 7, 16),
(27, 7, 13),
(28, 7, 6),
(29, 7, 12),
(30, 7, 12),
(31, 17, 9),
(32, 18, 3),
(33, 3, 18),
(34, 3, 18),
(35, 18, 13),
(36, 18, 13),
(37, 14, 13),
(38, 14, 18),
(39, 18, 14),
(40, 3, 13),
(41, 18, 2),
(42, 17, 19),
(43, 19, 17),
(44, 19, 7),
(45, 19, 12),
(46, 17, 14),
(47, 19, 3),
(48, 13, 7),
(49, 13, 9),
(50, 13, 17),
(51, 13, 17),
(52, 13, 10),
(53, 13, 18),
(54, 13, 18),
(56, 13, 20),
(57, 13, 20),
(58, 20, 13),
(59, 20, 2),
(60, 20, 2),
(61, 20, 2),
(62, 20, 19),
(63, 20, 12),
(64, 20, 12),
(65, 20, 6),
(66, 20, 6),
(67, 15, 13),
(68, 13, 15),
(69, 13, 15),
(70, 13, 16),
(71, 16, 10);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
