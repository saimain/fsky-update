-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 08:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f-sky`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sai Main', 'admin@gmail.com', NULL, '$2y$10$2NdNHbiQ2FPw5HyBEa5xyOAyi8QWNainC9HpemI8Hlz0OpGBu250i', NULL, '2020-03-14 08:31:38', '2020-03-14 08:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `cover`, `name`, `created_at`, `updated_at`) VALUES
(1, 6, 'https://i.imgur.com/oozlNAE.png', 'Elwin', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(2, 15, 'https://i.imgur.com/oozlNAE.png', 'Olin', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(3, 13, 'https://i.imgur.com/oozlNAE.png', 'Nash', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(4, 5, 'https://i.imgur.com/oozlNAE.png', 'Raphael', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(5, 13, 'https://i.imgur.com/oozlNAE.png', 'Ignatius', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(6, 4, 'https://i.imgur.com/oozlNAE.png', 'Felipe', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(7, 6, 'https://i.imgur.com/oozlNAE.png', 'Pierre', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(8, 10, 'https://i.imgur.com/oozlNAE.png', 'Glennie', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(9, 4, 'https://i.imgur.com/oozlNAE.png', 'Kevin', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(10, 2, 'https://i.imgur.com/oozlNAE.png', 'Hunter', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(11, 10, 'https://i.imgur.com/oozlNAE.png', 'Madyson', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(12, 3, 'https://i.imgur.com/oozlNAE.png', 'Malachi', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(13, 7, 'https://i.imgur.com/oozlNAE.png', 'Michael', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(14, 7, 'https://i.imgur.com/oozlNAE.png', 'Tristian', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(15, 4, 'https://i.imgur.com/oozlNAE.png', 'Joey', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(16, 5, 'https://i.imgur.com/oozlNAE.png', 'Dashawn', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(17, 14, 'https://i.imgur.com/oozlNAE.png', 'Ashton', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(18, 14, 'https://i.imgur.com/oozlNAE.png', 'Ethel', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(19, 14, 'https://i.imgur.com/oozlNAE.png', 'Tevin', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(20, 5, 'https://i.imgur.com/oozlNAE.png', 'Diamond', '2020-03-14 08:51:52', '2020-03-14 08:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `profile`, `name`, `created_at`, `updated_at`) VALUES
(1, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Erin', '2020-03-14 08:51:49', '2020-03-14 08:51:49'),
(2, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Floy', '2020-03-14 08:51:49', '2020-03-14 08:51:49'),
(3, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Doris', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(4, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Khalil', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(5, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Wilber', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(6, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Coby', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(7, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Alexandre', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(8, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Stanton', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(9, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Cody', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(10, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Gideon', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(11, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Earl', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(12, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Dale', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(13, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Stephon', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(14, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Eloy', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(15, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Russell', '2020-03-14 08:51:50', '2020-03-14 08:51:50');

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
(1, 'Haskell', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(2, 'Tom', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(3, 'Geovanny', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(4, 'Orin', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(5, 'Skye', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(6, 'Domingo', '2020-03-14 08:51:50', '2020-03-14 08:51:50'),
(7, 'John', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(8, 'Kelley', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(9, 'Maverick', '2020-03-14 08:51:51', '2020-03-14 08:51:51'),
(10, 'Kenneth', '2020-03-14 08:51:51', '2020-03-14 08:51:51');

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
(4, '2020_03_12_123019_create_artists_table', 1),
(5, '2020_03_12_123049_create_albums_table', 1),
(6, '2020_03_12_123119_create_categories_table', 1),
(7, '2020_03_12_123139_create_songs_table', 1),
(8, '2020_03_12_123718_create_admins_table', 1),
(9, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(10, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(11, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(12, '2016_06_01_000004_create_oauth_clients_table', 2),
(13, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'F83hG2d6U4CHMxMuDusaaYgC67ftuX43QaT1Qfuz', 'http://localhost', 1, 0, 0, '2020-03-14 10:30:05', '2020-03-14 10:30:05'),
(2, NULL, 'Laravel Password Grant Client', 'nXOmf4uqoXt6ntAbI9aXdTxTrQNhJZfQeUneLZUw', 'http://localhost', 0, 1, 0, '2020-03-14 10:30:05', '2020-03-14 10:30:05');

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
(1, 1, '2020-03-14 10:30:05', '2020-03-14 10:30:05');

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
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyric` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `artist_id`, `category_id`, `album_id`, `cover`, `lyric`, `source`, `created_at`, `updated_at`) VALUES
(1, 'Edd', 6, 3, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Nihil dolores maxime quia. Quas magni voluptatem quas nihil. Laudantium et inventore doloribus autem doloribus. Velit amet odio sequi sit. Incidunt quo aliquid animi dolore quo dicta repudiandae.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(2, 'Emery', 8, 3, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Voluptates officiis sit aut modi. Aliquid sed et iusto dolor sint iure. Dolor sint aut unde quae eaque.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(3, 'Faustino', 3, 10, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Similique incidunt natus iusto sed similique adipisci est sed. Tempora ullam et quod natus esse. Quis repellendus aut quia quas et.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(4, 'Jaren', 11, 5, 5, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Et nisi est natus sed corporis. Necessitatibus consequuntur sed inventore quas. In error quod non nam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:52', '2020-03-14 08:51:52'),
(5, 'Cordelia', 13, 2, 14, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Porro quia quasi cumque blanditiis. Omnis in aspernatur veniam recusandae sunt omnis voluptatum temporibus. Impedit rerum consequatur quos hic.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(6, 'Jaleel', 11, 9, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eos ratione est magnam a reiciendis. Voluptatem perspiciatis et maxime ad veritatis velit enim rerum. In ullam accusamus quis cum est aliquid ut.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(7, 'Gabriel', 1, 10, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Optio ex nisi eveniet quia vitae sed et. Architecto reiciendis perferendis omnis aut molestiae maxime aut. Est quaerat ea natus quaerat reiciendis itaque itaque. Sint deserunt consequatur similique quia occaecati dolores dolores.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(8, 'Nestor', 5, 6, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Quo distinctio eligendi eligendi. Aut qui repellat ut facilis et qui fuga.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(9, 'Lisandro', 1, 5, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Cupiditate natus quidem facere fuga. Quas natus tempora voluptas quidem veniam voluptatem at. Molestias optio dolor deleniti incidunt.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(10, 'Eli', 6, 7, 6, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Laborum voluptatem ipsam accusantium exercitationem ea dicta id. Temporibus et fuga sit rerum dicta eum. Aut possimus quasi incidunt praesentium.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(11, 'Deron', 15, 3, 16, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Et quis vel dicta placeat debitis. Cumque voluptatem veritatis eos nesciunt. Nisi quidem et ea id rerum. Tenetur et eos velit eligendi.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(12, 'Easton', 4, 7, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Placeat fugit voluptas dolor id quos enim nemo. Voluptatem sed impedit quasi quia perferendis et corporis. Quos placeat consequatur ut sint non enim. Omnis tenetur adipisci voluptas aspernatur occaecati non delectus modi.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(13, 'Bernhard', 14, 9, 7, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Facere et esse beatae distinctio cupiditate doloremque. Numquam aut quam ad in eveniet dicta. Et rerum assumenda sequi iure quae sit totam. Consectetur cumque optio qui minima voluptas officia earum beatae.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(14, 'Nathen', 14, 2, 7, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eum ratione maxime dicta libero et non. Quia fuga quas temporibus repellat error laborum. Possimus repellat nostrum eos ut et. Illum repellendus ipsa quos atque. Nulla temporibus nihil est.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(15, 'Osbaldo', 15, 3, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Velit laboriosam et ratione placeat eum ut. Occaecati magni ipsam amet molestiae facere amet. Animi non doloremque eos. Qui deserunt ad earum dolores soluta.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(16, 'Dennis', 13, 4, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolor provident reprehenderit dolor eos in corporis autem. Et sed dolores voluptatum aut. Inventore et sunt voluptates quas modi.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(17, 'Laverne', 5, 5, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ratione aspernatur ad eligendi praesentium non tempora. Quisquam quam quia tenetur sit consectetur. Eum et id corporis repellat. Accusamus omnis ullam at ullam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(18, 'Gennaro', 13, 10, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Fuga qui consequatur quos in deserunt. Iste magni neque error nam doloribus.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(19, 'Adalberto', 7, 5, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sit ducimus minima sit maxime ea. Numquam quis odio aliquid ut similique. Voluptas magni magni similique enim nulla tenetur.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(20, 'Roscoe', 1, 4, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Exercitationem dolor reprehenderit minus fuga. Quibusdam sed minus architecto quam. Sunt nam omnis sed eos commodi delectus. Mollitia inventore est velit est quibusdam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(21, 'Nickolas', 5, 3, 16, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Distinctio ex distinctio praesentium sapiente iusto incidunt. Facere cumque sit asperiores voluptatem sunt ratione sed. Omnis quod voluptas porro quam et ut. Ratione et sit et distinctio quia.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(22, 'Elliott', 13, 7, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Rerum modi praesentium nisi rerum nihil culpa. Hic eius saepe vel et deleniti harum voluptate. Maxime provident distinctio nam facilis quae consequatur culpa. Voluptatum asperiores molestiae sit esse sit ut id.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(23, 'Charles', 6, 9, 6, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sint praesentium illum numquam molestias at voluptatem. Ut recusandae quae illum ducimus. Reprehenderit sed ut commodi. Voluptate doloremque qui aperiam neque dolores occaecati quas ad.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(24, 'Jesse', 9, 8, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Occaecati incidunt libero cum debitis et et debitis ex. Nihil labore ab cum et iste non suscipit. Dicta aspernatur aliquid non atque.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:53', '2020-03-14 08:51:53'),
(25, 'Alvis', 2, 8, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Impedit laboriosam dolorem ea dicta. Totam cupiditate non omnis sequi enim consequatur. Consequuntur aut autem tempora corporis et sit. Sunt id occaecati alias corporis.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(26, 'Johnny', 3, 4, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Autem et perferendis nisi id debitis. Quas enim quia natus nobis alias accusantium. Perspiciatis non aut odit. Dicta et odio eveniet odio dolores quisquam. Soluta voluptates fugiat doloribus blanditiis ex.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(27, 'Green', 10, 10, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Et quas tenetur quia illum animi deleniti nesciunt. Ut dolorem perferendis voluptate non velit dolorem qui. Illo molestias in natus qui qui cupiditate. Voluptatum veritatis corrupti maiores neque inventore.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(28, 'Chaim', 1, 3, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Culpa eius totam voluptas dolores odit labore. Pariatur illum debitis quis sed quisquam quia. Alias nulla autem fuga earum nobis placeat. At accusantium laudantium enim possimus voluptatum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(29, 'Clay', 3, 9, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut non aperiam aliquam asperiores iusto. Expedita voluptas deserunt voluptatum. Maxime voluptate aut rem cumque unde. Iste debitis architecto aspernatur doloribus modi inventore doloremque. Atque quod quam labore quia cum consequatur.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(30, 'Tyree', 11, 9, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Nobis fuga iste magnam hic. Et autem praesentium eos est reprehenderit dolor sequi. Delectus qui illo aliquam explicabo et.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(31, 'Bradley', 2, 1, 18, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'In laborum et ut explicabo omnis voluptate et. Doloribus in deserunt quae quibusdam. Illum deserunt eos dicta aut optio.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(32, 'Colt', 11, 3, 13, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Quod voluptatem dolorem soluta voluptatibus corporis. Rerum quae aut recusandae. Sed et sit rerum et tempora est.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(33, 'Francis', 5, 3, 14, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolores consequatur voluptatibus est alias. Animi expedita aut sit perspiciatis minima consequatur alias. Omnis reiciendis alias saepe rerum qui quos temporibus tempora.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(34, 'Jaiden', 9, 9, 19, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eum eum hic voluptatem ut velit eaque distinctio. Culpa non accusantium et praesentium distinctio. Qui asperiores dicta mollitia eum labore.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(35, 'Lonny', 2, 7, 7, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Quaerat omnis aspernatur praesentium dolores similique eius optio. Similique ea aut laborum mollitia omnis. Et quod eos est perspiciatis officia.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(36, 'Giovanny', 13, 3, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Vero repudiandae magni est sint aut. Voluptatibus eaque sint aut a. Optio quos odit itaque. Inventore rem non deserunt saepe.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(37, 'Arvid', 15, 10, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Minus sit iste illo beatae ipsa facilis. Adipisci est consequuntur non. Maxime error provident odio voluptatem ut et nesciunt aperiam. Animi voluptatem voluptas dolor odit sint.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(38, 'Julio', 13, 7, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Porro earum est consequuntur autem exercitationem enim ut. Repudiandae rerum ad illo laborum nulla est quaerat. Ipsa id ea consequuntur temporibus voluptatibus. Dolorum voluptatem iure voluptate suscipit quibusdam aut omnis.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(39, 'Melvina', 11, 9, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Maiores maxime nostrum ea beatae hic. Porro quia praesentium aut et laudantium dolorem. Nemo aut nostrum minus voluptatum ex.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(40, 'Ansel', 5, 6, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eum esse tenetur unde debitis facilis sunt. Non ea id unde aut est quaerat dolorum suscipit. Est porro rerum labore vel non rem. Optio voluptatem repellendus molestiae et nobis et aut quae.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(41, 'Maxwell', 4, 6, 6, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Est ut vero ut ipsa. Sit iusto praesentium harum dolorem ea iste. Laborum perferendis ut commodi est. Odio voluptatem quas facere ut repellat dicta.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(42, 'Clyde', 7, 1, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolorem qui inventore fugiat earum. Est earum suscipit eligendi distinctio voluptatum. Et qui modi quia.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:54', '2020-03-14 08:51:54'),
(43, 'Orin', 9, 3, 19, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Omnis et id consequatur fugit eum quia doloremque. Tempore tempora natus doloribus commodi architecto. Dicta ut cumque ad.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(44, 'Fred', 8, 3, 13, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Voluptatibus quaerat sed rerum corporis ut iste. Nemo cumque magnam nesciunt. In quia et reiciendis rerum. Libero ducimus repellendus quisquam eligendi ex ut.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(45, 'Mack', 10, 7, 14, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut quos tenetur odit vero commodi. Eveniet sunt est repudiandae veritatis dolorem illum. Autem ut natus omnis. In vero nostrum harum nesciunt est nobis non. Amet quas qui similique repellat reiciendis illo.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(46, 'Alexie', 5, 4, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Molestias est et maxime incidunt ab animi. Enim eaque in aspernatur sint natus. Expedita quod adipisci impedit animi non eaque sint.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(47, 'Morgan', 6, 5, 13, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eos similique totam sint. Doloremque natus autem ipsa ea iste est quo quae. Quia similique autem ut voluptatum. Quisquam illo soluta itaque doloribus dolore. Laboriosam sint sunt enim hic quasi quis eius consequuntur.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(48, 'Jordyn', 8, 2, 18, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut ipsam veritatis doloribus odio eum quia. Voluptas pariatur dicta dolorem in aut qui sed qui. Explicabo corrupti similique nam voluptatem. Quo voluptas quo possimus incidunt quia eum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(49, 'Demarcus', 11, 7, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Asperiores harum sit sint fuga sunt. In natus quos qui omnis vitae distinctio aut. Exercitationem hic cupiditate ut maxime velit totam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55'),
(50, 'Brock', 1, 2, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sit perspiciatis eos fugit a quia laboriosam. Et iusto consequuntur aut atque et eum. Iste tempore eaque modi id.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-14 08:51:55', '2020-03-14 08:51:55');

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
  `vip` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `vip`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sai Main', 'saimain@gmail.com', NULL, '$2y$10$pWGHOw0yoIhJKqLniZg2E.9LLFT.w7Pcipx2RoQ1o4y2fVB6j5qa6', 0, NULL, '2020-03-14 09:24:29', '2020-03-14 09:24:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
