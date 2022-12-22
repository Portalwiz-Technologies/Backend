-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 01:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms1.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_phone` varchar(255) NOT NULL,
  `account_display_name` varchar(255) NOT NULL,
  `account_logo` varchar(255) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `active_status_id` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `Updated_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_name`, `account_phone`, `account_display_name`, `account_logo`, `account_email`, `active_status_id`, `created_by`, `Updated_by`, `created_at`, `updated_at`) VALUES
(1, 'portalwiz', '9022757715', '', 'tree', 'pawarprajot2772001@gmail.com', 1, 'sadik', 'sadik', NULL, NULL),
(2, 'Synechron', '9022757715', 'hjjk', 'tree', 'pawarprajot2772001@gmail.com', 1, 'sadik', 'sadik', '2022-12-16 01:33:56', '2022-12-16 01:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_types`
--

CREATE TABLE `applicant_types` (
  `enquiry_type_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `enquiry_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_types`
--

INSERT INTO `applicant_types` (`enquiry_type_id`, `account_id`, `enquiry_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'gold', NULL, '2022-12-16 02:59:03'),
(2, 1, 'old', '2022-12-16 02:47:29', '2022-12-16 02:47:29'),
(3, 1, 'sold', '2022-12-16 02:57:02', '2022-12-16 02:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry__statuses`
--

CREATE TABLE `enquiry__statuses` (
  `enquiry_status_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `enquiry_status` varchar(255) NOT NULL,
  `active_status_id` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiry__statuses`
--

INSERT INTO `enquiry__statuses` (`enquiry_status_id`, `account_id`, `enquiry_status`, `active_status_id`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'New', 1, 'C#123', NULL, NULL),
(2, 1, 'true', 1, 'C#123', '2022-12-16 03:11:11', '2022-12-16 03:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_12_15_101433_create_accounts_table', 1),
(5, '2022_12_15_102300_create_applicant_types_table', 1),
(6, '2022_12_15_102422_create_enquiry__statuses_table', 1),
(7, '2022_12_15_115838_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `active_status_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `country_code_id_1` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `country_code_id_2` varchar(255) NOT NULL,
  `alternate_phone` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `alternate_email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `pan_number` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `Updated_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `account_id`, `role_id`, `active_status_id`, `first_name`, `last_name`, `company_name`, `country_code_id_1`, `user_phone`, `country_code_id_2`, `alternate_phone`, `user_email`, `alternate_email`, `username`, `password`, `otp`, `dob`, `pan_number`, `city`, `created_by`, `Updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', 'Sunil', 'panase', 'Infosys', '91', '9022757715', '91', '9022757715', 'pawarprajot2672001@gmail.com', 'ganash@gmail.com', 'sunil', '123', '123', '2022-12-06', 'vghh34jj', 'pune', 'Sunil', 'ganash', NULL, '2022-12-15 07:34:23'),
(2, 1, '1', '1', 'Sunil', 'panase', 'Infosys', '91', '9022757715', '91', '9022757715', 'pawarprajot2672001@gmail.com', 'ganash@gmail.com', 'ganash', '123', '123', '2022-12-06', 'vghh34jj', 'pune', 'Sunil', 'ganash', '2022-12-15 07:32:31', '2022-12-15 07:32:31'),
(3, 1, '1', '1', 'Sadik', 'bagawan', 'Infosys', '91', '9022757715', '91', '9022757715', 'pawarprajot2672001@gmail.com', 'ganash@gmail.com', 'sunil', '123', '123', '2022-12-06', 'vghh34jj', 'pune', 'Sunil', 'ganash', '2022-12-16 01:51:04', '2022-12-16 01:51:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `applicant_types`
--
ALTER TABLE `applicant_types`
  ADD PRIMARY KEY (`enquiry_type_id`),
  ADD KEY `applicant_types_account_id_foreign` (`account_id`);

--
-- Indexes for table `enquiry__statuses`
--
ALTER TABLE `enquiry__statuses`
  ADD PRIMARY KEY (`enquiry_status_id`),
  ADD KEY `enquiry__statuses_account_id_foreign` (`account_id`);

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
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `users_account_id_foreign` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applicant_types`
--
ALTER TABLE `applicant_types`
  MODIFY `enquiry_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry__statuses`
--
ALTER TABLE `enquiry__statuses`
  MODIFY `enquiry_status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_types`
--
ALTER TABLE `applicant_types`
  ADD CONSTRAINT `applicant_types_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `enquiry__statuses`
--
ALTER TABLE `enquiry__statuses`
  ADD CONSTRAINT `enquiry__statuses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
