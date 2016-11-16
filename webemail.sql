-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2016 at 09:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webemail`
--

-- --------------------------------------------------------

--
-- Table structure for table `caixas`
--

CREATE TABLE `caixas` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caixas`
--

INSERT INTO `caixas` (`id`, `email`, `assunto`, `mensagem`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'g@mail.com', 'hdsk', 'hskdhjid', 4, '2016-11-16 16:01:34', '2016-11-16 16:01:34'),
(2, 'daw@gmail.com', 'jsdkj', 'kjks', 4, '2016-11-16 16:12:13', '2016-11-16 16:12:13'),
(3, 'cm@gmail.com', 'Aula', 'Aula teste', 5, '2016-11-16 16:14:56', '2016-11-16 16:14:56'),
(4, 'teste@yahoo.com', 'DDD', 'message', 4, '2016-11-16 16:33:42', '2016-11-16 16:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_16_065103_create_caixas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Mazive', 'mazive@gmail.com', '$2y$10$wufSq6k9KkgYRYIgFIfnDuJ6hi8xH1Gf0mysS0YSeJWBAVhjDop7.', 'Khm8OtYILs2O3jY1WEG62Crvrc0YUW8FKLJTVCguGvWeHo2NfR3cGZcECWI3', '2016-11-16 15:35:50', '2016-11-16 16:33:54'),
(5, 'Simao', 'mzv@gmail.com', '$2y$10$4gRTCEQpUZnJnmLiqZO1rOshE2Q4b8m1MCaCqIvgRvGHz77CJ6q0m', 'nR9I6SBmHzxoQFyIj0XYweNn3SvIbtlXPZIz1C7H8qNE1RG66uqrkFNcrgqI', '2016-11-16 16:14:13', '2016-11-16 16:30:23'),
(6, 'Tembe', 't@uem.com', '$2y$10$PE4fH2Q/MM2783kiVOtzO.XqApGBdv5A13aQJjRtpwBbzxS.rwAZy', 'B9bePkSuoZlmHITYz6lKApVMy5QpNbHVRQxxse1c3qB9bHMxFY80azAuDBW2', '2016-11-16 16:37:16', '2016-11-16 16:37:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caixas_email_unique` (`email`),
  ADD KEY `caixas_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `caixas`
--
ALTER TABLE `caixas`
  ADD CONSTRAINT `caixas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
