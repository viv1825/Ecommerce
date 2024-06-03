-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 05:13 AM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(9, '0001_01_01_000000_create_users_table', 1),
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_000002_create_jobs_table', 1),
(12, '2024_05_31_095341_create_products_table', 1),
(13, '2024_05_31_173305_create_personal_access_tokens_table', 2),
(14, '2024_06_01_121417_create_products_table', 2);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'uto', 'updated-description', 100.00, 10, '2024-06-01 06:58:17', '2024-06-02 11:43:04'),
(2, 'ut', 'Eum et facere incidunt voluptatem voluptas. Expedita molestiae sit exercitationem sint sit cum possimus. Illo nam dolore numquam ab ad qui nihil. Sunt aliquid molestiae nihil quo.', 167.84, 10, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(3, 'aliquid', 'Aut ex ullam qui rerum. Et nostrum repellat hic est maxime. Est eos explicabo minus et et. Consequatur sed inventore possimus quisquam omnis.', 564.94, 93, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(4, 'error', 'Non quaerat vero occaecati dolorum temporibus ut. Animi accusamus ex eveniet. Dicta voluptas est ut velit ut quo magnam. Veritatis quas sequi dolor soluta et dolores.', 885.39, 23, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(5, 'quos', 'Ullam quia quam provident eos quo velit voluptatem. Enim iusto temporibus quisquam et sequi sit et. Dolorem beatae nisi aut alias impedit suscipit illum.', 241.20, 57, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(6, 'repellendus', 'Dolorem autem dolor consequatur eum possimus vitae. Sunt libero quas veniam dignissimos. Autem iste asperiores non officia quisquam. Quam natus dolor quis omnis velit dolores et.', 76.80, 87, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(7, 'quia', 'Consequatur perspiciatis qui accusantium et. Corporis hic ea fugiat culpa et ratione. Eveniet quod voluptatem aut quia labore. Magnam omnis et est.', 415.35, 20, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(8, 'dolores', 'Itaque eos est provident corrupti. Voluptas nobis incidunt omnis et tenetur ratione.', 295.62, 80, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(9, 'culpa', 'Aut et magni omnis est placeat accusamus. Exercitationem nihil saepe non est est. Sed et tempore et animi qui velit.', 116.13, 65, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(10, 'quis', 'Atque dignissimos qui sapiente porro id voluptas nulla. Non molestiae aperiam molestiae enim recusandae adipisci est. Nobis itaque dolor voluptatibus dolorem consequuntur.', 384.30, 32, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(11, 'sunt', 'In harum velit ipsam aut. Odio quisquam iusto cupiditate ipsum animi eius unde. Nesciunt quas voluptate aut laudantium.', 957.12, 4, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(12, 'deserunt', 'Qui facere voluptatem dolores eius hic ut. Corporis voluptatem alias et nam similique magni eos. Quasi inventore non quaerat nihil consequatur.', 252.40, 38, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(13, 'eius', 'Eligendi error vel maxime. Aspernatur ab sint dignissimos cupiditate aut libero fugiat. Minus corporis sapiente beatae aut dicta ea sunt. Et et ratione et et accusantium incidunt libero omnis.', 759.95, 56, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(14, 'veritatis', 'Odit possimus et ullam non labore tenetur rem est. Ipsum facere fugiat fugit ut ducimus ut. Officiis maiores aperiam voluptatem mollitia autem eos in. Et ab molestias alias ut.', 424.55, 5, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(15, 'at', 'Fuga voluptas quidem et cupiditate sit aliquid. Molestias similique labore sit eum ducimus dolorum eaque. Magni ut accusantium itaque vel animi et.', 150.65, 61, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(16, 'itaque', 'Eos eos cumque autem quibusdam in aut non. Aut est minus aut ut. Eligendi quidem numquam ut. Et commodi tempora id totam facilis.', 211.00, 31, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(17, 'qui', 'Laudantium nobis beatae assumenda voluptatem magnam. Maxime ex numquam ut quidem sunt voluptas et. Accusantium quis et veniam qui eum. Culpa harum debitis expedita sapiente vel.', 826.31, 62, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(18, 'odio', 'Ipsum officiis expedita accusamus fugiat. Aut sit dolores sunt repudiandae.', 261.36, 16, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(19, 'tempore', 'Et corrupti aut maiores explicabo eum voluptatem. Qui sint placeat dolor sit similique ab error rerum. Earum aut cupiditate excepturi consectetur.', 597.43, 47, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(20, 'dolor', 'Dolor illum rerum cum nihil et ut natus. Ea deleniti qui corporis ut unde esse. Sequi est consequatur sunt veritatis perferendis. Adipisci quia iusto accusamus deserunt dolorem itaque officiis.', 791.45, 21, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(21, 'sint', 'Cumque illum suscipit autem. Et voluptatem reiciendis eligendi dicta optio distinctio. Est in velit consequuntur consequuntur similique. Rerum sunt ut voluptas distinctio eum ut doloremque.', 717.24, 67, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(22, 'quaerat', 'Magnam a alias eos cupiditate aut blanditiis. Minus quo ut et ipsum.', 941.77, 25, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(23, 'et', 'Quia omnis fugiat sequi velit quam perferendis iure. Deserunt dolore est ratione quasi. Quam enim harum culpa amet. Ut alias dolor voluptas voluptate.', 847.63, 79, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(24, 'debitis', 'Ratione ipsam earum vero harum unde magni. Sit voluptas est fuga totam voluptatem optio ut. Illum quasi expedita incidunt omnis.', 980.40, 90, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(25, 'perspiciatis', 'Nesciunt suscipit voluptatibus aut voluptas. Accusamus et dolorum adipisci mollitia omnis sint. Eveniet dolores minima ea placeat suscipit.', 780.79, 45, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(26, 'adipisci', 'Quia repellendus nulla possimus aut. Quis fuga libero autem dignissimos sed eligendi. Sapiente est molestias aspernatur doloribus voluptate. Incidunt consequuntur autem consequatur esse.', 698.29, 85, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(27, 'inventore', 'Accusantium facere assumenda dolore sint rerum ipsa sed voluptate. Quas ipsum tenetur autem. Modi possimus facilis aut.', 628.30, 37, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(28, 'illum', 'Qui non voluptatibus necessitatibus mollitia fugit nihil sequi. Aut maxime deserunt reprehenderit occaecati et incidunt omnis. Officiis reiciendis et et facere quia sint eligendi. Nemo numquam suscipit porro reiciendis et.', 140.60, 26, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(29, 'blanditiis', 'Architecto sit inventore et aspernatur. Voluptatibus velit architecto quia sed debitis. Eum voluptas dolore at nam alias dolorem.', 905.92, 50, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(30, 'corrupti', 'Totam mollitia qui ex eum velit eveniet. Nemo similique repudiandae libero at id autem. Est eum veniam asperiores perspiciatis maxime debitis reiciendis ipsa.', 871.36, 93, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(31, 'et', 'Itaque ut itaque enim unde accusamus. Assumenda non a omnis omnis esse sunt soluta dolores. Vitae qui vero molestias.', 802.77, 96, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(32, 'eos', 'Et aspernatur qui cumque et aut occaecati. Aspernatur voluptatem asperiores itaque vel. Laudantium optio voluptatem aspernatur quo. Labore suscipit voluptates eveniet officiis.', 450.99, 19, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(33, 'aut', 'Explicabo quisquam quod debitis. Aperiam et exercitationem neque quaerat. Ut eveniet nisi cum placeat nobis recusandae aspernatur. Ut sunt quasi quia delectus. Laudantium quia maiores occaecati numquam nemo.', 334.49, 56, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(34, 'quibusdam', 'Non voluptatibus maiores nisi sint veniam. Blanditiis est assumenda sint est sunt voluptatem quas. Et optio id temporibus et tenetur ab soluta. Sed ducimus at nihil ex rem ut fuga.', 343.21, 93, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(35, 'sint', 'Consequuntur et est ducimus quis. Perspiciatis placeat dicta dolore. Laborum repellat unde nulla quo id sed alias.', 214.63, 74, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(36, 'iste', 'Ipsa vel blanditiis dolorem quo quo sed saepe. Natus sint rerum repudiandae incidunt. Facere cumque sed recusandae sunt non.', 813.84, 46, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(37, 'nulla', 'Veniam reiciendis eligendi soluta est eaque. Explicabo id velit vel. At non veritatis velit ab est harum ratione facere.', 157.66, 89, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(38, 'consequuntur', 'Blanditiis exercitationem id aut delectus est nesciunt. At illum similique rerum porro ipsum ullam. Consequuntur neque et et harum repellendus. Id reprehenderit tenetur facilis aut.', 509.19, 76, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(39, 'vel', 'Voluptatem aut unde quam ea sed cumque autem quos. Suscipit et dolor eveniet rem. Nihil asperiores laboriosam tempora quasi architecto possimus. Minus qui animi iure et. Velit saepe ipsa voluptatem ut nulla soluta voluptatem.', 985.37, 7, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(40, 'sed', 'Ea cumque assumenda quia ea est doloremque optio molestiae. Et dolor velit est. Reiciendis assumenda ea dolor consequuntur sit dolore. Sint nesciunt error repudiandae debitis. Minus harum repellendus soluta molestiae et aut sed veritatis.', 747.92, 13, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(41, 'repellat', 'Ullam est quia commodi. Provident pariatur autem vel. Voluptatum provident culpa repellat.', 226.92, 9, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(42, 'quam', 'Qui molestias porro sint esse aut omnis ut. Voluptate officia excepturi vel magnam sunt deserunt et. Quam excepturi mollitia earum voluptatem inventore corrupti soluta.', 129.12, 66, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(43, 'nesciunt', 'Corrupti maiores sint et est sed quas a. Ut mollitia porro officiis animi magni. Odio optio et placeat.', 107.01, 10, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(44, 'nobis', 'Suscipit enim illum voluptatem. Harum consequatur aut nihil dolores quisquam aut. Modi est necessitatibus repellendus quia omnis.', 51.80, 37, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(45, 'assumenda', 'Est amet numquam tempora et. Enim temporibus et consequatur corporis modi doloremque et. Et sit quisquam illum est earum.', 664.70, 88, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(46, 'perferendis', 'Voluptas sed natus voluptas quidem et placeat nesciunt. Consequuntur praesentium sint odit et. At sit blanditiis sed sunt.', 745.85, 9, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(47, 'veritatis', 'Ut labore inventore et sint explicabo tempora ut. Ab minima earum repellendus repellat non voluptatum quisquam. Enim aut odit error quas nihil ut quia nobis.', 185.64, 8, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(48, 'et', 'Ex eveniet labore odio. Quia architecto aspernatur nesciunt rerum delectus hic totam ea. Modi ipsum et debitis earum veniam.', 752.52, 74, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(50, 'quas', 'Perferendis placeat sunt sequi cum. A dolore earum non. Ut asperiores eius nulla magnam aspernatur explicabo. Temporibus dolores neque alias.', 507.78, 13, '2024-06-01 06:58:17', '2024-06-01 06:58:17'),
(54, 'bott', 'bott', 100.00, 10, '2024-06-02 09:42:28', '2024-06-02 09:42:28'),
(55, 'bott', 'bott', 100.00, 10, '2024-06-02 09:44:04', '2024-06-02 09:44:04'),
(56, 'bott', 'bott', 100.00, 10, '2024-06-02 10:08:00', '2024-06-02 10:08:00'),
(58, 'Phone', 'Android', 100.00, 10, '2024-06-02 10:43:36', '2024-06-02 10:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5GeaGxoxr0TlZkso3afphYHtPtRmFpXnIStIZz5M', NULL, '127.0.0.1', 'PostmanRuntime/7.32.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajJiZTQyWVNkWFdZU1VzM0dVR2VuZ0lQeW5TcWx5TzV0RmlhRmFqMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717348401),
('lAGwtgK8mO3i2U93ikpKAdQEWPUrnTJe5WfbPGFM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQklHbFNzRVhDVExPck1EQmdvTUtLR3Y0b3VYS0VkbTQ2UG1sOThSayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717168374),
('LNZkvkBiYLLJD7iTWfUFDBWHy745P3GeDxQ5cOft', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHRqS3NIU0ZoVGR3dEp3SmltQld3VXg1ZmlKVG5qM0lvRFRnUnU3ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717342805),
('mToSjMvVHW8DJZ5pjcFbFny4heq3ItkL764N60DG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHdlYUJkY01CdW1lWFlIamlJYXozSXlLRzU1d1Z0ZHN2cHhOakRSSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717301996),
('rLmwzT3nmk7F3nQcm2E25JwtdA1ykrL17aY6ZAY2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzlYeEdWcmxibWJsNXFzaTRGelFMMjhld1l3R1lGckRGRmxqVjkybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717258702),
('XoudeL3r4p17wWcln2JhnT5J73O9lGvSTGZPkGJf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1BTaEJCU1ZUWlNXeHBmUDZSWGhESGlTUGU4QlltWllzcWtZZ0IxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717154134),
('XVpt1G9zQKPcbSeHTaxSNanshwSXBYBesTIYxU5D', NULL, '127.0.0.1', 'PostmanRuntime/7.32.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEM4WW1NU1RtRm4wNmtPaExLZ2xURGpPd3FqdkhkVFQxcjMwdUp0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717306195);

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
(1, 'Test User', 'test@example.com', '2024-05-31 04:43:57', '$2y$12$OdwmH6QAhHU7q3HyPfVRk.rliAbCMfjmZTWFPNheAMcnR4kbbch2K', 'O3PSqYLED7', '2024-05-31 04:43:57', '2024-05-31 04:43:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
