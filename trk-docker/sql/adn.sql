-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 12, 2022 at 06:05 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

CREATE DATABASE IF NOT EXISTS adn;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adn`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `adn`.`abilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `options` json DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `adn`.`abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(2, 'edit', 'Edit posts', NULL, 'App\\Models\\Post', 0, NULL, NULL, '2022-03-13 10:55:15', '2022-03-13 10:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `adn`.`album` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `adn`.`album` (`id`, `slug`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'anual-function', 'Anual Function', 'publish', '2022-05-23 08:48:36', '2022-05-23 08:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `adn`.`assigned_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restricted_to_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `adn`.`assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 1, 1, 'App\\Models\\User', NULL, NULL, NULL),
(2, 2, 2, 'App\\Models\\User', NULL, NULL, NULL),
(3, 2, 4, 'App\\Models\\User', NULL, NULL, NULL),
(4, 2, 6, 'App\\Models\\User', NULL, NULL, NULL),
(6, 2, 9, 'App\\Models\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `adn`.`careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `adn`.`careers` (`id`, `title`, `slug`, `user_id`, `department`, `location`, `job_type`, `application_deadline`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Head of Engineer', 'head-of-engineer', 1, 'Engineer', 'dhaka', 'Full Time', '2022-05-30', 'Lorem Text', 'publish', '2022-05-29 23:32:10', '2022-05-29 23:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `adn`.`categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `adn`.`categories` (`id`, `name`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cassandre Lehner', 'cassandre-lehner', '1', 20, 21, 2, '2022-01-24 02:52:33', '2022-03-09 02:14:03', '2022-03-09 02:14:03'),
(2, 'Judge Harris ttt', 'judge-harris', '1', 19, 22, NULL, '2022-01-24 02:52:33', '2022-03-09 02:14:26', '2022-03-09 02:14:26'),
(3, 'Jakob Brekke', 'jakob-brekke', '1', 1, 2, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(4, 'Elijah Hill', 'elijah-hill', '1', 3, 6, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(5, 'Mr. Devonte Jenkins Sr.', 'mr-devonte-jenkins-sr', '1', 7, 8, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(6, 'Brandyn Cummerata', 'brandyn-cummerata', '1', 9, 10, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(7, 'Yazmin Reichert I', 'yazmin-reichert-i', '1', 11, 12, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(8, 'Prof. Florencio Hermiston DDS', 'prof-florencio-hermiston-dds', '1', 13, 14, NULL, '2022-01-24 02:52:33', '2022-01-24 02:52:33', NULL),
(9, 'Marcel Predovic', 'marcel-predovic', '1', 15, 16, NULL, '2022-01-24 02:52:33', '2022-03-09 02:13:37', '2022-03-09 02:13:37'),
(10, 'Tabitha Strosin', 'tabitha-strosin', '1', 17, 18, NULL, '2022-01-24 02:52:33', '2022-03-09 02:12:05', '2022-03-09 02:12:05'),
(11, 'Zaara Ismail Bari', 'zaara-ismail-bari', '1', 4, 5, 4, '2022-03-09 00:53:18', '2022-03-09 02:04:38', '2022-03-09 02:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `adn`.`media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `photos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `adn`.`media` (`id`, `user_id`, `album_id`, `photos`, `caption`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[\"public\\/images\\/media\\/L6SAPqQSNiVT0d7CV7Mkm9LkUtPtURPujmxKKaC0.png\",\"public\\/images\\/media\\/e6agknYowbozotxTm7iFERWRbVxE1bpoq4wwmLwF.png\"]', 'Title222', '2022-05-30 05:11:18', '2022-05-30 05:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `adn`.`menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleteable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `adn`.`menus` (`id`, `name`, `description`, `deleteable`, `created_at`, `updated_at`) VALUES
(1, 'primary-menu', 'This is primary menu.', 1, NULL, NULL),
(2, 'footer', 'this is footer', 1, '2022-03-15 02:06:58', '2022-03-15 02:06:58'),
(3, 'sub-menu', 'Header Right Sub menu', 1, '2022-03-23 23:58:56', '2022-03-23 23:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `adn`.`menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `adn`.`menu_items` (`id`, `menu_id`, `parent_id`, `order`, `title`, `url`, `target`, `icon_class`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'Homepage', '/home', '_self', NULL, NULL, '2022-03-14 02:00:46'),
(2, 1, NULL, 2, 'About Us', '/about', '_self', NULL, NULL, '2022-07-03 04:35:22'),
(3, 1, NULL, 4, 'Service', '/service', '_self', NULL, NULL, '2022-07-03 04:35:22'),
(4, 1, 2, 1, 'Blog', '#', '_self', NULL, '2022-03-14 00:54:58', '2022-06-05 23:13:29'),
(5, 1, NULL, 3, 'Carrers', '/careers', '_self', NULL, '2022-03-14 09:26:22', '2022-07-03 04:35:22'),
(6, 3, NULL, 6, 'Media & Gallery', '#', '_self', NULL, '2022-03-23 23:59:15', '2022-03-23 23:59:15'),
(7, 3, NULL, 7, 'News & Events', '#', '_self', NULL, '2022-03-23 23:59:31', '2022-03-23 23:59:31'),
(8, 3, NULL, 8, 'Career', '#', '_self', NULL, '2022-03-23 23:59:39', '2022-03-23 23:59:39'),
(9, 2, NULL, 9, 'PRIVACY POLICY', '#', '_self', NULL, '2022-03-24 00:21:12', '2022-03-24 00:21:12'),
(10, 2, NULL, 10, 'COOKIE POLICY', '#', '_self', NULL, '2022-03-24 00:21:29', '2022-03-24 00:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `adn`.`migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `adn`.`migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_103321_create_categories_table', 1),
(6, '2021_12_24_092208_create_bouncer_tables', 1),
(7, '2021_12_26_093257_create_options_table', 1),
(8, '2021_12_28_071947_create_posts_table', 1),
(10, '2022_03_09_074727_update_categories_table', 2),
(12, '2022_03_09_093949_create_pages_table', 4),
(15, '2022_03_10_112415_update_posts_table', 5),
(16, '2022_03_13_095701_create_menus_table', 6),
(17, '2022_03_13_095748_create_menu_items_table', 6),
(19, '2022_03_20_093307_update_pages_table', 7),
(21, '2022_05_11_060137_create_teams_table', 8),
(25, '2022_05_16_054419_create_service_table', 9),
(37, '2022_05_19_070351_create_album_table', 11),
(38, '2021_12_31_145950_create_media_table', 12),
(39, '2022_05_17_094319_create_careers_table', 13),
(42, '2022_05_31_084253_create_reports_table', 14),
(44, '2022_06_01_070352_create_statements_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `adn`.`options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `adn`.`options` (`id`, `type`, `src`, `meta_title`, `address`, `phone_number`, `email`, `social`, `created_at`, `updated_at`) VALUES
(1, 'image', 'public/images/themes/3lOzHwNmAFn3O4SqA6krAJJBt0KBZWGZkju9fahZ.png', 'Adn', 'Dhaka, Bangladesh.', '01931164546', 'tanjil@notionhive.com', '{\"facebook\":\"facebook.com\",\"youtube\":\"https:\\/\\/youtube.com\",\"instagram\":\"https:\\/\\/instagram.com\"}', NULL, '2022-03-14 10:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `adn`.`pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `adn`.`pages` (`id`, `user_id`, `category_id`, `title`, `slug`, `content`, `content_html`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Home', 'home', '[hero title=\"PASSIONS COMMITMENT TECHNOLOGY\" description=\"Since inception, accelareting the digitalization to transform the experience.\" button=\"FIND OUT MORE\" url=\"#\"]\r\n                        [about img=\"http://127.0.0.1:8000/storage/photos/1/about-us.png\" description=\"ADN Telecom Ltd, the leading ISP, MPLS, IPLC, and IP Telephony service provider in Bangladesh, initiated its glorious journey back in 2003. It is one of the major sister concerns of “ADN Group” along with Tech Valley Networks Ltd (TVNL), ADN Internatonal Gateway Ltd, ADN Technologies Ltd,  InGen Technologies Ltd, ADN EduServices Ltd., ADN DigiNet Ltd, Cel Telecom Ltd.\" button=\"FIND OUT MORE\" url=\"#\"][overview highlighted=\"NUMBERS\" title=\"a glance\"][overviewitem counter=\"17\" primary=\"\" secondary=\"Years of Experience\"][overviewitem counter=\"10\" primary=\"M+\" secondary=\"Investment Received\"][overviewitem counter=\"43\" primary=\"K\" secondary=\"Customers\"][overviewitem counter=\"93\" primary=\"%\" secondary=\"Success Rating\"][/overview]\r\n                        [coverage title=\"Coverage Area\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s\" button=\"Learn More\" url=\"#\"]\r\n                        [reason img=\"http://127.0.0.1:8000/storage/photos/1/reason.png\" description=\"Seamless and secured connectivity across the nation,\r\nRobust network infrastructure,\r\nWorldwide point-to-point and point-to-multiple connectivity,\r\nTailored Solutions\" button=\"Learn More\" url=\"#\"]\r\n                        [calltoaction title=\"THE WAYS\" strong_title=\"WE SERVE\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s\" button=\"Learn More\" url=\"#\"]\r\n                        [client title=\"OUR CLIENTS\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/1.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/10.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/11.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/2.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/3.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/4.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/5.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/6.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/7.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/8.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/9.png\"][/client]\r\n                        [significant title=\"Significant, Projects\" button=\"FIND OUT MORE\" url=\"#\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/significant.png\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/reason.png\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/about-us.png\"][/significant]', '<div data-shortcode=\"hero\" data-json=\"{&quot;title&quot;:&quot;PASSIONS COMMITMENT TECHNOLOGY&quot;,&quot;description&quot;:&quot;Since inception, accelareting the digitalization to transform the experience.&quot;,&quot;button&quot;:&quot;FIND OUT MORE&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[hero title=\"PASSIONS COMMITMENT TECHNOLOGY\" description=\"Since inception, accelareting the digitalization to transform the experience.\" button=\"FIND OUT MORE\" url=\"#\"]</div>\r\n                        <div data-shortcode=\"about\" data-json=\"{&quot;img&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/about-us.png&quot;,&quot;description&quot;:&quot;ADN Telecom Ltd, the leading ISP, MPLS, IPLC, and IP Telephony service provider in Bangladesh, initiated its glorious journey back in 2003. It is one of the major sister concerns of “ADN Group” along with Tech Valley Networks Ltd (TVNL), ADN Internatonal Gateway Ltd, ADN Technologies Ltd,  InGen Technologies Ltd, ADN EduServices Ltd., ADN DigiNet Ltd, Cel Telecom Ltd.&quot;,&quot;button&quot;:&quot;FIND OUT MORE&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[about img=\"http://127.0.0.1:8000/storage/photos/1/about-us.png\" description=\"ADN Telecom Ltd, the leading ISP, MPLS, IPLC, and IP Telephony service provider in Bangladesh, initiated its glorious journey back in 2003. It is one of the major sister concerns of “ADN Group” along with Tech Valley Networks Ltd (TVNL), ADN Internatonal Gateway Ltd, ADN Technologies Ltd,  InGen Technologies Ltd, ADN EduServices Ltd., ADN DigiNet Ltd, Cel Telecom Ltd.\" button=\"FIND OUT MORE\" url=\"#\"]</div><div data-shortcode=\"overview\" data-json=\"{&quot;highlighted&quot;:&quot;NUMBERS&quot;,&quot;items&quot;:[{&quot;counter&quot;:&quot;17&quot;,&quot;primary&quot;:&quot;&quot;,&quot;secondary&quot;:&quot;Years of Experience&quot;},{&quot;counter&quot;:&quot;10&quot;,&quot;primary&quot;:&quot;M+&quot;,&quot;secondary&quot;:&quot;Investment Received&quot;},{&quot;counter&quot;:&quot;43&quot;,&quot;primary&quot;:&quot;K&quot;,&quot;secondary&quot;:&quot;Customers&quot;},{&quot;counter&quot;:&quot;93&quot;,&quot;primary&quot;:&quot;%&quot;,&quot;secondary&quot;:&quot;Success Rating&quot;}],&quot;title&quot;:&quot;a glance&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[overview highlighted=\"NUMBERS\" title=\"a glance\"][overviewitem counter=\"17\" primary=\"\" secondary=\"Years of Experience\"][overviewitem counter=\"10\" primary=\"M+\" secondary=\"Investment Received\"][overviewitem counter=\"43\" primary=\"K\" secondary=\"Customers\"][overviewitem counter=\"93\" primary=\"%\" secondary=\"Success Rating\"][/overview]</div>\r\n                        <div data-shortcode=\"coverage\" data-json=\"{&quot;title&quot;:&quot;Coverage Area&quot;,&quot;description&quot;:&quot;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s&quot;,&quot;button&quot;:&quot;Learn More&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[coverage title=\"Coverage Area\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s\" button=\"Learn More\" url=\"#\"]</div>\r\n                        <div data-shortcode=\"reason\" data-json=\"{&quot;img&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/reason.png&quot;,&quot;description&quot;:&quot;Seamless and secured connectivity across the nation,\\r\\nRobust network infrastructure,\\r\\nWorldwide point-to-point and point-to-multiple connectivity,\\r\\nTailored Solutions&quot;,&quot;button&quot;:&quot;Learn More&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[reason img=\"http://127.0.0.1:8000/storage/photos/1/reason.png\" description=\"Seamless and secured connectivity across the nation,\r\nRobust network infrastructure,\r\nWorldwide point-to-point and point-to-multiple connectivity,\r\nTailored Solutions\" button=\"Learn More\" url=\"#\"]</div>\r\n                        <div data-shortcode=\"calltoaction\" data-json=\"{&quot;title&quot;:&quot;THE WAYS&quot;,&quot;strong_title&quot;:&quot;WE SERVE&quot;,&quot;description&quot;:&quot;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s&quot;,&quot;button&quot;:&quot;Learn More&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[calltoaction title=\"THE WAYS\" strong_title=\"WE SERVE\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s\" button=\"Learn More\" url=\"#\"]</div>\r\n                        <div data-shortcode=\"client\" data-json=\"{&quot;title&quot;:&quot;OUR CLIENTS&quot;,&quot;items&quot;:[{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/1.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/10.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/11.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/2.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/3.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/4.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/5.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/6.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/7.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/8.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/9.png&quot;}]}\" class=\"shortcode draggable\" draggable=\"true\">[client title=\"OUR CLIENTS\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/1.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/10.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/11.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/2.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/3.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/4.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/5.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/6.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/7.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/8.png\"][clientitem thumbnail=\"http://127.0.0.1:8000/storage/photos/1/9.png\"][/client]</div>\r\n                        <div data-shortcode=\"significant\" data-json=\"{&quot;title&quot;:&quot;Significant, Projects&quot;,&quot;items&quot;:[{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/significant.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/reason.png&quot;},{&quot;thumbnail&quot;:&quot;http://127.0.0.1:8000/storage/photos/1/about-us.png&quot;}],&quot;button&quot;:&quot;FIND OUT MORE&quot;,&quot;url&quot;:&quot;#&quot;}\" class=\"shortcode draggable\" draggable=\"true\">[significant title=\"Significant, Projects\" button=\"FIND OUT MORE\" url=\"#\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/significant.png\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/reason.png\"][significant_item thumbnail=\"http://127.0.0.1:8000/storage/photos/1/about-us.png\"][/significant]</div>', 'publish', '2022-07-03 00:00:17', '2022-07-04 02:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `adn`.`password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `adn`.`permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ability_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `adn`.`permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 2, 9, 'App\\Models\\User', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `adn`.`personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `adn`.`posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `adn`.`posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `content`, `thumbnail_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'I am, sir,\' said Alice; \'it\'s.', '', 'Alice, with a deep voice, \'are.', '', 'draft', '2022-01-24 02:54:07', '2022-05-16 01:13:15'),
(2, 1, 3, 'Lorem', 'lorem', 'Place <em>some</em> <u>text</u> <strong>here</strong>', '', 'publish', '2022-03-14 09:51:31', '2022-03-14 10:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `adn`.`reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_year` year(4) NOT NULL,
  `report_at` date NOT NULL,
  `report_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `adn`.`reports` (`id`, `title`, `report_year`, `report_at`, `report_type`, `file_name`, `file_size`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Independent Scrutinizer’s Report on 18th Annual General Meeting (AGM)', 2022, '2022-03-10', 'agm-egm', '1654001432618dummy.pdf', '13264', '\"public\\/images\\/report\\/hqV1GP6d34dSb564G9BSnyEegS1emfa6KyqNkiN0.pdf\"', '2022-05-31 06:50:37', '2022-05-31 06:50:37'),
(2, 'ttt', 2022, '2022-05-31', 'price-sensitive-information', '1654001965947dummy.pdf', '13264', '\"public\\/images\\/report\\/hVQGXA3v7zosxTvr8bLLqGqXL1v0JPztlSwf8Ad8.pdf\"', '2022-05-31 06:59:28', '2022-05-31 06:59:28'),
(3, 'Information to the Shareholders for Submission Annual Reportwww', 2022, '2022-05-31', 'ipo-documents', '1654007195780dummy.pdf', '13264', '\"public\\/images\\/report\\/fFX0Ny8uSzaFuYl0SbMrFswqzwMzeazbPF9Y3L1J.pdf\"', '2022-05-31 07:00:01', '2022-05-31 08:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `adn`.`roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `adn`.`roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, NULL, '2022-03-13 10:34:27', '2022-03-13 10:34:27'),
(2, 'editor', 'Editor', NULL, NULL, '2022-03-13 10:42:52', '2022-03-13 10:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `adn`.`service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `adn`.`service` (`id`, `user_id`, `title`, `slug`, `content`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'title', 'title', 'content', '', 'publish', '2022-05-16 01:02:28', '2022-05-16 01:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `statements`
--

CREATE TABLE `adn`.`statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `statements_year` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q1_file_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q1_file_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q1_file_path` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q2_file_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q2_file_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q2_file_path` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q3_file_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q3_file_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q3_file_path` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audited_file_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audited_file_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audited_file_path` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_file_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_file_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_file_path` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statements_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statements`
--

INSERT INTO `adn`.`statements` (`id`, `statements_year`, `q1_file_name`, `q1_file_size`, `q1_file_path`, `q2_file_name`, `q2_file_size`, `q2_file_path`, `q3_file_name`, `q3_file_size`, `q3_file_path`, `audited_file_name`, `audited_file_size`, `audited_file_path`, `annual_file_name`, `annual_file_size`, `annual_file_path`, `statements_type`, `created_at`, `updated_at`) VALUES
(1, '2020', '', '', '', 'dummy.pdf', '13264', 'public/images/statement/q2/CYQXUDB2Phoo8m5mJxpgqXNrQuiZ4uURaouzt03C.pdf', 'dummy.pdf', '13264', 'public/images/statement/q3/gv8YbHyQg74GdmKWYWtJlv1RJBlAvqnbHvkcA5iV.pdf', 'dummy.pdf', '13264', 'public/images/statement/audited/3pk2nINtNXr7Lp3In25Gpgl65o02a0Eu5FLinMZD.pdf', 'dummy.pdf', '13264', 'public/images/statement/annual/sQZ4itX3rEiZhFEMSwwAQnNrN3hWiJtBWH3ANeUd.pdf', 'financial-statements', '2022-06-01 05:05:54', '2022-06-01 06:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `adn`.`teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `adn`.`teams` (`id`, `image`, `name`, `designation`, `discription`, `social`, `created_at`, `updated_at`) VALUES
(1, 'public/images/team/UuxckguumvRfUjkCrt8UNUvnZ6Xh8LsJWJryfbh8.jpg', 'Tanjil', 'Sr. Web Developer', 'Lorem Text', '{\"youtube\":\"https:\\/\\/youtube.com\"}', '2022-05-11 01:24:39', '2022-05-11 03:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `adn`.`users` (
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

INSERT INTO `adn`.`users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tanjil', 'tanjil@notionhive.com', '2022-01-17 04:15:49', '$2a$12$t4Nnj8.UdrXIGeTdez.g9.hF9eqJpmScEjXAopKQk3OJ/5yKXTLP6', '6n2HHGC33jaWOzjmBvHqPd0H8EL3STneepMPIpnhB3VbZUIfIRKKukj00Zpl', '2022-01-17 04:15:49', '2022-01-17 04:15:49'),
(2, 'Mim', 'mim@example.com', NULL, '$2y$10$CgBi5q52zuyw1bcgLZqoM.TxpAQkUJGubETI3/kCuvoEm6t2IkXPW', NULL, '2022-01-17 06:50:46', '2022-01-17 06:50:46'),
(3, 'bappy', 'bappy@notionhive.com', NULL, '$2y$10$ki5g25hIhW42qgdp/3WbieW.MiMn9YYUWLXsyRSOTCx31R4h50MF.', NULL, '2022-03-13 09:19:38', '2022-03-13 09:19:38'),
(6, 'Nazmul', 'nazmul@notionhive.com', NULL, '$2y$10$QtjXlF21wLLyUjscwiD7pe0DGVDw6OjCNlkuWn7n3hIcH8hy56yEW', NULL, '2022-03-13 10:51:03', '2022-03-13 10:51:03'),
(9, 'Nazmul2', 'nazmul2@notionhive.com', NULL, '$2y$10$51HbQjklGY74tmmimP1ydu.rEUOtGZczLF7Q6WA6nJmknktwtUsES', NULL, '2022-03-13 10:55:15', '2022-03-13 10:55:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `adn`.`abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `album`
--
ALTER TABLE `adn`.`album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `adn`.`assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `careers`
--
ALTER TABLE `adn`.`careers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `careers_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `adn`. `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `adn`. `media`
--
ALTER TABLE `adn`. `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_user_id_foreign` (`user_id`),
  ADD KEY `media_album_id_foreign` (`album_id`);

--
-- Indexes for table `adn`. `menus`
--
ALTER TABLE `adn`. `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `adn`. `menu_items`
--
ALTER TABLE `adn`. `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `adn`. `migrations`
--
ALTER TABLE `adn`. `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adn`. `options`
--
ALTER TABLE `adn`. `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adn`. `pages`
--
ALTER TABLE `adn`. `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_user_id_foreign` (`user_id`),
  ADD KEY `pages_category_id_foreign` (`category_id`);

--
-- Indexes for table `adn`. `password_resets`
--
ALTER TABLE `adn`. `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `adn`. `permissions`
--
ALTER TABLE `adn`. `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `adn`. `personal_access_tokens`
--
ALTER TABLE `adn`. `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `adn`. `posts`
--
ALTER TABLE `adn`. `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `adn`. `reports`
--
ALTER TABLE `adn`. `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adn`. `roles`
--
ALTER TABLE `adn`. `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `adn`. `service`
--
ALTER TABLE `adn`. `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_user_id_foreign` (`user_id`);

--
-- Indexes for table `adn`. `statements`
--
ALTER TABLE `adn`. `statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adn`. `teams`
--
ALTER TABLE `adn`. `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adn`. `users`
--
ALTER TABLE `adn`. `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped table `adn`.s
--

--
-- AUTO_INCREMENT for table `adn`. `abilities`
--
ALTER TABLE `adn`. `abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adn`. `album`
--
ALTER TABLE `adn`. `album`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `assigned_roles`
--
ALTER TABLE `adn`. `assigned_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adn`. `careers`
--
ALTER TABLE `adn`. `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `categories`
--
ALTER TABLE `adn`. `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adn`. `media`
--
ALTER TABLE `adn`. `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `menus`
--
ALTER TABLE `adn`. `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adn`. `menu_items`
--
ALTER TABLE `adn`. `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adn`. `migrations`
--
ALTER TABLE `adn`. `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `adn`. `options`
--
ALTER TABLE `adn`. `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `pages`
--
ALTER TABLE `adn`. `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `permissions`
--
ALTER TABLE `adn`. `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `personal_access_tokens`
--
ALTER TABLE `adn`. `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adn`. `posts`
--
ALTER TABLE `adn`. `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `adn`. `reports`
--
ALTER TABLE `adn`. `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adn`. `roles`
--
ALTER TABLE `adn`. `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adn`. `service`
--
ALTER TABLE `adn`. `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `statements`
--
ALTER TABLE `adn`. `statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `teams`
--
ALTER TABLE `adn`. `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adn`. `users`
--
ALTER TABLE `adn`. `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped table `adn`.s
--

--
-- Constraints for table `adn`. `assigned_roles`
--
ALTER TABLE `adn`. `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adn`. `careers`
--
ALTER TABLE `adn`. `careers`
  ADD CONSTRAINT `careers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adn`. `media`
--
ALTER TABLE `adn`. `media`
  ADD CONSTRAINT `media_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `media_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adn`. `menu_items`
--
ALTER TABLE `adn`. `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adn`. `pages`
--
ALTER TABLE `adn`. `pages`
  ADD CONSTRAINT `pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adn`. `permissions`
--
ALTER TABLE `adn`. `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adn`. `posts`
--
ALTER TABLE `adn`. `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `adn`. `service`
--
ALTER TABLE `adn`. `service`
  ADD CONSTRAINT `service_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
