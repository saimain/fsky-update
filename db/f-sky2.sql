-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 04:53 PM
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$iXaUA3Vv//l8wump3MVyK.5uZg/4NrEIJiMAtj7mVwqxSjZGAO7ni', NULL, '2020-03-22 09:00:41', '2020-03-22 09:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `cover`, `name`, `about`, `created_at`, `updated_at`) VALUES
(1, 9, 'https://i.imgur.com/oozlNAE.png', 'Kelley', 'Aliquid qui dolores omnis unde rerum id quasi rerum. Officia similique quo ut officia amet. Ipsa corporis non alias cum earum impedit. Ut eaque et quis nostrum amet expedita.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(2, 11, 'https://i.imgur.com/oozlNAE.png', 'Lee', 'Neque quis consequuntur quasi atque est et. Eligendi itaque perferendis in. Omnis aspernatur nam sed eius atque qui.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(3, 1, 'https://i.imgur.com/oozlNAE.png', 'Johann', 'Delectus quos nesciunt nulla asperiores ea similique. Incidunt quasi delectus ipsam excepturi. Aut sint assumenda quo voluptas deleniti.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(4, 13, 'https://i.imgur.com/oozlNAE.png', 'Neal', 'Rerum reiciendis itaque voluptatem accusamus et. Enim rem corrupti enim libero recusandae non voluptatem. Quia voluptates fugiat ducimus inventore quisquam.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(5, 9, 'https://i.imgur.com/oozlNAE.png', 'Leonardo', 'Distinctio soluta incidunt reprehenderit ea qui sequi. Modi aperiam tempore vero. Suscipit dicta similique ut ea. Voluptas eum dolor in sint.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(6, 8, 'https://i.imgur.com/oozlNAE.png', 'Vicente', 'Fugit dicta fuga eum maiores. Omnis quas harum et unde eum. Cumque unde qui repudiandae commodi quia recusandae. Ut ea et aut.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(7, 11, 'https://i.imgur.com/oozlNAE.png', 'Angelo', 'Dolorum exercitationem iusto perferendis delectus dolorem eum. Impedit ut aperiam rerum nobis reiciendis. Et voluptas illum dolores voluptates adipisci esse.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(8, 3, 'https://i.imgur.com/oozlNAE.png', 'Camren', 'Quis sit id ea id deserunt architecto. Impedit eius fugit vel ut eius. Non reiciendis placeat ut impedit.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(9, 15, 'https://i.imgur.com/oozlNAE.png', 'Justice', 'Ipsam ipsa nobis iure natus maiores expedita magnam. Nihil cumque a libero reprehenderit reprehenderit ex. Aut et voluptatem ratione non nostrum ipsum. Et praesentium fuga earum sunt est incidunt id.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(10, 3, 'https://i.imgur.com/oozlNAE.png', 'Kennedi', 'Ad earum corporis nulla repudiandae est laudantium quo. In omnis ex amet temporibus illo voluptatem quis. Mollitia exercitationem rem doloremque aperiam. Neque tenetur velit quo ullam autem possimus.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(11, 4, 'https://i.imgur.com/oozlNAE.png', 'Dan', 'Accusantium laborum modi quae molestiae reiciendis. Dolores quod delectus libero. Aut expedita accusamus sed dolorem sunt.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(12, 2, 'https://i.imgur.com/oozlNAE.png', 'Randal', 'Maiores sed eaque aperiam velit. Qui et dolore qui aut. Deserunt asperiores aut quia quibusdam est tempore ea.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(13, 6, 'https://i.imgur.com/oozlNAE.png', 'Xzavier', 'Facere cumque dolor magnam at autem totam labore. Rerum occaecati consequatur dolores suscipit. Labore tenetur occaecati odit veritatis. Nihil ut nemo perspiciatis ab qui.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(14, 2, 'https://i.imgur.com/oozlNAE.png', 'Alexandre', 'Soluta officia quidem numquam perspiciatis modi quo fugit. Suscipit autem dolorum accusamus. Nihil mollitia sint repudiandae. Aut molestiae et ex rerum.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(15, 3, 'https://i.imgur.com/oozlNAE.png', 'Lindsey', 'Qui unde doloribus provident. At rerum sed occaecati.', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(16, 3, 'https://i.imgur.com/oozlNAE.png', 'Roman', 'Expedita minus voluptatem aut similique sunt alias. Libero est sit recusandae delectus quia amet. Blanditiis accusantium molestiae aliquam voluptas libero enim velit.', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(17, 3, 'https://i.imgur.com/oozlNAE.png', 'Jillian', 'Asperiores et ipsa culpa quis perspiciatis reiciendis sit. Quas incidunt laborum odio. Cumque nam animi eos. Suscipit error quaerat illo consequuntur dolorem quas.', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(18, 11, 'https://i.imgur.com/oozlNAE.png', 'Orland', 'Dolorum corporis ut molestiae quia beatae et voluptatibus. Ab nesciunt at ea voluptas quam hic. Quas tempore voluptatibus qui mollitia.', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(19, 8, 'https://i.imgur.com/oozlNAE.png', 'Edward', 'Sunt quia praesentium provident autem ex dolore. Odio nostrum aut qui nihil nihil ut. Ut quo ex aut qui laboriosam velit sit. Ipsa ut debitis dicta eos itaque tempore.', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(20, 3, 'https://i.imgur.com/oozlNAE.png', 'Josue', 'Dolorum omnis deserunt exercitationem molestiae reprehenderit hic omnis. Modi maiores quia accusantium harum molestias et. Non et adipisci fugiat dicta vero quidem illo voluptas.', '2020-03-22 08:58:48', '2020-03-22 08:58:48');

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
(1, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Nils', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(2, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Garnett', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(3, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Benny', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(4, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Tre', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(5, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Dock', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(6, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Bud', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(7, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Lee', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(8, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Terrance', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(9, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Demetrius', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(10, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Jonathan', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(11, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Trystan', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(12, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Arden', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(13, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Danial', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(14, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Keshawn', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(15, 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6', 'Gunner', '2020-03-22 08:58:46', '2020-03-22 08:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'https://i.imgur.com/oozlNAE.png', '2020-03-22 08:58:50', '2020-03-22 08:58:50');

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
(1, 'D\'angelo', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(2, 'Jordon', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(3, 'Lucio', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(4, 'Emmet', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(5, 'Kamren', '2020-03-22 08:58:46', '2020-03-22 08:58:46'),
(6, 'Reggie', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(7, 'Dameon', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(8, 'Freeman', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(9, 'Ola', '2020-03-22 08:58:47', '2020-03-22 08:58:47'),
(10, 'Jack', '2020-03-22 08:58:47', '2020-03-22 08:58:47');

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
(9, '2020_03_12_123019_create_artists_table', 1),
(10, '2020_03_12_123049_create_albums_table', 1),
(11, '2020_03_12_123119_create_categories_table', 1),
(12, '2020_03_12_123139_create_songs_table', 1),
(13, '2020_03_12_123718_create_admins_table', 1),
(14, '2020_03_18_123022_create_banners_table', 1);

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
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyric` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `artist_id`, `category_id`, `album_id`, `cover`, `lyric`, `source`, `created_at`, `updated_at`) VALUES
(1, 'Sigurd', 9, 6, 16, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Soluta quam vero ipsam et. Minima enim iste quod delectus est ratione. Minima expedita possimus quia quasi. A neque deserunt a harum unde aut culpa.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(2, 'Jaydon', 11, 8, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Voluptas debitis soluta inventore doloremque doloremque. Perferendis voluptatem qui dolore repellat.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(3, 'Nathanael', 13, 6, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Natus ratione odit blanditiis aut. Saepe nemo ut ut temporibus aut dolorum debitis. Voluptatem deleniti et est aut.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(4, 'Hector', 8, 5, 18, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Minima fugit illum explicabo molestiae. Et aliquid sunt reprehenderit ipsam tenetur perspiciatis est. Sint unde accusamus ipsam totam placeat ab odit. Et ut facilis nihil.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(5, 'Gage', 8, 7, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut iure porro doloribus officiis iure molestias illo. Repellat soluta quia non itaque consequatur repudiandae quia et. Sit esse dicta et et enim voluptas ut cupiditate.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(6, 'Hugh', 2, 10, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Temporibus eos reiciendis natus sequi doloribus sed. Officia ex maxime iure dignissimos. Vel eum autem quidem sit dolorem laborum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(7, 'Damon', 11, 5, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Animi est repellat eum corrupti eligendi. Qui distinctio autem similique laboriosam. Deleniti dolorum aut adipisci dicta laboriosam laborum commodi vero.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(8, 'Paris', 3, 1, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Et iure eos dignissimos. Aut hic alias doloremque est ut. Dolorem consequatur aut laboriosam saepe. Facilis quia eius excepturi consequuntur ab qui vero.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(9, 'Durward', 2, 1, 17, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Autem adipisci rerum sequi esse et. Sit sit aut repudiandae reprehenderit.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(10, 'Delbert', 13, 8, 15, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ut reiciendis iusto nulla harum. Porro voluptatem quisquam dolor labore qui ut. Consequatur velit occaecati numquam est quo. Voluptatem unde molestiae in quos quia.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(11, 'Jacinto', 10, 10, 7, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ullam perferendis ipsa aspernatur eum quis. Iusto blanditiis nemo necessitatibus nulla. Eos natus dolorum tempora in.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(12, 'Emanuel', 15, 3, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Laborum at maxime ut qui est. Neque enim ex culpa neque blanditiis. Quo dolorem eos sit id eaque tempore vitae voluptas. Quisquam ut qui officia eos cum voluptas.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(13, 'Zane', 13, 6, 3, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Vero enim quisquam illo quaerat eius repellendus. Et necessitatibus totam temporibus velit consequatur vitae. Doloribus placeat totam error id.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(14, 'Blake', 5, 10, 3, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ducimus repudiandae fuga natus dolorem est nobis id. Dolor et magni fuga quia. Earum voluptatem quidem non voluptas voluptas occaecati dolore.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(15, 'Curt', 7, 9, 18, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Incidunt culpa ducimus eligendi ut possimus. Consectetur non qui nemo eos et non error. Animi voluptatem mollitia quas quam. Similique error provident accusamus et est est.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:48', '2020-03-22 08:58:48'),
(16, 'Florencio', 12, 5, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Hic vitae consequatur consequatur quam nisi qui. Non eveniet amet reiciendis temporibus. Aut recusandae ea molestiae reprehenderit eum ut. Aut omnis aut hic culpa est quae. Adipisci fugiat doloribus ad enim consequatur voluptatum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(17, 'Conner', 6, 4, 12, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ut quis ullam modi voluptatem natus aperiam. Dolores voluptatem quia mollitia accusamus quo inventore iste ipsa. Et nobis aut et cupiditate at architecto dolor.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(18, 'Deondre', 11, 7, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Repellendus quod similique culpa rem voluptatum. Inventore laudantium adipisci veniam autem. Totam et omnis ullam exercitationem est ullam sint accusantium. Quo quidem dolores et id natus.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(19, 'Jett', 5, 8, 14, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Consequatur eligendi rerum facere nobis aspernatur est dolor. Porro adipisci explicabo aliquid quaerat est maxime. Iure perspiciatis minima architecto dicta aut cupiditate ut. Nihil et nihil at perferendis.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(20, 'Benny', 15, 5, 1, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Nesciunt id ab doloribus ut voluptatem veritatis in. Incidunt quos error deleniti omnis ipsam. Vel ex iste nostrum enim mollitia qui praesentium. Et ut commodi corrupti non quaerat.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(21, 'Tomas', 15, 4, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sed repellendus quo aut tenetur explicabo sit totam. Minima dolorem voluptas dolorem earum. Saepe ut et nesciunt sed ut assumenda vel. Repellendus quaerat alias aliquam perspiciatis.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(22, 'Noel', 2, 3, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Repellat et numquam et aspernatur. Exercitationem sapiente nihil non. Sit at laudantium est dolorem sit qui rem. Odit optio cupiditate deserunt sunt error autem architecto.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(23, 'Tommie', 10, 3, 7, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut quis placeat minima voluptatem quo enim animi. Voluptatem facere reprehenderit ea et nemo rerum ut. Tempore dolores a eum velit quia.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(24, 'Dangelo', 3, 8, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Blanditiis est doloremque dolor suscipit qui. Et animi corporis eos ut non. Molestias est ut sed sed fugiat id magnam. Unde incidunt eligendi ipsam sit.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(25, 'Miller', 10, 8, 6, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolorum consectetur est tempore autem est et. Consequuntur modi dolore consequuntur nulla labore. Optio voluptate corrupti velit voluptatem suscipit.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(26, 'Odell', 4, 5, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Labore eos asperiores dolorem. Praesentium dolores minus accusantium optio nemo. Minus necessitatibus rerum debitis in voluptatem fuga. Explicabo a dignissimos nisi.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(27, 'Madisen', 2, 2, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Incidunt adipisci atque repellat quidem quas consequatur temporibus. At nemo est et autem ab ea. Suscipit consequuntur qui placeat labore expedita perspiciatis. Omnis error ut tempora ex iusto odit. Autem impedit eum placeat.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(28, 'Kolby', 8, 2, 12, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ut itaque saepe molestias. Molestiae temporibus natus rem omnis laudantium delectus. Id dolores recusandae voluptatibus aut autem voluptas maxime natus. Voluptatibus cumque tempora iste eveniet doloremque.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(29, 'Jasmin', 3, 3, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eum eos tempora nesciunt voluptatem dolorem quidem quo. Velit reiciendis quia natus qui a. Sit vel debitis inventore dolorem consequatur amet dolor nesciunt.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(30, 'Louvenia', 13, 9, 4, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolores nihil soluta deleniti sit. Et iure quia magnam similique corporis itaque suscipit amet. Alias optio qui ut enim eum est harum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(31, 'Tobin', 10, 4, 18, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Deleniti quod iste explicabo placeat quis. Veritatis inventore asperiores aut maxime provident recusandae soluta nesciunt. Et dolorum molestiae debitis magnam nulla.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(32, 'Issac', 6, 4, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Deserunt qui molestiae reprehenderit provident dolorum sequi blanditiis. Aperiam omnis qui minima vel non. Adipisci enim placeat ut ut. Incidunt nulla modi in deserunt quia et.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(33, 'Lamar', 8, 1, 10, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aut iste sint architecto eos eveniet. Dolorum eos dolor sequi est id enim saepe. Quia explicabo assumenda beatae cum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(34, 'Pierre', 3, 4, 8, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ut eos excepturi sapiente et. Dolorem et voluptatum voluptas sapiente incidunt quaerat. Vero nam repellat dolores veritatis voluptatem ad. Sed ab molestias consequatur maiores sint architecto aliquam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(35, 'Ladarius', 1, 6, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Eveniet aut odit dolorum maiores. Eaque dolores qui totam est corrupti tenetur. Repudiandae autem amet molestiae ut et sed. Non quas non omnis aspernatur architecto quia consequatur illo. Et quis adipisci similique hic.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(36, 'Garrick', 2, 4, 3, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Quo libero sunt nam velit consectetur quia. Nemo corrupti adipisci accusantium rem incidunt ipsa. Veritatis magnam distinctio ipsam enim nemo nihil id earum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(37, 'Jamar', 11, 3, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Rerum perspiciatis illo et expedita sit reiciendis dignissimos et. Similique laborum dolor ullam exercitationem qui. Minima sed aut alias aspernatur sunt consectetur quisquam.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(38, 'Jamal', 3, 2, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Unde porro laborum minus dignissimos. Eius consectetur est animi tenetur explicabo sint itaque. Nihil id sequi tempore et repellendus est doloremque. Aperiam voluptates omnis dolore itaque magni amet et aut.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:49', '2020-03-22 08:58:49'),
(39, 'Alexis', 10, 2, 9, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Optio vel eius harum ut dolor sint dolor. In distinctio error non consequatur rerum praesentium id aut. Sit neque numquam natus at dolorem sequi. Aliquam nihil saepe quo voluptatem provident dolorum.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(40, 'Kamron', 11, 7, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ab corrupti molestiae sint maxime. Dolores sit et quis hic veritatis. Quisquam similique excepturi quis ea totam. Eos quia qui iure a magni.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(41, 'Demetrius', 1, 9, 12, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sit blanditiis eligendi perferendis nulla libero saepe. Sit quae nisi consequatur sint consequuntur. Consequatur dolor iste placeat qui excepturi quod.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(42, 'Justus', 4, 9, 16, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Ut aliquid dolor atque quod aperiam. Maiores voluptatibus dolor porro vel dolor. Illo alias dolorem autem reprehenderit.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(43, 'Keon', 13, 5, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Aliquam maxime totam et vel iure ea. Autem eligendi molestias voluptatem ut aut et sit reprehenderit. Sed exercitationem ut et beatae.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(44, 'Lonzo', 14, 7, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Dolore voluptates ratione impedit aut minima. A provident dolorum illo et. Atque earum eum qui numquam totam magnam ut. Unde ipsam et natus facere est molestiae neque est.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(45, 'Toy', 5, 3, 2, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sit modi odio iusto qui assumenda est omnis. Nemo dolores velit sint accusantium voluptas. Praesentium velit quaerat eius et vitae aliquid repellat reiciendis. Enim omnis et ipsa vero.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(46, 'Braulio', 9, 5, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Laboriosam numquam ut et laudantium. Atque nobis voluptatem dolorem est. Qui quia omnis itaque animi harum voluptatum. Dolore fuga necessitatibus iusto non et ex blanditiis. Maxime amet aut quia sit aut magni sint et.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(47, 'Edward', 9, 9, 11, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Quia suscipit error voluptas dolores quasi sapiente blanditiis iste. Repellendus aliquid culpa aspernatur eos voluptatum. Molestiae aut beatae ad. Quisquam consequatur natus est nobis aut.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(48, 'Deondre', 5, 4, 19, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Sit est temporibus harum est temporibus. Quae asperiores a omnis architecto consequatur ut rerum. Qui non inventore officiis quis. Consequuntur at porro autem.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(49, 'Enoch', 15, 10, 13, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Amet beatae quas quia facilis rerum quo. Aut consectetur ad commodi repellat tenetur doloremque aliquam ipsum. Laborum omnis provident est sed.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(50, 'Thaddeus', 7, 4, 20, 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg', 'Vel cupiditate ratione maxime quia ab. Perspiciatis laborum pariatur omnis aspernatur est. Ea fugit ex laudantium sunt. Architecto vel quisquam sit nihil ipsum amet incidunt. Ex nemo sequi blanditiis et accusantium eum debitis.', 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3', '2020-03-22 08:58:50', '2020-03-22 08:58:50'),
(51, 'sadasdsd', 2, 3, 2, '1174002419.jfif', 'sdfsfsdfdf', '849234502.mp3', '2020-03-22 09:14:45', '2020-03-22 09:14:45');

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
(1, 'Sai Main', 'sai@gmail.com', NULL, '$2y$10$JLSh1L806iqukXEr4iOlAuzqFb.S6.11j89x5F74VzVdhiXOGK01C', 0, NULL, '2020-03-22 09:02:44', '2020-03-22 09:02:44');

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
