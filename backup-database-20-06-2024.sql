-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 08:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_10_093432_create_movies_table', 1),
(6, '2024_06_14_130228_create_series_table', 1),
(7, '2024_06_14_132348_create_movie_favorite_table', 1),
(8, '2024_06_14_132407_create_serie_favorite_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `movie_type` varchar(255) NOT NULL,
  `year` smallint(5) UNSIGNED NOT NULL,
  `minutes` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `movie_type`, `year`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'Rem ipsum quos consequatur sint aut dolorem nemo.', 'Horror', 1964, 197, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(2, 'Ut nostrum quibusdam numquam.', 'Action', 1932, 73, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(3, 'Corrupti nesciunt veniam sed voluptatem quisquam.', 'Thriller', 1948, 94, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(4, 'Rem inventore quae exercitationem facilis qui molestiae.', 'Thriller', 2010, 79, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(5, 'Quasi cumque quibusdam quia similique.', 'Horror', 1919, 63, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(6, 'Nihil suscipit quibusdam voluptate et earum laborum eaque.', 'Thriller', 1923, 64, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(7, 'Commodi voluptates aliquid assumenda voluptatibus doloribus in libero.', 'Thriller', 1980, 81, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(8, 'Excepturi reiciendis unde incidunt odio aut dolorem perspiciatis.', 'Horror', 1926, 120, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(9, 'Quis quia in voluptatem ut quia laboriosam quis.', 'Horror', 1926, 120, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(10, 'Alias rerum dolore soluta ducimus.', 'Comedy', 1973, 131, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(11, 'Ea tenetur adipisci eos.', 'Action', 1921, 207, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(12, 'Modi dolorum rerum eum perferendis.', 'Action', 1925, 158, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(13, 'Quis possimus sit voluptatum fuga dolores soluta sed.', 'Comedy', 1937, 74, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(14, 'Quo deleniti sed est.', 'Drama', 2013, 216, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(15, 'Expedita a velit et alias necessitatibus delectus.', 'Action', 1916, 231, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(16, 'In est placeat sit.', 'Action', 1939, 143, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(17, 'Harum quibusdam atque alias earum eum eos sequi.', 'Comedy', 1997, 84, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(18, 'Beatae consectetur esse maiores officiis accusamus dolorem officiis.', 'Comedy', 1915, 209, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(19, 'Qui facere sint et sint beatae debitis quidem corrupti.', 'Thriller', 1972, 92, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(20, 'Ut id itaque quidem id ducimus nihil impedit.', 'Comedy', 2020, 231, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(21, 'Officia aut necessitatibus illum dolorum.', 'Comedy', 1970, 205, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(22, 'Enim consequatur assumenda minima cupiditate perferendis.', 'Drama', 2018, 91, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(23, 'Ut non voluptatem et.', 'Drama', 1900, 150, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(24, 'Autem facere nobis consequatur non impedit.', 'Horror', 1915, 189, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(25, 'Quos consectetur sunt mollitia rerum et ea nostrum tempore.', 'Horror', 1937, 238, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(26, 'Sequi aut excepturi dicta ipsum fugit molestiae ut.', 'Comedy', 1912, 190, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(27, 'Velit dicta ipsum quod dolorum molestiae voluptate.', 'Comedy', 1931, 111, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(28, 'Et rerum neque assumenda sapiente.', 'Action', 1909, 175, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(29, 'Cupiditate in ipsum sunt provident consectetur in.', 'Horror', 1961, 203, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(30, 'Quod aut aut quia cum accusamus perspiciatis nulla nisi.', 'Horror', 1958, 164, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(31, 'Odit eveniet fugiat dicta quis deserunt cupiditate impedit.', 'Action', 1961, 116, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(32, 'Quas esse id quae sint consequatur et.', 'Action', 1917, 122, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(33, 'Quisquam neque veniam qui accusamus eum doloribus.', 'Horror', 1939, 75, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(34, 'Autem aut dolore commodi sed eaque a.', 'Comedy', 1929, 192, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(35, 'Consectetur suscipit quaerat ut reprehenderit accusantium et praesentium.', 'Horror', 2007, 82, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(36, 'Labore eos repellat similique natus eligendi sint sed.', 'Comedy', 1932, 76, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(37, 'Quo eum ipsum repellendus dignissimos non recusandae.', 'Comedy', 2015, 201, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(38, 'Eum ullam distinctio aliquid quo ea.', 'Comedy', 1924, 151, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(39, 'Necessitatibus consequuntur voluptas omnis sapiente atque sed ut.', 'Horror', 2001, 223, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(40, 'Dolorem facilis voluptatum ut.', 'Comedy', 1998, 99, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(41, 'Animi temporibus ratione quas odit ut explicabo.', 'Horror', 1937, 238, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(42, 'Aut fugit autem itaque et soluta recusandae nobis.', 'Thriller', 1934, 82, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(43, 'Sit quia eum nisi asperiores aperiam veniam.', 'Action', 2014, 142, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(44, 'Est ipsam et molestiae corporis assumenda velit ut.', 'Thriller', 2017, 130, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(45, 'Cupiditate voluptatem accusamus impedit dignissimos quod voluptatum.', 'Comedy', 1904, 100, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(46, 'Ratione reiciendis repellendus est consequatur vero occaecati.', 'Thriller', 2018, 210, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(47, 'Natus rem maiores consequatur esse et.', 'Thriller', 1978, 199, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(48, 'Id illo veritatis atque voluptate atque.', 'Action', 2018, 108, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(49, 'Qui voluptate iusto minus.', 'Action', 2004, 195, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(50, 'Asperiores autem rerum sunt dignissimos veniam ad.', 'Horror', 1980, 142, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(51, 'THE NEWEST ONE', 'Comedy', 1233, 12, NULL, NULL),
(52, 'THE NEWEST ONE', 'Comedy', 231, 322, '2024-06-14 17:55:34', '2024-06-14 17:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `movie_favorite`
--

CREATE TABLE `movie_favorite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Access Token', '7607afde79c57130994ef11aedfaa551b6686cc0bfc3ad9d9ff792529915ae49', '[\"*\"]', '2024-06-20 16:15:49', NULL, '2024-06-14 15:49:54', '2024-06-20 16:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `serie_type` varchar(255) NOT NULL,
  `year` smallint(5) UNSIGNED NOT NULL,
  `episodes` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `title`, `serie_type`, `year`, `episodes`, `created_at`, `updated_at`) VALUES
(1, 'Nisi et illo veniam ea ut.', 'Action', 1968, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(2, 'Est minus doloribus dignissimos cupiditate.', 'Drama', 1902, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(3, 'Voluptates modi eius sapiente accusantium adipisci.', 'Horror', 1953, 11, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(4, 'Quia pariatur quis sint occaecati consequatur et voluptatibus.', 'Thriller', 2022, 15, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(5, 'Alias voluptates qui velit.', 'Thriller', 1957, 10, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(6, 'Sed voluptates officiis consequatur consequuntur sapiente laboriosam.', 'Thriller', 1989, 15, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(7, 'Quasi modi id sed quas sunt non fuga.', 'Thriller', 2009, 7, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(8, 'Id sint iure eaque modi perspiciatis.', 'Horror', 1908, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(9, 'Et rerum dignissimos id occaecati.', 'Thriller', 2013, 15, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(10, 'Debitis ut ratione ducimus aut optio.', 'Horror', 1908, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(11, 'Et sint in iste sunt qui perspiciatis.', 'Action', 1991, 11, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(12, 'Totam adipisci quia ut animi.', 'Drama', 1970, 2, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(13, 'Et sequi quia corrupti unde.', 'Horror', 1995, 5, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(14, 'Quia tempore iste omnis non.', 'Drama', 2018, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(15, 'Laboriosam dolorem est laboriosam error cumque architecto illum.', 'Horror', 1903, 10, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(16, 'Nisi quidem et consequatur aut officia sint.', 'Horror', 1983, 8, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(17, 'Doloribus fugiat animi molestiae optio praesentium veniam quisquam est.', 'Drama', 1931, 7, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(18, 'Voluptas tempora dicta doloribus officia accusantium aliquam.', 'Comedy', 2023, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(19, 'Nemo id consequuntur quia quo quidem omnis.', 'Comedy', 1939, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(20, 'Sed aliquid voluptas et delectus illo omnis architecto.', 'Horror', 1903, 15, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(21, 'Distinctio consequatur sit eum consequuntur aut.', 'Horror', 1960, 10, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(22, 'Repudiandae est itaque consequatur et eos odio ratione.', 'Comedy', 1908, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(23, 'Quia ea saepe est quas.', 'Drama', 1945, 8, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(24, 'Rerum cumque aut eaque laborum aliquid occaecati pariatur.', 'Comedy', 1975, 11, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(25, 'Fugit voluptatem accusamus ut quidem voluptas molestias cum.', 'Thriller', 1949, 7, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(26, 'Autem ea porro ducimus sed quas qui.', 'Comedy', 1908, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(27, 'Possimus atque mollitia qui aliquid officiis.', 'Drama', 1966, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(28, 'Et quia labore velit doloremque corrupti officia modi blanditiis.', 'Drama', 1948, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(29, 'Iusto accusamus consequatur ipsa nobis cum dolores similique.', 'Horror', 1933, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(30, 'Nesciunt impedit totam non odit quis harum.', 'Comedy', 1979, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(31, 'Omnis reprehenderit quasi quia deleniti consequatur ipsam nemo atque.', 'Drama', 1997, 2, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(32, 'Qui aut quas est in.', 'Horror', 1984, 14, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(33, 'Excepturi iste commodi atque cupiditate et temporibus.', 'Comedy', 1987, 12, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(34, 'Aperiam ad id aut ut temporibus magni.', 'Thriller', 2007, 6, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(35, 'Aperiam mollitia qui nihil omnis doloremque explicabo dignissimos.', 'Horror', 1937, 7, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(36, 'Consequatur qui nam beatae aliquam.', 'Horror', 2004, 2, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(37, 'Saepe quia ut omnis voluptas omnis voluptas.', 'Action', 1980, 4, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(38, 'Asperiores ut et cum dolorem blanditiis.', 'Drama', 1930, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(39, 'Quidem voluptas perspiciatis at eum veritatis fugiat ut.', 'Action', 1962, 6, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(40, 'Nesciunt eum minima voluptatem assumenda sint a.', 'Thriller', 1933, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(41, 'Quisquam ut minima quasi consequatur hic non.', 'Horror', 1934, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(42, 'Et placeat ut id sapiente assumenda velit.', 'Horror', 1938, 9, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(43, 'Aut qui est distinctio adipisci consequuntur qui maxime fugiat.', 'Comedy', 1986, 10, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(44, 'In et ab amet neque suscipit.', 'Drama', 1930, 2, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(45, 'Quaerat eos sit in laudantium ea.', 'Action', 1996, 10, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(46, 'Sed quidem veniam totam hic architecto voluptate asperiores laborum.', 'Action', 1969, 6, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(47, 'Ab soluta velit repellendus autem quo.', 'Action', 1989, 13, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(48, 'Ullam in itaque quibusdam a numquam quaerat omnis ut.', 'Horror', 1957, 6, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(49, 'Est quos repellendus qui molestiae porro consequatur.', 'Thriller', 1978, 6, '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(50, 'Tenetur aut aperiam et in accusantium nobis accusantium quia.', 'Comedy', 1934, 7, '2024-06-14 15:41:51', '2024-06-14 15:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `serie_favorite`
--

CREATE TABLE `serie_favorite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serie_favorite`
--

INSERT INTO `serie_favorite` (`id`, `user_id`, `serie_id`, `created_at`, `updated_at`) VALUES
(1, 2, 4, '2024-06-14 15:43:25', '2024-06-14 15:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aidan Conroy', 'olaf08@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'x3cpYiRKtX', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(2, 'Maybell Rohan', 'karine.leffler@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'uRmFTqYfmb', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(3, 'Pietro Willms', 'wrosenbaum@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'i6TrRQQyGF', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(4, 'Dr. Nikolas Kuvalis MD', 'veda74@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '63HNxqgztM', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(5, 'Maybell Glover', 'wbashirian@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'LPCsgwJ9vn', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(6, 'Ms. Matilde Rosenbaum', 'nayeli63@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'ITp75OQ30X', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(7, 'Laura O\'Reilly', 'ernser.rossie@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'DeGh4ZKX57', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(8, 'Ms. Alverta Schmitt', 'ortiz.gilda@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'HB5HUVKR6k', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(9, 'Lane Torphy', 'eleonore78@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'Pb93BDDs7z', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(10, 'Dawson Aufderhar', 'reba35@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'LQ7fSys1qB', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(11, 'Macie Sipes', 'lockman.nadia@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'pPX9Q3URT2', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(12, 'Alda Hills', 'jaquan.greenholt@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'dHnwr9tZ4Z', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(13, 'Mrs. Nellie Casper', 'jonathon69@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'aWIqnkdulx', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(14, 'Clovis Roberts', 'mzboncak@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '99pQYUhaVa', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(15, 'Addison Dickinson', 'kiehn.alberto@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'yNNzveuNGW', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(16, 'Leonard Effertz', 'schmeler.beaulah@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'lwRHJ3Slc8', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(17, 'Juanita Schulist', 'ojohnston@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'VFzqViDeqC', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(18, 'Jamison Turcotte', 'carlo.hettinger@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'NcxzXdr1Y1', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(19, 'Napoleon Quitzon DDS', 'von.theo@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'XJ7ThpVssn', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(20, 'Jaqueline Fahey', 'ncrooks@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'iji4MFrSqP', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(21, 'Prof. Ivory Pollich', 'connelly.casandra@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '2V1gXJsAJB', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(22, 'Dr. Brandy Jacobson PhD', 'sanford.alize@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'uLhCgBF2zn', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(23, 'Mrs. Roxane Ledner DVM', 'bauch.karley@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'DQPWxshW88', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(24, 'Sarina Marquardt', 'clotilde74@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '0plc06vSaf', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(25, 'Mallie Boyer', 'uwehner@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'TdB0L9TVq6', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(26, 'Jenifer Tillman', 'kennedi84@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'TGMY22RPWq', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(27, 'Alysson Beahan I', 'reilly.pearline@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '0qPCZwkaPx', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(28, 'Dr. Chet Reynolds DVM', 'gia92@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'SCS9mDypWa', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(29, 'Trudie Boehm III', 'kylee.bogisich@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'XajbCWYtut', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(30, 'Vaughn Dicki MD', 'fay.dock@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'zKNS5DT6JC', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(31, 'Okey Bauch', 'rodolfo.sawayn@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'sUOnKduQ0G', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(32, 'Eden Bartoletti', 'rosario78@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'IJPL1p31O8', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(33, 'Hilda Parisian', 'leopold.cole@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'oooHZCX1d8', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(34, 'Mrs. Retta Krajcik', 'abshire.ayana@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'cLqhxBsVJP', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(35, 'Judah Wyman', 'spencer.cleve@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 't1H34EylRq', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(36, 'Prof. Laney Schumm', 'grimes.maryjane@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'yX55NQ6lt6', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(37, 'Nikko Ruecker', 'armando23@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'Hf9Ubm6kE9', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(38, 'Gideon Haley III', 'waters.hester@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'ljYup5q4oG', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(39, 'Ruthie Kris', 'chelsie.conn@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'tUE7U2Rzry', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(40, 'Prof. May Kuvalis', 'madilyn22@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'VdGO8T3k8u', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(41, 'Emilie Kulas', 'halle.gaylord@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '9zv2r1PQ9a', '2024-06-14 15:41:50', '2024-06-14 15:41:50'),
(42, 'Dr. Charley Bartell', 'jayne31@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '7MQLFiIeGw', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(43, 'Ernie Feest', 'hosea96@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'oTIMavtSBn', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(44, 'Dr. Lizzie Hane PhD', 'arlie80@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'TSeeNHX4OD', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(45, 'Dr. Jaime Shields IV', 'svandervort@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '42uccmmeA1', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(46, 'Lorna Schmidt DVM', 'qhaley@example.com', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', '6cHN4j9hYh', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(47, 'Anabelle Ondricka', 'ijohns@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'LfuTDxCpmh', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(48, 'Michel White', 'calista.lueilwitz@example.net', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'oXHPAOz6tc', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(49, 'Trinity Adams Sr.', 'greenfelder.julia@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'oTvTqs5lGG', '2024-06-14 15:41:51', '2024-06-14 15:41:51'),
(50, 'Gene Padberg', 'erika54@example.org', '2024-06-14 15:41:50', '$2y$12$9UHn7laEsUy4./7UJioQOu/4HjS9Dgny0BtegZHkgki3cuK/Avi9e', 'cIJhb0xgXp', '2024-06-14 15:41:51', '2024-06-14 15:41:51');

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_favorite`
--
ALTER TABLE `movie_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_favorite_user_id_foreign` (`user_id`),
  ADD KEY `movie_favorite_movie_id_foreign` (`movie_id`);

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
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serie_favorite`
--
ALTER TABLE `serie_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_favorite_user_id_foreign` (`user_id`),
  ADD KEY `serie_favorite_serie_id_foreign` (`serie_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `movie_favorite`
--
ALTER TABLE `movie_favorite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `serie_favorite`
--
ALTER TABLE `serie_favorite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_favorite`
--
ALTER TABLE `movie_favorite`
  ADD CONSTRAINT `movie_favorite_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serie_favorite`
--
ALTER TABLE `serie_favorite`
  ADD CONSTRAINT `serie_favorite_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serie_favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
