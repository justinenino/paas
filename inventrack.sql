-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 1, NULL, NULL, '{\"attributes\":{\"name\":\"Laptop\",\"quantity\":10,\"minimum_quantity\":2}}', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(2, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 2, NULL, NULL, '{\"attributes\":{\"name\":\"Office Chair\",\"quantity\":20,\"minimum_quantity\":5}}', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(3, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 3, NULL, NULL, '{\"attributes\":{\"name\":\"Printer Paper\",\"quantity\":100,\"minimum_quantity\":20}}', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(4, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 4, NULL, NULL, '{\"attributes\":{\"name\":\"Monitor\",\"quantity\":15,\"minimum_quantity\":3}}', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(5, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 5, NULL, NULL, '{\"attributes\":{\"name\":\"Ballpoint Pens\",\"quantity\":200,\"minimum_quantity\":50}}', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(6, 'default', 'Item has been updated', 'App\\Models\\Item', 'updated', 5, 'App\\Models\\User', 2, '{\"attributes\":{\"quantity\":199},\"old\":{\"quantity\":200}}', NULL, '2025-05-16 10:43:56', '2025-05-16 10:43:56'),
(7, 'default', 'Item has been updated', 'App\\Models\\Item', 'updated', 1, 'App\\Models\\User', 2, '{\"attributes\":{\"quantity\":1},\"old\":{\"quantity\":10}}', NULL, '2025-05-16 10:45:39', '2025-05-16 10:45:39'),
(8, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Mouse\",\"quantity\":10,\"minimum_quantity\":2}}', NULL, '2025-05-16 10:51:43', '2025-05-16 10:51:43'),
(9, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Test1\",\"quantity\":10,\"minimum_quantity\":1}}', NULL, '2025-05-16 15:13:31', '2025-05-16 15:13:31'),
(10, 'default', 'Item has been created', 'App\\Models\\Item', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"name\":\"Test2\",\"quantity\":20,\"minimum_quantity\":1}}', NULL, '2025-05-16 15:14:11', '2025-05-16 15:14:11'),
(11, 'default', 'Item has been updated', 'App\\Models\\Item', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"quantity\":99},\"old\":{\"quantity\":100}}', NULL, '2025-05-18 00:21:03', '2025-05-18 00:21:03'),
(12, 'default', 'Item has been updated', 'App\\Models\\Item', 'updated', 5, 'App\\Models\\User', 2, '{\"attributes\":{\"quantity\":198},\"old\":{\"quantity\":199}}', NULL, '2025-05-18 00:39:26', '2025-05-18 00:39:26');

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 'Electronic items and devices', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(2, 'Office Supplies', 'office-supplies', 'General office supplies and stationery', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(3, 'Furniture', 'furniture', 'Office furniture and fixtures', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(4, 'IT Equipment', 'it-equipment', 'Computer hardware and accessories', NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(255) NOT NULL DEFAULT 'piece',
  `location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `minimum_quantity` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `slug`, `description`, `category_id`, `quantity`, `unit`, `location`, `image`, `minimum_quantity`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', 'Standard office laptop', 4, 1, 'piece', 'Warehouse A', NULL, 2, 1, '2025-05-16 10:37:38', '2025-05-16 10:45:39'),
(2, 'Office Chair', 'office-chair', 'Ergonomic office chair', 3, 20, 'piece', 'Warehouse B', NULL, 5, 1, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(3, 'Printer Paper', 'printer-paper', 'A4 printer paper, 500 sheets per ream', 2, 99, 'ream', 'Warehouse A', NULL, 20, 1, '2025-05-16 10:37:38', '2025-05-18 00:21:03'),
(4, 'Monitor', 'monitor', '24-inch LED monitor', 1, 15, 'piece', 'Warehouse A', NULL, 3, 1, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(5, 'Ballpoint Pens', 'ballpoint-pens', 'Blue ballpoint pens', 2, 198, 'piece', 'Warehouse B', NULL, 50, 1, '2025-05-16 10:37:38', '2025-05-18 00:39:26'),
(6, 'Mouse', 'mouse', 'Mouse', 1, 10, 'piece', NULL, NULL, 2, 1, '2025-05-16 10:51:43', '2025-05-16 10:51:43'),
(7, 'Test1', 'test1', 'Test1', 3, 10, 'piece', NULL, NULL, 1, 1, '2025-05-16 15:13:31', '2025-05-16 15:13:31'),
(8, 'Test2', 'test2', 'Test2', 2, 20, 'piece', NULL, NULL, 1, 1, '2025-05-16 15:14:11', '2025-05-16 15:14:11');

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"31edb256-9f6e-4f83-8e4e-a7d66478adc5\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"3245d9fb-0829-45cb-b161-e9f55e9c3b90\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747420742,\"delay\":null}', 0, NULL, 1747420742, 1747420742),
(2, 'default', '{\"uuid\":\"93f36270-d618-47ab-b4cf-6228215c23fd\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"7d50a01b-c463-4edb-8ac6-62690ead69f1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747420995,\"delay\":null}', 0, NULL, 1747420995, 1747420995),
(3, 'default', '{\"uuid\":\"848cdd30-a7c0-4ed6-853d-25849ae912e3\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"c277b83c-b0a3-4348-bcd4-9ca7eecdfcdf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747421036,\"delay\":null}', 0, NULL, 1747421036, 1747421036),
(4, 'default', '{\"uuid\":\"f075803f-9014-44a4-9e5d-8ef49910a4e8\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"67465784-11e0-4b28-89b1-994c3b694caf\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747422561,\"delay\":null}', 0, NULL, 1747422561, 1747422561),
(5, 'default', '{\"uuid\":\"88069f4f-7214-493a-8988-17803d675a8c\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"6a58f6c8-f642-4861-8ee3-84e5f33a7ee1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747422582,\"delay\":null}', 0, NULL, 1747422582, 1747422582),
(6, 'default', '{\"uuid\":\"6a2f8287-e615-43cc-a509-266b7c901eb7\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a01d3350-8180-4ea7-b2be-bee16dae5220\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747423791,\"delay\":null}', 0, NULL, 1747423791, 1747423791),
(7, 'default', '{\"uuid\":\"98280f3c-39bc-4673-a14e-050a1976ab22\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"72985afa-d814-4474-93c0-a5632be07aae\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747424553,\"delay\":null}', 0, NULL, 1747424553, 1747424553),
(8, 'default', '{\"uuid\":\"ea813448-047e-4dca-971a-aaf816085825\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"01904ddc-aea1-41d6-be70-b6447ccec3db\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747432123,\"delay\":null}', 0, NULL, 1747432123, 1747432123),
(9, 'default', '{\"uuid\":\"b3389d5e-f63c-4814-b6ce-87246d877574\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a6a7518a-28fd-44a3-81ab-1e5f0134bcb3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747435560,\"delay\":null}', 0, NULL, 1747435560, 1747435560),
(10, 'default', '{\"uuid\":\"8b90e6bd-0df5-4310-bbdb-ff24f8512c58\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a5f9200a-764f-487e-9425-6135b1a4e8ba\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556344,\"delay\":null}', 0, NULL, 1747556344, 1747556344),
(11, 'default', '{\"uuid\":\"892dcaf6-2c06-49ee-be01-94d9adbefe9d\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"ee2cb497-5c9d-43e6-b192-3540c989622d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556351,\"delay\":null}', 0, NULL, 1747556351, 1747556351),
(12, 'default', '{\"uuid\":\"1e3823c0-8556-468a-af3f-058bc5776d17\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:3;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a5a7af9d-df05-44e0-b136-8a644e55976a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556463,\"delay\":null}', 0, NULL, 1747556463, 1747556463),
(13, 'default', '{\"uuid\":\"b895503c-6949-4137-95d4-6e6773e332d1\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fe15f9f8-84dc-45f0-bc7e-a2f63b35efe4\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556715,\"delay\":null}', 0, NULL, 1747556715, 1747556715),
(14, 'default', '{\"uuid\":\"ca701181-3de8-45c3-b0da-612a9c23ca01\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"638ab18d-228c-48ed-b244-61e4c735fc2f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556821,\"delay\":null}', 0, NULL, 1747556821, 1747556821),
(15, 'default', '{\"uuid\":\"01d93a3d-1f37-45d2-9bbf-04f0d90e24ee\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"faf2c4ce-7b84-4621-9a85-9b962bfdfeb7\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747556842,\"delay\":null}', 0, NULL, 1747556842, 1747556842),
(16, 'default', '{\"uuid\":\"049a9f22-1fc0-47de-aac3-fe3e514ed25f\",\"displayName\":\"App\\\\Notifications\\\\RequestStatusChanged\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:4;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\RequestStatusChanged\\\":2:{s:10:\\\"\\u0000*\\u0000request\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Request\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:2:{i:0;s:5:\\\"items\\\";i:1;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"66bc50af-2622-424f-9dba-da4aedf0a934\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1747557567,\"delay\":null}', 0, NULL, 1747557567, 1747557567);

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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_03_19_000001_create_roles_table', 1),
(4, '2024_03_19_000002_create_categories_table', 1),
(5, '2024_03_19_000002_create_users_table', 1),
(6, '2024_03_19_000003_create_items_table', 1),
(7, '2024_03_19_000004_create_requests_table', 1),
(8, '2024_03_19_000005_create_request_items_table', 1),
(9, '2024_03_20_000001_add_warehouse_fields_to_requests', 1),
(10, '2025_05_16_135557_create_personal_access_tokens_table', 1),
(11, '2025_05_16_170914_create_activity_log_table', 1),
(12, '2025_05_16_170915_add_event_column_to_activity_log_table', 1),
(13, '2025_05_16_170916_add_batch_uuid_column_to_activity_log_table', 1);

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
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `purpose` text NOT NULL,
  `status` enum('pending','approved','rejected','prepared','fulfilled','cancelled') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `warehouse_notes` text DEFAULT NULL,
  `delivery_note` varchar(255) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `prepared_at` timestamp NULL DEFAULT NULL,
  `fulfilled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_notes` text DEFAULT NULL,
  `delivery_file` varchar(255) DEFAULT NULL,
  `out_of_stock_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `assigned_to`, `purpose`, `status`, `notes`, `admin_notes`, `warehouse_notes`, `delivery_note`, `approved_at`, `prepared_at`, `fulfilled_at`, `created_at`, `updated_at`, `delivery_notes`, `delivery_file`, `out_of_stock_at`) VALUES
(1, 3, 2, 'I need it now', 'fulfilled', NULL, NULL, NULL, NULL, NULL, '2025-05-16 10:43:15', '2025-05-16 10:43:56', '2025-05-16 10:38:56', '2025-05-16 10:43:56', 'Its now delivered.', NULL, NULL),
(2, 4, 2, 'Secret basta kailangan ko nga', 'prepared', NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:29:51', NULL, '2025-05-16 11:08:24', '2025-05-16 11:29:51', NULL, NULL, NULL),
(3, 4, NULL, 'basta kailangan ko', 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:09:04', '2025-05-16 11:09:19', NULL, NULL, NULL),
(4, 3, NULL, 'testing lang po', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:28:21', '2025-05-16 11:28:21', NULL, NULL, NULL),
(5, 3, 5, 'need ko na now', 'approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:42:04', '2025-05-16 11:42:44', NULL, NULL, NULL),
(6, 3, NULL, 'wewwewewwewew', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:43:45', '2025-05-16 11:43:45', NULL, NULL, NULL),
(7, 3, NULL, 'wewewewewewewewewew', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:43:56', '2025-05-16 11:43:56', NULL, NULL, NULL),
(8, 3, NULL, 'weweweqewqwewqewqewqe', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:44:05', '2025-05-16 11:44:05', NULL, NULL, NULL),
(9, 3, NULL, 'wqewqewqewqewqwewqewq', 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:44:14', '2025-05-16 13:48:42', NULL, NULL, NULL),
(10, 3, NULL, 'wqewqewwqwewqwewqwewq', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 11:44:22', '2025-05-16 11:44:22', NULL, NULL, NULL),
(11, 3, 1, 'wqewqwewqewqewqeqw', 'fulfilled', NULL, NULL, NULL, NULL, NULL, '2025-05-18 00:19:11', '2025-05-18 00:21:03', '2025-05-16 11:44:30', '2025-05-18 00:21:03', 'test', 'delivery-notes/qrAnOuNzkEqSZYcgENLMNelrkd0p4Vo9Y3K1Aq4e.pdf', NULL),
(12, 3, NULL, 'Secret, no clue.', 'approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-16 14:45:12', '2025-05-16 14:46:00', NULL, NULL, NULL),
(13, 4, NULL, 'secret, no clue', 'approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-18 00:24:54', '2025-05-18 00:25:15', NULL, NULL, NULL),
(14, 4, 2, '10 characters', 'fulfilled', NULL, NULL, NULL, NULL, NULL, '2025-05-18 00:27:22', '2025-05-18 00:39:27', '2025-05-18 00:26:50', '2025-05-18 00:39:27', 'Test 2', 'delivery-notes/tTJlZa474AoRs3WILqNqGr5endXJkjtLXH9NxGfe.pdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_items`
--

CREATE TABLE `request_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `custom_item_name` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_items`
--

INSERT INTO `request_items` (`id`, `request_id`, `item_id`, `quantity`, `custom_item_name`, `notes`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, NULL, NULL, 0, NULL, NULL),
(2, 2, 3, 1, NULL, NULL, 0, NULL, NULL),
(3, 3, 3, 25, NULL, NULL, 0, NULL, NULL),
(4, 4, 2, 2, NULL, NULL, 0, NULL, NULL),
(5, 5, 6, 2, NULL, NULL, 0, NULL, NULL),
(6, 6, 5, 1, NULL, NULL, 0, NULL, NULL),
(7, 7, 5, 1, NULL, NULL, 0, NULL, NULL),
(8, 8, 4, 1, NULL, NULL, 0, NULL, NULL),
(9, 9, 2, 1, NULL, NULL, 0, NULL, NULL),
(10, 10, 6, 1, NULL, NULL, 0, NULL, NULL),
(11, 11, 3, 1, NULL, NULL, 0, NULL, NULL),
(12, 12, 4, 1, NULL, NULL, 0, NULL, NULL),
(13, 13, 4, 2, NULL, NULL, 0, NULL, NULL),
(14, 13, 3, 4, NULL, NULL, 0, NULL, NULL),
(15, 13, 5, 5, NULL, NULL, 0, NULL, NULL),
(16, 13, 6, 2, NULL, NULL, 0, NULL, NULL),
(17, 14, 5, 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Administrator', '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(2, 'Warehouse Staff', 'warehouse-staff', 'Warehouse Staff', '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(3, 'Requestor', 'requestor', 'Requestor', '2025-05-16 10:37:38', '2025-05-16 10:37:38');

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
('0aov8uFozh7VA5i5ge0FcMmrmSkICrZdtW5JZnJD', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2lSQWQ5RWR1RVRwQXRRa2FrNWhuV3R3TGhCNGpnbWpoY2Zzelg5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXF1ZXN0cy8xNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1747557444),
('dXd3X8VWh0xba526NPg0zj1Bfm3nPolgJDkdP8bH', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1VDWlpmVWdqQlNBdnBJaGE1Nk1LeWtxRXkyWnpiOXBJNFhqWUlJaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1747557628),
('JBKhsybwkdjQSh1GwdX7lBuG8OabqahRLek2zPNh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFdwMFUwSmoxTzBtZXN5cWgwUVNQZVVMT0VyNTYxYmdObGllSzhvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnZlbnRvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747557693);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact_number`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', NULL, NULL, '$2y$12$fi.L0jFbucR8phHUdZECM.nMtDtWlRWSfOcAYE9x2ygGPTW6XxqXm', 1, NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(2, 'Warehouse Staff', 'warehouse@example.com', NULL, NULL, '$2y$12$elWcx/Ioxl9gLaFRsT5Vr.SBQfah8qr8avNoHej7vnHglKwPjXiVG', 2, NULL, '2025-05-16 10:37:38', '2025-05-16 10:37:38'),
(3, 'Requestor User', 'requestor@example.com', '09106349916', NULL, '$2y$12$mxhOQPEsgxGmQQS6Cck0geWlMYp6F2yY5JtEGW792InyX8pEQNGOC', 3, NULL, '2025-05-16 10:37:38', '2025-05-16 14:54:21'),
(4, 'testuser2', 'test2@example.com', NULL, NULL, '$2y$12$tEQLMAYArPgHkwRkKL2hn.W3qdSa2jB4asmJvwzxZ1SEFOK2xIIGq', 3, NULL, '2025-05-16 11:06:53', '2025-05-16 11:06:53'),
(5, 'Warehouse Staff 2', 'testwarehouse@example.com', NULL, NULL, '$2y$12$eLnZ5UXUGC5bcDkOtLznleItMoV0wZIHPeynR8gSMet5EYjmJTvvq', 2, NULL, '2025-05-16 11:38:32', '2025-05-16 11:40:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_slug_unique` (`slug`),
  ADD KEY `items_category_id_foreign` (`category_id`);

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
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requests_user_id_foreign` (`user_id`),
  ADD KEY `requests_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `request_items`
--
ALTER TABLE `request_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_items_request_id_foreign` (`request_id`),
  ADD KEY `request_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `request_items`
--
ALTER TABLE `request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_items`
--
ALTER TABLE `request_items`
  ADD CONSTRAINT `request_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_items_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
