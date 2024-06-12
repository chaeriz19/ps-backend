-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 01:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps-backend`
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
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_10_093432_create_movies_table', 2),
(6, '2024_06_12_114300_create_favorite_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` smallint(5) UNSIGNED NOT NULL,
  `minutes` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `movie_type`, `year`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'Tenetur quod error illo beatae rerum eligendi.', 'Action', 1979, 141, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(2, 'Repellat delectus non natus hic qui quo.', 'Comedy', 1955, 217, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(3, 'Excepturi qui soluta a dicta laboriosam vel et.', 'Action', 1959, 210, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(4, 'Porro accusamus quos in quae omnis quidem aspernatur qui.', 'Drama', 1949, 129, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(5, 'Quisquam beatae dignissimos dolores voluptatibus distinctio cupiditate.', 'Thriller', 1984, 125, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(6, 'Harum quisquam dicta soluta quo nesciunt ut.', 'Action', 2019, 165, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(7, 'Ut consequuntur nihil molestias in magnam veniam.', 'Comedy', 1958, 64, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(8, 'Ut quia sint dolorum corporis labore sed.', 'Drama', 2000, 184, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(9, 'Sint vel nostrum voluptatem provident voluptas.', 'Action', 1922, 239, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(10, 'Est animi aut laborum est aut.', 'Comedy', 1975, 177, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(11, 'Assumenda quisquam est repellat aspernatur.', 'Horror', 2016, 208, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(12, 'Et commodi non esse vitae minima.', 'Horror', 2007, 100, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(13, 'Maiores ipsum earum architecto voluptas.', 'Horror', 2011, 112, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(14, 'Praesentium sint et sint velit in quia qui omnis.', 'Action', 1937, 104, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(15, 'Impedit nemo velit vel inventore vel labore sunt.', 'Horror', 1997, 235, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(16, 'Nihil consequatur et officiis reprehenderit illum molestiae.', 'Thriller', 1947, 109, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(17, 'Voluptatem error sed ducimus hic.', 'Drama', 2013, 69, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(18, 'Quibusdam culpa magni et vitae.', 'Horror', 1988, 162, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(19, 'Labore id deleniti alias veritatis cumque.', 'Comedy', 1900, 113, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(20, 'Minus voluptas quia sit aliquam.', 'Horror', 1948, 92, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(21, 'Temporibus neque iusto qui et qui nobis.', 'Thriller', 1916, 137, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(22, 'Velit quisquam modi quidem quia dolores quas perspiciatis.', 'Horror', 1964, 73, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(23, 'Et praesentium magnam sit voluptate nulla recusandae corrupti.', 'Action', 2007, 183, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(24, 'Quis mollitia neque facere dolor qui.', 'Action', 1948, 221, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(25, 'Quia numquam ipsum nisi saepe aut.', 'Drama', 1997, 92, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(26, 'Dolores quas ullam velit vitae sit officia ea.', 'Action', 1992, 67, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(27, 'Aut necessitatibus possimus vitae dignissimos consequatur.', 'Comedy', 1918, 124, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(28, 'Est fuga reprehenderit at omnis est ullam aliquid.', 'Drama', 1900, 97, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(29, 'Architecto nemo fugit omnis consequatur in.', 'Drama', 1930, 68, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(30, 'Ipsum enim consequatur hic.', 'Horror', 1931, 221, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(31, 'Est quibusdam dolorem harum corporis accusamus.', 'Thriller', 1940, 172, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(32, 'Quidem excepturi a aut autem et laudantium.', 'Drama', 1989, 125, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(33, 'Labore incidunt magni velit labore.', 'Comedy', 1981, 87, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(34, 'Dicta in aliquid sed omnis vitae.', 'Horror', 1995, 180, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(35, 'Blanditiis dolores et quas ut cupiditate est ab ut.', 'Action', 2005, 99, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(36, 'Est rerum sequi aut doloremque.', 'Horror', 1915, 82, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(37, 'Eos perferendis est tempore.', 'Horror', 1966, 220, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(38, 'Nobis est iure inventore pariatur iure laudantium.', 'Drama', 1982, 215, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(39, 'Autem quia adipisci maiores esse possimus.', 'Drama', 1926, 150, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(40, 'Asperiores esse qui neque commodi corrupti.', 'Horror', 1963, 113, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(41, 'Et modi dolorum quasi.', 'Drama', 1971, 205, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(42, 'Rerum doloribus nihil sunt.', 'Thriller', 1939, 195, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(43, 'Inventore officiis similique modi veritatis aperiam aliquid voluptate.', 'Horror', 1959, 80, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(44, 'Accusantium quo voluptates fuga facilis.', 'Horror', 1979, 183, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(45, 'Distinctio perferendis dolorum amet eius libero voluptatem aperiam.', 'Drama', 1926, 132, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(46, 'Eius perspiciatis harum autem voluptates aut.', 'Horror', 1918, 166, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(47, 'Est veniam nisi illo quia.', 'Drama', 1918, 124, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(48, 'Corporis libero illo aut.', 'Thriller', 2009, 150, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(49, 'Quod eum iure eos occaecati.', 'Horror', 1902, 203, '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(50, 'Possimus sed ea illum in veniam.', 'Thriller', 1917, 217, '2024-06-10 08:33:57', '2024-06-10 08:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\User', 2, 'Access Token', 'c412233339799e6b2f865c9fc372efb2a07714ea623e1615a0e33bfb368f9309', '[\"*\"]', '2024-06-11 09:11:39', NULL, '2024-06-11 08:49:12', '2024-06-11 09:11:39'),
(10, 'App\\Models\\User', 113, 'Access Token', 'd0c5ac641a254acf90d2e01dd0877089047309bd447d143bc8e6d86e3a36139a', '[\"*\"]', '2024-06-12 09:38:24', NULL, '2024-06-12 08:35:25', '2024-06-12 09:38:24');

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
(2, 'Bailey McClure MD', 'pwillms@example.net', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', '905jd9LPKa', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(4, 'Avery Aufderhar', 'casper.lou@example.net', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'GdZWAttd9w', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(5, 'Dion Pfeffer', 'erik.von@example.org', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'iHKTVkOIDA', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(6, 'Ludwig Bergnaum', 'romaine.abshire@example.org', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'MM7I3u00ib', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(7, 'Leif Reynolds', 'javon03@example.org', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'nUz5ByCdA5', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(8, 'Prof. Jay Halvorson', 'cleo.dietrich@example.com', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'Fgqum3nXqu', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(9, 'Elwin Borer', 'kadin.breitenberg@example.org', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'nNZ1OdMkLf', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(10, 'Rubye McClure', 'emely82@example.net', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'cdq3DaEsZN', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(11, 'Darien Jakubowski', 'paris.borer@example.com', '2024-06-10 07:01:03', '$2y$12$NDZF84cjo4c1vvLIvBUAHucpOcVpGFbgEDVvpu9nTyHLoMTb4/ZMC', 'g4YHphQPyw', '2024-06-10 07:01:03', '2024-06-10 07:01:03'),
(12, 'Rosendo Gislason', 'maud.borer@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'vcxk4kiHLB', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(13, 'Lorenza Dach', 'charity77@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Yr0EMYJVbF', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(14, 'Mrs. Destini Schultz MD', 'elroy.monahan@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '0tkjqxgh40', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(15, 'Dayton Gerhold', 'cpredovic@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'ne7TQdt576', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(16, 'Noemi Ebert', 'vlowe@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'mHB813rySF', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(17, 'Lavina Harris', 'klein.walker@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Vc0RZmnzNU', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(18, 'Dr. Alison Stoltenberg IV', 'grimes.gaetano@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'KmydISRWzs', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(19, 'Amari Bechtelar', 'kconroy@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'bPv9nT02MH', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(20, 'Fredrick Cassin', 'ktoy@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '1Bi0MJF5Pv', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(21, 'Mrs. Madeline Satterfield', 'alfred.heathcote@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '0Wh1g37ySZ', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(22, 'Mrs. Hope Lemke', 'rstrosin@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Kma5KF5pMC', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(23, 'Esther Bauch', 'earnestine25@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'VaLiyI7AXz', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(24, 'Nelda Hahn', 'warren.leffler@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '92mE0I2a6W', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(25, 'Maureen Stoltenberg', 'mleuschke@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'cqkxE4R3lf', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(26, 'Mr. Cary Schimmel IV', 'glover.dennis@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '97o0c0D8nh', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(27, 'Beatrice Ondricka', 'maeve.brown@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'NeTBOpwqQY', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(28, 'Wanda Leuschke', 'yost.archibald@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '52wwsJ0IyO', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(29, 'Ezekiel Pouros', 'dangelo89@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'URRDS81uMn', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(30, 'Paul Streich', 'augustus.stanton@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'kIRx0YNtm6', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(31, 'Amya Kshlerin', 'tillman.tristin@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'gle74PbHFI', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(32, 'Monte Schuppe', 'yhettinger@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'rgKUqH4usb', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(33, 'Dr. Foster Emmerich', 'fupton@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'pY18CUF9tr', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(34, 'Dr. Domenic Schumm', 'vincenza23@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'QbgaQAZ3T4', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(35, 'Queen Gleason', 'carmella36@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'zQgCtdbH9j', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(36, 'Fabiola Hyatt', 'dwitting@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'GBAQnmAMgC', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(37, 'Ms. Nina Collier DVM', 'kacie.crona@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'nDxxPhdPJj', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(38, 'Jarret Beer IV', 'durgan.sarah@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'kGInNoKmSc', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(39, 'Ena Hagenes', 'lindgren.helene@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'ibibarlZgD', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(40, 'Edwina Blick', 'kboehm@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'RS58tN4PiT', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(41, 'Matilda Auer', 'josephine70@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'knMZHxgUaj', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(42, 'Kayden Schamberger', 'mosciski.jodie@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Gl7sWz9I1p', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(43, 'Miss Rafaela Hilpert', 'xberge@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'EySjxFL6Wd', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(44, 'Jessica Herzog', 'nwalker@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Gw58ov6PmR', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(45, 'Alana Reynolds', 'kirlin.destini@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'NGLQTt8QnM', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(46, 'Anastacio Bruen', 'queen73@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'gnXSQQ5WMV', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(47, 'Lavina Harber', 'veda59@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'o00N5r26Cv', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(48, 'Eulah Treutel', 'eula22@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '4L924YK0Lv', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(49, 'Dr. Ismael Dickinson III', 'gene.rodriguez@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'NlodTyF4n8', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(50, 'Kaleigh Rippin III', 'durgan.frederick@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'xlNkzNaZ7J', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(51, 'Lindsay Prohaska', 'fhand@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'fHmySac675', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(52, 'Mr. Fredrick Ebert', 'delores.jacobson@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'r67mnMiFX3', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(53, 'Rocio Parisian', 'halvorson.alana@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '9uj3TqncV5', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(54, 'Miss Catherine Schamberger PhD', 'stanton.queenie@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'f5vVTBLHEP', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(55, 'Catherine Considine', 'ustanton@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '9Q8XKn5lo6', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(56, 'Dr. Faustino Rippin Jr.', 'funk.pearl@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'OdXUF2UgPC', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(57, 'Zetta Koch', 'rrunolfsson@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'bHrcS89Dz8', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(58, 'Gust Becker', 'blanda.liana@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'kCH5OFUhGF', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(59, 'Kristopher Bashirian', 'tyreek.kassulke@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'xFQqaoz9u2', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(60, 'Agustin Rodriguez III', 'enrique.dietrich@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'cpjvraMQXH', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(61, 'Dr. Baby Hickle', 'nmann@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'ha0OWzMQGn', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(62, 'Ronny Skiles', 'marta72@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '5zbUjYNERC', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(63, 'Breana Hackett', 'tskiles@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'vBUV5OQ9PD', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(64, 'Janelle Runolfsson', 'herzog.carolina@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'f7yBI1sdmm', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(65, 'Eli Pollich', 'juston11@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'IaLWXLbWqM', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(66, 'Dr. Camilla Feil I', 'gerald.orn@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'PiOQnvRFN0', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(67, 'Efren Rath', 'camila79@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'PLhLwA0ZHz', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(68, 'Elmore Fahey', 'murray.duncan@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'PyeBQ1U8V8', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(69, 'Orlando Mraz', 'gabriella.lowe@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '4cE1iUD7h2', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(70, 'Ibrahim Frami', 'janet19@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'CRr4vwczc2', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(71, 'Dr. Christy Schuster II', 'jacynthe.davis@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'mhzyeZq0qK', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(72, 'Nikolas Heller', 'brooklyn23@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'ElE4V6FXOU', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(73, 'Dr. Estell Leannon IV', 'jacquelyn71@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '4WtWJVxL44', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(74, 'Prof. Ashlee Schuster DDS', 'goyette.lora@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'LmDKvoxfvU', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(75, 'Amina Daniel', 'dallas01@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'XSURsgl3XJ', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(76, 'Leonor Franecki', 'fae97@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'gChBzUD32i', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(77, 'Larissa Mertz', 'jovan89@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'irNiF2ZCyZ', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(78, 'Sophie Orn', 'draynor@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'XSZFNpKGc3', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(79, 'Dr. Johnny Labadie PhD', 'arnoldo25@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'IrQcKWGlgV', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(80, 'Fredy Kulas', 'valentine59@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'a6Kpm0JAFV', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(81, 'Mathilde Monahan', 'johnson.don@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'FjpumWhpJ3', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(82, 'Lonnie Gusikowski', 'garrison06@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '9WepSgmPvg', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(83, 'Jalen Grimes', 'iwelch@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '5cjZzicBib', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(84, 'Dr. Frank Kirlin', 'krystina.schinner@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'bRx7vqCrvz', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(85, 'Warren Swaniawski', 'lisette.olson@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'VQCrgs5OaD', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(86, 'Deron Borer', 'ford87@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'aZlYK87XUL', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(87, 'Terence Ullrich', 'lucy.legros@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'whBk4ebbsy', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(88, 'Prof. Murphy Mertz', 'addison22@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '13OOl1hxR3', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(89, 'Zoe Moen', 'brando.bauch@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'jo4ZRAj6PZ', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(90, 'Letitia Shanahan', 'switting@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '2jIELs8SBi', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(91, 'Mr. Patrick Grady DDS', 'fanny.fadel@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'Qwjyj2dkwV', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(92, 'Teagan Krajcik', 'krista.yundt@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'smUtbPQiir', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(93, 'Jevon Williamson', 'jerome28@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'hyrmkRySOI', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(94, 'Melody Heidenreich', 'stan.jacobi@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'T1NFaTT1LP', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(95, 'Sandy Grady', 'johnnie.dicki@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', '5x4i6IGvhC', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(96, 'Madisen Monahan', 'orn.daisy@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'ZZgLk69PbE', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(97, 'Devin Ryan V', 'kemmer.delfina@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'CsTe1itCK2', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(98, 'Dr. Lance Berge Jr.', 'neha.johns@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'fbdXYypJMJ', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(99, 'Pinkie Paucek', 'klein.victoria@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'hdE2ekHXAG', '2024-06-10 08:33:56', '2024-06-10 08:33:56'),
(100, 'Prof. Quinton Glover DVM', 'sylvan.cronin@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'st8rOU28D7', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(101, 'Ms. Luisa Lindgren PhD', 'autumn.pfannerstill@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'NN61ulojEg', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(102, 'Kyleigh Flatley Sr.', 'matt85@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'CDH9y1KSd9', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(103, 'Horacio Kohler', 'dhahn@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'lXdhyQUZSF', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(104, 'Prof. Ezra Jenkins III', 'emerson36@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'vhAgPyeseO', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(105, 'Ronny Schowalter', 'geovany43@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'wY2atqTeXe', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(106, 'Dr. Marlon O\'Hara PhD', 'thora52@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'D0f09SQlf0', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(107, 'Ray Schaden', 'langosh.elissa@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'nkGDEYaVRb', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(108, 'London Frami Jr.', 'christopher.jaskolski@example.net', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'C9pQxWsjlv', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(109, 'Jana Davis', 'narciso25@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'tbfe9WExIp', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(110, 'Camilla McDermott DVM', 'keanu.rau@example.com', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'sENVLHLxMu', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(111, 'Pamela Collier', 'diamond71@example.org', '2024-06-10 08:33:56', '$2y$12$L20vA4AevHZ7wD1frcmbKulmQKLp45rh4aMIwIxg/P62G8VArCDXq', 'azbtThat6g', '2024-06-10 08:33:57', '2024-06-10 08:33:57'),
(113, 'Chris', 'chrisobt@outlook.net', NULL, '$2y$12$8.jH.JIfEY5xINjsPR/8P.ZVaJv0SYPz.Z/hOwnkGwoUzFXBoDOHa', NULL, '2024-06-11 09:22:53', '2024-06-11 09:22:53'),
(114, 'Chris', 'chrisobt@outlook', NULL, '$2y$12$jyblX12N4x/zQixdiSO4yuwPlTfTBGeQXXmPkJj5Hy2rgqwLn.K7K', NULL, '2024-06-11 09:26:46', '2024-06-11 09:26:46');

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
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_user_id_foreign` (`user_id`),
  ADD KEY `favorite_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
