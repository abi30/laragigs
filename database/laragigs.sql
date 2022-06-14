-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220609.11e34a6fec
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 03:01 PM
-- Server version: 10.4.24-MariaDB
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `listings` (`id`, `user_id`, `title`, `tags`, `company`, `location`, `email`, `website`, `logo`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Voluptatem possimus et optio labore occaecati amet tempore provident.', 'laravel,api,backend', 'Satterfield, Green and Nolan', 'New Sydneyhaven', 'lgerhold@padberg.biz', 'http://www.block.info/laboriosam-ratione-velit-libero-molestiae-consequatur', NULL, 'Tempora nulla commodi nisi hic. Qui aut quaerat rem expedita rerum. Sit eum impedit saepe voluptatem. Et sed repellendus non quia perspiciatis. Ut quia modi in veritatis voluptatem mollitia qui.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(2, 1, 'Quis mollitia omnis dolores incidunt error.', 'laravel,api,backend', 'Bahringer Ltd', 'Kevonview', 'emmitt21@cruickshank.com', 'http://www.rogahn.com/quibusdam-sint-deleniti-blanditiis-similique-consectetur-ducimus-vel.html', NULL, 'Autem et quidem rerum quae harum aliquid. Optio voluptatem autem numquam et vel. Non ut ad voluptas. Eos voluptatum eaque voluptate quia iusto. Mollitia repellendus voluptas odit.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(3, 1, 'Doloribus voluptatem occaecati sit magnam minus omnis et illum.', 'laravel,api,backend', 'Miller-Steuber', 'Daughertymouth', 'zleuschke@feest.com', 'http://davis.info/', NULL, 'Dolore neque magni saepe et eum. Optio sequi sed quo qui. Perferendis autem nam recusandae sint cupiditate numquam reprehenderit. Rerum qui commodi cumque aperiam architecto ut quo quaerat. Est dolor eos rerum nesciunt minus.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(4, 1, 'Praesentium ut ipsa officia et.', 'laravel,api,backend', 'Farrell, Leffler and Lindgren', 'New Janice', 'ashley82@herman.org', 'https://conroy.net/consequatur-animi-esse-impedit-libero.html', NULL, 'At ducimus amet ipsum id. Nesciunt amet optio harum esse ut voluptas itaque. Non ut et perferendis praesentium molestiae. Non esse quisquam delectus adipisci qui rerum quo molestiae. Harum error fuga illo vel illo.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(5, 1, 'Aut distinctio labore cumque perspiciatis fugiat doloribus.', 'laravel,api,backend', 'Herman, Bernhard and Trantow', 'North Carystad', 'garland.hand@kihn.com', 'http://www.tillman.com/nemo-qui-aspernatur-perspiciatis-veniam-voluptas-cupiditate-minus', NULL, 'Et reiciendis sint debitis sit quia dignissimos. Nemo aperiam omnis nobis suscipit illo vero. Aut ut ipsam dolores consectetur iure asperiores omnis. Ducimus repudiandae et architecto.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(6, 1, 'Sed at autem iusto iusto.', 'laravel,api,backend', 'Lehner Ltd', 'Makennaview', 'dayne.bauch@quitzon.com', 'http://dibbert.com/harum-harum-vel-officia-quibusdam-sed-et-modi-maiores.html', NULL, 'Placeat et eligendi dolore deleniti culpa cumque qui. Dolorum sed consequuntur illum molestias velit quia vitae. Impedit a laudantium rem praesentium. Placeat ab est provident quasi quia dignissimos. Reprehenderit ut facilis eligendi officia voluptatem corporis possimus.', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(9, 2, 'laravel developer', 'laravel, php, api, docker, javascript', 'dsa GmbH', 'vienna austria', 'rakib@gmail.com', 'https://www.hellovienna.com', 'logos/6IAvrK6aqnvWgZwiL41S0LgoHCyRfbQ69U3mSXjS.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-06-14 10:51:04', '2022-06-14 10:51:39'),
(10, 2, 'software developer', 'php,laravel,api,docker,typescript', 'abc company dssfsfs', 'Remote, vinna, Austria', 'rakib0751@gmail.com', 'http://www.helllo.com', 'logos/DezVGJ5rk98aft0XE9LhxlrPcPGpqbzTqhQEUmyP.webp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-06-14 10:53:30', '2022-06-14 10:53:30');

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
(1, 'John', 'john@mail.com', '2022-06-14 10:33:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S7mUhD3qTW', '2022-06-14 10:33:30', '2022-06-14 10:33:30'),
(2, 'abdulla', 'rakib0751@gmail.com', NULL, '$2y$10$aQ1O17GvYlR6MUDhPU2pWuOAhEThcJnVvxT6.XGT8JUfiaj.M0oD6', NULL, '2022-06-14 10:34:07', '2022-06-14 10:34:07');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



