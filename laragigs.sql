-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220609.11e34a6fec
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 04:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laragigs`
--

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
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `logo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rem esse qui veniam asperiores iure ab.', 'laravel,api,backend', 'Abshire, Bednar and Heathcote', 'Dedrickfort', 'buddy43@ebert.com', 'https://friesen.com/vel-non-sapiente-nisi-dolores.html', NULL, 'Quaerat incidunt facilis qui natus beatae. Et quo vel libero ratione quo sint et nostrum. Quia ea cupiditate quas consequatur quod eaque ratione. Vero error maiores quas laborum unde tenetur ea.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(2, 'Voluptate omnis natus saepe omnis impedit delectus.', 'laravel,api,backend', 'Grimes, Okuneva and Barton', 'Lefflerbury', 'gunnar.bergnaum@feest.com', 'http://www.mclaughlin.com/commodi-excepturi-voluptatem-aut-ea-blanditiis-nihil.html', NULL, 'Itaque blanditiis nemo in nihil quis. Qui sint ut nisi consequatur incidunt aut est. Suscipit quisquam sed expedita aperiam adipisci praesentium. Aspernatur ut hic qui odit corrupti ut maxime. Cumque qui quia qui ut similique facere. Dolores id nisi facere voluptates sit aut rerum.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(3, 'Esse voluptatem modi aut dolores ipsum.', 'laravel,api,backend', 'Haley and Sons', 'West Jade', 'johns.joannie@keeling.com', 'http://crona.info/aut-dolorem-accusamus-sunt-reiciendis-dolor', NULL, 'Velit quae quidem magnam blanditiis. Ut ut accusamus quia est eius et et. Mollitia sunt quia modi saepe architecto sapiente. Ea sed corrupti optio atque consequatur consequatur consectetur. Ratione veniam et maxime et. Qui eos aliquid ipsum asperiores et.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(4, 'Repellat similique et laudantium vero quia.', 'laravel,api,backend', 'Rolfson PLC', 'Lilliemouth', 'devante.wolff@schowalter.com', 'http://cremin.com/dolor-omnis-enim-vel-dolor.html', NULL, 'Impedit qui dolores dolor harum ut animi ullam. Quae ut nobis nihil provident nam iste. Voluptas nobis corrupti molestias voluptatem quam. Architecto facilis sequi eos sed repellendus consequatur hic occaecati.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(5, 'Officia et officiis eveniet dolores distinctio.', 'laravel,api,backend', 'Batz Group', 'Leannonstad', 'lucile.crona@littel.com', 'https://reichel.com/qui-reprehenderit-id-blanditiis-minus-itaque-placeat.html', NULL, 'Sint ex vel libero dolorem. In corporis enim beatae tempora sunt facilis. Harum aut quae aut est ut. Sed sed ut minus tempore magni nobis aut.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(6, 'Voluptatum dolorum temporibus maxime aut error.', 'laravel,api,backend', 'Medhurst, Pfeffer and Legros', 'East Merrittmouth', 'wlehner@hessel.com', 'http://bode.com/', NULL, 'Explicabo alias id consequuntur voluptas aspernatur velit. Voluptas hic corrupti qui suscipit omnis unde quis architecto. Similique quae et molestiae velit voluptates quod est. Fugiat consectetur commodi qui doloremque.', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(8, 'fsdfsdfsd', 'laravel, php, api, docker, javascript,test', 'asfsdfers', 'sdfasfasdf', 'eva@mail.com', 'https://www.hellovienna.com', 'logos/5q504615cSyJKsF5aIcEX95kbbraFOpUcLE2BVCc.jpg', 'dwesewrsdfert', '2022-06-13 09:50:39', '2022-06-13 10:19:16'),
(9, 'fsdfsdfsd', 'laravel, php, api, docker, javascript', 'asfsdfers', 'sdfasfasdf', 'eva@mail.com', 'https://www.hellovienna.com', 'logos/YxscRzEkSZ8cKiUaghG07SMT7WJJpS3W5lxDDmDW.webp', 'dwesewrsdfert', '2022-06-13 10:16:27', '2022-06-13 10:16:27');

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
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2022_06_07_130831_create_listings_table', 1);

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
(1, 'Dr. Sydni Doyle', 'alanna.wilderman@example.com', '2022-06-13 08:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I8cA9R68jb', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(2, 'Dillan Russel', 'felipa.bogisich@example.net', '2022-06-13 08:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8yAti3StmB', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(3, 'Rozella Collins', 'josefa.mclaughlin@example.org', '2022-06-13 08:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4kWGl6nGQ9', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(4, 'Krista Kreiger', 'friedrich.kuhn@example.org', '2022-06-13 08:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'svO3xtuhg2', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(5, 'Ian Mohr', 'cynthia.gaylord@example.org', '2022-06-13 08:43:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WDoeeQlvyU', '2022-06-13 08:43:06', '2022-06-13 08:43:06'),
(6, 'abdulla', 'abc@gmail.com', NULL, '$2y$10$dhjQ6A0MKfwqb1OSpKdqKehI1z8GgZsj/HIb6Ui3i4HSETLOqa/9.', NULL, '2022-06-13 12:09:00', '2022-06-13 12:09:00'),
(7, 'abdulla', 'abi@mail.com', NULL, '$2y$10$hzfrUuwwG.dapJq.GLR3J.lRGFFoIkDTHGEQcxr/vJ0gYlFW5pXsG', NULL, '2022-06-13 12:29:29', '2022-06-13 12:29:29');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



