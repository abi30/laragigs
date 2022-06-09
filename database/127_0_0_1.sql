-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 01:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authenticaiton`
--
CREATE DATABASE IF NOT EXISTS `authenticaiton` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `authenticaiton`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'abdulla', 'eva@mail.com', NULL, '$2y$10$Wp6QHAAl7DmxFrSkCATJH.RQU/WNk7Kw/xaVHBWUV6LSIJvh2k2XG', NULL, '2022-05-30 07:24:35', '2022-05-30 07:24:35'),
(9, 'rakib', 'rakib@gmail.com', NULL, '$2y$10$duCsI5UAVv423Ime5921FOJnZLiPRcUWxS6uyVRQ3DbZ3yRXa0Day', NULL, '2022-05-30 08:07:14', '2022-05-30 08:07:14'),
(10, 'abdulla', 'rakib0751@gmail.com', NULL, '$2y$10$99Oz7tuhQa/sWxMqP32Ul.FM9j.FB3mey0IwrD44GXoIeWcCtr/Gu', NULL, '2022-05-30 08:16:53', '2022-05-30 08:16:53'),
(11, 'hello', 'hello@mail.com', NULL, '$2y$10$RfZdgm1vpULmxKUL97AumuIKNqmbbZYC6MEyoxL1wFkQQmvb8JzRi', NULL, '2022-05-30 09:24:56', '2022-05-30 09:24:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `codexworld`
--
CREATE DATABASE IF NOT EXISTS `codexworld` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `codexworld`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `cricketers`
--
CREATE DATABASE IF NOT EXISTS `cricketers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cricketers`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cricketer`
--

CREATE TABLE `tbl_cricketer` (
  `cricketer_id` int(11) NOT NULL,
  `cricketer_name` varchar(250) NOT NULL,
  `cricketer_phone` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cricketer`
--

INSERT INTO `tbl_cricketer` (`cricketer_id`, `cricketer_name`, `cricketer_phone`) VALUES
(1, 'Sachin Tendulkar', '412-735-0884'),
(2, 'Don Bradman', '320-552-9961'),
(3, 'Garfield Sobers', '201-324-8264'),
(4, 'Sir Viv Richards', '478-388-4715'),
(5, 'Imran Khan', '479-966-6788'),
(6, 'Ian Botham', '701-685-8912'),
(7, 'Shane Warne', '607-829-8758'),
(8, 'Muttiah Muralitharan', '803-789-0429'),
(9, 'Brian Lara', '214-585-0737'),
(10, 'Virat Kohli', '630-571-4107'),
(11, 'Jacques Kallis', '904-459-3747'),
(12, 'MS Dhoni', '404-380-9481'),
(13, 'Wasim Akram', '323-350-4483'),
(14, 'Kumar Sangakkara', '337-889-2683'),
(15, 'Kapil Dev', '216-394-6894'),
(16, 'Mahela Jayawardene', '503-284-8652'),
(17, 'Adam Gilchrist', '989-304-7188'),
(18, 'Chris Gayle', '540-232-0351'),
(26, 'Virender Sehwag', '718-262-7466'),
(20, 'Allan Donald', '407-492-5727'),
(21, 'Glenn McGrath', '903-863-5810'),
(88, 'Sunil Gavaskar', '482-421-6933'),
(23, 'Rahul Dravid', '920-348-4884'),
(24, 'Ajinkya Rahane', '615-425-9930'),
(25, 'Jacques Kallis', '708-887-2613'),
(89, 'P Duminy', '909-386-7998'),
(90, 'Suresh Raina', '630-643-8763'),
(91, 'Graeme Smith', '513-807-9884'),
(92, 'Gautam Gambhir', '847-385-1621'),
(93, 'Eoin Morgan', '561-641-4509'),
(94, 'Nicholas Pooran', '508-269-9346'),
(95, 'Jonny Bairstow', '347-537-8052'),
(96, 'Shreyas Iyer', '510-702-7415'),
(97, 'Suryakumar Yadav', '252-226-4076'),
(98, 'Shikhar Dhawan', '810-334-9674'),
(99, 'Quinton de Kock', '865-259-6772'),
(100, 'David Warner', '443-217-1859'),
(101, 'Babar Azam', '716-252-9230'),
(102, 'Virat Kohli', '402-840-0541'),
(103, 'Mayank Agarwal', '360-610-7730'),
(104, 'Faf du Plessis', '205-861-3306'),
(105, 'KL Rahul', '914-683-4994'),
(106, 'AB De Villiers', '310-335-1336'),
(107, 'Sourav Ganguly', '626-513-8306'),
(108, 'Yuvraj Singh', '754-884-7023'),
(109, 'Anil Kumble', '806-823-5344'),
(110, 'Mike Hussey', '201-917-2804'),
(111, 'Matthew Hayden', '206-592-4665'),
(112, 'Jack Hobbs', '488-365-0324'),
(113, 'Lasith Malinga', '815-288-5435');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cricketer`
--
ALTER TABLE `tbl_cricketer`
  ADD PRIMARY KEY (`cricketer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cricketer`
--
ALTER TABLE `tbl_cricketer`
  MODIFY `cricketer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- Database: `eloquent`
--
CREATE DATABASE IF NOT EXISTS `eloquent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eloquent`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `mechanic_id`, `created_at`, `updated_at`) VALUES
(1, 'bmw-1001', 1, '2022-05-27 08:09:43', '2022-05-27 08:09:43'),
(2, 'mercedes-banz 1011', 2, '2022-05-27 08:09:43', '2022-05-27 08:09:43'),
(3, 'toyota-1001', 3, '2022-05-27 08:09:43', '2022-05-27 08:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'category one ', '2022-05-27 07:31:57', '2022-05-27 07:31:57'),
(2, 'category two', '2022-05-27 07:32:52', '2022-05-27 07:32:52'),
(3, 'category three ', '2022-05-27 07:31:57', '2022-05-27 07:31:57'),
(4, 'category four', '2022-05-27 07:32:52', '2022-05-27 07:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(2, 1, 2, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(3, 1, 3, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(4, 2, 2, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(5, 2, 4, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(6, 3, 1, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(7, 3, 2, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(8, 4, 1, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(9, 4, 3, '2022-05-27 07:36:39', '2022-05-27 07:36:39'),
(10, 4, 4, '2022-05-27 07:36:39', '2022-05-27 07:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'commend one message for post 1', '2022-05-25 13:51:44', '2022-05-25 13:51:44'),
(2, 1, 'commend two message for post 1', '2022-05-25 13:51:44', '2022-05-25 13:51:44'),
(3, 1, 'commend three message for post 1', '2022-05-25 13:51:44', '2022-05-25 13:51:44'),
(4, 2, 'commend one message for post 2', '2022-05-25 13:51:44', '2022-05-25 13:51:44'),
(5, 2, 'commend two message for post 2', '2022-05-25 13:51:44', '2022-05-25 13:51:44'),
(6, 3, 'commend one message for post 3', '2022-05-25 13:51:44', '2022-05-25 13:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', '2022-05-27 09:29:16', '2022-05-27 09:29:16'),
(2, 'Austria', '2022-05-27 09:29:16', '2022-05-27 09:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'mechanic one', '2022-05-27 08:08:30', '2022-05-27 08:08:30'),
(2, 'mechanic two', '2022-05-27 08:08:30', '2022-05-27 08:08:30'),
(3, 'mechanic three', '2022-05-27 08:08:30', '2022-05-27 08:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_25_105004_create_phones_table', 1),
(6, '2022_05_25_134555_create_posts_table', 2),
(7, '2022_05_25_134714_create_comments_table', 2),
(8, '2022_05_27_072354_create_categories_table', 3),
(9, '2022_05_27_072802_create_category_post_table', 3),
(10, '2022_05_27_080308_create_mechanics_table', 4),
(11, '2022_05_27_080326_create_cars_table', 4),
(12, '2022_05_27_080354_create_owners_table', 4),
(13, '2022_05_27_092729_create_countries_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `car_id`, `created_at`, `updated_at`) VALUES
(1, 'owner one', 1, '2022-05-26 08:12:43', '2022-05-27 08:12:43'),
(2, 'owner two', 2, '2022-05-27 08:12:43', '2022-05-27 08:12:43'),
(3, 'owner three', 3, '2022-05-27 08:12:43', '2022-05-27 08:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iphone pro max', '1', '2022-05-25 11:00:39', '2022-05-25 11:00:39'),
(2, 'samsung px', '2', '2022-05-25 11:00:39', '2022-05-25 11:00:39'),
(3, 'huawex y9', '3', '2022-05-25 11:00:39', '2022-05-25 11:00:39'),
(4, 'huawey max', '4', '2022-05-25 11:00:39', '2022-05-25 11:00:39'),
(5, 'iphone 12 pro', '5', '2022-05-25 11:00:39', '2022-05-25 11:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'title one', '2022-05-25 13:49:44', '2022-05-25 13:49:44'),
(2, 2, 'title two', '2022-05-25 13:49:44', '2022-05-25 13:49:44'),
(3, 2, 'title three', '2022-05-25 13:49:44', '2022-05-25 13:49:44'),
(4, 3, 'title four', '2022-05-25 13:49:44', '2022-05-25 13:49:44'),
(5, 4, 'title five', '2022-05-25 13:49:44', '2022-05-25 13:49:44'),
(6, 4, 'title six', '2022-05-27 09:31:57', '2022-05-27 09:31:57'),
(7, 5, 'title seven', '2022-05-27 09:31:57', '2022-05-27 09:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'user 1', 'user1@mail.com', NULL, '12345678', NULL, '2022-05-25 12:24:57', '2022-05-25 12:24:57'),
(2, 1, 'user 2', 'user2@mail.com', NULL, '12345678', NULL, '2022-05-25 12:24:57', '2022-05-25 12:24:57'),
(3, 1, 'user 3', 'user3@mail.com', NULL, '12345678', NULL, '2022-05-25 12:24:57', '2022-05-25 12:24:57'),
(4, 2, 'user 4', 'user4@mail.com', NULL, '12345678', NULL, '2022-05-25 12:24:57', '2022-05-25 12:24:57'),
(5, 2, 'user 5', 'user5@mail.com', NULL, '12345678', NULL, '2022-05-25 10:57:36', '2022-05-25 10:57:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `google`
--
CREATE DATABASE IF NOT EXISTS `google` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `google`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_05_18_094243_create_sessions_table', 1),
(21, '2022_05_18_094941_add_google_id_column', 1),
(22, '2022_05_18_120000_add_ameise_id_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('loourCIRA1DV0a2oGz4xjuk7cvBX4PvOF3cWi4hj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzBzTG5BbUJCYkxaQlp5RzNvYWhNeXVXY2MyOHRpR1dUa05zSGxmMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1652876528),
('WJdu6w7jZAn2zHBWTSpZ4tKwTz5VTBBbXjgeOIDA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1dZYVo4VTZrNHZOYWFLZkUxV2o3RGlPeEJ6RUZwb0ZvZzRRWTdlViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hdXRoL2FtZWlzZSI7fX0=', 1652885556);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ameise_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `google_id`, `ameise_id`) VALUES
(1, 'Abdulla-al Rakib', 'rakib0751@gmail.com', NULL, 'eyJpdiI6IlBrSzdYbG5jcUo3YVNKOHc1UHhyeVE9PSIsInZhbHVlIjoiZWJKTitaQkRJS3B2bk8vR005N2phS2V2TGpFYWp0bGVlK0MvUWl2dzZaaz0iLCJtYWMiOiIzNDU0Njg4MjNhYjVlNzA0OWY5NmI3YjIxMTEzNTE3YTI0NDAxODc3YjljMTFlMTJmNmIwZWIyMzVlNTQwZTFmIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 10:18:54', '2022-05-18 12:33:49', '107370565052391081966', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laragigs`
--
CREATE DATABASE IF NOT EXISTS `laragigs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laragigs`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sint et omnis consequuntur voluptatem et repellendus.', 'laravel,api,backend', 'Stracke Ltd', 'Murphymouth', 'carmella.kuphal@blanda.com', 'http://koss.biz/consectetur-id-sit-sequi-sint-asperiores-atque.html', 'Fugit iste voluptatem totam repudiandae in commodi iure. Dignissimos dicta tempora deleniti et officiis fugit. Mollitia soluta architecto aut enim commodi. Cupiditate aut rerum dolores ut.', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(2, 'Ipsa qui exercitationem tempora quo.', 'laravel,api,backend', 'Rau Ltd', 'Teaganmouth', 'hugh.hodkiewicz@nolan.biz', 'https://www.rogahn.com/voluptatibus-quibusdam-cupiditate-quasi-rerum-quae-corporis-velit', 'Voluptas qui consequuntur dolor eveniet aut. Corrupti doloribus ut vel omnis. Ut eaque quis ratione ut. Suscipit excepturi fugit sint aliquid. Harum minus iste temporibus maxime modi illum. Ab voluptas fuga illo odio quia perferendis dolore. Nostrum quae occaecati voluptatem sint unde.', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(3, 'Veritatis inventore quia ea ut.', 'laravel,api,backend', 'Monahan Ltd', 'New Shayne', 'keegan.zemlak@schmeler.biz', 'http://www.gulgowski.com/voluptatem-et-et-aliquid-dolorem-nisi-sit', 'Architecto ut ea et unde laborum vel aliquam. Voluptate cupiditate ea quibusdam tempora numquam omnis enim. Sapiente mollitia voluptas qui in sunt. At nostrum voluptas molestias autem. Et sit officiis in distinctio aut sequi totam.', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(4, 'Sit repellat aliquam et corporis quia sed nisi.', 'laravel,api,backend', 'Johnston Inc', 'East Alvena', 'shanny.mills@ortiz.com', 'https://www.schowalter.biz/inventore-totam-repudiandae-ducimus-eos-laborum-tenetur-sunt-eveniet', 'Odio perspiciatis aut animi esse doloribus ratione aut. Ad dolor amet sed ut. Perferendis quo odio alias veniam. Rerum non inventore quas expedita eum ut. Praesentium vitae totam qui expedita error.', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(5, 'Excepturi aut dolores nesciunt et facilis eius.', 'laravel,api,backend', 'Franecki Group', 'Hicklefort', 'pvonrueden@okuneva.org', 'https://green.org/ut-eum-rerum-sapiente-laborum.html', 'Tenetur quo ducimus dolores sit tenetur corrupti. Assumenda eveniet occaecati perspiciatis. Commodi omnis molestiae in nam. Rem vitae quas voluptatem nisi maxime. Dolores vitae cupiditate maxime omnis nihil atque ut exercitationem.', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(6, 'Dignissimos dolorum exercitationem omnis placeat rem minus quos.', 'laravel,api,backend', 'Wisozk, Blanda and Corwin', 'Port Bailee', 'halle.wehner@abshire.com', 'http://paucek.biz/nemo-consequatur-reprehenderit-ex-illo-rerum-ut.html', 'Quos illum sint optio labore porro. Ut aut natus aliquam saepe. Voluptates qui molestiae occaecati excepturi dicta inventore. Neque molestiae nulla expedita. Tempora odit fugiat possimus aut. Cupiditate molestiae est nihil et est saepe. Voluptate odio ab tenetur cumque natus aliquam.', '2022-06-07 12:22:39', '2022-06-07 12:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_06_07_130831_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pamela Jacobson', 'tremaine67@example.com', '2022-06-07 12:22:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0BL6VTZe50', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(2, 'Junius Heller', 'omarvin@example.com', '2022-06-07 12:22:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CmCkY3A040', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(3, 'Beverly Stokes', 'russel.emerson@example.com', '2022-06-07 12:22:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '67d2uDThWb', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(4, 'Shanie Wunsch', 'wisozk.adella@example.net', '2022-06-07 12:22:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MVXWbTRycZ', '2022-06-07 12:22:39', '2022-06-07 12:22:39'),
(5, 'Domenico Quigley', 'elva30@example.org', '2022-06-07 12:22:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nSNH5JaohK', '2022-06-07 12:22:39', '2022-06-07 12:22:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `larasim`
--
CREATE DATABASE IF NOT EXISTS `larasim` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `larasim`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'mobile', '2022-04-26 18:09:58', '2022-04-26 18:09:58'),
(2, 'monitor', '2022-04-26 18:10:28', '2022-04-26 18:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double(8,2) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `salary`, `photo`, `nid`, `joining_date`, `created_at`, `updated_at`) VALUES
(1, 'Abdulla rakib', 'admin@mail.com', '1234', 'wien', 1500.00, 'backend/employee/1651503125.jpeg', '12345', '2000-03-01', '2022-05-02 18:52:05', '2022-05-02 18:52:05'),
(2, 'xxx yyyy zzz', 'xxx@yyy.com', '12345', 'wien', 1500.00, 'backend/employee/1651503182.jpeg', '12345', '2001-12-20', '2022-05-02 18:53:02', '2022-05-02 18:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `expense_date`, `created_at`, `updated_at`) VALUES
(1, 'fdgdftgdfg', '231112', '2021-12-21', '2022-05-02 18:56:38', '2022-05-02 18:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_25_202239_create_employees_table', 1),
(5, '2020_09_29_204653_create_suppliers_table', 1),
(6, '2020_09_29_214249_create_categories_table', 1),
(7, '2020_09_30_144042_create_products_table', 1),
(8, '2020_09_30_211814_create_expenses_table', 1),
(9, '2020_10_02_093726_create_salaries_table', 1),
(10, '2020_10_02_202045_create_customers_table', 1),
(11, '2020_10_03_191534_create_pos_table', 1),
(12, '2020_10_04_105052_create_extra_table', 1),
(13, '2020_10_04_194336_create_orders_table', 1),
(14, '2020_10_04_194547_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `root` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `product_name`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `image`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'i phone x', '111121', 'usa', '100', '120', '2022-01-31', NULL, '2', '2022-05-02 18:58:44', '2022-05-02 18:58:44'),
(2, 2, 1, 'monitor crave', '1221', 'japan', '231', '321', '2022-01-21', NULL, '10', '2022-05-02 18:59:53', '2022-05-02 18:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `shopName`, `created_at`, `updated_at`) VALUES
(1, 'austrian firma', 'firma@gmail.com', '12345', 'vienna', 'backend/supplier/1651503246.jpeg', '12321', '2022-05-02 18:54:06', '2022-05-02 18:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Abdulla rakib', 'admin@mail.com', NULL, '$2y$10$lqgaG6vcQfZkjSV..xR7n.AipD7o0OldRzk56ApTtyik9qPYENOwG', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `laravelauthclient`
--
CREATE DATABASE IF NOT EXISTS `laravelauthclient` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravelauthclient`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_22_211737_create_oauth_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_in` bigint(20) NOT NULL,
  `refresh_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdulla', 'rakib@gmail.com', NULL, '$2y$10$A3ILz/5WwyEhOOkd5Txdxe4DLyAqxeiNFJXr56IL/Jf.phIDzCgE2', NULL, '2022-05-17 08:22:53', '2022-05-17 08:22:53'),
(2, 'abdulla', 'abi@mail.com', NULL, '$2y$10$XQJ/0Yfje9oJQnZkV8LqYedqro5VyJe6ysbejuF2/cKCPwRIiuLpe', NULL, '2022-05-17 08:32:21', '2022-05-17 08:32:21'),
(3, 'humu', 'humu@mail.com', NULL, '$2y$10$uZtq1uWNFujqCKSNMw33QuvGhrDz95LxXDzPT24D/YG8CkAsklu7W', NULL, '2022-05-17 08:53:52', '2022-05-17 08:53:52'),
(4, 'rakibsister', 'eva@mail.com', NULL, '$2y$10$Xd1gvBeQ4pQL2f8YwbGn3ef8chG/lmnZGe2CLs7CETCvpqSUuZLvW', NULL, '2022-05-17 09:06:56', '2022-05-17 09:06:56'),
(5, 'xxx', 'xxx@mail.com', NULL, '$2y$10$nJ7HurNwAq.oDSruGJwTMedDNHJHMif233PPyNBcJV2pICeDdX3bi', NULL, '2022-05-17 09:38:53', '2022-05-17 09:38:53'),
(6, 'fdsfdsf', 'yyy@mail.com', NULL, '$2y$10$28Q98FWRSPZUie57IE.lMuArszmnlHj4YRZ.F0wHAECxR.yYErJMG', NULL, '2022-05-17 10:26:59', '2022-05-17 10:26:59'),
(7, 'xxxx', 'xxxx@mail.com', NULL, '$2y$10$zGz10WE426Fao99iNTM8IemQDLG5wWEJqqJLihnk1EB3zaLyV3kIO', NULL, '2022-05-18 06:45:29', '2022-05-18 06:45:29'),
(8, 'alrakib', 'rakib@arisecur.com', NULL, '$2y$10$DUAOgIJuLi4P1MnUyvxvw.5pOa31UPXaxHrnr7liSfMscWx6vBCH6', NULL, '2022-05-23 06:22:48', '2022-05-23 06:22:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `laravelauthpass`
--
CREATE DATABASE IF NOT EXISTS `laravelauthpass` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravelauthpass`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_06_20_101922_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00b40b6bc8a15769e69b6848f4e3b1efccfb70d1825ec2c8d88944579466a2ea2a11d54321ebbd54', 3, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:59:53', '2022-05-17 09:59:53', '2023-05-17 11:59:53'),
('092a7eb466370c4542154dab8f8f1adbf7e5b68cf22fdf923c64d18b345d457a98bb63cef4ad866e', 3, 3, NULL, '[\"view-posts\"]', 1, '2022-05-17 09:07:41', '2022-05-17 09:07:41', '2023-05-17 11:07:41'),
('0ecbe402e2b611e85a5aff0794638198c5bc1472fd9d864a71c84ba6303655a634f4f91c2d4ff633', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:34:18', '2022-05-25 07:34:18', '2023-05-25 09:34:18'),
('0ef4a33e40e2266e7b88f0da7bb64f3e36e538b2b1b00d16fe128b50fe0a2ba048230568610c64c9', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 08:50:19', '2022-06-01 08:50:19', '2023-06-01 10:50:19'),
('1003e3da91e111ec8a0f654f4d63a780ed7cb49807b35c45ea9a437d5565ecfaec717f2c0ef50bdf', 4, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:50:11', '2022-05-17 09:50:11', '2023-05-17 11:50:11'),
('1b0187183bf11898e5b6f47ece5bb7d23ca3e37d1a63a1fae45f19aaeb68ed23880e3c3acc775a70', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 11:00:38', '2022-05-18 11:00:38', '2023-05-18 13:00:38'),
('1ed085e036e86282e9dea8ab350273faf600c779bf6d40919fe8bca1bd3bb289ff27cc4077df2bce', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:32:41', '2022-05-25 07:32:41', '2023-05-25 09:32:41'),
('215da74d55877dfcfdb5ac402f09b7d3b78642d19a1d062205aadee49cf4c502d962e65d5d22cb5d', 1, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 08:50:55', '2022-05-17 08:50:55', '2023-05-17 10:50:55'),
('221450df031c0f49b9f4aac8694c393d893db29856ccf3943b7afbc89acc76b3c88acf5f8bc31371', 3, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:23:01', '2022-05-17 09:23:01', '2023-05-17 11:23:01'),
('235e77fed1bd3edf0d4f2f1420e3df010b5aa2d5acf8e362769393a9e89db418710f53ee0eb6c96f', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 12:58:38', '2022-06-01 12:58:38', '2023-06-01 14:58:38'),
('2caeee78de1b91669e8ed992d065e2c9d59947c54959adf9342a6646412730c57a9787f3c3b574a8', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:35:04', '2022-05-25 07:35:04', '2023-05-25 09:35:04'),
('33f15c489bec4c89da0bebdfb0f15144c08c81c40e8e72772b2c674304243835c1d32898bb481f6e', 6, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 06:53:06', '2022-05-18 06:53:06', '2023-05-18 08:53:06'),
('361fd702f8c169b6949c2fe82f6d5756c53c360e875d5064b00c7ebda305fb312e785f4f10c3e845', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 12:58:08', '2022-06-01 12:58:08', '2023-06-01 14:58:08'),
('3876152ef80a27ba2d6f87b9d8516980157b19638779a5207c7a4326e112e751992e727aa17d2e6a', 3, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 10:01:23', '2022-05-17 10:01:23', '2023-05-17 12:01:23'),
('42713f12385bb1294d53e2c65d83417a8c9c80dd95bf2b5e0402226c58999fa6b03c384b6f7e6d0d', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:21:48', '2022-05-25 07:21:48', '2023-05-25 09:21:48'),
('4cbe87a5e91b656122e74c0429930739e5196ee8f3640d67ecb355a48d08633c8b8ac91825d6a111', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 09:31:28', '2022-06-01 09:31:28', '2023-06-01 11:31:28'),
('4f9ce5099519c8a739f1325b4d9d59b228ffdebf85e343a38935deb9fe912b5d39931cfb6f2d521a', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:33:05', '2022-05-25 07:33:05', '2023-05-25 09:33:05'),
('59a7dbdcd37d2b211944e4fb208d5449f2a8e366d9f5345c6a1981fa47f45404e4f0b775d6f85b2f', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 06:58:14', '2022-05-18 06:58:14', '2023-05-18 08:58:14'),
('5d0bcb35a0e787828c98b0af4e5b1e5949ab36ab4f6fb6a05c4f36ff5c5e34b2796d518fef4a91a1', 2, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:04:46', '2022-05-17 09:04:46', '2023-05-17 11:04:46'),
('5d6bad7dbdd224f20570916207518c8c85577c89f94c205639744c772f12c564dc907e5e9d65a867', 1, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 08:43:13', '2022-05-17 08:43:13', '2023-05-17 10:43:13'),
('64587ff68613d9562c0fe1a21683aadb3fde8383b5eba02fc06242a03b622a9c0ee219cf406cbbe9', 5, 4, NULL, '[\"view-posts\"]', 1, '2022-05-17 10:28:47', '2022-05-17 10:28:47', '2023-05-17 12:28:47'),
('690dbed6bb00efabeba2e40df617833379a332c620e846482a85569d33112787f7d2c81af462d5ad', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:43:45', '2022-05-25 06:43:45', '2023-05-25 08:43:45'),
('69ac680265f7ceaa097504cb786c8b5f1a4bb2844a07438a236f64fb147b1d60eb4c7ea8b8296664', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 06:36:53', '2022-05-18 06:36:53', '2023-05-18 08:36:53'),
('7402003afee400e4c381af2d6a30601a7261f7e782636d8f4a9cbc3fb49917882f79048689666ab8', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:27:21', '2022-05-25 07:27:21', '2023-05-25 09:27:21'),
('825bc7640494cb39ca242d9116271c078d5b27ef5d8788f44376f4a0c0994cf1843599d563b96ed9', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 13:09:16', '2022-06-01 13:09:16', '2023-06-01 15:09:16'),
('840dfbe41179a7c4dc733e5911463dd565eaef5ed18f91e84833d4141eba7d9fd23e9000a1f75dac', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 10:32:17', '2022-05-18 10:32:17', '2023-05-18 12:32:17'),
('8acccbb0a8b7baa54c99403465f503eeb3c25d74ffb86b7450632145bfc9d29cc6bf44021fe91e5e', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:34:58', '2022-05-25 06:34:58', '2023-05-25 08:34:58'),
('8c5d72c44f3a9c5863cea1339ca33bddfadf66a69cd6fcae79b0007f73ce1cb432d30181c2496983', 1, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 08:52:56', '2022-05-17 08:52:56', '2023-05-17 10:52:56'),
('8cc7c71837c41d3683a265421d588e104e04b355259ea2b718b5f380f22ff92b35f05d2c1f8c1fec', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-18 05:40:05', '2022-05-18 05:40:05', '2023-05-18 07:40:05'),
('90d7364d3c51f60a82d1126c64c6a2057cfe78b6105fc828edf0275e9995b7c10ad6c65e0aa455a5', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:18:47', '2022-05-25 07:18:47', '2023-05-25 09:18:47'),
('9e332e5ac0430ff0f4a7ca22debe5c8674d550d3779b18c17c8bf3472eaee76644a927919bedf7f8', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:45:23', '2022-05-25 06:45:23', '2023-05-25 08:45:23'),
('9f1a2743393569b691e1b93624078950b3db9256f1afbf77d95199fecb5aa9fc6bb7450ee499ec4c', 3, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:24:47', '2022-05-17 09:24:47', '2023-05-17 11:24:47'),
('a680e476cd529bb5411c2e3e30d7ade8e5a8ddbee8646cd6ac19c0c4a5e0ace6a8e3d18c33a6ec7e', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 13:04:54', '2022-06-01 13:04:54', '2023-06-01 15:04:54'),
('a97e4f06020980fb9b90d86c9e5054f0c75f0e79ccd564cb6a9201135a8e3196a045a3a4421aea5b', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 09:31:05', '2022-06-01 09:31:05', '2023-06-01 11:31:05'),
('b518a024304f7d498c026d045f85538b0cc87d08c108bf155ee07574e74b7727788d33f86b2f7da7', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 08:44:01', '2022-06-01 08:44:01', '2023-06-01 10:44:01'),
('c0beb2c0738c70632c52c44aea04d4a67ab78683fdf5ea9e576d8eb80307cbfac6566f2b9913a9fb', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:31:18', '2022-05-25 07:31:18', '2023-05-25 09:31:18'),
('cf3c77d4529e2196fe5144344a55a82310a765e3649379862ad1d2b721d197ed271ed701955b6854', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 08:48:32', '2022-06-01 08:48:32', '2023-06-01 10:48:32'),
('cfc3bd3841358e9391c4c89b48b1126fb947c7c93be71c9f88f155c6ebbc6d654f87dfdb5e3017cf', 1, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 09:36:46', '2022-05-17 09:36:46', '2023-05-17 11:36:46'),
('d10ee7cd01fe427b6d9a1e4d8708f543c34456e481a65f402b6fbc7ea17400ee12e98fa0c59f07a8', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:31:05', '2022-05-25 06:31:05', '2023-05-25 08:31:05'),
('d37d8123049c0c049ca5bc6b7314263a3c105bdf79b94c2acc5a5fbbff3257161aa42c51ca66e7b2', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 08:11:57', '2022-05-25 08:11:57', '2023-05-25 10:11:57'),
('d5e07a4b206d04969288a72371a86bcac249a372f067bc4703a9692455fc77ea226a1fec9029532f', 2, 3, NULL, '[\"view-posts\"]', 0, '2022-05-17 08:56:01', '2022-05-17 08:56:01', '2023-05-17 10:56:01'),
('d81edc936c6464e3e0febea99e9418294dad4241146f2b4bccdb32d70f57e831dd0e3ad3afaff682', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 13:08:28', '2022-06-01 13:08:28', '2023-06-01 15:08:28'),
('d96cb496466ad6b1cc2c666afe61f110e8ed84cd623ed6663d40bb7e3c74de5b0d84bd856e81d79a', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-06-01 09:32:25', '2022-06-01 09:32:25', '2023-06-01 11:32:25'),
('e499abd83d1e82d0dc39185fb9bffe083fd24b32911bf46f8bdec03e20360ebfa9b73ad69bfdc52b', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 07:20:29', '2022-05-25 07:20:29', '2023-05-25 09:20:29'),
('e4b84bdb540476c4a80f95f2effe8d8b4ffd4413a2633924358523019245a6ed30ec54f7a24f69cd', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:33:11', '2022-05-25 06:33:11', '2023-05-25 08:33:11'),
('e9216d0312155cad89e0db1d0cdb8591b302f6ba5d3aa8a8abc38c5623955e0dc8865c9c81f977ea', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:46:35', '2022-05-25 06:46:35', '2023-05-25 08:46:35'),
('f3f92a2dac8cf3be78b79a439a90bc8feaba16d9de179f3c3db869b459759d809f0d477cf86a8671', 3, 4, NULL, '[\"view-posts\"]', 0, '2022-05-25 06:42:12', '2022-05-25 06:42:12', '2023-05-25 08:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('00490950171200be0175c1e5b7912feab5af8adc3368b0d3025ca8e3a46e8ce977417f31d8a72f8e', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 15:14:53'),
('0c7bbea86e121319ded11c0de8b09e366af9e07175793aa76f3f74540edaf771082a0b8050cf09f8', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:32:40'),
('11868ef527c5bee1395510df840352e34946ff731f208bf9bae2ed329237470ab9aaf2afb1903442', 3, 3, '[\"view-posts\"]', 1, '2022-05-17 11:17:39'),
('1b12f281f599e03a535896b8a0aa284ff7eb97235637d83e13bf928e80934febb0d159e0d6b997a7', 1, 3, '[\"view-posts\"]', 1, '2022-05-17 10:53:12'),
('20982510417b03a9830b4cd05928c6ccc73e812a73eb82102a89244dfb2d9332fad8dbec7b35064b', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:31:15'),
('2291e66a88d4ef01d51bab55c033fec534c4e30403adc21c37eb7df056b70f59ea456771c8d6ae6f', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:31:49'),
('26ca29aa2e4609add6cfbb05c5cb9a22fb075d6fb598fd04184502a891062aa0b41447bcaafb52fa', 3, 4, '[\"view-posts\"]', 0, '2022-05-25 08:39:16'),
('270ac274ed2610657c1569114d4a291d17cc41ac661fb13ac8bdd07315eec51ec73a0b85fdf1d37c', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 15:19:15'),
('2a3556ba577ed6e147d58e5c97f2ac0d8b3942dfd1d38eff29e5ea88112b2dce655fd5a06ddc4442', 2, 3, '[\"view-posts\"]', 1, '2022-05-17 11:06:00'),
('2b37cd76e4b867a981bcb1521fad357228880ef9f889747c433c5aee1a34e39122b572b8b0721b3f', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:44:57'),
('33fea8b0ae7c89e268d1834e5a118de7564ee6779867c77e277c9eaae2b8e14b5cf2e32e1650f3a6', 1, 3, '[\"view-posts\"]', 1, '2022-05-17 11:46:44'),
('36a155e9787f0370f027584198687b456e32959d540c5ccb5d4bfde39aca47c0aebc5cf77de82a35', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:43:04'),
('37866d86bf81341a597179ae183e9d4819a37ee74409324b1bf06423ea1f81b18b067580ee19e9e1', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:52:11'),
('3b41c4f563099e2f31408bc4b61ff691759493509189b489f1f7b5185da6e5f50915d17ff1f6bcb8', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:53:44'),
('43164c1d71df60259e5fe6b08c7ca09108f18ab7e3e20776abc8c1a339709dff8f8a1882837b8290', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:44:17'),
('44494de72b67dc7d975bfb08592a5acbfafcf87641e81ae5cf566ae7a25b5e0cde8f3cbce7f5128b', 6, 4, '[\"view-posts\"]', 1, '2022-05-18 09:03:05'),
('479c71d289c4981d73e7bf7866a6a09701579f128682d6f43872a2878ad887be4de52111fe1800a6', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:31:45'),
('49eac25115376c3d5d639fc3621fb315e1e395c45e1c57eb0bdc291f761298be5b0118008d6fbc10', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 10:21:56'),
('4a4998c22c9359e13d8f0d499cecb259588df70746c4d3552449f6635774f6c9dcc36a7a8c7bebae', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:43:09'),
('69676306df711bb81b0d91fb9aa9876a41adfc341cb3ba4c87f2de1d6fb0760dc88233ee28483971', 3, 3, '[\"view-posts\"]', 1, '2022-05-17 12:11:22'),
('69a3c1c19fc2a5028d33caee84642fa365a53078b1bee2697666b2903f53130a807984428ec31919', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:29:38'),
('7096b76a0afdd91a614cba3ba166360b5f6e1d9ddbc1676b543badce4c0772c6654cd94793887d09', 3, 3, '[\"view-posts\"]', 1, '2022-05-17 11:34:46'),
('743f34fd7d838632d93270395c0c20aea82f7c0bc1369f895d491a397b7093a7a9d9a8d3cd75efcc', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:28:56'),
('7708798b6f3af369bcf55e29279fd014c6123799fc7688a4dbab956390cadb9f6132924e0120dd7c', 3, 4, '[\"view-posts\"]', 1, '2022-05-18 12:42:16'),
('77fd6fa8c6e8b725454709c15b74c39c9a87f5cf99867cdb4235c4aba9b168782cd2e81387535645', 2, 3, '[\"view-posts\"]', 1, '2022-05-17 11:14:44'),
('7baf4a508b382b2b7a532a319d5126d8939c5d3db2e4a91fe8071a56d1f33ecb682df250636f275d', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:41:17'),
('7dffbf8d122d3cc842f4638bfe659874211b26eaf7e90d83f2b316051a3089e4853f5a16a9ba60fd', 3, 3, '[\"view-posts\"]', 1, '2022-05-17 11:32:59'),
('9184ebc429f9d7727aa06a4861d1e4937cce2b3c2671beaac743f6b35096e797e30118c10e99b91b', 3, 4, '[\"view-posts\"]', 1, '2022-05-18 09:08:13'),
('924e135cb2c71f16acc0a66257f65d0308855c186cbcab7cad890559771d42889ea2fd95690b32e3', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 11:42:24'),
('97bb5a2145056fcc07a98830a51bd64247ab00aa299c191dc98cb07ce829fc435b49ab8c39a5d4da', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:34:50'),
('9b49620d637568c85b7a3a1bb7678a162fab394379603e0760e990708fa6ba18c6bad234865c46c8', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 15:18:27'),
('9d65e06a547746c2798f18d30e833e10ddc13caebb8c3f2535128218fcb5a3a31c247a6889a4bbc0', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:30:28'),
('a7c2586f30fa9e8a061d091def1396d38e2d2f83d7d93145ed878d68b359facd4c2617db1a2950ce', 1, 3, '[\"view-posts\"]', 1, '2022-05-17 11:02:55'),
('ad7eea7872aa9e8ca44f9aed967565128d8c2d83be0a7230a12d10598dea8c5f2338ad616ada279f', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 11:41:27'),
('b4f25b92d8977f9f60f274823b6b6d266befce814320948ea3c73d1cb541135601d068d4f7003e4d', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:31:47'),
('b6e938e4d8736968c9ee9a22acd2ee114f3a19e8f0a01870799de8808508b31ab9e39e988aa630d8', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 11:41:04'),
('b99bd13d7e69dfb3eee3c63a775ed74844f6201ba2a50de0b0c60526e5a8c7d553d04518f528b9b1', 3, 4, '[\"view-posts\"]', 1, '2022-05-18 07:50:04'),
('ba8630745d6d37ce2fec88af6caf0a769b214d0b0120bfecd331ab93fe4b5b4d22da90d8818c2eaf', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 15:08:07'),
('badbc3f38571bc826c45a8f0827b8f7006b50da818196ec30a76f0f20a727c42cc7eff582b0cdd1e', 3, 4, '[\"view-posts\"]', 0, '2022-05-25 08:38:34'),
('bbbaa13aaed9c0816dcdc0b0673fb3df2bff0f69183a7156def0fd48721a83af3fe13ad30b2b469a', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:37:20'),
('bbd6ca2bfbd5c1cb209412f406a856258a9a0d5ec3936f849f09650531095c1c770faf7a75a9033e', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:45:03'),
('c04440e37eeac06268f5d90843379c7145c3883c106fd73d111d992522fd516fc22b62742c6e7c74', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:41:04'),
('c64636ef82365e9b44d704c9f6c53d413ef9ee55a09f69bed20ded7239a6d00904b6c2090f94d4de', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:34:56'),
('c946551fb7cb13eb7a0c15ac07d8704ee82d3cdb90b48cd56522d947b04474ab445e1a6cc6ad4508', 3, 4, '[\"view-posts\"]', 0, '2022-06-01 11:32:57'),
('ca21c84e9a0b9a2ecdc3f39d99d8c818f9c35a76c64654a464689e1e24bcd7a7fd1c660afb813481', 3, 4, '[\"view-posts\"]', 1, '2022-05-18 13:10:37'),
('d2fca75ed5671cfd9af5d9465d48b96704122c14dfbebc36e433ae278b631a0f155f75e1fd369d08', 4, 3, '[\"view-posts\"]', 1, '2022-05-17 12:00:09'),
('d4bff6e82ae487437f47374720b2b15a17c1957ba4a19f0e79348f4bf3f3fbd75a2a8c6980967102', 5, 4, '[\"view-posts\"]', 1, '2022-05-17 12:38:45'),
('dada463a52140ee79ba61de1ecb496ff916dd4d41ff72fa4a7c7ed370c7429588a2ce89eef6bc8b2', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 10:54:00'),
('dd4d0d41ab2222b1386a846912cb200b3c78016146e6587bf08c52348d17cdca4c19ea67d19a8a42', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 11:00:17'),
('df355caba538469159e7047671fda1fa368dede951a40fb534dff9c76bb6e0febac12b96d89e020f', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:28:46'),
('e4a5013c780671d992db937af62c5af85238b37408af59463a3ed4e016be0f02564cf707cda1d343', 1, 3, '[\"view-posts\"]', 1, '2022-05-17 11:00:54'),
('e62a37f3b4cfe8d9371c4b4664799055aa5e00ba235405b4ab73268798a308d280304d4893f60b7b', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:56:34'),
('e94574040b7b9883d592c7dd71a60fa5960a7de590f288f3b7a2403b3cc6b01e3db4444a430535c3', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 08:55:22'),
('eda61c57a9c97cfc7ff6a811ded763458de7534a99f8a5d5267cf4b5127b52d9f003eda857d46b7a', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 15:08:37'),
('f12d43a0cfc71609fc3dd7e81189f2241c8361028365b68c0553405b07ff90f8dd069dae03c909c1', 3, 4, '[\"view-posts\"]', 1, '2022-05-25 09:42:40'),
('f7671f18f5814951555708eb5a6d3c3fa4fcca3b1eb3d700fd009b0b0cfa58669cd7d3c5a1994a60', 3, 4, '[\"view-posts\"]', 1, '2022-06-01 10:58:31'),
('fa6ff035298e4af45dab986458a57f5ae5a98480c9bc5535b3a823ea7d974f3c098a1fbb3a46e32c', 3, 4, '[\"view-posts\"]', 1, '2022-05-18 08:46:52'),
('fd4ecfde5ccd4d2400b604e73236918e9a427f774b65add63f8ba95a5875dce9dda74764b3dd5d53', 3, 3, '[\"view-posts\"]', 1, '2022-05-17 12:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '8LQAUSqFlwBzjvA9ckR8qMxgy1s5WVs1TKjajMGz', NULL, 'http://localhost', 1, 0, 0, '2022-05-17 08:29:40', '2022-05-17 08:29:40'),
(2, NULL, 'Laravel Password Grant Client', 'sL8qFZgxfg1Fl3Khi0euWFUswxUAyYVuH63sr2Ko', 'users', 'http://localhost', 0, 1, 0, '2022-05-17 08:29:40', '2022-05-17 08:29:40'),
(3, 1, 'rakib', 'UAahVEtua3wK9d9kyMVz5FxgF0poZEPw2CFOAA5b', NULL, 'http://localhost:8080/oauth/callback', 0, 0, 0, '2022-05-17 08:36:15', '2022-05-17 08:36:15'),
(4, 3, 'rakib', 'xh0heQNqu7U5l27xNDq4EZiXCHgcGYRlCrd0XQDQ', NULL, 'http://localhost:8080/oauth/callback', 0, 0, 0, '2022-05-17 09:21:43', '2022-05-17 09:21:43'),
(5, 5, 'rakib', '8Pw0BNxS3NXahDwvu0qt4m6DzFBsSThIqE8NrT5I', NULL, 'http://localhost:8080/oauth/callback', 0, 0, 0, '2022-05-17 10:30:03', '2022-05-17 10:30:03'),
(6, 6, 'ameise', 'B6SnedThfs8ue7ZUwoBWbwTmHOXYrjBUkJeZTBZy', NULL, 'https://connectordev.arisecur.com/oauth/callback', 0, 0, 0, '2022-05-18 11:13:52', '2022-05-18 11:13:52'),
(7, 3, 'rakibnew', 'UPnWbEH3EamDktbdtLNpBisKUHYEY58AvGlantwi', NULL, 'https://connect.arisecur.com/oauth/callback', 0, 0, 0, '2022-05-23 06:15:11', '2022-05-23 06:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-17 08:29:40', '2022-05-17 08:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('09911eeb4e24a3e2dbf896ab81a5f53475c41cfa2e122d5be946d01b71a2e47e64c9a88dc9d4ab26', 'd37d8123049c0c049ca5bc6b7314263a3c105bdf79b94c2acc5a5fbbff3257161aa42c51ca66e7b2', 0, '2023-05-25 10:11:57'),
('0dc65d95acabcad928b928241e983828e8d10fd42307bffaebc8cba1c41ab7d8a480f13de47a6be6', '9e332e5ac0430ff0f4a7ca22debe5c8674d550d3779b18c17c8bf3472eaee76644a927919bedf7f8', 0, '2023-05-25 08:45:23'),
('0fd952e5af6141d911228d8c7567a1f880834aa7e1f07ffcf898bc917ae921d9ed7ed50754c4bfda', 'c0beb2c0738c70632c52c44aea04d4a67ab78683fdf5ea9e576d8eb80307cbfac6566f2b9913a9fb', 0, '2023-05-25 09:31:18'),
('13ae68c29912ff55698a720fc229204adf60a3bd4f51f456f8161757d6a24d1d463f535adf6409d7', '33f15c489bec4c89da0bebdfb0f15144c08c81c40e8e72772b2c674304243835c1d32898bb481f6e', 0, '2023-05-18 08:53:06'),
('14670352f694d886dcdcd6f4aa13b39a9dc41198ed19b4eea3a1474e12102c9a9b743419b10b848c', '825bc7640494cb39ca242d9116271c078d5b27ef5d8788f44376f4a0c0994cf1843599d563b96ed9', 0, '2023-06-01 15:09:16'),
('18357bb6d9f876f387674f3b88053ea29ac58791d2f6f61c1c26727a28b88431d960d87329242bb8', '8acccbb0a8b7baa54c99403465f503eeb3c25d74ffb86b7450632145bfc9d29cc6bf44021fe91e5e', 0, '2023-05-25 08:34:58'),
('1b4a4f78a3f7f81e58b2da00a560fa9a50523d0690eed55ea4a0b482927b52fee4cc24248732b664', '840dfbe41179a7c4dc733e5911463dd565eaef5ed18f91e84833d4141eba7d9fd23e9000a1f75dac', 0, '2023-05-18 12:32:17'),
('1b820f6bb1576da9ff70468aea528d9dbf8a25e6514cb485d4d8fa1fc936c0927a7a101fbae152c3', '1003e3da91e111ec8a0f654f4d63a780ed7cb49807b35c45ea9a437d5565ecfaec717f2c0ef50bdf', 0, '2023-05-17 11:50:11'),
('2af53f2dcd86296205cee2cf7dd73253aa1288a9a3d38882d2393f9d21fcfac0c32b228fab6ff4a3', '221450df031c0f49b9f4aac8694c393d893db29856ccf3943b7afbc89acc76b3c88acf5f8bc31371', 0, '2023-05-17 11:23:01'),
('3f6159689bf1f65eaa5f1ce4e812e8fcdb39e176d07e489baabe30a349dbf408a78a3c750666c61c', '092a7eb466370c4542154dab8f8f1adbf7e5b68cf22fdf923c64d18b345d457a98bb63cef4ad866e', 1, '2023-05-17 11:07:41'),
('4111314d53c7097ff29bb862b0b7b03a0de148f2a354d6e5c96092abafe434d0aa69e7515dc4b458', 'cf3c77d4529e2196fe5144344a55a82310a765e3649379862ad1d2b721d197ed271ed701955b6854', 0, '2023-06-01 10:48:32'),
('455906cb07fff1db0d0df15e88e0059294978ddd1ba938b9d1c670038b06d4696ee4471556e2bdd5', 'f3f92a2dac8cf3be78b79a439a90bc8feaba16d9de179f3c3db869b459759d809f0d477cf86a8671', 0, '2023-05-25 08:42:12'),
('4995e1de2f4ca74aebe5d675defc5123d26bd8af68f02e742b053b49d6e671950a44b0d1f6cd6f46', '1ed085e036e86282e9dea8ab350273faf600c779bf6d40919fe8bca1bd3bb289ff27cc4077df2bce', 0, '2023-05-25 09:32:41'),
('51ba141941ea377cf8fd676cf4d22d42e08794817b5362155b10aa847b5e3e80a2b0ca4da5d1e872', '90d7364d3c51f60a82d1126c64c6a2057cfe78b6105fc828edf0275e9995b7c10ad6c65e0aa455a5', 0, '2023-05-25 09:18:47'),
('52624800f236956060724ee1f65585c182ebecb4346a94157eaf73b7cbc245fae1cdf0522fc60011', '690dbed6bb00efabeba2e40df617833379a332c620e846482a85569d33112787f7d2c81af462d5ad', 0, '2023-05-25 08:43:45'),
('5bda9e6618106a7eeee9b623350c9921801ea43282d36dcc8685362202289ce808a2acf085793e60', '3876152ef80a27ba2d6f87b9d8516980157b19638779a5207c7a4326e112e751992e727aa17d2e6a', 0, '2023-05-17 12:01:23'),
('5dcc756c55864929fd3495c09c74e89778c6bca2474484b84851f12ad2bf9c82257a5d7ee7a50ba8', '7402003afee400e4c381af2d6a30601a7261f7e782636d8f4a9cbc3fb49917882f79048689666ab8', 0, '2023-05-25 09:27:21'),
('5f93c4734f7cccae439fc2ff49eab65ab0e0ed84a3724cf8367091169fdec80baa63201d73452746', '64587ff68613d9562c0fe1a21683aadb3fde8383b5eba02fc06242a03b622a9c0ee219cf406cbbe9', 1, '2023-05-17 12:28:47'),
('71cedb640a7e3bf269bd9921f2cf46a29629a8e3f7a1f2fab4c4772a4a919460cb734a06675af9b9', '9f1a2743393569b691e1b93624078950b3db9256f1afbf77d95199fecb5aa9fc6bb7450ee499ec4c', 0, '2023-05-17 11:24:47'),
('766536d541d346d4672dcfe8febc0b9692a98b8c88994c2c89dda3888d75625cfaef18f031ba848c', '215da74d55877dfcfdb5ac402f09b7d3b78642d19a1d062205aadee49cf4c502d962e65d5d22cb5d', 0, '2023-05-17 10:50:55'),
('788b392263db0aa305eb52e422f9923066f4401cd019bd5b5278e3f7b7d1502f4f92ea9b6564cbf0', '42713f12385bb1294d53e2c65d83417a8c9c80dd95bf2b5e0402226c58999fa6b03c384b6f7e6d0d', 0, '2023-05-25 09:21:48'),
('789902bcf5ce28057bccf5a51de9f68d715f09a28fb09dd806a57852cdef2ab1cec1b177e45e80e2', '361fd702f8c169b6949c2fe82f6d5756c53c360e875d5064b00c7ebda305fb312e785f4f10c3e845', 0, '2023-06-01 14:58:08'),
('789fa891190b38b2bc0e40ea9c0af2897d6e04b1b4938e339834448f630c4494952da0aeaef0ba32', 'a680e476cd529bb5411c2e3e30d7ade8e5a8ddbee8646cd6ac19c0c4a5e0ace6a8e3d18c33a6ec7e', 0, '2023-06-01 15:04:54'),
('7b86a09a01700ea17b4722456fc5d6749e8dd1963c2e336bb41c2ccc978c920f57deada7fe210f6a', 'd10ee7cd01fe427b6d9a1e4d8708f543c34456e481a65f402b6fbc7ea17400ee12e98fa0c59f07a8', 0, '2023-05-25 08:31:06'),
('8c25fd1f80fd26e450f53feece151b7e0bd3d80b00381321c355400d4662566345a64ed49d75a57d', '2caeee78de1b91669e8ed992d065e2c9d59947c54959adf9342a6646412730c57a9787f3c3b574a8', 0, '2023-05-25 09:35:04'),
('8e4c9a812a6fdeb4e3b98f390ef43f8de8cb80c8162dc5b7e7f7584c25be12ac1ea572a568304bea', 'd5e07a4b206d04969288a72371a86bcac249a372f067bc4703a9692455fc77ea226a1fec9029532f', 0, '2023-05-17 10:56:01'),
('9ea2258d85a53774070b6547f45f86e2e7e9b7b032e3348c49d41de01f17957d1b06d8dfd6141a23', 'd81edc936c6464e3e0febea99e9418294dad4241146f2b4bccdb32d70f57e831dd0e3ad3afaff682', 0, '2023-06-01 15:08:28'),
('acf762c4c1a1427280256933c1fe25bee027696458a5572d846d176a74e83fbd4f79093ce2029df7', '0ef4a33e40e2266e7b88f0da7bb64f3e36e538b2b1b00d16fe128b50fe0a2ba048230568610c64c9', 0, '2023-06-01 10:50:19'),
('b2a0e04f1448913b9fda8949b0ee23863a75663adb967b21b2b22371cd07845d757cdaeb6f95e7b4', '4cbe87a5e91b656122e74c0429930739e5196ee8f3640d67ecb355a48d08633c8b8ac91825d6a111', 0, '2023-06-01 11:31:28'),
('b4655468cb876699de24df21a50f7d048212f8085e78f583059fb54cfd6a5d9aa989890af9e2a07f', 'd96cb496466ad6b1cc2c666afe61f110e8ed84cd623ed6663d40bb7e3c74de5b0d84bd856e81d79a', 0, '2023-06-01 11:32:25'),
('b5705a8917d27b0b9873234ed7e95486de7aef46f07a731c9d4219c697f14f134464a6ef4ad55fe3', '0ecbe402e2b611e85a5aff0794638198c5bc1472fd9d864a71c84ba6303655a634f4f91c2d4ff633', 0, '2023-05-25 09:34:18'),
('b97174f0dd8cd87ffcfd10f65c6f4e56e1fd01d00486aeb9885c4b7b60f550475ae9e75bdfb1101e', 'e9216d0312155cad89e0db1d0cdb8591b302f6ba5d3aa8a8abc38c5623955e0dc8865c9c81f977ea', 0, '2023-05-25 08:46:35'),
('c81c7b368f66b1f12de05bfafc1d37a7a1ad6c439f528fcb5b2dcbc3ac6f391500cd77ef5783af81', '8cc7c71837c41d3683a265421d588e104e04b355259ea2b718b5f380f22ff92b35f05d2c1f8c1fec', 0, '2023-05-18 07:40:05'),
('c92b2b933290dccf25f2aed9c5ef10c6fa4bcfec7c10cb2f327e75ac17a5b81639fbe9cc5065e097', 'e499abd83d1e82d0dc39185fb9bffe083fd24b32911bf46f8bdec03e20360ebfa9b73ad69bfdc52b', 0, '2023-05-25 09:20:29'),
('c9ef16f99fb677d03057823620af5cfd809983eeae882b53ef71badb34b0f9ddacf2f6dfd1d55eeb', '00b40b6bc8a15769e69b6848f4e3b1efccfb70d1825ec2c8d88944579466a2ea2a11d54321ebbd54', 0, '2023-05-17 11:59:53'),
('ce7538e6af45747327f11b27d01a08433e5f4ec550cef18c271d7b07c2a1f511b8c9c08aa461efe5', '4f9ce5099519c8a739f1325b4d9d59b228ffdebf85e343a38935deb9fe912b5d39931cfb6f2d521a', 0, '2023-05-25 09:33:05'),
('ced5efedd8626f8bf6ba6126a40dc3753baafbc9fcbbfd6117e2b69db566c9d253aea87dd2b600e6', '59a7dbdcd37d2b211944e4fb208d5449f2a8e366d9f5345c6a1981fa47f45404e4f0b775d6f85b2f', 0, '2023-05-18 08:58:14'),
('d43bc5c3c19006c8179bb5d79b8a97b7cbf5e875d8a5002b4753f31f45b592f8324aa30423dda691', '8c5d72c44f3a9c5863cea1339ca33bddfadf66a69cd6fcae79b0007f73ce1cb432d30181c2496983', 0, '2023-05-17 10:52:56'),
('d60067c3afd34d0d2c3f9f84ac2d30ef9489f87bb0874c402d2bebd3a9a9553475c73cc0dd0c50c0', '235e77fed1bd3edf0d4f2f1420e3df010b5aa2d5acf8e362769393a9e89db418710f53ee0eb6c96f', 0, '2023-06-01 14:58:38'),
('d7de4b474d89ebbd366eb4dd2a73f2ac1b95df43b98002190c73a7c1484e2af17189ea10aebc21fb', '5d0bcb35a0e787828c98b0af4e5b1e5949ab36ab4f6fb6a05c4f36ff5c5e34b2796d518fef4a91a1', 0, '2023-05-17 11:04:46'),
('d9bf2fdab247a47e141cc2c8fef5ef2ebf3628ab6a8c3058a1eb7130bccf6df6859c4192742397aa', 'e4b84bdb540476c4a80f95f2effe8d8b4ffd4413a2633924358523019245a6ed30ec54f7a24f69cd', 0, '2023-05-25 08:33:11'),
('e283d87d2f7c840d1b2a32b8ff617587673783265980f02bb5a7c89531d8e323a49a89b08584c22c', 'b518a024304f7d498c026d045f85538b0cc87d08c108bf155ee07574e74b7727788d33f86b2f7da7', 0, '2023-06-01 10:44:01'),
('e45b4e50b28d14692924ffba23fee2ee117a13b3aef93a2b2d824506a43103af88e94cb88b0c9cd8', 'a97e4f06020980fb9b90d86c9e5054f0c75f0e79ccd564cb6a9201135a8e3196a045a3a4421aea5b', 0, '2023-06-01 11:31:05'),
('e6096db6e36ea0b3bc0f4388c9a5f40768d3a7314380be932a7c6574ee662467dc704f9cb4fd039d', '5d6bad7dbdd224f20570916207518c8c85577c89f94c205639744c772f12c564dc907e5e9d65a867', 0, '2023-05-17 10:43:13'),
('f54b38a6ca18c87c3f51ad6712232ba146edd4e9e1def6439b57e1ac4137847deaafb2e7ffffc06e', 'cfc3bd3841358e9391c4c89b48b1126fb947c7c93be71c9f88f155c6ebbc6d654f87dfdb5e3017cf', 0, '2023-05-17 11:36:46'),
('f6216aaa97fac774ff00db22bd72fefa61055f6e490065fb734bde3d3ac3e074b7fab86d13a73c72', '1b0187183bf11898e5b6f47ece5bb7d23ca3e37d1a63a1fae45f19aaeb68ed23880e3c3acc775a70', 0, '2023-05-18 13:00:39'),
('f9b1ea13c0816478d5356cd751168d859f1668e64bb7267362c582256b857171117a9d3310d9278b', '69ac680265f7ceaa097504cb786c8b5f1a4bb2844a07438a236f64fb147b1d60eb4c7ea8b8296664', 0, '2023-05-18 08:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdulla', 'abi@mail.com', NULL, '$2y$10$fvf86OCBamVjnnUIgIEDkeWDrYrdsWjdmMANzJYAp4wNuxc9EFvUG', NULL, '2022-05-17 08:31:10', '2022-05-17 08:31:10'),
(2, 'humu', 'humu@mail.com', NULL, '$2y$10$2SljY/IsRh9FGOjaQTJ4bOIRBpP0FFU8/pq/3o9Tz2bsEjd7IMpUK', NULL, '2022-05-17 08:54:53', '2022-05-17 08:54:53'),
(3, 'eva', 'eva@mail.com', NULL, '$2y$10$uGvY0Eb00HxtyfBeOv6HiuftrTIZQAa06uE/w1C1ZCVbnA/P/vTIu', NULL, '2022-05-17 09:05:50', '2022-05-17 09:05:50'),
(4, 'xxx', 'xxx@mail.com', NULL, '$2y$10$K47kOQJwQ6NA6j0jhwSMKeCJPiH6R5xW9Z/9r.Vyn2/SwGHtvw7YS', NULL, '2022-05-17 09:38:07', '2022-05-17 09:38:07'),
(5, 'yyy', 'yyy@mail.com', NULL, '$2y$10$srs18ToNZiLIkwlwoW50JO2PObDLPv76xLofJkOHnX8Ld3V9axGNy', NULL, '2022-05-17 10:26:23', '2022-05-17 10:26:23'),
(6, 'xxxx', 'xxxx@mail.com', NULL, '$2y$10$s4NLL9PGX/hhDyY.yrvq0e7onJvDetAoLp.J11x86I1F3w9Q/1J2m', NULL, '2022-05-18 06:44:43', '2022-05-18 06:44:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `laravelpassport`
--
CREATE DATABASE IF NOT EXISTS `laravelpassport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravelpassport`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_05_17_083037_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3ad763b02d5f89d27535afea3cc4adc965eeb74bb7eb7370c668c3a031cb3df6c5ef4784a768c1b7', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-05-17 06:54:43', '2022-05-17 06:54:43', '2023-05-17 08:54:43'),
('4ea34b2e08a350180e5dd4cda80bdb05b4fc23d403b2ef2692903a46b2a66d3a434ddefcc64113d8', 3, 1, 'LaravelAuthApp', '[]', 0, '2022-05-17 06:56:48', '2022-05-17 06:56:48', '2023-05-17 08:56:48'),
('c2739a7c42ac2b1c014c7cb917eb2ed21b36887f01a08b4119e4f49cc7709bc8f24c19e271542a57', 1, 1, 'LaravelAuthApp', '[]', 0, '2022-05-17 06:53:12', '2022-05-17 06:53:12', '2023-05-17 08:53:12'),
('e4d5c344b721a52e5d854bc4aab75a2ca8758c8584b3e7d3badf42fae5c50c4f03b170e0e7e63df6', 3, 1, 'LaravelAuthApp', '[]', 0, '2022-05-17 06:58:50', '2022-05-17 06:58:50', '2023-05-17 08:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kYuTBZSB9yUsjXeAcFXa3Ws8p7XzHZGRO4hRXUDV', NULL, 'http://localhost', 1, 0, 0, '2022-05-17 06:26:31', '2022-05-17 06:26:31'),
(2, NULL, 'Laravel Password Grant Client', '5C7zFLD7T5dVnBY5f252jo0ipYenPQiweWmlHyzO', 'users', 'http://localhost', 0, 1, 0, '2022-05-17 06:26:31', '2022-05-17 06:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-17 06:26:31', '2022-05-17 06:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'abdulla rakib', 'this is testing from abudlla', '2022-05-17 07:04:01', '2022-05-17 07:04:01'),
(2, 3, 'abdulla second post', 'this is the second abudlla', '2022-05-17 07:20:40', '2022-05-17 07:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rakib', 'rakib@gmail.com', NULL, '$2y$10$bQ9yazUBT96iOulHNCNMgORrX3F68SrJ4e.WNXB43hbu5D2TzaAua', NULL, '2022-05-17 06:53:12', '2022-05-17 06:53:12'),
(3, 'abdulla', 'abdulla@gmail.com', NULL, '$2y$10$efjRGSM3XBBkv.ahAqGUCOzmiyhvu4HLqNJBgjsQ4ufxIn2HhTsuy', NULL, '2022-05-17 06:56:48', '2022-05-17 06:56:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `laravel_custom_auth`
--
CREATE DATABASE IF NOT EXISTS `laravel_custom_auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_custom_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_sessions`
--
CREATE DATABASE IF NOT EXISTS `laravel_sessions` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_sessions`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_07_111323_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Agb3DJEviqAI29boaBceiAuNThRecuYTHXKNXYpF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibGhDZTZjYzRyN0NQdDRaWW94YU1YY2w2MVlCQkN1OU1HSnA3V1hCUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJ1c2VyIjthOjE6e2k6MDthOjI6e3M6NDoibmFtZSI7czo3OiJhYmR1bGxhIjtzOjU6ImVtYWlsIjtzOjE1OiJyYWtpYkBnbWFpbC5jb20iO319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1653992843);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdulla', 'rakib@gmail.com', NULL, '$2y$10$s9vlyTluVcFNC14zehow3O0RTzTnyEv4WoR0jEgRoKbeu.KMilIZ6', NULL, '2022-05-31 08:27:23', '2022-05-31 08:27:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `lumen_rest_api`
--
CREATE DATABASE IF NOT EXISTS `lumen_rest_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lumen_rest_api`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_05_16_101846_create_posts_table', 1),
(2, '2022_05_16_122721_create_users_table', 2),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a9a2694c09cc2cd7a73e901d5cee0d3163bcc5f988c589ab4867665f4d209b4e4463d7d9038cf97', 1, 16, NULL, '[]', 1, '2022-05-17 07:37:57', '2022-05-17 07:37:57', '2023-05-17 07:37:57'),
('1a3947d0ded21995c8b9f58222593798ecf7814505d1c9926fdd3091392d12039307a12f2a57b178', 4, 8, NULL, '[]', 0, '2022-05-16 14:35:36', '2022-05-16 14:35:36', '2023-05-16 14:35:36'),
('1a7b3df6a2bb7dead58601278bc22200437ddfe6598ef48f6bf8514300a716ee87babd03cd5b357c', 1, 16, NULL, '[]', 1, '2022-05-17 07:40:02', '2022-05-17 07:40:02', '2023-05-17 07:40:02'),
('23d4ff83384cb85a5f4359071120e1eb6e1806c276952eb0f4b1c55fd68400477f50a21c7e53d31a', 1, 16, NULL, '[]', 1, '2022-05-19 08:28:38', '2022-05-19 08:28:38', '2023-05-19 08:28:38'),
('387030e49adece0461c592a0767dd04109d2bdf858b97375148ad3f28f1ecfe862bd5aacaeeb056b', 1, 14, NULL, '[]', 0, '2022-05-16 14:51:42', '2022-05-16 14:51:42', '2023-05-16 14:51:42'),
('3b8bf5a4d88d91592cda9ffc9c22a7c726bb031c4520a148a31068d73282e66f32b46bcbef1d451c', 1, 16, NULL, '[]', 1, '2022-05-19 09:26:07', '2022-05-19 09:26:07', '2023-05-19 09:26:07'),
('3d4d0112167b87b5b2d99d33bae39c72bcea3cecf7da96bf58fb911476c418cefdef95ad01f3f07d', 1, 16, NULL, '[]', 1, '2022-05-19 11:43:39', '2022-05-19 11:43:39', '2023-05-19 11:43:39'),
('45cab1e0ed0f27ab13d0a772c5e857d5a05501c17a0f346db2e26c406d0c56e7111cc2ed83c8e482', 1, 16, NULL, '[]', 1, '2022-05-17 08:02:32', '2022-05-17 08:02:32', '2023-05-17 08:02:32'),
('4a24249d22b9c8647c13403905a641e3ee0d1c4b1a8fd6fbeb958bda9029fc7dc3dfe8c9c7012c55', 1, 16, NULL, '[]', 1, '2022-05-17 07:50:17', '2022-05-17 07:50:17', '2023-05-17 07:50:17'),
('4ed695a901cde5b55d5109ceee7dfe8823f80dbc7fa98a3089c2401584e891a6ad0e94926f9fc20e', 1, 16, NULL, '[]', 1, '2022-05-17 07:16:53', '2022-05-17 07:16:53', '2023-05-17 07:16:53'),
('6f65d7a8238169aede14cb4ddd8caede07d2a9180f204b110b0ca7d3534a75928281cbd4511763f7', 1, 16, NULL, '[]', 1, '2022-05-19 09:24:05', '2022-05-19 09:24:05', '2023-05-19 09:24:05'),
('6fd127dfed8869eb919766e942bcd0f3fd35012796cfa1dbe6f5f692bf2394401d056c983722e673', 5, 6, NULL, '[]', 0, '2022-05-16 14:15:48', '2022-05-16 14:15:48', '2023-05-16 14:15:48'),
('6ff19fc718c123ccf8840ee464d885960e1f7bb3453c51f1a57098e6446c4f26a8fb4012082ac5f5', 1, 16, NULL, '[]', 1, '2022-05-17 07:40:01', '2022-05-17 07:40:01', '2023-05-17 07:40:01'),
('85286e42ce8e85e7450f822dfb1784a290a37e045a0051b21abdfbb5fe69c06d0f30b0d90610d2a0', 3, 2, NULL, '[]', 0, '2022-05-16 13:08:40', '2022-05-16 13:08:40', '2023-05-16 13:08:40'),
('9c8fda78c143c54eeda0edfd4ae0990ba0a7a9f164129ad1d7a245118adbde063cafca4fa01de285', 5, 10, NULL, '[]', 0, '2022-05-16 14:40:49', '2022-05-16 14:40:49', '2023-05-16 14:40:49'),
('a973e772fd780a60d0ea9075b92af9a540f640d27490e9ce964d3565ad2ee51a42d07c0b0cd8cfb6', 1, 16, NULL, '[]', 1, '2022-05-17 07:50:20', '2022-05-17 07:50:20', '2023-05-17 07:50:20'),
('c6cb609e5f2a9f134345353f9d9b07bec186a49cd0020be82ed1f38798eddd2ac73574160a954719', 1, 16, NULL, '[]', 1, '2022-05-17 07:50:13', '2022-05-17 07:50:13', '2023-05-17 07:50:13'),
('d9135ec29b3af8be21375e52004c78093b3efaf6ba05a3d9e1cdc0a93681248b1c74413a18c83364', 1, 16, NULL, '[]', 1, '2022-05-17 07:50:16', '2022-05-17 07:50:16', '2023-05-17 07:50:16'),
('e40e4b84e6338a851dee86011ee7bdf3cfc683a9cfdd08097f49e566c096d27ea7788ef3191e94ee', 1, 16, NULL, '[]', 1, '2022-05-19 11:44:18', '2022-05-19 11:44:18', '2023-05-19 11:44:18'),
('e58b01d56623674e4cee26421d6a9f724cdc4dbe8d38e1b2b1dcf5a36f2ae2db0490feb5078a8e3a', 1, 16, NULL, '[]', 0, '2022-05-20 09:33:34', '2022-05-20 09:33:34', '2023-05-20 09:33:34'),
('e6dd903f82e8b9e0173b2a7555e8ee891b8c6ddfc402d92c835220eb5f560cac24dfd9f1cc78464f', 1, 16, NULL, '[]', 1, '2022-05-17 07:39:57', '2022-05-17 07:39:57', '2023-05-17 07:39:57'),
('f2863ae2139c70cfbe6fe9199f1672fd1ac732f80b9fe104dc4269ffac5f44c3f1963c33b6543bd3', 1, 16, NULL, '[]', 1, '2022-05-17 07:50:18', '2022-05-17 07:50:18', '2023-05-17 07:50:18'),
('fb0bd53f0c6526ea1a4afedc9916c69c43ec9c1d9a63512c0dc07a60f0e3e85e71effb237aea48a5', 1, 16, NULL, '[]', 1, '2022-05-17 07:39:59', '2022-05-17 07:39:59', '2023-05-17 07:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lumen Personal Access Client', 'JBcapO1KjpiKRH1L3BHMjVHo7kMrx2bkkNMjOCeB', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 12:56:31', '2022-05-16 12:56:31'),
(2, NULL, 'Lumen Password Grant Client', 'ybQCAVcka6K5qJpmbGhO4YAsoc6xfUblRDC5l1AQ', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 12:56:31', '2022-05-16 12:56:31'),
(3, NULL, 'Lumen Personal Access Client', 'WWqyJ4iMYbjvw92KevQz0ZySRCV7mU7qrIHnzYVW', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 13:07:10', '2022-05-16 13:07:10'),
(4, NULL, 'Lumen Password Grant Client', 'RXaVIyncyOQn6DlK4Gcr3OdUojgW5WuPeApEHQY0', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 13:07:10', '2022-05-16 13:07:10'),
(5, NULL, 'Lumen Personal Access Client', 'QRPRRlD5IHlnvy4sctGxF90XKCU8DRyUBBNQ7EVe', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 14:12:14', '2022-05-16 14:12:14'),
(6, NULL, 'Lumen Password Grant Client', 'RWNTwW80dJhQOH47gWT6XyO2CXsg5Qx3ByenWnDV', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 14:12:14', '2022-05-16 14:12:14'),
(7, NULL, 'Lumen Personal Access Client', 'H4AFrfeBiThhX6aiHQ7r5l4EuHq3568Qt6lp35fY', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 14:21:55', '2022-05-16 14:21:55'),
(8, NULL, 'Lumen Password Grant Client', 'mL3P3gZjPEQO6JMn6F1BgJgeC6B8aO2nJdnOcr5v', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 14:21:55', '2022-05-16 14:21:55'),
(9, NULL, 'Lumen Personal Access Client', 'NCRKSBiFtJpUe3sqsl7LXHPaYTTHDR3QuiX6OZA5', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 14:37:51', '2022-05-16 14:37:51'),
(10, NULL, 'Lumen Password Grant Client', 'prG7FD5mUiK5gRutpLFf9ZCIRnqEks9fOGHvLHpj', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 14:37:51', '2022-05-16 14:37:51'),
(11, NULL, 'Lumen Personal Access Client', 'MpdfrwCV0c9LiRpov9eHnFlxqIdMR1F2ymwXeN5e', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 14:43:41', '2022-05-16 14:43:41'),
(12, NULL, 'Lumen Password Grant Client', 'lCorWjqzi4ntSI6Tx9h61enUx0LJmWgiDLH7RVVd', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 14:43:41', '2022-05-16 14:43:41'),
(13, NULL, 'Lumen Personal Access Client', 'PhKyRtQsz7DKK1iEYGUxJE7I5PoumUR8rOWfslMN', NULL, 'http://localhost', 1, 0, 0, '2022-05-16 14:50:36', '2022-05-16 14:50:36'),
(14, NULL, 'Lumen Password Grant Client', 'G1AVPqRyKqP9i60vgTkyF26i92TraqGJiCoInAkS', 'users', 'http://localhost', 0, 1, 0, '2022-05-16 14:50:36', '2022-05-16 14:50:36'),
(15, NULL, 'Lumen Personal Access Client', 'iGhrdrGE3inTAYA6tw64DjnEGBMozC5Zd9MMnbkT', NULL, 'http://localhost', 1, 0, 0, '2022-05-17 07:15:12', '2022-05-17 07:15:12'),
(16, NULL, 'Lumen Password Grant Client', '0njGKhZdB6tbDXtukOyFFWLlqsggMW42otF8Y5WT', 'users', 'http://localhost', 0, 1, 0, '2022-05-17 07:15:12', '2022-05-17 07:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-16 12:56:31', '2022-05-16 12:56:31'),
(2, 3, '2022-05-16 13:07:10', '2022-05-16 13:07:10'),
(3, 5, '2022-05-16 14:12:14', '2022-05-16 14:12:14'),
(4, 7, '2022-05-16 14:21:55', '2022-05-16 14:21:55'),
(5, 9, '2022-05-16 14:37:51', '2022-05-16 14:37:51'),
(6, 11, '2022-05-16 14:43:41', '2022-05-16 14:43:41'),
(7, 13, '2022-05-16 14:50:36', '2022-05-16 14:50:36'),
(8, 15, '2022-05-17 07:15:12', '2022-05-17 07:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('12b559ce1d724aaca55f58dc941429f39e7428c668d6e42511f681ce3b55cb7d1a7166bcb0eaf8be', '6f65d7a8238169aede14cb4ddd8caede07d2a9180f204b110b0ca7d3534a75928281cbd4511763f7', 0, '2023-05-19 09:24:05'),
('21ef65217a4523fdfb6c74e7992f873d3b2e98acdc74c1a907e4705890623cbb27e17f09ca645450', '45cab1e0ed0f27ab13d0a772c5e857d5a05501c17a0f346db2e26c406d0c56e7111cc2ed83c8e482', 0, '2023-05-17 08:02:32'),
('2d3a48a55d06903bbd3f10064a6c73c1a4b1b6c34510a8d66cd136a92c8e82a17b31ee094d680fca', '0a9a2694c09cc2cd7a73e901d5cee0d3163bcc5f988c589ab4867665f4d209b4e4463d7d9038cf97', 0, '2023-05-17 07:37:57'),
('3bbf701bd15f86bdd394912cee6202be255fefd651a0fbe01b25e0147d72ca91b54b0e9492cce7fb', '6fd127dfed8869eb919766e942bcd0f3fd35012796cfa1dbe6f5f692bf2394401d056c983722e673', 0, '2023-05-16 14:15:48'),
('3c20c4502dcc4097e9dcb41b4c339d43768cc40056b2e4e00f9ef2878f552169a879743571082e56', '4a24249d22b9c8647c13403905a641e3ee0d1c4b1a8fd6fbeb958bda9029fc7dc3dfe8c9c7012c55', 0, '2023-05-17 07:50:17'),
('4809534b6b44f48cfbce19bf5e1d8aa3e471257fcd92426a8144d16ffc1af3e776b1746682b4cc58', 'e6dd903f82e8b9e0173b2a7555e8ee891b8c6ddfc402d92c835220eb5f560cac24dfd9f1cc78464f', 0, '2023-05-17 07:39:57'),
('4aba9915988d28c88d41b42dc53de676f45d853916cce703bae7046b0cd136ede56886055b9d59bd', '387030e49adece0461c592a0767dd04109d2bdf858b97375148ad3f28f1ecfe862bd5aacaeeb056b', 0, '2023-05-16 14:51:42'),
('541b9f7db656803b5c2217ba0a06aa5ebc6165ffbcc30995b7eee0cdf59ea480682f0b9fdcea939c', 'e58b01d56623674e4cee26421d6a9f724cdc4dbe8d38e1b2b1dcf5a36f2ae2db0490feb5078a8e3a', 0, '2023-05-20 09:33:34'),
('5e69b494748520d9ef013942a6900a98d1b93a054a89f28b75b5710257e83751f5fd5a5ae6f26da4', '9c8fda78c143c54eeda0edfd4ae0990ba0a7a9f164129ad1d7a245118adbde063cafca4fa01de285', 0, '2023-05-16 14:40:49'),
('647695a27a28e7c87bc1e2af1eeab6dc09584d62369e57b270441a691e37bdcebcdc4f1728144821', 'd9135ec29b3af8be21375e52004c78093b3efaf6ba05a3d9e1cdc0a93681248b1c74413a18c83364', 0, '2023-05-17 07:50:16'),
('66a5db1e607554480a800b8a3ea48e95047f5a9b8c5922a84bb2049ae82c23c8a054c10b62f1f22c', 'c6cb609e5f2a9f134345353f9d9b07bec186a49cd0020be82ed1f38798eddd2ac73574160a954719', 0, '2023-05-17 07:50:13'),
('6bc04dc12a81e36607f4f8c17a42a957be60df472e823301bbc7cc16f9e51a0638538432225405b7', '6ff19fc718c123ccf8840ee464d885960e1f7bb3453c51f1a57098e6446c4f26a8fb4012082ac5f5', 0, '2023-05-17 07:40:01'),
('731342bbd64e84cbf8ff7f757d0eab419dc46a9e864c2731efc290d5b36c4723ade93051f380ac4d', '85286e42ce8e85e7450f822dfb1784a290a37e045a0051b21abdfbb5fe69c06d0f30b0d90610d2a0', 0, '2023-05-16 13:08:40'),
('7b3f33644a65e7203a01bcc6ecd414c8cfd03fb3fed11e5ff95ba7b476fd3cf48e4beb178cf666b5', 'e40e4b84e6338a851dee86011ee7bdf3cfc683a9cfdd08097f49e566c096d27ea7788ef3191e94ee', 0, '2023-05-19 11:44:18'),
('7f7c539ce319cf8ceba28381af10cb88f112c4a1231badaa1d705f34ba30586802f5ac112a5d2bb5', 'a973e772fd780a60d0ea9075b92af9a540f640d27490e9ce964d3565ad2ee51a42d07c0b0cd8cfb6', 0, '2023-05-17 07:50:20'),
('8d02b408736a2928ba3b7bdb6fcef00ed322169e23020e02710af68694b6cb6fec6f060cbbe0b3bc', 'fb0bd53f0c6526ea1a4afedc9916c69c43ec9c1d9a63512c0dc07a60f0e3e85e71effb237aea48a5', 0, '2023-05-17 07:39:59'),
('8e1173139276fa9b5d84a5f71671e75ccb04a2490ab7f5d2714e46505e063487dd98caa2ea7c5650', '3d4d0112167b87b5b2d99d33bae39c72bcea3cecf7da96bf58fb911476c418cefdef95ad01f3f07d', 0, '2023-05-19 11:43:39'),
('970b7d94c27ec9b79df9719c17ae603d5b887a6598dcf46d63ad95a9e1425ce660a3ff0a217c674d', '23d4ff83384cb85a5f4359071120e1eb6e1806c276952eb0f4b1c55fd68400477f50a21c7e53d31a', 0, '2023-05-19 08:28:38'),
('9f7f13ad2328e107eb63eb5015f36698f6c5a9e64586cc180c6d7356eb51b385f0485cda3f56a255', 'f2863ae2139c70cfbe6fe9199f1672fd1ac732f80b9fe104dc4269ffac5f44c3f1963c33b6543bd3', 0, '2023-05-17 07:50:18'),
('a990acdec336f28056adbe06d14ead1fcc32b272738f3974e39c7f3857a3ada538dd45102dbb5bee', '3b8bf5a4d88d91592cda9ffc9c22a7c726bb031c4520a148a31068d73282e66f32b46bcbef1d451c', 0, '2023-05-19 09:26:07'),
('b440770fc6f2dfe94a2fb51ab2277f1de4a62b49c5ab38102d38c35f5503b706f2b1efd09682c51e', '1a7b3df6a2bb7dead58601278bc22200437ddfe6598ef48f6bf8514300a716ee87babd03cd5b357c', 0, '2023-05-17 07:40:02'),
('c79337c4e8c4ff4537880e14aafe5948e3c678e2f075affcae6c2b95c476a2a8fe2cb4413a198580', '1a3947d0ded21995c8b9f58222593798ecf7814505d1c9926fdd3091392d12039307a12f2a57b178', 0, '2023-05-16 14:35:36'),
('eeb8e9941c5217cc2847cb9b58ff51ff60c6e1fced9bfeaba834505316975729abb247abdc453530', '4ed695a901cde5b55d5109ceee7dfe8823f80dbc7fa98a3089c2401584e891a6ad0e94926f9fc20e', 0, '2023-05-17 07:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Quidem sunt non non omnis laudantium.', 'Numquam quis magnam velit eum debitis. Ex et quis exercitationem dolorum. Doloribus et et saepe. Consequatur cum vel natus doloremque ratione illo laudantium.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(2, 'Minima atque reiciendis aut possimus dolor asperiores quam maxime.', 'Itaque quis eos eum repellendus natus sint dolorem. Eveniet eos rerum ipsam. Laborum et enim dolores et et vel repellat.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(3, 'Velit omnis autem non occaecati quasi incidunt sunt.', 'Delectus recusandae dignissimos aut tenetur. Possimus qui error labore qui. Est voluptatem aspernatur odit asperiores sed sed libero.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(5, 'Quia alias velit est consectetur est dolorem minus amet.', 'Commodi unde aut praesentium quas. Ab aut molestiae et vitae sunt libero ea. Ab laborum ullam quidem doloribus quis quidem voluptas. Aut nemo nemo voluptatem voluptates accusamus.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(6, 'Velit molestiae quis quaerat rerum reiciendis at eum.', 'Sed sunt delectus quia omnis. Perferendis aut reprehenderit inventore cumque quae. Molestias vel vitae non quia corporis.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(7, 'Id rerum aliquid facere aut autem.', 'Facilis molestiae aut voluptatem reiciendis voluptas quos ea. Exercitationem minus quo qui mollitia incidunt aut. Modi quod quia rem alias et rerum itaque.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(8, 'Quod aspernatur iure architecto deserunt quos.', 'Laboriosam tempore et est. Soluta sed aliquid non eos doloribus vitae assumenda. Reiciendis facilis excepturi rerum nesciunt in tenetur.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(9, 'Cupiditate dicta deleniti consequuntur.', 'Et facere amet odit omnis. A quas molestiae voluptatem quis vel quia. Excepturi et cumque corporis totam commodi fugit molestiae qui.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(10, 'Quia est eos quisquam non.', 'Placeat consequatur tempore voluptas modi. Placeat minima laudantium laboriosam. Sapiente vel voluptatem illo distinctio non reprehenderit.', '2022-05-16 10:38:06', '2022-05-16 10:38:06'),
(12, 'new title from error afteruzgz', 'this new after errror', '2022-05-19 08:29:02', '2022-05-19 08:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Immanuel Mosciski Sr.', 'kilback.raoul@example.com', '$2y$10$I6bJBcjxUKTQ4Sr1i/nQrOspQ6nx2jmlXW3Hjv28Uc7YsCLaMuHrq', '2022-05-16 12:36:14', '2022-05-16 12:36:14'),
(2, 'Patricia Barrows MD', 'cody.hoeger@example.org', '$2y$10$T4GcBgM4GtiKxr7h6r7oRuxWxVVf1KkXq7ka9aumcm27mIBdZ97Zi', '2022-05-16 12:36:14', '2022-05-16 12:36:14'),
(3, 'Adelle Leannon', 'larissa24@example.org', '$2y$10$01eyYEBHOYHBUpox/ctjeuHa4V0GIIix6P/7SW/Du9V751u72jF/S', '2022-05-16 12:36:14', '2022-05-16 12:36:14'),
(4, 'Ali Dibbert', 'reuben.ferry@example.org', '$2y$10$GKKi1ucjpNcoRHEqABtNV.0aG6MbDAmyxjIS6YXvgJKwp8KcSttlK', '2022-05-16 12:36:14', '2022-05-16 12:36:14'),
(5, 'Hershel Muller', 'godfrey42@example.net', '$2y$10$fp2nosQ62j.e7DRDmqI12uS8qhN8P7aJZbcKbIMzcY3WJIdqwTJ6q', '2022-05-16 12:36:14', '2022-05-16 12:36:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `newlaravelclient`
--
CREATE DATABASE IF NOT EXISTS `newlaravelclient` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newlaravelclient`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_06_22_211737_create_oauth_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_in` bigint(20) NOT NULL,
  `refresh_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_tokens`
--

INSERT INTO `oauth_tokens` (`id`, `user_id`, `access_token`, `expires_in`, `refresh_token`, `id_token`, `scope`, `token_type`, `created_at`, `updated_at`) VALUES
(1, 3, '3SNBF6uHDgrVlfvVZ-jgf54vOXRnq1PDdQA5c4WxMRM.MNyiMB2laJlutmu_ikOsZtv6ziHQTiVZBVzDeVrKQTM', 3600, NULL, NULL, 'ameise/mitarbeiterwebservice', 'bearer', '2022-05-25 05:25:42', '2022-05-25 05:25:42'),
(3, 2, 'o0u3clWA2HaarxPBUmrNvsHFBh7-ARMOizbr47PuKUE.Jwh5slvQM0DGSuO8yhdfTa0tIkN7aivW1XPtkmPa1nw', 3600, NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6InB1YmxpYzo5OTE4NzBmMy1iZmY3LTRjODItOWNjYS01MTFjYzYyM2NlYzEifQ.eyJhdF9oYXNoIjoiQ2Vra01TMzNWYThfd0l1RmEtbWZFZyIsImF1ZCI6WyI4MDViMmNmNC1mNGM3LTQ0MWMtYTQ1Yy0xN2Y2YTcxOWVlZWQiXSwiYXV0aF90aW1lIjoxNjUzNDY0MDk3LCJicm9rZXIiOnsiaWQiOiJBbHBoYTAiLCJpc19yb290Ijp0cnVlLCJwYXJlbnRfaWQiOiJBbHBoYTAiLCJyb290X2lkIjoiQWxwaGEwIn0sImJyb2tlcl9pZCI6IkFscGhhMCIsImNsaWVudCI6eyJjb3VudHJ5IjoiYXQiLCJpZCI6IjEwMDIifSwiY2xpZW50X2lkIjoiMTAwMiIsImV4cCI6MTY1MzQ2Nzc0OSwiaWF0IjoxNjUzNDY0MTQ5LCJpc19jbGllbnQiOnRydWUsImlzcyI6Imh0dHBzOi8vYXV0aC5kaW9uZXJhLmNvbS8iLCJqdGkiOiI3M2UyNjIzOC0wZWE4LTQzYjUtODUxNi04ZDNiNzcyYmZhMWMiLCJsb2NhbGUiOiJkZS1BVCIsInJhdCI6MTY1MzQ2NDA4NSwic2lkIjoiNmVmZDI1MjItY2ZjZi00ZmZkLTkzOTItYWUyMGNkYzY2ZDQ1Iiwic3ViIjoiQWxwaGEwX0JRNUczWCJ9.MmqBn7pN-Qiwa-0-IGHZfyrWOnDREVcvKV7FiHTtLshhEt6SOAFeqEzKdvThMdW6xUwY5Hk6h1DVf2N3DHRphM0lJb29ryc6ZMOyIeJpEliwBGrHgKpN0I9nnz--66TS9AeW64TKNrA6ZF1Y82kvBoKpHjV1FbfqCkfm9zy1RmbCvPq5iqHrk3oXnwUyvDKekwVxbOQKGXerutpnulu2dIMchPJ11FZjxTGW06G5uUbiaWrh6HBXnYG5L4U1t4LcliaZnoC5CslY9AUiT29hqhLDNeu7tUSzBkLOMXPE6eryAY-s0uBU6OV3z-idaYTOwv3qUUL_5QIrpF3v2BhoG4vGcFu18gOzC8bL6i4qv6emxlKQ-sdck493cpr4msoAm44y4DWHfR2dMQIGvZyf8GX4WzgQ_M108Fsv-zhK0ZFohGM0brBFvlx2cJsyRGtQ1YIq38RLKvFGz8bk75rxbIKzedSN37PxZq71cuPK5jRjfAFMqxIA22LqdTIskk7GSkP01Fpg-eYuWRNszwMchMGcUjyDKd351A9MfksUNF248smNgjqMxBj8qcYfGcq8I5sBQkqXIb3z0vDFgfQahKBTbywTFtopAPK1wH1SjC1VZVyCBJW5PEl1pBQVKlf8fX05UxhIvIVZ01sz4yk9BpJSngJITSXYL82lSO5jlks', 'openid', 'bearer', '2022-05-25 05:35:49', '2022-05-25 05:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eva', 'eva@mail.com', NULL, '$2y$10$kcVVEE0KfNcaebFyNMrsberKaUDZNZYTxI86T4p/tiMCWgxXEvOcS', NULL, '2022-05-25 05:23:34', '2022-05-25 05:23:34'),
(2, 'rakib', 'rakib@mail.com', NULL, '$2y$10$EIvAtTSOsmHykFQhBtWjJu9x7Ir2Vn7h9DZ.cw2TCqioYOSdIbPja', NULL, '2022-05-25 05:24:03', '2022-05-25 05:24:03'),
(3, 'abdulla', 'abdulla@mail.com', NULL, '$2y$10$Qj4.ishVXumLqWd8SJ1FlOvTf.C0EQgkL8YygvB9mc43eYBcNAz1S', NULL, '2022-05-25 05:24:35', '2022-05-25 05:24:35'),
(4, 'aaa', 'aaa@mail.com', NULL, '$2y$10$.hSe0PLcNRoXf.Xjpo6wBuUYvv6PCtV.ABjpvGGG7O5Wd1M1g.nyS', NULL, '2022-05-25 06:06:57', '2022-05-25 06:06:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"procedure\",\"table\":\"users\"},{\"db\":\"codexworld\",\"table\":\"users\"},{\"db\":\"procedure\",\"table\":\"countries\"},{\"db\":\"cricketers\",\"table\":\"tbl_cricketer\"},{\"db\":\"unistudent\",\"table\":\"tbl_student\"},{\"db\":\"larasim\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'procedure', 'users', '{\"sorted_col\":\"`users`.`group_name`  DESC\"}', '2022-05-09 12:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-09 08:09:18', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `procedure`
--
CREATE DATABASE IF NOT EXISTS `procedure` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `procedure`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT '',
  `currencyCode` char(3) DEFAULT NULL,
  `population` varchar(20) DEFAULT NULL,
  `fipsCode` char(2) DEFAULT NULL,
  `isoNumeric` char(4) DEFAULT NULL,
  `north` varchar(30) DEFAULT NULL,
  `south` varchar(30) DEFAULT NULL,
  `east` varchar(30) DEFAULT NULL,
  `west` varchar(30) DEFAULT NULL,
  `capital` varchar(30) DEFAULT NULL,
  `continentName` varchar(15) DEFAULT NULL,
  `continent` char(2) DEFAULT NULL,
  `areaInSqKm` varchar(20) DEFAULT NULL,
  `isoAlpha3` char(3) DEFAULT NULL,
  `geonameId` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `countryName`, `currencyCode`, `population`, `fipsCode`, `isoNumeric`, `north`, `south`, `east`, `west`, `capital`, `continentName`, `continent`, `areaInSqKm`, `isoAlpha3`, `geonameId`) VALUES
(1, 'AD', 'Andorra', 'EUR', '84000', 'AN', '020', '42.65604389629997', '42.42849259876837', '1.7865427778319827', '1.4071867141112762', 'Andorra la Vella', 'Europe', 'EU', '468.0', 'AND', 3041565),
(2, 'AE', 'United Arab Emirates', 'AED', '4975593', 'AE', '784', '26.08415985107422', '22.633329391479492', '56.38166046142578', '51.58332824707031', 'Abu Dhabi', 'Asia', 'AS', '82880.0', 'ARE', 290557),
(3, 'AF', 'Afghanistan', 'AFN', '29121286', 'AF', '004', '38.483418', '29.377472', '74.879448', '60.478443', 'Kabul', 'Asia', 'AS', '647500.0', 'AFG', 1149361),
(4, 'AG', 'Antigua and Barbuda', 'XCD', '86754', 'AC', '028', '17.729387', '16.996979', '-61.672421', '-61.906425', 'St. John\'s', 'North America', 'NA', '443.0', 'ATG', 3576396),
(5, 'AI', 'Anguilla', 'XCD', '13254', 'AV', '660', '18.276901971658063', '18.160292974311673', '-62.96655544577948', '-63.16808989603879', 'The Valley', 'North America', 'NA', '102.0', 'AIA', 3573511),
(6, 'AL', 'Albania', 'ALL', '2986952', 'AL', '008', '42.6611669383269', '39.6448624829142', '21.0574334835312', '19.2639112711741', 'Tirana', 'Europe', 'EU', '28748.0', 'ALB', 783754),
(7, 'AM', 'Armenia', 'AMD', '2968000', 'AM', '051', '41.301834', '38.830528', '46.772435045159995', '43.44978', 'Yerevan', 'Asia', 'AS', '29800.0', 'ARM', 174982),
(8, 'AO', 'Angola', 'AOA', '13068161', 'AO', '024', '-4.376826', '-18.042076', '24.082119', '11.679219', 'Luanda', 'Africa', 'AF', '1246700.0', 'AGO', 3351879),
(9, 'AQ', 'Antarctica', '', '0', 'AY', '010', '-60.515533', '-89.9999', '179.9999', '-179.9999', '', 'Antarctica', 'AN', '1.4E7', 'ATA', 6697173),
(10, 'AR', 'Argentina', 'ARS', '41343201', 'AR', '032', '-21.781277', '-55.061314', '-53.591835', '-73.58297', 'Buenos Aires', 'South America', 'SA', '2766890.0', 'ARG', 3865483),
(11, 'AS', 'American Samoa', 'USD', '57881', 'AQ', '016', '-11.0497', '-14.382478', '-169.416077', '-171.091888', 'Pago Pago', 'Oceania', 'OC', '199.0', 'ASM', 5880801),
(12, 'AT', 'Austria', 'EUR', '8205000', 'AU', '040', '49.0211627691393', '46.3726520216244', '17.1620685652599', '9.53095237240833', 'Vienna', 'Europe', 'EU', '83858.0', 'AUT', 2782113),
(13, 'AU', 'Australia', 'AUD', '21515754', 'AS', '036', '-10.062805', '-43.64397', '153.639252', '112.911057', 'Canberra', 'Oceania', 'OC', '7686850.0', 'AUS', 2077456),
(14, 'AW', 'Aruba', 'AWG', '71566', 'AA', '533', '12.623718127152925', '12.411707706190716', '-69.86575120104982', '-70.0644737196045', 'Oranjestad', 'North America', 'NA', '193.0', 'ABW', 3577279),
(15, 'AX', 'Åland', 'EUR', '26711', '', '248', '60.488861', '59.90675', '21.011862', '19.317694', 'Mariehamn', 'Europe', 'EU', '1580.0', 'ALA', 661882),
(16, 'AZ', 'Azerbaijan', 'AZN', '8303512', 'AJ', '031', '41.90564', '38.38915252685547', '50.370083', '44.774113', 'Baku', 'Asia', 'AS', '86600.0', 'AZE', 587116),
(17, 'BA', 'Bosnia and Herzegovina', 'BAM', '4590000', 'BK', '070', '45.239193', '42.546112', '19.622223', '15.718945', 'Sarajevo', 'Europe', 'EU', '51129.0', 'BIH', 3277605),
(18, 'BB', 'Barbados', 'BBD', '285653', 'BB', '052', '13.327257', '13.039844', '-59.420376', '-59.648922', 'Bridgetown', 'North America', 'NA', '431.0', 'BRB', 3374084),
(19, 'BD', 'Bangladesh', 'BDT', '156118464', 'BG', '050', '26.631945', '20.743334', '92.673668', '88.028336', 'Dhaka', 'Asia', 'AS', '144000.0', 'BGD', 1210997),
(20, 'BE', 'Belgium', 'EUR', '10403000', 'BE', '056', '51.5056400261465', '49.4975573880965', '6.40662259579998', '2.54011191097637', 'Brussels', 'Europe', 'EU', '30510.0', 'BEL', 2802361),
(21, 'BF', 'Burkina Faso', 'XOF', '16241811', 'UV', '854', '15.082593', '9.401108', '2.405395', '-5.518916', 'Ouagadougou', 'Africa', 'AF', '274200.0', 'BFA', 2361809),
(22, 'BG', 'Bulgaria', 'BGN', '7148785', 'BU', '100', '44.21764', '41.242084', '28.612167', '22.371166', 'Sofia', 'Europe', 'EU', '110910.0', 'BGR', 732800),
(23, 'BH', 'Bahrain', 'BHD', '738004', 'BA', '048', '26.282583', '25.796862', '50.664471', '50.45414', 'Manama', 'Asia', 'AS', '665.0', 'BHR', 290291),
(24, 'BI', 'Burundi', 'BIF', '9863117', 'BY', '108', '-2.310123', '-4.465713', '30.847729', '28.993061', 'Bujumbura', 'Africa', 'AF', '27830.0', 'BDI', 433561),
(25, 'BJ', 'Benin', 'XOF', '9056010', 'BN', '204', '12.418347', '6.225748', '3.851701', '0.774575', 'Porto-Novo', 'Africa', 'AF', '112620.0', 'BEN', 2395170),
(26, 'BL', 'Saint Barthélemy', 'EUR', '8450', 'TB', '652', '17.928808791949283', '17.878183227405575', '-62.788983372985854', '-62.8739118253784', 'Gustavia', 'North America', 'NA', '21.0', 'BLM', 3578476),
(27, 'BM', 'Bermuda', 'BMD', '65365', 'BD', '060', '32.39122351646162', '32.247551', '-64.64718648144532', '-64.88723800000002', 'Hamilton', 'North America', 'NA', '53.0', 'BMU', 3573345),
(28, 'BN', 'Brunei', 'BND', '395027', 'BX', '096', '5.047167', '4.003083', '115.359444', '114.071442', 'Bandar Seri Begawan', 'Asia', 'AS', '5770.0', 'BRN', 1820814),
(29, 'BO', 'Bolivia', 'BOB', '9947418', 'BL', '068', '-9.680567', '-22.896133', '-57.45809600000001', '-69.640762', 'Sucre', 'South America', 'SA', '1098580.0', 'BOL', 3923057),
(30, 'BQ', 'Bonaire', 'USD', '18012', '', '535', '12.304535', '12.017149', '-68.192307', '-68.416458', 'Kralendijk', 'North America', 'NA', '328.0', 'BES', 7626844),
(31, 'BR', 'Brazil', 'BRL', '201103330', 'BR', '076', '5.264877', '-33.750706', '-32.392998', '-73.985535', 'Brasília', 'South America', 'SA', '8511965.0', 'BRA', 3469034),
(32, 'BS', 'Bahamas', 'BSD', '301790', 'BF', '044', '26.919243', '22.852743', '-74.423874', '-78.995911', 'Nassau', 'North America', 'NA', '13940.0', 'BHS', 3572887),
(33, 'BT', 'Bhutan', 'BTN', '699847', 'BT', '064', '28.323778', '26.70764', '92.125191', '88.75972', 'Thimphu', 'Asia', 'AS', '47000.0', 'BTN', 1252634),
(34, 'BV', 'Bouvet Island', 'NOK', '0', 'BV', '074', '-54.3887383509872', '-54.4507993522734', '3.434845577758324', '3.286776428037342', '', 'Antarctica', 'AN', '49.0', 'BVT', 3371123),
(35, 'BW', 'Botswana', 'BWP', '2029307', 'BC', '072', '-17.780813', '-26.907246', '29.360781', '19.999535', 'Gaborone', 'Africa', 'AF', '600370.0', 'BWA', 933860),
(36, 'BY', 'Belarus', 'BYN', '9685000', 'BO', '112', '56.165806', '51.256416', '32.770805', '23.176889', 'Minsk', 'Europe', 'EU', '207600.0', 'BLR', 630336),
(37, 'BZ', 'Belize', 'BZD', '314522', 'BH', '084', '18.496557', '15.8893', '-87.776985', '-89.224815', 'Belmopan', 'North America', 'NA', '22966.0', 'BLZ', 3582678),
(38, 'CA', 'Canada', 'CAD', '33679000', 'CA', '124', '83.110626', '41.67598', '-52.636291', '-141', 'Ottawa', 'North America', 'NA', '9984670.0', 'CAN', 6251999),
(39, 'CC', 'Cocos [Keeling] Islands', 'AUD', '628', 'CK', '166', '-12.072459094', '-12.208725839', '96.929489344', '96.816941408', 'West Island', 'Asia', 'AS', '14.0', 'CCK', 1547376),
(40, 'CD', 'Democratic Republic of the Congo', 'CDF', '70916439', 'CG', '180', '5.386098', '-13.455675', '31.305912', '12.204144', 'Kinshasa', 'Africa', 'AF', '2345410.0', 'COD', 203312),
(41, 'CF', 'Central African Republic', 'XAF', '4844927', 'CT', '140', '11.007569', '2.220514', '27.463421', '14.420097', 'Bangui', 'Africa', 'AF', '622984.0', 'CAF', 239880),
(42, 'CG', 'Republic of the Congo', 'XAF', '3039126', 'CF', '178', '3.703082', '-5.027223', '18.649839', '11.205009', 'Brazzaville', 'Africa', 'AF', '342000.0', 'COG', 2260494),
(43, 'CH', 'Switzerland', 'CHF', '7581000', 'SZ', '756', '47.8098679329775', '45.8191539516188', '10.4934735095497', '5.95661377423453', 'Bern', 'Europe', 'EU', '41290.0', 'CHE', 2658434),
(44, 'CI', 'Ivory Coast', 'XOF', '21058798', 'IV', '384', '10.736642', '4.357067', '-2.494897', '-8.599302', 'Yamoussoukro', 'Africa', 'AF', '322460.0', 'CIV', 2287781),
(45, 'CK', 'Cook Islands', 'NZD', '21388', 'CW', '184', '-10.023114', '-21.944164', '-157.312134', '-161.093658', 'Avarua', 'Oceania', 'OC', '240.0', 'COK', 1899402),
(46, 'CL', 'Chile', 'CLP', '16746491', 'CI', '152', '-17.507553', '-55.9256225109217', '-66.417557', '-80.785851', 'Santiago', 'South America', 'SA', '756950.0', 'CHL', 3895114),
(47, 'CM', 'Cameroon', 'XAF', '19294149', 'CM', '120', '13.078056', '1.652548', '16.192116', '8.494763', 'Yaoundé', 'Africa', 'AF', '475440.0', 'CMR', 2233387),
(48, 'CN', 'China', 'CNY', '1330044000', 'CH', '156', '53.56086', '15.775416', '134.773911', '73.557693', 'Beijing', 'Asia', 'AS', '9596960.0', 'CHN', 1814991),
(49, 'CO', 'Colombia', 'COP', '47790000', 'CO', '170', '13.380502', '-4.225869', '-66.869835', '-81.728111', 'Bogotá', 'South America', 'SA', '1138910.0', 'COL', 3686110),
(50, 'CR', 'Costa Rica', 'CRC', '4516220', 'CS', '188', '11.216819', '8.032975', '-82.555992', '-85.950623', 'San José', 'North America', 'NA', '51100.0', 'CRI', 3624060),
(51, 'CU', 'Cuba', 'CUP', '11423000', 'CU', '192', '23.226042', '19.828083', '-74.131775', '-84.957428', 'Havana', 'North America', 'NA', '110860.0', 'CUB', 3562981),
(52, 'CV', 'Cape Verde', 'CVE', '508659', 'CV', '132', '17.197178', '14.808022', '-22.669443', '-25.358747', 'Praia', 'Africa', 'AF', '4033.0', 'CPV', 3374766),
(53, 'CW', 'Curacao', 'ANG', '141766', 'UC', '531', '12.385672', '12.032745', '-68.733948', '-69.157204', 'Willemstad', 'North America', 'NA', '444.0', 'CUW', 7626836),
(54, 'CX', 'Christmas Island', 'AUD', '1500', 'KT', '162', '-10.412356007', '-10.5704829995', '105.712596992', '105.533276992', 'Flying Fish Cove', 'Oceania', 'OC', '135.0', 'CXR', 2078138),
(55, 'CY', 'Cyprus', 'EUR', '1102677', 'CY', '196', '35.701527', '34.6332846722908', '34.59791599999994', '32.27308300000004', 'Nicosia', 'Europe', 'EU', '9250.0', 'CYP', 146669),
(56, 'CZ', 'Czechia', 'CZK', '10476000', 'EZ', '203', '51.058887', '48.542915', '18.860111', '12.096194', 'Prague', 'Europe', 'EU', '78866.0', 'CZE', 3077311),
(57, 'DE', 'Germany', 'EUR', '81802257', 'GM', '276', '54.9113475100612', '47.2701236047002', '15.0418156516163', '5.86625035072566', 'Berlin', 'Europe', 'EU', '357021.0', 'DEU', 2921044),
(58, 'DJ', 'Djibouti', 'DJF', '740528', 'DJ', '262', '12.706833', '10.909917', '43.416973', '41.773472', 'Djibouti', 'Africa', 'AF', '23000.0', 'DJI', 223816),
(59, 'DK', 'Denmark', 'DKK', '5484000', 'DA', '208', '57.748417', '54.562389', '15.158834', '8.075611', 'Copenhagen', 'Europe', 'EU', '43094.0', 'DNK', 2623032),
(60, 'DM', 'Dominica', 'XCD', '72813', 'DO', '212', '15.631809', '15.20169', '-61.244152', '-61.484108', 'Roseau', 'North America', 'NA', '754.0', 'DMA', 3575830),
(61, 'DO', 'Dominican Republic', 'DOP', '9823821', 'DR', '214', '19.929859', '17.543159', '-68.32', '-72.003487', 'Santo Domingo', 'North America', 'NA', '48730.0', 'DOM', 3508796),
(62, 'DZ', 'Algeria', 'DZD', '34586184', 'AG', '012', '37.093723', '18.960028', '11.979548', '-8.673868', 'Algiers', 'Africa', 'AF', '2381740.0', 'DZA', 2589581),
(63, 'EC', 'Ecuador', 'USD', '14790608', 'EC', '218', '1.43523516349953', '-5.01615732302488', '-75.1871465547501', '-81.0836838953894', 'Quito', 'South America', 'SA', '283560.0', 'ECU', 3658394),
(64, 'EE', 'Estonia', 'EUR', '1291170', 'EN', '233', '59.6753143130129', '57.5093097920079', '28.2090381531431', '21.8285886498081', 'Tallinn', 'Europe', 'EU', '45226.0', 'EST', 453733),
(65, 'EG', 'Egypt', 'EGP', '80471869', 'EG', '818', '31.667334', '21.725389', '36.89833068847656', '24.698111', 'Cairo', 'Africa', 'AF', '1001450.0', 'EGY', 357994),
(66, 'EH', 'Western Sahara', 'MAD', '273008', 'WI', '732', '27.669674', '20.774158', '-8.670276', '-17.103182', 'Laâyoune / El Aaiún', 'Africa', 'AF', '266000.0', 'ESH', 2461445),
(67, 'ER', 'Eritrea', 'ERN', '5792984', 'ER', '232', '18.003084', '12.359555', '43.13464', '36.438778', 'Asmara', 'Africa', 'AF', '121320.0', 'ERI', 338010),
(68, 'ES', 'Spain', 'EUR', '46505963', 'SP', '724', '43.7913565913767', '36.0001044260548', '4.32778473043961', '-9.30151567231899', 'Madrid', 'Europe', 'EU', '504782.0', 'ESP', 2510769),
(69, 'ET', 'Ethiopia', 'ETB', '88013491', 'ET', '231', '14.89375', '3.402422', '47.986179', '32.999939', 'Addis Ababa', 'Africa', 'AF', '1127127.0', 'ETH', 337996),
(70, 'FI', 'Finland', 'EUR', '5244000', 'FI', '246', '70.096054', '59.808777', '31.580944', '20.556944', 'Helsinki', 'Europe', 'EU', '337030.0', 'FIN', 660013),
(71, 'FJ', 'Fiji', 'FJD', '875983', 'FJ', '242', '-12.479632058714332', '-20.67597', '-178.424438', '177.14038537647912', 'Suva', 'Oceania', 'OC', '18270.0', 'FJI', 2205218),
(72, 'FK', 'Falkland Islands', 'FKP', '2638', 'FK', '238', '-51.24065', '-52.360512', '-57.712486', '-61.345192', 'Stanley', 'South America', 'SA', '12173.0', 'FLK', 3474414),
(73, 'FM', 'Micronesia', 'USD', '107708', 'FM', '583', '10.08904', '1.02629', '163.03717', '137.33648', 'Palikir', 'Oceania', 'OC', '702.0', 'FSM', 2081918),
(74, 'FO', 'Faroe Islands', 'DKK', '48228', 'FO', '234', '62.3938884414274', '61.3910302656013', '-6.25655957192113', '-7.688191677774624', 'Tórshavn', 'Europe', 'EU', '1399.0', 'FRO', 2622320),
(75, 'FR', 'France', 'EUR', '64768389', 'FR', '250', '51.0890012279322', '41.3658213299999', '9.5596148665824', '-5.1389964684508', 'Paris', 'Europe', 'EU', '547030.0', 'FRA', 3017382),
(76, 'GA', 'Gabon', 'XAF', '1545255', 'GB', '266', '2.322612', '-3.978806', '14.502347', '8.695471', 'Libreville', 'Africa', 'AF', '267667.0', 'GAB', 2400553),
(77, 'GB', 'United Kingdom', 'GBP', '62348447', 'UK', '826', '59.360249', '49.906193', '1.759', '-8.623555', 'London', 'Europe', 'EU', '244820.0', 'GBR', 2635167),
(78, 'GD', 'Grenada', 'XCD', '107818', 'GJ', '308', '12.318283928171299', '11.986893', '-61.57676970108031', '-61.802344', 'St. George\'s', 'North America', 'NA', '344.0', 'GRD', 3580239),
(79, 'GE', 'Georgia', 'GEL', '4630000', 'GG', '268', '43.586498', '41.053196', '46.725971', '40.010139', 'Tbilisi', 'Asia', 'AS', '69700.0', 'GEO', 614540),
(80, 'GF', 'French Guiana', 'EUR', '195506', 'FG', '254', '5.776496', '2.127094', '-51.613949', '-54.542511', 'Cayenne', 'South America', 'SA', '91000.0', 'GUF', 3381670),
(81, 'GG', 'Guernsey', 'GBP', '65228', 'GK', '831', '49.731727816705416', '49.40764156876899', '-2.1577152112246267', '-2.673194593476069', 'St Peter Port', 'Europe', 'EU', '78.0', 'GGY', 3042362),
(82, 'GH', 'Ghana', 'GHS', '24339838', 'GH', '288', '11.173301', '4.736723', '1.191781', '-3.25542', 'Accra', 'Africa', 'AF', '239460.0', 'GHA', 2300660),
(83, 'GI', 'Gibraltar', 'GIP', '27884', 'GI', '292', '36.155439135670726', '36.10903070140248', '-5.338285164001491', '-5.36626149743654', 'Gibraltar', 'Europe', 'EU', '6.5', 'GIB', 2411586),
(84, 'GL', 'Greenland', 'DKK', '56375', 'GL', '304', '83.627357', '59.777401', '-11.312319', '-73.04203', 'Nuuk', 'North America', 'NA', '2166086.0', 'GRL', 3425505),
(85, 'GM', 'Gambia', 'GMD', '1593256', 'GA', '270', '13.826571', '13.064252', '-13.797793', '-16.825079', 'Bathurst', 'Africa', 'AF', '11300.0', 'GMB', 2413451),
(86, 'GN', 'Guinea', 'GNF', '10324025', 'GV', '324', '12.67622', '7.193553', '-7.641071', '-14.926619', 'Conakry', 'Africa', 'AF', '245857.0', 'GIN', 2420477),
(87, 'GP', 'Guadeloupe', 'EUR', '443000', 'GP', '312', '16.516848', '15.867565', '-61', '-61.544765', 'Basse-Terre', 'North America', 'NA', '1780.0', 'GLP', 3579143),
(88, 'GQ', 'Equatorial Guinea', 'XAF', '1014999', 'EK', '226', '2.346989', '0.92086', '11.335724', '9.346865', 'Malabo', 'Africa', 'AF', '28051.0', 'GNQ', 2309096),
(89, 'GR', 'Greece', 'EUR', '11000000', 'GR', '300', '41.7484999849641', '34.8020663391466', '28.2470831714347', '19.3736035624134', 'Athens', 'Europe', 'EU', '131940.0', 'GRC', 390903),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'GBP', '30', 'SX', '239', '-53.970467', '-59.479259', '-26.229326', '-38.021175', 'Grytviken', 'Antarctica', 'AN', '3903.0', 'SGS', 3474415),
(91, 'GT', 'Guatemala', 'GTQ', '13550440', 'GT', '320', '17.81522', '13.737302', '-88.223198', '-92.23629', 'Guatemala City', 'North America', 'NA', '108890.0', 'GTM', 3595528),
(92, 'GU', 'Guam', 'USD', '159358', 'GQ', '316', '13.654402', '13.23376', '144.956894', '144.61806', 'Hagåtña', 'Oceania', 'OC', '549.0', 'GUM', 4043988),
(93, 'GW', 'Guinea-Bissau', 'XOF', '1565126', 'PU', '624', '12.680789', '10.924265', '-13.636522', '-16.717535', 'Bissau', 'Africa', 'AF', '36120.0', 'GNB', 2372248),
(94, 'GY', 'Guyana', 'GYD', '748486', 'GY', '328', '8.557567', '1.17508', '-56.480251', '-61.384762', 'Georgetown', 'South America', 'SA', '214970.0', 'GUY', 3378535),
(95, 'HK', 'Hong Kong', 'HKD', '6898686', 'HK', '344', '22.559778', '22.15325', '114.434753', '113.837753', 'Hong Kong', 'Asia', 'AS', '1092.0', 'HKG', 1819730),
(96, 'HM', 'Heard Island and McDonald Islands', 'AUD', '0', 'HM', '334', '-52.909416', '-53.192001', '73.859146', '72.596535', '', 'Antarctica', 'AN', '412.0', 'HMD', 1547314),
(97, 'HN', 'Honduras', 'HNL', '7989415', 'HO', '340', '16.510256', '12.982411', '-83.155403', '-89.350792', 'Tegucigalpa', 'North America', 'NA', '112090.0', 'HND', 3608932),
(98, 'HR', 'Croatia', 'HRK', '4284889', 'HR', '191', '46.53875', '42.43589', '19.427389', '13.493222', 'Zagreb', 'Europe', 'EU', '56542.0', 'HRV', 3202326),
(99, 'HT', 'Haiti', 'HTG', '9648924', 'HA', '332', '20.08782', '18.021032', '-71.613358', '-74.478584', 'Port-au-Prince', 'North America', 'NA', '27750.0', 'HTI', 3723988),
(100, 'HU', 'Hungary', 'HUF', '9982000', 'HU', '348', '48.585667', '45.74361', '22.906', '16.111889', 'Budapest', 'Europe', 'EU', '93030.0', 'HUN', 719819),
(101, 'ID', 'Indonesia', 'IDR', '242968342', 'ID', '360', '5.904417', '-10.941861', '141.021805', '95.009331', 'Jakarta', 'Asia', 'AS', '1919440.0', 'IDN', 1643084),
(102, 'IE', 'Ireland', 'EUR', '4622917', 'EI', '372', '55.387917', '51.451584', '-6.002389', '-10.478556', 'Dublin', 'Europe', 'EU', '70280.0', 'IRL', 2963597),
(103, 'IL', 'Israel', 'ILS', '7353985', 'IS', '376', '33.340137', '29.496639', '35.876804', '34.270278754419145', '', 'Asia', 'AS', '20770.0', 'ISR', 294640),
(104, 'IM', 'Isle of Man', 'GBP', '75049', 'IM', '833', '54.419724', '54.055916', '-4.3115', '-4.798722', 'Douglas', 'Europe', 'EU', '572.0', 'IMN', 3042225),
(105, 'IN', 'India', 'INR', '1173108018', 'IN', '356', '35.9952871999878', '6.7559528993543', '97.4152926679075', '68.4840183183648', 'New Delhi', 'Asia', 'AS', '3287590.0', 'IND', 1269750),
(106, 'IO', 'British Indian Ocean Territory', 'USD', '4000', 'IO', '086', '-5.268333', '-7.438028', '72.493164', '71.259972', '', 'Asia', 'AS', '60.0', 'IOT', 1282588),
(107, 'IQ', 'Iraq', 'IQD', '29671605', 'IZ', '368', '37.378029', '29.069445', '48.575916', '38.795887', 'Baghdad', 'Asia', 'AS', '437072.0', 'IRQ', 99237),
(108, 'IR', 'Iran', 'IRR', '76923300', 'IR', '364', '39.777222', '25.064083', '63.317471', '44.047279', 'Tehran', 'Asia', 'AS', '1648000.0', 'IRN', 130758),
(109, 'IS', 'Iceland', 'ISK', '308910', 'IC', '352', '66.5377933098397', '63.394392778588', '-13.4946206239501', '-24.5326753866625', 'Reykjavik', 'Europe', 'EU', '103000.0', 'ISL', 2629691),
(110, 'IT', 'Italy', 'EUR', '60340328', 'IT', '380', '47.0917837415439', '36.6440816661648', '18.5203814091888', '6.62662135986088', 'Rome', 'Europe', 'EU', '301230.0', 'ITA', 3175395),
(111, 'JE', 'Jersey', 'GBP', '90812', 'JE', '832', '49.265057', '49.169834', '-2.022083', '-2.260028', 'Saint Helier', 'Europe', 'EU', '116.0', 'JEY', 3042142),
(112, 'JM', 'Jamaica', 'JMD', '2847232', 'JM', '388', '18.524766185516', '17.7059966193696', '-76.1830989848426', '-78.3690062954957', 'Kingston', 'North America', 'NA', '10991.0', 'JAM', 3489940),
(113, 'JO', 'Jordan', 'JOD', '6407085', 'JO', '400', '33.367668', '29.185888', '39.301167', '34.959999', 'Amman', 'Asia', 'AS', '92300.0', 'JOR', 248816),
(114, 'JP', 'Japan', 'JPY', '127288000', 'JA', '392', '45.52295736', '24.255169441', '145.817458885', '122.933653061', 'Tokyo', 'Asia', 'AS', '377835.0', 'JPN', 1861060),
(115, 'KE', 'Kenya', 'KES', '40046566', 'KE', '404', '5.019938', '-4.678047', '41.899078', '33.908859', 'Nairobi', 'Africa', 'AF', '582650.0', 'KEN', 192950),
(116, 'KG', 'Kyrgyzstan', 'KGS', '5776500', 'KG', '417', '43.238224', '39.172832', '80.283165', '69.276611', 'Bishkek', 'Asia', 'AS', '198500.0', 'KGZ', 1527747),
(117, 'KH', 'Cambodia', 'KHR', '14453680', 'CB', '116', '14.686417', '10.409083', '107.627724', '102.339996', 'Phnom Penh', 'Asia', 'AS', '181040.0', 'KHM', 1831722),
(118, 'KI', 'Kiribati', 'AUD', '92533', 'KR', '296', '4.71957', '-11.446881150186856', '-150.215347', '169.556137', 'Tarawa', 'Oceania', 'OC', '811.0', 'KIR', 4030945),
(119, 'KM', 'Comoros', 'KMF', '773407', 'CN', '174', '-11.362381', '-12.387857', '44.538223', '43.21579', 'Moroni', 'Africa', 'AF', '2170.0', 'COM', 921929),
(120, 'KN', 'Saint Kitts and Nevis', 'XCD', '51134', 'SC', '659', '17.420118', '17.095343', '-62.543266', '-62.86956', 'Basseterre', 'North America', 'NA', '261.0', 'KNA', 3575174),
(121, 'KP', 'North Korea', 'KPW', '22912177', 'KN', '408', '43.006054', '37.673332', '130.674866', '124.315887', 'Pyongyang', 'Asia', 'AS', '120540.0', 'PRK', 1873107),
(122, 'KR', 'South Korea', 'KRW', '48422644', 'KS', '410', '38.5933891092225', '33.1954102977009', '129.583016157998', '125.887442375577', 'Seoul', 'Asia', 'AS', '98480.0', 'KOR', 1835841),
(123, 'KW', 'Kuwait', 'KWD', '2789132', 'KU', '414', '30.095945', '28.524611', '48.431473', '46.555557', 'Kuwait City', 'Asia', 'AS', '17820.0', 'KWT', 285570),
(124, 'KY', 'Cayman Islands', 'KYD', '44270', 'CJ', '136', '19.7617', '19.263029', '-79.727272', '-81.432777', 'George Town', 'North America', 'NA', '262.0', 'CYM', 3580718),
(125, 'KZ', 'Kazakhstan', 'KZT', '15340000', 'KZ', '398', '55.451195', '40.936333', '87.312668', '46.491859', 'Astana', 'Asia', 'AS', '2717300.0', 'KAZ', 1522867),
(126, 'LA', 'Laos', 'LAK', '6368162', 'LA', '418', '22.500389', '13.910027', '107.697029', '100.093056', 'Vientiane', 'Asia', 'AS', '236800.0', 'LAO', 1655842),
(127, 'LB', 'Lebanon', 'LBP', '4125247', 'LE', '422', '34.691418', '33.05386', '36.639194', '35.114277', 'Beirut', 'Asia', 'AS', '10400.0', 'LBN', 272103),
(128, 'LC', 'Saint Lucia', 'XCD', '160922', 'ST', '662', '14.110317287646', '13.7072692224982', '-60.8732306422271', '-61.07995730159752', 'Castries', 'North America', 'NA', '616.0', 'LCA', 3576468),
(129, 'LI', 'Liechtenstein', 'CHF', '35000', 'LS', '438', '47.2706251386959', '47.0484284123471', '9.63564281136796', '9.47167359782014', 'Vaduz', 'Europe', 'EU', '160.0', 'LIE', 3042058),
(130, 'LK', 'Sri Lanka', 'LKR', '21513990', 'CE', '144', '9.831361', '5.916833', '81.881279', '79.652916', 'Colombo', 'Asia', 'AS', '65610.0', 'LKA', 1227603),
(131, 'LR', 'Liberia', 'LRD', '3685076', 'LI', '430', '8.551791', '4.353057', '-7.365113', '-11.492083', 'Monrovia', 'Africa', 'AF', '111370.0', 'LBR', 2275384),
(132, 'LS', 'Lesotho', 'LSL', '1919552', 'LT', '426', '-28.572058', '-30.668964', '29.465761', '27.029068', 'Maseru', 'Africa', 'AF', '30355.0', 'LSO', 932692),
(133, 'LT', 'Lithuania', 'EUR', '2944459', 'LH', '440', '56.446918', '53.901306', '26.871944', '20.941528', 'Vilnius', 'Europe', 'EU', '65200.0', 'LTU', 597427),
(134, 'LU', 'Luxembourg', 'EUR', '497538', 'LU', '442', '50.182772453796446', '49.447858677765716', '6.5308980672559525', '5.735698938390786', 'Luxembourg', 'Europe', 'EU', '2586.0', 'LUX', 2960313),
(135, 'LV', 'Latvia', 'EUR', '2217969', 'LG', '428', '58.0856982477268', '55.6747774931332', '28.2412717372783', '20.9719557460935', 'Riga', 'Europe', 'EU', '64589.0', 'LVA', 458258),
(136, 'LY', 'Libya', 'LYD', '6461454', 'LY', '434', '33.168999', '19.508045', '25.150612', '9.38702', 'Tripoli', 'Africa', 'AF', '1759540.0', 'LBY', 2215636),
(137, 'MA', 'Morocco', 'MAD', '33848242', 'MO', '504', '35.9224966985384', '27.662115', '-0.991750000000025', '-13.168586', 'Rabat', 'Africa', 'AF', '446550.0', 'MAR', 2542007),
(138, 'MC', 'Monaco', 'EUR', '32965', 'MN', '492', '43.75196717037228', '43.72472839869377', '7.439939260482788', '7.408962249755859', 'Monaco', 'Europe', 'EU', '1.95', 'MCO', 2993457),
(139, 'MD', 'Moldova', 'MDL', '4324000', 'MD', '498', '48.490166', '45.468887', '30.135445', '26.618944', 'Chişinău', 'Europe', 'EU', '33843.0', 'MDA', 617790),
(140, 'ME', 'Montenegro', 'EUR', '666730', 'MJ', '499', '43.570137', '41.850166', '20.358833', '18.461306', 'Podgorica', 'Europe', 'EU', '14026.0', 'MNE', 3194884),
(141, 'MF', 'Saint Martin', 'EUR', '35925', 'RN', '663', '18.125295191246206', '18.04717219103021', '-63.01059106320133', '-63.15036103890611', 'Marigot', 'North America', 'NA', '53.0', 'MAF', 3578421),
(142, 'MG', 'Madagascar', 'MGA', '21281844', 'MA', '450', '-11.945433', '-25.608952', '50.48378', '43.224876', 'Antananarivo', 'Africa', 'AF', '587040.0', 'MDG', 1062947),
(143, 'MH', 'Marshall Islands', 'USD', '65859', 'RM', '584', '14.62', '5.587639', '171.931808', '165.524918', 'Majuro', 'Oceania', 'OC', '181.3', 'MHL', 2080185),
(144, 'MK', 'Macedonia', 'MKD', '2062294', 'MK', '807', '42.361805', '40.860195', '23.038139', '20.464695', 'Skopje', 'Europe', 'EU', '25333.0', 'MKD', 718075),
(145, 'ML', 'Mali', 'XOF', '13796354', 'ML', '466', '25.000002', '10.159513', '4.244968', '-12.242614', 'Bamako', 'Africa', 'AF', '1240000.0', 'MLI', 2453866),
(146, 'MM', 'Myanmar [Burma]', 'MMK', '53414374', 'BM', '104', '28.543249', '9.784583', '101.176781', '92.189278', 'Naypyitaw', 'Asia', 'AS', '678500.0', 'MMR', 1327865),
(147, 'MN', 'Mongolia', 'MNT', '3086918', 'MG', '496', '52.154251', '41.567638', '119.924309', '87.749664', 'Ulan Bator', 'Asia', 'AS', '1565000.0', 'MNG', 2029969),
(148, 'MO', 'Macao', 'MOP', '449198', 'MC', '446', '22.222334', '22.180389', '113.565834', '113.528946', 'Macao', 'Asia', 'AS', '254.0', 'MAC', 1821275),
(149, 'MP', 'Northern Mariana Islands', 'USD', '53883', 'CQ', '580', '20.55344', '14.11023', '146.06528', '144.88626', 'Saipan', 'Oceania', 'OC', '477.0', 'MNP', 4041468),
(150, 'MQ', 'Martinique', 'EUR', '432900', 'MB', '474', '14.878819', '14.392262', '-60.81551', '-61.230118', 'Fort-de-France', 'North America', 'NA', '1100.0', 'MTQ', 3570311),
(151, 'MR', 'Mauritania', 'MRO', '3205060', 'MR', '478', '27.298073', '14.715547', '-4.827674', '-17.066521', 'Nouakchott', 'Africa', 'AF', '1030700.0', 'MRT', 2378080),
(152, 'MS', 'Montserrat', 'XCD', '9341', 'MH', '500', '16.824060205313184', '16.674768935441556', '-62.144100129608205', '-62.24138237036129', 'Plymouth', 'North America', 'NA', '102.0', 'MSR', 3578097),
(153, 'MT', 'Malta', 'EUR', '403000', 'MT', '470', '36.0821530995456', '35.8061835000002', '14.5764915000002', '14.1834251000001', 'Valletta', 'Europe', 'EU', '316.0', 'MLT', 2562770),
(154, 'MU', 'Mauritius', 'MUR', '1294104', 'MP', '480', '-10.319255', '-20.525717', '63.500179', '56.512718', 'Port Louis', 'Africa', 'AF', '2040.0', 'MUS', 934292),
(155, 'MV', 'Maldives', 'MVR', '395650', 'MV', '462', '7.091587495414767', '-0.692694', '73.637276', '72.693222', 'Malé', 'Asia', 'AS', '300.0', 'MDV', 1282028),
(156, 'MW', 'Malawi', 'MWK', '15447500', 'MI', '454', '-9.367541', '-17.125', '35.916821', '32.67395', 'Lilongwe', 'Africa', 'AF', '118480.0', 'MWI', 927384),
(157, 'MX', 'Mexico', 'MXN', '112468855', 'MX', '484', '32.716759', '14.532866', '-86.703392', '-118.453949', 'Mexico City', 'North America', 'NA', '1972550.0', 'MEX', 3996063),
(158, 'MY', 'Malaysia', 'MYR', '28274729', 'MY', '458', '7.363417', '0.855222', '119.267502', '99.643448', 'Kuala Lumpur', 'Asia', 'AS', '329750.0', 'MYS', 1733045),
(159, 'MZ', 'Mozambique', 'MZN', '22061451', 'MZ', '508', '-10.471883', '-26.868685', '40.842995', '30.217319', 'Maputo', 'Africa', 'AF', '801590.0', 'MOZ', 1036973),
(160, 'NA', 'Namibia', 'NAD', '2128471', 'WA', '516', '-16.959894', '-28.97143', '25.256701', '11.71563', 'Windhoek', 'Africa', 'AF', '825418.0', 'NAM', 3355338),
(161, 'NC', 'New Caledonia', 'XPF', '216494', 'NC', '540', '-19.549778', '-22.698', '168.129135', '163.564667', 'Noumea', 'Oceania', 'OC', '19060.0', 'NCL', 2139685),
(162, 'NE', 'Niger', 'XOF', '15878271', 'NG', '562', '23.525026', '11.696975', '15.995643', '0.16625', 'Niamey', 'Africa', 'AF', '1267000.0', 'NER', 2440476),
(163, 'NF', 'Norfolk Island', 'AUD', '1828', 'NF', '574', '-28.995170686948427', '-29.063076742954735', '167.99773740209957', '167.91543230151365', 'Kingston', 'Oceania', 'OC', '34.6', 'NFK', 2155115),
(164, 'NG', 'Nigeria', 'NGN', '154000000', 'NI', '566', '13.892007', '4.277144', '14.680073', '2.668432', 'Abuja', 'Africa', 'AF', '923768.0', 'NGA', 2328926),
(165, 'NI', 'Nicaragua', 'NIO', '5995928', 'NU', '558', '15.025909', '10.707543', '-82.738289', '-87.690308', 'Managua', 'North America', 'NA', '129494.0', 'NIC', 3617476),
(166, 'NL', 'Netherlands', 'EUR', '16645000', 'NL', '528', '53.5157125645109', '50.7503674993741', '7.22749859212922', '3.35837827202', 'Amsterdam', 'Europe', 'EU', '41526.0', 'NLD', 2750405),
(167, 'NO', 'Norway', 'NOK', '5009150', 'NO', '578', '71.18811', '57.977917', '31.078052520751953', '4.650167', 'Oslo', 'Europe', 'EU', '324220.0', 'NOR', 3144096),
(168, 'NP', 'Nepal', 'NPR', '28951852', 'NP', '524', '30.43339', '26.356722', '88.199333', '80.056274', 'Kathmandu', 'Asia', 'AS', '140800.0', 'NPL', 1282988),
(169, 'NR', 'Nauru', 'AUD', '10065', 'NR', '520', '-0.504306', '-0.552333', '166.945282', '166.899033', 'Yaren', 'Oceania', 'OC', '21.0', 'NRU', 2110425),
(170, 'NU', 'Niue', 'NZD', '2166', 'NE', '570', '-18.951069', '-19.152193', '-169.775177', '-169.951004', 'Alofi', 'Oceania', 'OC', '260.0', 'NIU', 4036232),
(171, 'NZ', 'New Zealand', 'NZD', '4252277', 'NZ', '554', '-34.389668', '-47.286026', '-180', '166.7155', 'Wellington', 'Oceania', 'OC', '268680.0', 'NZL', 2186224),
(172, 'OM', 'Oman', 'OMR', '2967717', 'MU', '512', '26.387972', '16.64575', '59.836582', '51.882', 'Muscat', 'Asia', 'AS', '212460.0', 'OMN', 286963),
(173, 'PA', 'Panama', 'PAB', '3410676', 'PM', '591', '9.637514', '7.197906', '-77.17411', '-83.051445', 'Panama City', 'North America', 'NA', '78200.0', 'PAN', 3703430),
(174, 'PE', 'Peru', 'PEN', '29907003', 'PE', '604', '-0.012977', '-18.349728', '-68.677986', '-81.326744', 'Lima', 'South America', 'SA', '1285220.0', 'PER', 3932488),
(175, 'PF', 'French Polynesia', 'XPF', '270485', 'FP', '258', '-7.903573', '-27.653572', '-134.929825', '-152.877167', 'Papeete', 'Oceania', 'OC', '4167.0', 'PYF', 4030656),
(176, 'PG', 'Papua New Guinea', 'PGK', '6064515', 'PP', '598', '-1.318639', '-11.657861', '155.96344', '140.842865', 'Port Moresby', 'Oceania', 'OC', '462840.0', 'PNG', 2088628),
(177, 'PH', 'Philippines', 'PHP', '99900177', 'RP', '608', '21.1218854788318', '4.64209796365014', '126.60497402182328', '116.9288644959', 'Manila', 'Asia', 'AS', '300000.0', 'PHL', 1694008),
(178, 'PK', 'Pakistan', 'PKR', '184404791', 'PK', '586', '37.097', '23.786722', '77.840919', '60.878613', 'Islamabad', 'Asia', 'AS', '803940.0', 'PAK', 1168579),
(179, 'PL', 'Poland', 'PLN', '38500000', 'PL', '616', '54.839138', '49.006363', '24.150749', '14.123', 'Warsaw', 'Europe', 'EU', '312685.0', 'POL', 798544),
(180, 'PM', 'Saint Pierre and Miquelon', 'EUR', '7012', 'SB', '666', '47.14376802942701', '46.78264970849848', '-56.1253298443454', '-56.40709223087083', 'Saint-Pierre', 'North America', 'NA', '242.0', 'SPM', 3424932),
(181, 'PN', 'Pitcairn Islands', 'NZD', '46', 'PC', '612', '-24.315865', '-24.672565', '-124.77285', '-128.346436', 'Adamstown', 'Oceania', 'OC', '47.0', 'PCN', 4030699),
(182, 'PR', 'Puerto Rico', 'USD', '3916632', 'RQ', '630', '18.520166', '17.926405', '-65.242737', '-67.942726', 'San Juan', 'North America', 'NA', '9104.0', 'PRI', 4566966),
(183, 'PS', 'Palestine', 'ILS', '3800000', 'WE', '275', '32.54638671875', '31.216541290283203', '35.5732955932617', '34.21665954589844', '', 'Asia', 'AS', '5970.0', 'PSE', 6254930),
(184, 'PT', 'Portugal', 'EUR', '10676000', 'PO', '620', '42.154311127408', '36.96125', '-6.18915930748288', '-9.50052660716588', 'Lisbon', 'Europe', 'EU', '92391.0', 'PRT', 2264397),
(185, 'PW', 'Palau', 'USD', '19907', 'PS', '585', '8.46966', '2.8036', '134.72307', '131.11788', 'Melekeok', 'Oceania', 'OC', '458.0', 'PLW', 1559582),
(186, 'PY', 'Paraguay', 'PYG', '6375830', 'PA', '600', '-19.294041', '-27.608738', '-54.259354', '-62.647076', 'Asunción', 'South America', 'SA', '406750.0', 'PRY', 3437598),
(187, 'QA', 'Qatar', 'QAR', '840926', 'QA', '634', '26.154722', '24.482944', '51.636639', '50.757221', 'Doha', 'Asia', 'AS', '11437.0', 'QAT', 289688),
(188, 'RE', 'Réunion', 'EUR', '776948', 'RE', '638', '-20.868391324576944', '-21.383747301469107', '55.838193901930026', '55.21219224792685', 'Saint-Denis', 'Africa', 'AF', '2517.0', 'REU', 935317),
(189, 'RO', 'Romania', 'RON', '21959278', 'RO', '642', '48.2653912058468', '43.6190166499833', '29.7152986907701', '20.2619949052262', 'Bucharest', 'Europe', 'EU', '237500.0', 'ROU', 798549),
(190, 'RS', 'Serbia', 'RSD', '7344847', 'RI', '688', '46.18138885498047', '42.232215881347656', '23.00499725341797', '18.817020416259766', 'Belgrade', 'Europe', 'EU', '88361.0', 'SRB', 6290252),
(191, 'RU', 'Russia', 'RUB', '140702000', 'RS', '643', '81.857361', '41.188862', '-169.05', '19.25', 'Moscow', 'Europe', 'EU', '1.71E7', 'RUS', 2017370),
(192, 'RW', 'Rwanda', 'RWF', '11055976', 'RW', '646', '-1.04716670707785', '-2.84023010213747', '30.8997466415943', '28.8617308206209', 'Kigali', 'Africa', 'AF', '26338.0', 'RWA', 49518),
(193, 'SA', 'Saudi Arabia', 'SAR', '25731776', 'SA', '682', '32.158333', '15.61425', '55.666584', '34.495693', 'Riyadh', 'Asia', 'AS', '1960582.0', 'SAU', 102358),
(194, 'SB', 'Solomon Islands', 'SBD', '559198', 'BP', '090', '-6.589611', '-11.850555', '166.980865', '155.508606', 'Honiara', 'Oceania', 'OC', '28450.0', 'SLB', 2103350),
(195, 'SC', 'Seychelles', 'SCR', '88340', 'SE', '690', '-4.283717', '-9.753867', '56.29770287937299', '46.204769', 'Victoria', 'Africa', 'AF', '455.0', 'SYC', 241170),
(196, 'SD', 'Sudan', 'SDG', '35000000', 'SU', '729', '22.232219696044922', '8.684720993041992', '38.60749816894531', '21.827774047851562', 'Khartoum', 'Africa', 'AF', '1861484.0', 'SDN', 366755),
(197, 'SE', 'Sweden', 'SEK', '9828655', 'SW', '752', '69.0599672666879', '55.3374438220002', '24.155245238099', '11.109499387126', 'Stockholm', 'Europe', 'EU', '449964.0', 'SWE', 2661886),
(198, 'SG', 'Singapore', 'SGD', '4701069', 'SN', '702', '1.471278', '1.258556', '104.007469', '103.638275', 'Singapore', 'Asia', 'AS', '692.7', 'SGP', 1880251),
(199, 'SH', 'Saint Helena', 'SHP', '7460', 'SH', '654', '-7.887815', '-16.019543', '-5.638753', '-14.42123', 'Jamestown', 'Africa', 'AF', '410.0', 'SHN', 3370751),
(200, 'SI', 'Slovenia', 'EUR', '2007000', 'SI', '705', '46.8766275518195', '45.421812998164', '16.6106311807', '13.3753342064709', 'Ljubljana', 'Europe', 'EU', '20273.0', 'SVN', 3190538),
(201, 'SJ', 'Svalbard and Jan Mayen', 'NOK', '2550', 'SV', '744', '80.762085', '79.220306', '33.287334', '17.699389', 'Longyearbyen', 'Europe', 'EU', '62049.0', 'SJM', 607072),
(202, 'SK', 'Slovakia', 'EUR', '5455000', 'LO', '703', '49.603168', '47.728111', '22.570444', '16.84775', 'Bratislava', 'Europe', 'EU', '48845.0', 'SVK', 3057568),
(203, 'SL', 'Sierra Leone', 'SLL', '5245695', 'SL', '694', '10', '6.929611', '-10.284238', '-13.307631', 'Freetown', 'Africa', 'AF', '71740.0', 'SLE', 2403846),
(204, 'SM', 'San Marino', 'EUR', '31477', 'SM', '674', '43.9920929668161', '43.8937002210188', '12.5158490454421', '12.403605260165', 'San Marino', 'Europe', 'EU', '61.2', 'SMR', 3168068),
(205, 'SN', 'Senegal', 'XOF', '12323252', 'SG', '686', '16.691633', '12.307275', '-11.355887', '-17.535236', 'Dakar', 'Africa', 'AF', '196190.0', 'SEN', 2245662),
(206, 'SO', 'Somalia', 'SOS', '10112453', 'SO', '706', '11.979166', '-1.674868', '51.412636', '40.986595', 'Mogadishu', 'Africa', 'AF', '637657.0', 'SOM', 51537),
(207, 'SR', 'Suriname', 'SRD', '492829', 'NS', '740', '6.004546', '1.831145', '-53.977493', '-58.086563', 'Paramaribo', 'South America', 'SA', '163270.0', 'SUR', 3382998),
(208, 'SS', 'South Sudan', 'SSP', '8260490', 'OD', '728', '12.219148635864258', '3.493394374847412', '35.9405517578125', '24.140274047851562', 'Juba', 'Africa', 'AF', '644329.0', 'SSD', 7909807),
(209, 'ST', 'São Tomé and Príncipe', 'STD', '175808', 'TP', '678', '1.701323', '0.024766', '7.466374', '6.47017', 'São Tomé', 'Africa', 'AF', '1001.0', 'STP', 2410758),
(210, 'SV', 'El Salvador', 'USD', '6052064', 'ES', '222', '14.445067', '13.148679', '-87.692162', '-90.128662', 'San Salvador', 'North America', 'NA', '21040.0', 'SLV', 3585968),
(211, 'SX', 'Sint Maarten', 'ANG', '37429', 'NN', '534', '18.065188278978088', '18.006632279377143', '-63.0104194322962', '-63.14146165934278', 'Philipsburg', 'North America', 'NA', '21.0', 'SXM', 7609695),
(212, 'SY', 'Syria', 'SYP', '22198110', 'SY', '760', '37.319138', '32.310665', '42.385029', '35.727222', 'Damascus', 'Asia', 'AS', '185180.0', 'SYR', 163843),
(213, 'SZ', 'Swaziland', 'SZL', '1354051', 'WZ', '748', '-25.719648', '-27.317101', '32.13726', '30.794107', 'Mbabane', 'Africa', 'AF', '17363.0', 'SWZ', 934841),
(214, 'TC', 'Turks and Caicos Islands', 'USD', '20556', 'TK', '796', '21.961878', '21.422626', '-71.123642', '-72.483871', 'Cockburn Town', 'North America', 'NA', '430.0', 'TCA', 3576916),
(215, 'TD', 'Chad', 'XAF', '10543464', 'CD', '148', '23.450369', '7.441068', '24.002661', '13.473475', 'N\'Djamena', 'Africa', 'AF', '1284000.0', 'TCD', 2434508),
(216, 'TF', 'French Southern Territories', 'EUR', '140', 'FS', '260', '-37.790722', '-49.735184', '77.598808', '50.170258', 'Port-aux-Français', 'Antarctica', 'AN', '7829.0', 'ATF', 1546748),
(217, 'TG', 'Togo', 'XOF', '6587239', 'TO', '768', '11.138977', '6.104417', '1.806693', '-0.147324', 'Lomé', 'Africa', 'AF', '56785.0', 'TGO', 2363686),
(218, 'TH', 'Thailand', 'THB', '67089500', 'TH', '764', '20.463194', '5.61', '105.639389', '97.345642', 'Bangkok', 'Asia', 'AS', '514000.0', 'THA', 1605651),
(219, 'TJ', 'Tajikistan', 'TJS', '7487489', 'TI', '762', '41.042252', '36.674137', '75.137222', '67.387138', 'Dushanbe', 'Asia', 'AS', '143100.0', 'TJK', 1220409),
(220, 'TK', 'Tokelau', 'NZD', '1466', 'TL', '772', '-8.553613662719727', '-9.381111145019531', '-171.21142578125', '-172.50033569335938', '', 'Oceania', 'OC', '10.0', 'TKL', 4031074),
(221, 'TL', 'East Timor', 'USD', '1154625', 'TT', '626', '-8.12687015533447', '-9.504650115966797', '127.34211730957031', '124.04464721679688', 'Dili', 'Oceania', 'OC', '15007.0', 'TLS', 1966436),
(222, 'TM', 'Turkmenistan', 'TMT', '4940916', 'TX', '795', '42.795555', '35.141083', '66.684303', '52.441444', 'Ashgabat', 'Asia', 'AS', '488100.0', 'TKM', 1218197),
(223, 'TN', 'Tunisia', 'TND', '10589025', 'TS', '788', '37.543915', '30.240417', '11.598278', '7.524833', 'Tunis', 'Africa', 'AF', '163610.0', 'TUN', 2464461),
(224, 'TO', 'Tonga', 'TOP', '122580', 'TN', '776', '-15.562988', '-21.455057', '-173.907578', '-175.682266', 'Nuku\'alofa', 'Oceania', 'OC', '748.0', 'TON', 4032283),
(225, 'TR', 'Turkey', 'TRY', '77804122', 'TU', '792', '42.107613', '35.815418', '44.834999', '25.668501', 'Ankara', 'Asia', 'AS', '780580.0', 'TUR', 298795),
(226, 'TT', 'Trinidad and Tobago', 'TTD', '1328019', 'TD', '780', '11.338342', '10.036105', '-60.517933', '-61.923771', 'Port of Spain', 'North America', 'NA', '5128.0', 'TTO', 3573591),
(227, 'TV', 'Tuvalu', 'AUD', '10472', 'TV', '798', '-5.641972', '-10.801169', '179.863281', '176.064865', 'Funafuti', 'Oceania', 'OC', '26.0', 'TUV', 2110297),
(228, 'TW', 'Taiwan', 'TWD', '22894384', 'TW', '158', '25.3002899036181', '21.896606934717', '122.006739823315', '119.534691', 'Taipei', 'Asia', 'AS', '35980.0', 'TWN', 1668284),
(229, 'TZ', 'Tanzania', 'TZS', '41892895', 'TZ', '834', '-0.990736', '-11.745696', '40.443222', '29.327168', 'Dodoma', 'Africa', 'AF', '945087.0', 'TZA', 149590),
(230, 'UA', 'Ukraine', 'UAH', '45415596', 'UP', '804', '52.369362', '44.390415', '40.20739', '22.128889', 'Kiev', 'Europe', 'EU', '603700.0', 'UKR', 690791),
(231, 'UG', 'Uganda', 'UGX', '33398682', 'UG', '800', '4.23136926690327', '-1.48153052848838', '35.0010535324228', '29.573465338129', 'Kampala', 'Africa', 'AF', '236040.0', 'UGA', 226074),
(232, 'UM', 'U.S. Minor Outlying Islands', 'USD', '0', '', '581', '28.219814', '-0.389006', '166.654526', '-177.392029', '', 'Oceania', 'OC', '0.0', 'UMI', 5854968),
(233, 'US', 'United States', 'USD', '310232863', 'US', '840', '49.388611', '24.544245', '-66.954811', '-124.733253', 'Washington', 'North America', 'NA', '9629091.0', 'USA', 6252001),
(234, 'UY', 'Uruguay', 'UYU', '3477000', 'UY', '858', '-30.082224', '-34.980816', '-53.073933', '-58.442722', 'Montevideo', 'South America', 'SA', '176220.0', 'URY', 3439705),
(235, 'UZ', 'Uzbekistan', 'UZS', '27865738', 'UZ', '860', '45.575001', '37.184444', '73.132278', '55.996639', 'Tashkent', 'Asia', 'AS', '447400.0', 'UZB', 1512440),
(236, 'VA', 'Vatican City', 'EUR', '921', 'VT', '336', '41.90743830885576', '41.90027960306854', '12.45837546629481', '12.44570678169205', 'Vatican City', 'Europe', 'EU', '0.44', 'VAT', 3164670),
(237, 'VC', 'Saint Vincent and the Grenadines', 'XCD', '104217', 'VC', '670', '13.377834', '12.583984810969037', '-61.11388', '-61.46090317727658', 'Kingstown', 'North America', 'NA', '389.0', 'VCT', 3577815),
(238, 'VE', 'Venezuela', 'VEF', '27223228', 'VE', '862', '12.201903', '0.626311', '-59.80378', '-73.354073', 'Caracas', 'South America', 'SA', '912050.0', 'VEN', 3625428),
(239, 'VG', 'British Virgin Islands', 'USD', '21730', 'VI', '092', '18.757221', '18.383710898211305', '-64.268768', '-64.71312752730364', 'Road Town', 'North America', 'NA', '153.0', 'VGB', 3577718),
(240, 'VI', 'U.S. Virgin Islands', 'USD', '108708', 'VQ', '850', '18.415382', '17.673931', '-64.565193', '-65.101333', 'Charlotte Amalie', 'North America', 'NA', '352.0', 'VIR', 4796775),
(241, 'VN', 'Vietnam', 'VND', '89571130', 'VM', '704', '23.388834', '8.559611', '109.464638', '102.148224', 'Hanoi', 'Asia', 'AS', '329560.0', 'VNM', 1562822),
(242, 'VU', 'Vanuatu', 'VUV', '221552', 'NH', '548', '-13.073444', '-20.248945', '169.904785', '166.524979', 'Port Vila', 'Oceania', 'OC', '12200.0', 'VUT', 2134431),
(243, 'WF', 'Wallis and Futuna', 'XPF', '16025', 'WF', '876', '-13.216758181061444', '-14.314559989820843', '-176.16174317718253', '-178.1848112896414', 'Mata-Utu', 'Oceania', 'OC', '274.0', 'WLF', 4034749),
(244, 'WS', 'Samoa', 'WST', '192001', 'WS', '882', '-13.432207', '-14.040939', '-171.415741', '-172.798599', 'Apia', 'Oceania', 'OC', '2944.0', 'WSM', 4034894),
(245, 'XK', 'Kosovo', 'EUR', '1800000', 'KV', '0', '43.2682495807952', '41.856369601859925', '21.80335088694943', '19.977481504492914', 'Pristina', 'Europe', 'EU', '10908.0', 'XKX', 831053),
(246, 'YE', 'Yemen', 'YER', '23495361', 'YM', '887', '18.9999989031009', '12.1110910264462', '54.5305388163283', '42.5325394314234', 'Sanaa', 'Asia', 'AS', '527970.0', 'YEM', 69543),
(247, 'YT', 'Mayotte', 'EUR', '159042', 'MF', '175', '-12.648891', '-13.000132', '45.29295', '45.03796', 'Mamoudzou', 'Africa', 'AF', '374.0', 'MYT', 1024031),
(248, 'ZA', 'South Africa', 'ZAR', '49000000', 'SF', '710', '-22.126612', '-34.839828', '32.895973', '16.458021', 'Pretoria', 'Africa', 'AF', '1219912.0', 'ZAF', 953987),
(249, 'ZM', 'Zambia', 'ZMW', '13460305', 'ZA', '894', '-8.22436', '-18.079473', '33.705704', '21.999371', 'Lusaka', 'Africa', 'AF', '752614.0', 'ZMB', 895949),
(250, 'ZW', 'Zimbabwe', 'ZWL', '13061000', 'ZI', '716', '-15.608835', '-22.417738', '33.056305', '25.237028', 'Harare', 'Africa', 'AF', '390580.0', 'ZWE', 878675);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `salary` decimal(20,2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `group_name` varchar(50) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `salary`, `email`, `update_at`, `group_name`) VALUES
(17, 'abdulla ', '4567.00', 'alrakib@arisecur.com', '2022-05-04 08:05:11', 'Active'),
(19, 'thth', '435.00', 'dfgsfdadfsaf@fsdsfas.ca', '2022-05-04 08:47:25', 'Active'),
(36, 'abdulla ', '88888.00', '', '2022-05-03 07:42:16', 'Active'),
(37, 'abdulla ', '77777.00', '', '2022-05-03 07:42:16', 'Active'),
(38, 'abdulla ', '543.00', 'dsfoisdsdf@ggoa.com', '2022-05-03 15:26:37', 'Active'),
(40, 'gjhh', '321.00', 'zt', '2022-05-04 08:00:37', 'Active'),
(41, 'gjhh', '320.00', 'rakib0751@gmail.com', '2022-05-04 11:16:43', 'Active'),
(44, 'fgfrrsd', '45543.00', 'dsfoisdsdf@ggoa.com', '2022-05-03 15:26:27', 'Active'),
(46, 'abdulla ', '55645.00', '', '2022-05-03 15:28:46', 'Active'),
(56, 'mr abdullla ', '3421.00', 'emaple@ar.com', '2022-05-03 10:26:09', 'Active'),
(64, 'abdulla al rakib', '11223344.21', 'rakib0751@gmail.com', '2022-05-12 11:51:47', 'Active'),
(66, 'dfgdffd', '34343.00', 'dssd@sdfdsds', '2022-05-04 08:20:47', 'Active'),
(67, 'xxxyyy', '111222.00', 'xxxyyy@com.com', '2022-05-04 08:44:18', 'Active'),
(73, 'abdulla ', '3434.00', 'rakib0751@gmail.com', '2022-05-04 10:01:58', 'Active'),
(80, 'fgfrrsd', '343.66', 'rertertre@erttre.at', '2022-05-04 10:19:35', 'Active'),
(81, '334343dfsdfsdfsda', '55.45', 'sdfdsd@aasd.dsa', '2022-05-11 10:10:20', 'Active'),
(82, 'abdulla ', '3434.43', 'kdjioeds@grimfa.d', '2022-05-04 11:10:23', 'Active'),
(83, 'sdfsd', '222.54', 'dsfoisdsdf@ggoa.com', '2022-05-04 11:10:57', 'Active'),
(84, 'abdulla ', '3434.54', 'rakib0751@gmail.com', '2022-05-04 11:12:17', 'Active'),
(87, 'abdulla ', '4576.00', 'rakib0751@gmail.com', '2022-05-04 11:20:17', 'Active'),
(88, 'abdulla ', '3434.43', 'alrakib@arisecur.com', '2022-05-04 11:20:42', 'Active'),
(89, 'abdulla ', '123.43', 'rakib0751@raa.com', '2022-05-04 11:23:43', 'Active'),
(91, 'abdulla ', '3434.43', 'rakib0751@gmail.com', '2022-05-04 14:18:56', 'Active'),
(92, 'abdulla ', '4567.00', 'alrakib@arisecur.com', '2022-05-04 08:05:11', 'Active'),
(93, 'thth', '435.00', 'dfgsfdadfsaf@fsdsfas.ca', '2022-05-06 11:35:09', 'inactive'),
(94, 'abdulla ', '88888.00', '', '2022-05-05 14:18:58', 'inactive'),
(95, 'abdulla ', '77777.00', '', '2022-05-05 14:18:58', 'inactive'),
(96, 'abdulla ', '543.00', 'dsfoisdsdf@ggoa.com', '2022-05-05 14:18:58', 'inactive'),
(97, 'gjhh', '321.00', 'zt', '2022-05-05 14:18:58', 'inactive'),
(98, 'gjhh', '320.00', 'rakib0751@gmail.com', '2022-05-05 14:18:58', 'inactive'),
(99, 'gjhh', '321.00', 'sds@gfhfhfg', '2022-05-05 14:18:58', 'inactive'),
(100, 'fgfrrsd', '45543.00', 'rakib0751@gmail.com', '2022-05-05 14:18:58', 'inactive'),
(101, 'fgfrrsd', '45543.00', 'dsfoisdsdf@ggoa.com', '2022-05-05 14:18:58', 'inactive'),
(102, 'abdulla ', '55645.00', '', '2022-05-05 14:18:58', 'inactive'),
(121, 'abdulla ', '4567.00', 'alrakib@arisecur.com', '2022-05-04 08:05:11', 'Active'),
(122, 'thth', '435.00', 'dfgsfdadfsaf@fsdsfas.ca', '2022-05-04 08:47:25', 'Active'),
(123, 'abdulla ', '88888.00', '', '2022-05-03 07:42:16', 'Active'),
(124, 'abdulla ', '77777.00', '', '2022-05-03 07:42:16', 'Active'),
(125, 'abdulla ', '543.00', 'dsfoisdsdf@ggoa.com', '2022-05-03 15:26:37', 'Active'),
(127, 'gjhh', '320.00', 'rakib0751@gmail.com', '2022-05-04 11:16:43', 'Active'),
(128, 'fgfrrsd', '45543.00', 'dsfoisdsdf@ggoa.com', '2022-05-03 15:26:27', 'Active'),
(129, 'abdulla ', '55645.00', '', '2022-05-03 15:28:46', 'Active'),
(130, 'mr abdullla ', '3421.00', 'emaple@ar.com', '2022-05-03 10:26:09', 'Active'),
(131, 'abdulla al rakib', '123.00', 'rakib0751@gmail.com', '2022-05-04 08:18:12', 'Active'),
(132, 'dfgdffd', '34343.00', 'dssd@sdfdsds', '2022-05-04 08:20:47', 'Active'),
(133, 'xxxyyy', '111222.00', 'xxxyyy@com.com', '2022-05-04 08:44:18', 'Active'),
(134, 'abdulla ', '3434.00', 'rakib0751@gmail.com', '2022-05-04 10:01:58', 'Active'),
(135, 'fgfrrsd', '343.66', 'rertertre@erttre.at', '2022-05-04 10:19:35', 'Active'),
(136, '334343dfsdfsdfsda', '565.00', 'sdfdsd@aasd.dsa', '2022-05-11 10:10:44', 'Active'),
(137, 'abdulla ', '3434.43', 'kdjioeds@grimfa.d', '2022-05-04 11:10:23', 'Active'),
(138, 'sdfsd', '222.54', 'dsfoisdsdf@ggoa.com', '2022-05-04 11:10:57', 'Active'),
(139, 'abdulla ', '3434.54', 'rakib0751@gmail.com', '2022-05-04 11:12:17', 'Active'),
(140, 'abdulla ', '4576.00', 'rakib0751@gmail.com', '2022-05-04 11:20:17', 'Active'),
(141, 'abdulla ', '3434.43', 'alrakib@arisecur.com', '2022-05-04 11:20:42', 'Active'),
(142, 'abdulla ', '123.43', 'rakib0751@raa.com', '2022-05-04 11:23:43', 'Active'),
(143, 'abdulla ', '3434.43', 'rakib0751@gmail.com', '2022-05-04 14:18:56', 'Active'),
(144, 'abdulla ', '4567.00', 'alrakib@arisecur.com', '2022-05-04 08:05:11', 'Active'),
(145, 'thth', '435.00', 'dfgsfdadfsaf@fsdsfas.ca', '2022-05-06 11:35:05', 'inactive'),
(146, 'abdulla ', '88888.00', '', '2022-05-05 14:18:58', 'inactive'),
(147, 'abdulla ', '77777.00', '', '2022-05-05 14:18:58', 'inactive'),
(148, 'abdulla ', '543.00', 'dsfoisdsdf@ggoa.com', '2022-05-05 14:18:58', 'inactive'),
(149, 'gjhh', '321.00', 'zt', '2022-05-05 14:18:58', 'inactive'),
(150, 'gjhh', '320.00', 'rakib0751@gmail.com', '2022-05-05 14:18:58', 'inactive'),
(151, 'gjhh', '321.00', 'sds@gfhfhfg', '2022-05-05 14:18:58', 'inactive'),
(152, 'fgfrrsd', '45543.00', 'rakib0751@gmail.com', '2022-05-05 14:18:58', 'inactive'),
(153, 'fgfrrsd', '45543.00', 'dsfoisdsdf@ggoa.com', '2022-05-05 14:18:58', 'inactive'),
(154, 'abdulla ', '55645.00', '', '2022-05-05 14:18:58', 'inactive'),
(155, 'fgfrrsd', '45543.00', 'rakib0751@gmail.com', '2022-05-05 14:18:58', 'inactive'),
(156, 'fgfrrsd', '45543.00', 'dsfoisdsdf@ggoa.com', '2022-05-05 14:18:58', 'inactive'),
(157, 'abdulla ', '55645.00', 'rakib0751@gmail.com', '2022-05-12 08:56:01', 'inactive'),
(158, 'michael', '43242.00', 'michael@gmail.com', '2022-05-12 08:56:32', 'Active'),
(161, 'asasa', '3434.43', 'saaas@fdasdf.dde', '2022-05-12 08:57:49', 'Active'),
(162, 'qwwewqe', '1232.00', 'rakib0751@gmail.com', '2022-05-12 08:59:09', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- Database: `querybuilder`
--
CREATE DATABASE IF NOT EXISTS `querybuilder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `querybuilder`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `salpro`
--
CREATE DATABASE IF NOT EXISTS `salpro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `salpro`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `unistudent`
--
CREATE DATABASE IF NOT EXISTS `unistudent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `unistudent`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `firstname`, `lastname`) VALUES
(25, 'abdulla', 'rakib'),
(28, 'abdulla', 'rakib'),
(29, 'abdulla', 'rakib'),
(30, 'abdulla', 'rakib'),
(31, 'abdulla', 'rakib');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
