-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 13 juin 2020 à 22:33
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e-commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(23, 'CHAUSSURES', 'CHAUSSURES', '2020-06-11 21:56:20', '2020-06-11 21:56:20'),
(24, 'SACS', 'SACS', '2020-06-11 21:56:40', '2020-06-11 21:56:40'),
(25, 'BEAUTÉ', 'BEAUTÉ', '2020-06-11 21:56:53', '2020-06-11 21:56:53'),
(26, 'ACCESSOIRES', 'ACCESSOIRES', '2020-06-11 21:57:00', '2020-06-11 22:06:30'),
(27, 'Bottes', 'Bottes', '2020-06-11 22:06:42', '2020-06-11 22:06:42'),
(29, 'Sandales', 'Sandales', '2020-06-11 22:27:35', '2020-06-11 22:27:35'),
(30, 'Chaussures plates', 'Chaussures plates', '2020-06-11 23:12:11', '2020-06-11 23:12:11'),
(31, 'Chaussures à talon', 'Chaussures à talon', '2020-06-12 00:41:57', '2020-06-12 00:41:57'),
(36, 'Bag', 'bag', '2020-06-13 17:07:26', '2020-06-13 17:07:26'),
(38, 'Clothes', 'clothes', '2020-06-13 17:29:33', '2020-06-13 17:29:33'),
(39, 'Dresses', 'Dresses', '2020-06-13 17:30:05', '2020-06-13 17:30:05');

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id`, `created_at`, `updated_at`, `category_id`, `product_id`) VALUES
(128, NULL, NULL, 23, 64),
(129, NULL, NULL, 27, 64),
(130, NULL, NULL, 23, 66),
(131, NULL, NULL, 27, 66),
(132, NULL, NULL, 23, 67),
(133, NULL, NULL, 27, 67),
(134, NULL, NULL, 23, 69),
(136, NULL, NULL, 23, 70),
(138, NULL, NULL, 23, 71),
(140, NULL, NULL, 23, 73),
(141, NULL, NULL, 23, 74),
(142, NULL, NULL, 29, 74),
(143, NULL, NULL, 23, 76),
(144, NULL, NULL, 29, 76),
(145, NULL, NULL, 23, 78),
(146, NULL, NULL, 30, 78),
(147, NULL, NULL, 23, 79),
(148, NULL, NULL, 29, 79),
(149, NULL, NULL, 30, 79),
(150, NULL, NULL, 23, 80),
(151, NULL, NULL, 31, 80),
(152, NULL, NULL, 23, 82),
(153, NULL, NULL, 31, 82),
(156, NULL, NULL, 24, 85),
(159, NULL, NULL, 24, 86),
(161, NULL, NULL, 26, 87),
(163, NULL, NULL, 26, 88),
(164, NULL, NULL, 36, 88),
(165, NULL, NULL, 26, 89),
(166, NULL, NULL, 36, 89),
(167, NULL, NULL, 26, 90),
(169, NULL, NULL, 38, 91),
(170, NULL, NULL, 39, 91),
(171, NULL, NULL, 38, 92),
(172, NULL, NULL, 39, 92),
(173, NULL, NULL, 38, 93),
(174, NULL, NULL, 38, 94),
(175, NULL, NULL, 25, 95),
(176, NULL, NULL, 25, 96),
(177, NULL, NULL, 38, 97),
(178, NULL, NULL, 24, 98),
(179, NULL, NULL, 26, 98),
(180, NULL, NULL, 25, 99),
(181, NULL, NULL, 25, 100);

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_off` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC', '50', NULL, NULL),
(2, 'Promo', '50', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(30, 5, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
(31, 5, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(32, 5, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(33, 5, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(34, 5, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 8),
(35, 5, 'stock', 'number', 'Stock', 1, 1, 1, 1, 1, 1, '{\"min\":0}', 9),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(38, 5, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-03-25 14:27:22', '2020-03-25 14:27:22'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-25 14:40:03', '2020-03-25 14:42:54'),
(5, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-25 14:45:06', '2020-03-26 12:37:56');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-25 14:27:23', '2020-03-25 14:27:23');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-25 14:27:24', '2020-03-25 14:27:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2020-03-25 14:27:24', '2020-03-25 14:48:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-03-25 14:27:24', '2020-03-25 14:48:09', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-25 14:27:24', '2020-03-25 14:48:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-03-25 14:27:24', '2020-03-25 14:48:09', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', NULL, NULL, NULL, 3, '2020-03-25 14:40:03', '2020-03-25 14:48:17', 'voyager.categories.index', NULL),
(12, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2020-03-25 14:45:07', '2020-03-25 14:48:17', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(52, '2020_03_23_235211_create_cartegories_table', 1),
(53, '2020_03_24_004259_create_cartegories_table', 2),
(166, '2014_10_12_000000_create_users_table', 3),
(167, '2014_10_12_100000_create_password_resets_table', 3),
(168, '2016_01_01_000000_add_voyager_user_fields', 3),
(169, '2016_01_01_000000_create_data_types_table', 3),
(170, '2016_05_19_173453_create_menu_table', 3),
(171, '2016_10_21_190000_create_roles_table', 3),
(172, '2016_10_21_190000_create_settings_table', 3),
(173, '2016_11_30_135954_create_permission_table', 3),
(174, '2016_11_30_141208_create_permission_role_table', 3),
(175, '2016_12_26_201236_data_types__add__server_side', 3),
(176, '2017_01_13_000000_add_route_to_menu_items_table', 3),
(177, '2017_01_14_005015_create_translations_table', 3),
(178, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 3),
(179, '2017_03_06_000000_add_controller_to_data_types_table', 3),
(180, '2017_04_21_000000_add_order_to_data_rows_table', 3),
(181, '2017_07_05_210000_add_policyname_to_data_types_table', 3),
(182, '2017_08_05_000000_add_group_to_settings_table', 3),
(183, '2017_11_26_013050_add_user_role_relationship', 3),
(184, '2017_11_26_015000_create_user_roles_table', 3),
(185, '2018_03_11_000000_add_user_settings', 3),
(186, '2018_03_14_000000_add_details_to_data_types_table', 3),
(187, '2018_03_16_000000_make_settings_value_nullable', 3),
(188, '2019_08_19_000000_create_failed_jobs_table', 3),
(189, '2020_03_17_170624_create_products_table', 3),
(190, '2020_03_20_182829_create_orders_table', 3),
(191, '2020_03_24_005043_create_categories_table', 3),
(192, '2020_03_24_005123_create_category_product_table', 3),
(193, '2020_03_25_020938_add_images_to_products_table', 3),
(194, '2020_03_25_124111_add_stock_to_column_products_table', 3),
(195, '2020_03_26_135028_create_coupons_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_intent_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_created_at` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `payment_intent_id`, `payment_created_at`, `amount`, `products`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'pi_1GQsn1CQkUgG2Lfl1zVNZUbx', '2020-03-26 10:18:19', 397200, 'a:5:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;N;}s:10:\"products_2\";a:3:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;N;}s:10:\"products_3\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;N;}s:10:\"products_4\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;N;}}', 1, '2020-03-26 09:18:54', '2020-03-26 09:18:54'),
(2, 'pi_1GQsvtCQkUgG2Lfl6gFIZbNz', '2020-03-26 10:27:29', 313320, 'a:3:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;N;}s:10:\"products_2\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;N;}}', 1, '2020-03-26 09:27:48', '2020-03-26 09:27:48'),
(3, 'pi_1GQt0FCQkUgG2LflmEckw373', '2020-03-26 10:31:59', 155880, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"3\";}s:10:\"products_1\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;}}', 1, '2020-03-26 09:32:22', '2020-03-26 09:32:22'),
(4, 'pi_1GQuX7CQkUgG2LflE98Y8i2U', '2020-03-26 12:10:01', 315600, 'a:4:{s:10:\"products_0\";a:3:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"3\";}s:10:\"products_2\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"4\";}s:10:\"products_3\";a:3:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"6\";}}', 1, '2020-03-26 11:10:18', '2020-03-26 11:10:18'),
(5, 'pi_1GQuY2CQkUgG2LflGRK1PKiW', '2020-03-26 12:10:58', 315600, 'a:4:{s:10:\"products_0\";a:4:{i:0;s:10:\"Middleware\";i:1;i:45600;i:2;i:1;i:3;N;}s:10:\"products_1\";a:4:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"3\";i:3;N;}s:10:\"products_2\";a:4:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"4\";i:3;N;}s:10:\"products_3\";a:4:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"6\";i:3;N;}}', 1, '2020-03-26 11:15:45', '2020-03-26 11:15:45'),
(6, 'pi_1GQudkCQkUgG2Lflvtu7breT', '2020-03-26 12:16:52', 310560, 'a:3:{s:10:\"products_0\";a:4:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;s:1:\"5\";i:3;N;}s:10:\"products_1\";a:4:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;s:1:\"6\";i:3;N;}s:10:\"products_2\";a:4:{i:0;s:26:\"Tenetur sed id distinctio.\";i:1;i:10600;i:2;s:1:\"2\";i:3;N;}}', 1, '2020-03-26 11:17:12', '2020-03-26 11:17:12'),
(7, 'pi_1GQuwYCQkUgG2Lfld8GcumF7', '2020-03-26 12:36:18', 234240, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:58:\"Animi reprehenderit molestias consectetur blanditiis quis.\";i:1;i:28100;i:2;N;}s:10:\"products_1\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;N;}}', 1, '2020-03-26 11:36:41', '2020-03-26 11:36:41'),
(8, 'pi_1GQuxpCQkUgG2LflqVnoiZ1B', '2020-03-26 12:37:37', 156240, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:44:\"Earum unde et dolore impedit iusto mollitia.\";i:1;i:13800;i:2;i:39;}s:10:\"products_1\";a:3:{i:0;s:33:\"Similique ipsam soluta dolor est.\";i:1;i:15000;i:2;i:50;}}', 1, '2020-03-26 11:37:55', '2020-03-26 11:37:55'),
(9, 'pi_1GRQboCQkUgG2LflmvqDROOs', '2020-03-27 22:25:00', 94039, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:23:\"nfggggggggggggggggggggg\";i:1;i:4522;i:2;s:1:\"3\";}s:10:\"products_1\";a:3:{i:0;s:48:\"Blanditiis omnis aliquid est voluptatum ducimus.\";i:1;i:16200;i:2;s:1:\"4\";}}', 1, '2020-03-27 21:25:22', '2020-03-27 21:25:22'),
(10, 'pi_1GRQeQCQkUgG2LflVhYVxqdC', '2020-03-27 22:27:42', 54240, 'a:3:{s:10:\"products_0\";a:3:{i:0;s:51:\"Temporibus velit molestiae dolorem placeat dolores.\";i:1;i:29000;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:50:\"Quisquam voluptatibus quibusdam omnis consequatur.\";i:1;i:2000;i:2;i:1;}s:10:\"products_2\";a:3:{i:0;s:31:\"Tempora fugit saepe qui et aut.\";i:1;i:14200;i:2;i:1;}}', 1, '2020-03-27 21:28:02', '2020-03-27 21:28:02'),
(11, 'pi_1Gswu3CQkUgG2Lfl5wQvUuov', '2020-06-11 20:21:35', 5400, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:11:\"new article\";i:1;i:4500;i:2;i:1;}}', 2, '2020-06-11 18:34:00', '2020-06-11 18:34:00'),
(12, 'pi_1GtOkuCQkUgG2Lfl4gcwZzl9', '2020-06-13 02:06:00', 4380, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:13:\"MARINA KLEIST\";i:1;i:1050;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:8:\"BLANLACa\";i:1;i:2600;i:2;i:1;}}', 3, '2020-06-13 00:06:33', '2020-06-13 00:06:33'),
(13, 'pi_1GtOq0CQkUgG2LflPl4sXCs5', '2020-06-13 02:11:16', 1138, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:15:\"COLLECTION & CO\";i:1;i:948;i:2;i:1;}}', 3, '2020-06-13 00:11:33', '2020-06-13 00:11:33'),
(14, 'pi_1GtOriCQkUgG2LflpSLCzRdu', '2020-06-13 02:13:02', 1380, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:18:\"MINUIT SUR TERRE 1\";i:1;i:1150;i:2;i:1;}}', 3, '2020-06-13 00:13:22', '2020-06-13 00:13:22'),
(15, 'pi_1GtOuNCQkUgG2LflPVzQRbAr', '2020-06-13 02:15:47', 3120, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:8:\"BLANLACa\";i:1;i:2600;i:2;i:1;}}', 3, '2020-06-13 00:16:07', '2020-06-13 00:16:07'),
(16, 'pi_1GtZgeCQkUgG2LflcIyf9nk1', '2020-06-13 13:46:20', 2700, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:15:\"ALEXANDRA K 0.6\";i:1;i:2250;i:2;i:1;}}', 3, '2020-06-13 11:46:38', '2020-06-13 11:46:38'),
(17, 'pi_1GtcG3CQkUgG2LflgqfUDVcN', '2020-06-13 16:31:03', 5640, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:13:\"MARINA KLEIST\";i:1;i:1050;i:2;i:2;}s:10:\"products_1\";a:3:{i:0;s:8:\"BLANLACa\";i:1;i:2600;i:2;i:1;}}', 3, '2020-06-13 14:31:49', '2020-06-13 14:31:49'),
(18, 'pi_1GtccECQkUgG2LflFIfGfRK4', '2020-06-13 16:53:58', 3960, 'a:2:{s:10:\"products_0\";a:3:{i:0;s:15:\"ALEXANDRA K 0.6\";i:1;i:2250;i:2;i:1;}s:10:\"products_1\";a:3:{i:0;s:13:\"MARINA KLEIST\";i:1;i:1050;i:2;i:1;}}', 3, '2020-06-13 14:54:16', '2020-06-13 14:54:16'),
(19, 'pi_1GtceSCQkUgG2LfluIKeaGgH', '2020-06-13 16:56:16', 13500, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:15:\"ALEXANDRA K 0.6\";i:1;i:2250;i:2;s:1:\"5\";}}', 3, '2020-06-13 14:56:32', '2020-06-13 14:56:32'),
(20, 'pi_1GtcfQCQkUgG2LflQ5AB06Vu', '2020-06-13 16:57:16', 2700, 'a:1:{s:10:\"products_0\";a:3:{i:0;s:15:\"ALEXANDRA K 0.6\";i:1;i:2250;i:2;i:1;}}', 3, '2020-06-13 14:57:30', '2020-06-13 14:57:30');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(2, 'browse_bread', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(3, 'browse_database', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(4, 'browse_media', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(5, 'browse_compass', NULL, '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(6, 'browse_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(7, 'read_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(8, 'edit_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(9, 'add_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(10, 'delete_menus', 'menus', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(11, 'browse_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(12, 'read_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(13, 'edit_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(14, 'add_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(15, 'delete_roles', 'roles', '2020-03-25 14:27:25', '2020-03-25 14:27:25'),
(16, 'browse_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(17, 'read_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(18, 'edit_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(19, 'add_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(20, 'delete_users', 'users', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(21, 'browse_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(22, 'read_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(23, 'edit_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(24, 'add_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(25, 'delete_settings', 'settings', '2020-03-25 14:27:26', '2020-03-25 14:27:26'),
(26, 'browse_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(27, 'read_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(28, 'edit_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(29, 'add_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(30, 'delete_categories', 'categories', '2020-03-25 14:40:03', '2020-03-25 14:40:03'),
(31, 'browse_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(32, 'read_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(33, 'edit_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(34, 'add_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06'),
(35, 'delete_products', 'products', '2020-03-25 14:45:06', '2020-03-25 14:45:06');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` bigint(20) UNSIGNED NOT NULL DEFAULT 50,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `images`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Corrupti alias quis doloremque rerum.', 'qui-sunt-dolores-sint-et-id-quod-excepturi', 'Autem vel quis.', 'Itaque a nemo alias quidem. Nisi eum aliquid sed nihil. Aut dicta quis molestias id. Ut quo neque qui dolorum voluptatem ut optio. Inventore sed est nulla explicabo delectus eaque in.', 13000, 'https://picsum.photos/200/300?random=14', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(2, 'Rerum ut quos incidunt quis.', 'autem-quis-dolor-et-magnam-magnam-aut', 'Corrupti accusamus quia.', 'Dolorem aspernatur quos non sit. Eligendi sint ut velit ipsa ratione enim saepe. Aut nihil et harum modi facere nihil qui molestiae.', 20700, 'https://picsum.photos/200/300?random=143', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(3, 'Nostrum et et esse odit quo.', 'voluptatibus-iusto-sunt-illum-iste', 'Eum minima optio velit doloremque.', 'Quo autem vitae cupiditate ipsum aspernatur ullam. Omnis libero recusandae qui harum. Qui quo et ut.', 18100, 'https://picsum.photos/200/300?random=159', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(4, 'Numquam non ipsam amet facere.', 'quae-ad-atque-sint-earum-nisi-sit-consequatur', 'Similique cum totam.', 'Esse architecto totam est eos velit sequi itaque. Dolorem exercitationem amet recusandae reprehenderit velit. Illo vitae ea ullam in et ut.', 24700, 'https://picsum.photos/200/300?random=49', NULL, 50, '2020-03-25 14:26:44', '2020-03-25 14:26:44'),
(5, 'Quo accusantium ipsa laboriosam voluptas qui numquam.', 'voluptates-labore-eaque-velit-ad-et-eaque-error-facilis', 'Fugiat aliquid aspernatur vel.', 'Et aut aspernatur illo ipsam atque. Exercitationem qui quos voluptates nulla. Est mollitia nemo et qui tempora.', 16900, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(6, 'Autem provident veritatis sed.', 'eos-molestias-non-dolores-non-magnam-sed-et', 'Sit saepe doloremque esse.', '<p>Enim dolor reiciendis explicabo odio culpa. Voluptatem aliquam minima nemo temporibus. Ut harum non aut non magni consequatur aut. Vero sit eos odio recusandae deleniti id.</p>', 13500, 'products\\March2020\\jUs9vNyihvZBhQDO2c7t.PNG', '[\"products\\\\March2020\\\\f8hx6hd2DjrYxCtysBTN.PNG\",\"products\\\\March2020\\\\Tmqkmf6TSuL9A6vawZMk.PNG\",\"products\\\\March2020\\\\4gDYrLOetXQwRlHyHDut.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 14:49:12'),
(7, 'Eius veritatis corrupti quis debitis ad.', 'voluptates-aut-sit-libero-laudantium-temporibus-qui-sunt', 'Omnis pariatur enim deleniti.', 'Repellat odit neque nihil aperiam. Pariatur sint recusandae quasi accusamus recusandae quod iusto.', 20200, 'https://picsum.photos/200/300?random=166', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(8, 'In eos voluptatem perspiciatis et necessitatibus nesciunt.', 'labore-rerum-laborum-est-est-quaerat', 'Et sed at.', 'Ad cupiditate dolore in consequuntur et in consectetur. Nemo eos dolorum sint aliquid. Inventore quam recusandae laudantium aperiam illum. Unde magni possimus aut doloribus.', 27500, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(9, 'Ut minima debitis sequi odit voluptatibus.', 'laudantium-dignissimos-ratione-et-vel-rerum-consequatur-laborum', 'Id quis enim qui sunt.', 'Vero vero molestias minima sunt est. Sunt dolores optio voluptatibus explicabo. Molestiae consequatur autem architecto magni non laboriosam.', 7700, 'https://picsum.photos/200/300?random=199', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(10, 'Aliquam nostrum quibusdam eum.', 'ea-blanditiis-reprehenderit-reiciendis-reiciendis-qui-tenetur', 'Ut culpa nesciunt.', 'Libero sequi porro ut voluptatem possimus aspernatur animi consequuntur. Aut dolore aperiam cupiditate voluptas ex. Ut minus sint voluptas repudiandae labore. Cupiditate ex aut cum in.', 25800, 'https://picsum.photos/200/300?random=103', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(11, 'Voluptate reiciendis consequatur modi.', 'consequatur-debitis-omnis-culpa-qui-facere-vitae', 'Et enim alias eligendi excepturi aliquam.', 'Modi ad est eveniet doloribus odit. Hic qui ex odio culpa vel enim nemo. Quia vitae vel quam distinctio fugit corrupti blanditiis. Sequi molestiae quia ullam autem dolorem doloribus.', 17800, 'https://picsum.photos/200/300?random=188', NULL, 50, '2020-03-25 14:26:45', '2020-03-25 14:26:45'),
(12, 'Consequatur repellat est minima cum beatae magnam.', 'aspernatur-cumque-eveniet-repudiandae-culpa-adipisci-sed-velit-rerum', 'Laborum est aut doloremque rerum.', 'Sequi enim repellendus expedita totam ab ut sit. Ut maxime incidunt quo ut aut nam non. Dolorem tempora est sit corporis. Nisi porro quos in ipsa accusamus dignissimos vitae non.', 8600, 'https://picsum.photos/200/300?random=52', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(13, 'Neque at consequuntur hic rerum.', 'amet-est-maiores-assumenda-assumenda-debitis-ut-pariatur-eos', 'Est cupiditate quia ut.', 'Cupiditate ut magnam doloribus eum earum rerum qui. Quae sed id suscipit dolores nulla molestiae. Vitae et aliquam et unde iste non nihil quos. Minus nam sed odit aliquid officiis nostrum.', 2500, 'https://picsum.photos/200/300?random=62', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(14, 'Sequi non facere explicabo at voluptatibus incidunt.', 'commodi-et-dolor-inventore-provident-asperiores-dolorem-maxime', 'Ex cum asperiores.', '<p>Nobis enim autem tenetur perferendis saepe dolorem dolor fuga. Doloremque quaerat molestias cum dolor. Quia sit exercitationem nesciunt voluptatem.</p>', 2400, 'https://picsum.photos/200/300?random=79', NULL, 10, '2020-03-25 14:26:00', '2020-03-25 23:13:20'),
(15, 'Perspiciatis perferendis sint aut.', 'dolorem-sequi-nobis-illo-nam', 'Omnis vero adipisci.', 'Quibusdam aut illo animi veritatis consequatur maxime quo beatae. Quia voluptate et sit in. Vitae et excepturi odit sed vel animi. Quidem voluptas officiis tempore.', 7100, 'https://picsum.photos/200/300?random=139', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(16, 'Dignissimos qui fugit totam.', 'voluptatibus-officiis-quo-aut-quae-officiis-omnis', 'Atque nihil eum velit.', 'Necessitatibus ullam qui et ad. Error consequuntur fuga officiis tempora recusandae. Est aspernatur qui modi nulla. Voluptatem reiciendis magni officiis vel quia facilis quod.', 25000, 'https://picsum.photos/200/300?random=176', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(17, 'Fugiat sunt magnam est non quod non.', 'suscipit-inventore-quo-non-sed-eaque', 'Quae perferendis nihil repudiandae.', 'Est illum tempora laboriosam qui. Tempora rem rerum sed enim. Porro ipsum soluta et amet officiis ut nemo. Aut tempore voluptates laudantium.', 11100, 'https://picsum.photos/200/300?random=102', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(18, 'Sed omnis sapiente sequi.', 'sed-tenetur-est-non', 'Doloribus molestiae reprehenderit aut molestias.', 'Optio nemo dolorem eum. Ut ut reprehenderit quae harum. At dolorem pariatur ea ex.', 2300, 'https://picsum.photos/200/300?random=7', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(19, 'Exercitationem labore excepturi facilis perferendis aliquam.', 'ipsam-et-et-itaque-et', 'Enim quas recusandae.', 'Est qui et eos ut voluptates sapiente. Excepturi sunt sit autem. Tempora consequuntur omnis provident. Quia quasi vitae laudantium.', 27300, 'https://picsum.photos/200/300?random=66', NULL, 50, '2020-03-25 14:26:46', '2020-03-25 14:26:46'),
(20, 'Sint esse tenetur voluptates.', 'facilis-voluptates-est-tempora-ipsa', 'Sed itaque repellendus similique.', '<p>Qui nobis molestias ut aspernatur voluptatum velit dicta. Fuga neque voluptatem vitae recusandae consequatur quia. Ex possimus iusto sit nesciunt sit aut.</p>', 29800, 'https://picsum.photos/200/300?random=184', NULL, 4, '2020-03-25 14:26:00', '2020-03-25 23:12:29'),
(21, 'Animi reprehenderit molestias consectetur blanditiis quis.', 'dolor-autem-ut-est-voluptas-ab', 'Optio natus aspernatur et laborum.', 'Soluta laboriosam magni magnam autem fuga porro. Ea sunt eius rerum dignissimos. Quisquam nemo possimus in optio. Facere sed non autem.', 28100, 'https://picsum.photos/200/300?random=140', NULL, 40, '2020-03-25 14:26:47', '2020-03-26 11:36:41'),
(22, 'Tenetur sed id distinctio.', 'ut-officiis-maiores-quis-est', 'Optio ullam praesentium explicabo.', 'Quod consequuntur saepe non rerum non. Temporibus accusantium ut nam nemo iusto blanditiis delectus. Quia qui libero ipsam optio quia. Illum doloremque quod inventore sed dolor in.', 10600, 'https://picsum.photos/200/300?random=83', NULL, 48, '2020-03-25 14:26:47', '2020-03-26 11:17:12'),
(23, 'Quidem maiores eaque nihil est.', 'voluptas-voluptatem-et-est-quia-facilis-deleniti', 'Quas sit ut dolore nulla.', 'Dicta alias sit tempora repellendus quia sint. Quia corporis aut ut aut ea in tempore. Quidem sed autem ea reiciendis velit delectus.', 25500, 'https://picsum.photos/200/300?random=37', NULL, 50, '2020-03-25 14:26:47', '2020-03-25 14:26:47'),
(24, 'Similique ipsam soluta dolor est.', 'veniam-qui-facere-natus-eaque-quaerat', 'Minima ex porro fuga qui.', '<p>Dolorem et quos ut necessitatibus. Officiis nihil eligendi labore ut consequatur architecto.</p>', 15000, 'https://picsum.photos/200/300?random=150', NULL, 0, '2020-03-25 14:26:00', '2020-03-26 12:40:15'),
(25, 'Earum unde et dolore impedit iusto mollitia.', 'distinctio-nihil-illum-maxime-qui-eligendi-harum-aut', 'Sed est eius vel.', 'Sed molestiae possimus est maxime. Cum incidunt sit laboriosam nemo. Adipisci vero tempora error. Tempora placeat aut autem natus unde.', 13800, 'https://picsum.photos/200/300?random=67', NULL, 35, '2020-03-25 14:26:47', '2020-03-26 11:37:55'),
(26, 'Omnis in repellendus consequatur.', 'officiis-recusandae-eius-quas-aspernatur', 'Ea et perspiciatis neque ex eaque.', '<p>Est sunt repudiandae accusamus nostrum. Explicabo est voluptates non quaerat quidem. Quasi consectetur eligendi et illum. Deserunt ut harum earum aut natus laboriosam dolor.</p>', 19200, 'products\\March2020\\lV2NdnJNfeu5E2jQ3lSQ.PNG', '[\"products\\\\March2020\\\\eG4o8jucFFWskHWAHOYp.PNG\",\"products\\\\March2020\\\\zUXOAchAJF54JKyuiJjC.PNG\",\"products\\\\March2020\\\\C85kRzvqmUOpf4jv5cV0.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:02:18'),
(27, 'Consectetur esse vero velit.', 'nobis-consequatur-optio-et-labore-consectetur-nostrum-totam', 'Officia laboriosam laborum.', '<p>Quaerat qui aut sit ab consequuntur. Minima aut ut numquam qui qui eligendi placeat qui. Blanditiis qui et fugiat quibusdam officiis incidunt.</p>', 22800, 'products\\March2020\\tPUndiABZwMKgz2a0dRq.PNG', '[\"products\\\\March2020\\\\u2JQtCLodW433E5xkQVo.PNG\",\"products\\\\March2020\\\\9dK5M0wX7V2NzOJejg4t.PNG\",\"products\\\\March2020\\\\35p6doalDA9WRVavo0Ss.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:02:56'),
(28, 'Officia asperiores est omnis.', 'neque-neque-quasi-fugiat-qui-ut-voluptas', 'Qui id ex minus.', '<p>Ea ea nesciunt architecto quidem doloremque et. Nam nam impedit earum libero adipisci. Earum debitis cupiditate earum tempore. Nemo aut quia rerum nobis et nobis.</p>', 22600, 'https://picsum.photos/200/300?random=8', '[\"products\\\\March2020\\\\t1fNvt4mqK9j4Qy3rx3n.PNG\",\"products\\\\March2020\\\\MSkzQg1eqo8DQXf0fZBL.PNG\",\"products\\\\March2020\\\\5Obsrb07t7oxyA5A6vsu.PNG\"]', 6, '2020-03-25 14:26:00', '2020-03-25 23:13:05'),
(29, 'Deserunt quia sed adipisci.', 'laudantium-omnis-doloremque-voluptate-voluptas-numquam-similique', 'Deserunt eius nam facere consequuntur.', '<p>Animi pariatur itaque non. Velit placeat deserunt neque debitis voluptatem qui non. Voluptatem deserunt vero soluta quis laudantium.</p>', 30000, 'https://picsum.photos/200/300?random=174', '[\"products\\\\March2020\\\\hVOoQVIzQSTydLNYlYsB.PNG\",\"products\\\\March2020\\\\5UuUE6PK3Zewh41CDDrw.PNG\",\"products\\\\March2020\\\\OQ4zlFvSpTDSTbZnGHMQ.PNG\"]', 50, '2020-03-25 14:26:00', '2020-03-25 15:10:38'),
(30, 'Voluptatem ut hic nihil nostrum.', 'in-repudiandae-fugit-vitae-aut-consectetur-aliquid-non', 'Ex velit incidunt.', '<p>Omnis beatae omnis in iusto alias illum. Eligendi dolore qui quod quia et blanditiis vel. Et culpa est architecto qui et quo.</p>', 15100, 'https://picsum.photos/200/300?random=195', NULL, 5, '2020-03-25 14:26:00', '2020-03-25 23:11:57'),
(31, 'Middleware', 'middleware', 'omnis iste natus error sit voluptatem', '<p style=\"box-sizing: border-box; margin-top: 0px; font-size: 16px; line-height: 1.8em; color: rgba(9, 9, 16, 0.7); margin-bottom: 2em; font-family: scandia-web, sans-serif;\">As you can see, if the given he request will be passed further into the application. To pass the request deeper into the application (allowing the middleware to \"pass\"),&nbsp;</p>', 45600, 'products\\March2020\\VUoMVZiJ37VmEDK2kJ36.PNG', '[\"products\\\\March2020\\\\foImZ01nd9ZNe1pwabJK.PNG\",\"products\\\\March2020\\\\2xzXLXe0fuCErAaxxsDK.PNG\",\"products\\\\March2020\\\\ZIxOZLupSqcuOSOXpgDV.PNG\"]', 0, '2020-03-25 15:22:00', '2020-03-25 22:41:28'),
(32, 'Similique perferendis non consequuntur distinctio enim deleniti.', 'at-blanditiis-dolore-pariatur-perspiciatis', 'Veritatis sit et.', 'Est non voluptatem soluta iste aut numquam praesentium. Et sunt expedita voluptas perspiciatis sint qui voluptatem. Repellat ea praesentium perspiciatis quia rerum.', 25200, 'https://picsum.photos/200/300?random=51', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(33, 'Sunt iste est sed enim illo fugit.', 'exercitationem-molestiae-ea-officiis-et', 'Corrupti cum qui et.', 'Autem qui a expedita dolorum pariatur. Aliquam impedit dolor quod autem mollitia commodi ducimus. Dolorem qui magnam quisquam rem fugiat dolor. Qui qui optio autem sunt.', 12200, 'https://picsum.photos/200/300?random=184', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(34, 'Harum labore ad voluptas.', 'aut-dicta-labore-sit-voluptatem-praesentium', 'Porro quam maxime nihil similique velit.', 'Perspiciatis dolore error neque nam pariatur alias. Officia perspiciatis unde amet in aut excepturi. Occaecati officia quam eos et culpa.', 21800, 'https://picsum.photos/200/300?random=1', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(35, 'Molestiae expedita veniam recusandae eos nihil.', 'iste-sequi-deleniti-recusandae', 'Vel nemo ab maxime.', 'Vel nulla nulla nulla vitae quas. Qui exercitationem praesentium cum. Debitis illum et accusamus.', 28400, 'https://picsum.photos/200/300?random=71', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(36, 'Explicabo fuga tempore qui.', 'inventore-asperiores-facere-quia-reprehenderit', 'Et occaecati doloremque.', 'Suscipit non sed assumenda quo. Atque facere sed quo minus mollitia delectus ab. Est rerum commodi totam. Quaerat ratione asperiores repudiandae.', 2300, 'https://picsum.photos/200/300?random=51', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(37, 'Animi consectetur nostrum doloremque iusto.', 'sequi-sunt-est-voluptatem-laborum-reprehenderit-aperiam', 'Qui illo ut qui maiores minus.', 'Et sequi deserunt quia. Laborum hic quia qui dignissimos ut. Debitis cum velit rem pariatur est inventore consequuntur rem. Natus placeat sit quos autem illum laudantium.', 19000, 'https://picsum.photos/200/300?random=36', NULL, 50, '2020-03-26 16:43:54', '2020-03-26 16:43:54'),
(38, 'Soluta et et nam dolores temporibus.', 'ipsum-ipsam-tempore-temporibus-qui-a', 'Aut aut molestiae consequatur soluta.', 'Tempora laborum fugiat quos non. Et dolorem sit aut cum. Est porro nobis et cum.', 19800, 'https://picsum.photos/200/300?random=12', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(39, 'Dolores laudantium minima fuga voluptatum eos soluta.', 'ea-quo-quos-reiciendis-omnis-non-qui-eligendi', 'Dignissimos atque quis aut voluptatem dignissimos.', 'Est recusandae est voluptatem impedit. Mollitia autem quibusdam corrupti corporis. Tempora dolorem vel voluptas nulla enim eos maxime.', 20100, 'https://picsum.photos/200/300?random=17', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(40, 'Eos quam ad cumque.', 'molestiae-sequi-corporis-repudiandae-et-dicta-officia', 'Voluptas officiis sunt velit illo.', 'Aut expedita enim corrupti voluptatem. Impedit sunt in recusandae vitae culpa ea. Aut qui aut error in vero. Rerum explicabo natus eligendi eaque illum.', 22500, 'https://picsum.photos/200/300?random=172', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(41, 'Doloremque consequatur nam velit omnis.', 'aperiam-facilis-esse-reprehenderit-fugiat-unde-unde-aut-quaerat', 'Voluptates at dolor.', 'Sunt aut sed consequatur culpa dolor eos eos. Modi quidem et qui explicabo quis laboriosam. Nihil ut recusandae eaque. Qui perferendis accusantium ut sed consequatur.', 24800, 'https://picsum.photos/200/300?random=116', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(42, 'Libero corrupti inventore eligendi occaecati ea consequatur.', 'aspernatur-suscipit-quos-impedit-qui-facilis-aperiam-ipsum', 'Alias quaerat sint nostrum voluptas.', 'Vel dolorum quisquam perferendis nihil. Ipsam corrupti voluptatem officiis aut. Autem rerum aut aut consequatur velit asperiores ipsa.', 15900, 'https://picsum.photos/200/300?random=73', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(43, 'Beatae quo veniam error facilis vero illum.', 'necessitatibus-laudantium-quam-corporis-quo', 'Ut maxime aut ut sit voluptate.', 'Dolorem veniam est occaecati quo. Sit accusantium ad et nobis ut odio. Et maxime est dignissimos. Enim et laudantium necessitatibus nihil nobis quasi nam.', 19100, 'https://picsum.photos/200/300?random=59', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(44, 'Laboriosam id autem fugit vitae a sunt.', 'blanditiis-libero-reiciendis-natus-inventore-dolorem-molestiae', 'Soluta esse possimus magni vel.', 'Illo qui ut soluta enim. Non est et omnis facere quia voluptatem. Nulla dolorem ut ratione sit error ipsa.', 17300, 'https://picsum.photos/200/300?random=80', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(45, 'Ullam totam id eligendi et.', 'accusantium-sit-nulla-iusto-vero-pariatur-repudiandae', 'Sit in neque ut aut corporis.', 'Quo ipsum vel harum. Voluptate corrupti aut unde dolorem vitae non. Odit non sunt sunt ut. Molestiae et quidem itaque aut ipsum vero placeat consequuntur.', 4900, 'https://picsum.photos/200/300?random=179', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(46, 'Corporis officiis suscipit quia.', 'voluptas-iusto-rerum-perferendis-tenetur-excepturi-autem', 'Possimus sed doloribus voluptate impedit.', 'Minus sed exercitationem tempora quo ducimus eos. Est officia facere quis neque. Vitae maiores et quod dolorem enim quam laborum. Aut quaerat corporis quisquam modi.', 23900, 'https://picsum.photos/200/300?random=106', NULL, 50, '2020-03-26 16:43:55', '2020-03-26 16:43:55'),
(47, 'Explicabo natus delectus quia.', 'voluptatem-id-saepe-occaecati-qui', 'Est delectus ex consequatur.', '<p>Vitae quae architecto ut voluptas repudiandae. Et illum non animi dolorem. Animi quis in qui aut qui consequatur. Voluptates sint vel eos enim.</p>', 7100, 'products\\March2020\\lpr13gOyPIUfjQGWlJw0.PNG', '[\"products\\\\March2020\\\\z3Umuw6Hk2btbAtjqmgS.PNG\",\"products\\\\March2020\\\\cCOhNiZkqkacwRpCvZek.PNG\",\"products\\\\March2020\\\\2YTGItJMrK6J4YCsSefZ.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 10:08:10'),
(48, 'Quia explicabo vel ut est totam.', 'enim-molestiae-voluptas-inventore-necessitatibus-earum-est-sapiente-suscipit', 'Id quidem vel fuga eligendi.', '<p>Qui et molestiae dolores quis. Ipsum illo id et. Dolorem delectus possimus natus incidunt.</p>', 15900, 'products\\March2020\\lnkTbEsnL2SLV167Hqll.PNG', '[\"products\\\\March2020\\\\gwmF54S38PWJplZXNyvi.PNG\",\"products\\\\March2020\\\\XzEni5j5cDejRiLxuUcs.PNG\",\"products\\\\March2020\\\\f1aP4A1xR1OHX37AmoUE.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 10:08:39'),
(49, 'Blanditiis omnis aliquid est voluptatum ducimus.', 'ducimus-voluptates-inventore-unde-eos-non', 'Neque sed repudiandae.', 'Praesentium cum ab cumque porro. Sunt sed rerum illo. In nihil beatae quam.', 16200, 'https://picsum.photos/200/300?random=1', NULL, 46, '2020-03-26 16:43:56', '2020-03-27 21:25:22'),
(50, 'Temporibus velit molestiae dolorem placeat dolores.', 'repellat-qui-nam-accusamus-nemo-tempore-quasi-earum-quis', 'Omnis voluptatem accusantium sequi et.', 'Maiores corrupti et sit ipsum dignissimos dolorem magni. Autem ut ut harum ex. Magnam ratione exercitationem amet asperiores ab cum odit.', 29000, 'https://picsum.photos/200/300?random=65', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(51, 'Quisquam voluptatibus quibusdam omnis consequatur.', 'tempora-aut-ducimus-debitis-at-culpa-asperiores', 'Maxime laboriosam libero facilis.', 'Reiciendis blanditiis molestiae rerum rerum ab. Voluptates exercitationem enim non molestiae. Porro eum fuga et qui. Odit qui qui expedita nulla. Ea quasi est ipsa beatae veniam.', 2000, 'https://picsum.photos/200/300?random=19', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(52, 'Tempora fugit saepe qui et aut.', 'voluptates-in-reiciendis-voluptatem-autem-omnis-quidem-aut', 'In ut pariatur ipsa.', 'Itaque debitis voluptate doloribus et voluptatem similique. Consequatur quos modi magnam officia omnis voluptate. Quidem quis aut dolorem.', 14200, 'https://picsum.photos/200/300?random=149', NULL, 49, '2020-03-26 16:43:56', '2020-03-27 21:28:02'),
(53, 'Harum omnis quasi aut.', 'et-aliquid-repellat-ut-quis-aut-consequatur-delectus', 'Earum ducimus non rerum quas.', 'Voluptatibus voluptas eligendi velit deserunt expedita. Excepturi maxime numquam optio maiores quidem sapiente dolores cum. Neque fuga accusantium sint repellendus.', 10400, 'https://picsum.photos/200/300?random=24', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(54, 'Sunt consequuntur architecto ad ullam repellat.', 'adipisci-laboriosam-quasi-distinctio-omnis-sint', 'Tempora ratione architecto sunt.', 'In nemo atque veritatis dolor maxime natus animi. Et vero earum quia ut suscipit. Eligendi quo repudiandae autem consequuntur consectetur debitis.', 1600, 'https://picsum.photos/200/300?random=43', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(55, 'Nostrum ipsa tenetur officiis perferendis.', 'ea-laboriosam-odio-nulla', 'Aut incidunt ut officia.', 'Vitae mollitia inventore sint repellendus molestiae quos quaerat labore. Officiis corrupti esse corrupti ex dolores aut. Id perspiciatis nisi doloribus eius.', 22600, 'https://picsum.photos/200/300?random=24', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(56, 'Sed ut est placeat et.', 'explicabo-iste-incidunt-iusto-qui-quae', 'Nisi fugiat eius voluptatem.', 'Error sunt enim molestiae id sit velit. Ut esse commodi laudantium non fugit ea. Magni molestiae porro est ipsam cum et.', 16000, 'https://picsum.photos/200/300?random=59', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(57, 'Ex ad molestiae totam nisi.', 'provident-consequatur-culpa-ea-aliquam', 'Nesciunt in et unde adipisci.', 'Omnis veritatis facere sint. Nihil dolor molestiae molestiae. Rem nostrum beatae amet.', 23100, 'https://picsum.photos/200/300?random=151', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(58, 'Voluptatem earum vero commodi.', 'aut-nesciunt-quidem-sit-aut', 'Quis veniam sed reiciendis et accusamus.', 'Vel quia consequatur et ratione. Ducimus dolorem cupiditate voluptas tempora autem sint voluptatem. Et laboriosam omnis rerum perferendis beatae quisquam.', 27700, 'https://picsum.photos/200/300?random=109', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(59, 'Maiores sint eius animi aspernatur.', 'natus-repellendus-minus-consequatur-asperiores-voluptatibus-maiores', 'Amet vel ratione.', 'Non officiis repellat ratione voluptatibus cum est praesentium repudiandae. Et reprehenderit quia quae consequatur.', 2200, 'https://picsum.photos/200/300?random=29', NULL, 50, '2020-03-26 16:43:56', '2020-03-26 16:43:56'),
(60, 'Voluptatem optio sunt vitae voluptate quia itaque.', 'saepe-accusamus-dolores-harum-adipisci-maiores-asperiores-quis-explicabo', 'Eveniet aspernatur sint placeat.', '<p>Odit autem reiciendis quis at voluptate. Rerum velit ea officia et qui sit. Est iure nesciunt voluptas dolore dolor. Dolorem dolores voluptatem est.</p>', 1900, 'https://picsum.photos/200/300?random=39', '[\"products\\\\March2020\\\\lE2Gdbv4OO5ZhTF3495s.PNG\",\"products\\\\March2020\\\\KwVV6jqjpR4iBWWlZgXB.PNG\",\"products\\\\March2020\\\\SIrIGbr7XJ2hJefBKfyk.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 09:52:00'),
(61, 'Quis doloremque quis quaerat autem.', 'sit-earum-nulla-soluta-rerum-sapiente-non-quisquam', 'Debitis sunt aspernatur deserunt debitis laudantium.', '<p>Autem doloribus aperiam tenetur in magnam dolorem mollitia. Est in aut itaque voluptatem. Deleniti doloribus provident minima non distinctio.</p>', 21600, 'products\\March2020\\RqeZZap8XjquJVfDBWDk.PNG', '[\"products\\\\March2020\\\\yL5KZWwfXYu1HndXZHbg.PNG\",\"products\\\\March2020\\\\FdEBU68OlyryDphymlTX.PNG\",\"products\\\\March2020\\\\1WfPrSKLbyLqJRHhDP6A.PNG\"]', 50, '2020-03-26 16:43:00', '2020-03-27 09:56:38'),
(62, 'new article', 'new slug', 'gkhkjhjl', '<p><span style=\"color: rgba(9, 9, 16, 0.7); font-family: scandia-web, sans-serif; font-size: 16px;\">o get started, let\'s create an Eloquent model. Models typically live in the</span><span style=\"color: rgba(9, 9, 16, 0.7); font-family: scandia-web, sans-serif; font-size: 16px;\">&nbsp;directory, but you are free to place them anywhere that can be auto-loaded according to your</span></p>', 4500, 'products\\March2020\\mDorJvAoqceuYVntL6j7.PNG', '[\"products\\\\March2020\\\\7FAXAH8o2PeUdnZwQK4V.PNG\",\"products\\\\March2020\\\\CTtnKerIMJe6BBfF6Hga.PNG\",\"products\\\\March2020\\\\tVWEmwJ6qtOt9iHgBuOa.PNG\"]', 4, '2020-03-27 10:13:00', '2020-06-11 18:34:00'),
(63, 'nfggggggggggggggggggggg', 'ggggggggggg', 'ggggggggggggggggggggg', '<p>ggggggggggggggggggggggggggggggggggggggggggggggggggggggg</p>', 4522, 'products\\March2020\\kbp1cwj47j0els9HHr5h.PNG', '[\"products\\\\March2020\\\\8NPeu0eOvyN6AolNWxx5.PNG\",\"products\\\\March2020\\\\pWt6vkhfI5KsWBsX6Yef.PNG\",\"products\\\\March2020\\\\M9Rw9UpjAOf0d7azrMNc.PNG\",\"products\\\\March2020\\\\9w5VLRgLwNUOMMP4nRHe.PNG\"]', 0, '2020-03-27 10:18:20', '2020-03-27 21:25:22'),
(64, 'GOOD GUYS', 'Bottes', 'NORIDER NOIR', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">La bottine Norider&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Good Guys</span>&nbsp;est la bottine classique &agrave; lacets de r&eacute;f&eacute;rence.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Avec ses finitions parfaites et&nbsp;tout&nbsp;en simplicit&eacute;, elle a su ravir les pieds de la plus pointue des actrices hollywoodiennes, Emma Watson.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Cette bottine aux finitions parfaites et au confort in&eacute;galable sera une pi&egrave;ce maitresse&nbsp;de votre dressing.&nbsp;</span></p>', 1850, 'products\\June2020\\5wjlTP16xGKmK462txZE.jpg', '[\"products\\\\June2020\\\\ELlDVRYfGhg5aBnPbn8D.jpg\",\"products\\\\June2020\\\\vZmGiQubjmN9ePDR4eNj.jpg\",\"products\\\\June2020\\\\ClKVYxvRPAk78vGxYKLD.jpg\"]', 10, '2020-06-11 22:08:19', '2020-06-11 22:08:19'),
(66, 'SYDNEY BROWN', 'BOTTINE', 'BOTTINE BASSE BURGUNDY', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Les bottines burgundy de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Sydney Brown</span>&nbsp;sont l&rsquo;&eacute;l&eacute;gance &agrave; l&rsquo;&eacute;tat pur.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Elles habilleront instantan&eacute;ment votre jean pr&eacute;f&eacute;r&eacute; et offriront encore plus de chic &agrave; votre petite robe noire.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Cette paire r&eacute;alis&eacute;e en velours v&eacute;gane rouge fonc&eacute; somptueux est accompagn&eacute;e d&rsquo;un talon de la m&ecirc;me couleur offrant un style imparable &agrave; sa propri&eacute;taire.&nbsp; &nbsp;&nbsp;</span></p>', 3400, 'products\\June2020\\bopHSJrpEoDoVoBEs7BY.jpg', '[\"products\\\\June2020\\\\Wey7bC4gono6bHbMU6Oa.jpg\",\"products\\\\June2020\\\\isA2zZMh1nnftwmKxaGM.jpg\",\"products\\\\June2020\\\\dSBv5lhDRzMNoA1j3Uoo.jpg\"]', 10, '2020-06-11 22:11:48', '2020-06-11 22:11:48'),
(67, 'MINUIT SUR TERRE', 'SANGRIA', 'SANGRIA CAMEL', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Les bottines Sangria de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Minuit Sur Terre</span>, gr&acirc;ce &agrave; leur talon effet bois de 5cm, seront parfaites pour vos longues journ&eacute;es pass&eacute;es debout.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Elles sont r&eacute;alis&eacute;es en bi-mati&egrave;res simili-cuir lisse et simili-daim, s\'arr&ecirc;tent juste au-dessus de la cheville et vous apporteront un peu de hauteur tout en restant confortable.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Elles se marieront aux looks les plus sophistiqu&eacute;s ainsi qu&rsquo;aux tenues les plus boh&egrave;mes.&nbsp;&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">Fabriqu&eacute;es au Portugal.</p>\r\n<p class=\"p1\" style=\"box-sizing: inherit; margin: 0px; color: #161616; padding: 0px; border: 0px; font-family: \'Source Sans Pro\'; line-height: inherit; vertical-align: baseline; letter-spacing: 1px;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: \'libre baskerville\', serif; font-size: inherit; font-style: italic; line-height: inherit; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; letter-spacing: 0.75pt;\">Ce mod&egrave;le taille normalement, nous vous conseillons de prendre votre taille habituelle.&nbsp;</span></span></p>', 1450, 'products\\June2020\\1gLsonoihK3enxhdSC3s.jpg', '[\"products\\\\June2020\\\\rwlqkpHtLwrEoHLQ8GPa.jpg\",\"products\\\\June2020\\\\KTNX1qDp7Mv0l2wMNo16.jpg\",\"products\\\\June2020\\\\LYKrxyVNc9N6nKFHpG62.jpg\"]', 10, '2020-06-11 22:14:17', '2020-06-11 22:14:17'),
(69, 'VIREVOLTE', 'VIREVOLTE', 'VIREVOLTE BOIS DE ROSE', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Les baskets Virevolte de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit;\">Minuit Sur Terre</span></span>&nbsp;sont un best seller et pour cause! Ces baskets&nbsp;</span><span style=\"box-sizing: inherit; color: #161616; font-family: Lato, sans-serif; font-size: 9pt; letter-spacing: 0.75pt;\">sont &agrave; la fois une bonne alternative aux escarpins mais aussi un moyen chic et confortable de succomber &agrave; la tendance de la saison.</span><span style=\"box-sizing: inherit; color: #161616; font-family: Lato, sans-serif; font-size: 9pt; letter-spacing: 0.75pt;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Portez-les avec tout, des mini-jupes aux jeans 7/8emes. &nbsp;</span></p>\r\n<p class=\"p1\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Livr&eacute;es avec 2 paires de lacets : une blanche et un ton sur ton.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">&OElig;illets dor&eacute;s.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Fabriqu&eacute;es au Portugal.&nbsp;&nbsp;</span></p>', 950, 'products\\June2020\\PMAlRxMSvUp0pajoUbcg.jpg', '[\"products\\\\June2020\\\\q0X6A4otcdmYjpOM5DiS.jpg\",\"products\\\\June2020\\\\9XxV5qNYkw1UD8WUqFWm.jpg\",\"products\\\\June2020\\\\4hZYlg08YIbLL9V6uHDY.jpg\"]', 12, '2020-06-11 22:18:31', '2020-06-11 22:18:31'),
(70, 'BY BLANCH', 'NOA', 'NOA LEOPARD', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\"><span style=\"box-sizing: inherit; font-weight: bolder;\">By Blanch</span>&nbsp;revisite sa classique basket Noa qui se pare de l&rsquo;imprim&eacute; animal intemporel. Elles sont confectionn&eacute;es au Portugal en fa&ccedil;on poulain doux &agrave; imprim&eacute; l&eacute;opard et poss&egrave;de un empi&egrave;cement en simili-daim marron &agrave; l&rsquo;arri&egrave;re.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">Accompagnez d\'une petite robe blanche l&rsquo;&eacute;t&eacute; ou d\'un jean, elles s&rsquo;accorderont aux looks les plus pointus comme aux plus simples.</span></p>', 1200, 'products\\June2020\\dJS62grj006UgbhPJpZd.jpg', '[\"products\\\\June2020\\\\TWtrA7bWDqjAGYSz0AwB.jpg\",\"products\\\\June2020\\\\tBAyPZ99YOXWyJJlIyUZ.jpg\",\"products\\\\June2020\\\\kriKtmEyboeqD4HldXEd.jpg\",\"products\\\\June2020\\\\pyChAuk9ZX2tCPdyniQ7.jpg\"]', 15, '2020-06-11 22:20:02', '2020-06-11 22:20:02'),
(71, 'BOURGEOIS BOHEME', 'BOURGEOIS BOHEME', 'KIM PLUM BURGUNDY', '<p style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Les baskets basses Kim de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Bourgeois Boh&egrave;me</span>&nbsp;sont ici propos&eacute;es dans une nuance luxueuse de bordeaux pour un look sport-chic. Ces baskets seront parfaites avec un jean et un pull douillet, un tailleur ou encore une robe vaporeuse.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Ces chaussures &eacute;pur&eacute;es sont r&eacute;alis&eacute;es au Portugal, en simili-cuir v&eacute;gane avec une semelle recycl&eacute;e et une doublure &agrave; base de polym&egrave;re v&eacute;g&eacute;tale.&nbsp;</span></p>', 1600, 'products\\June2020\\u8rqGEVvXebuMsr25jGZ.jpg', '[\"products\\\\June2020\\\\luncp8ROCVMqYwYPml4k.jpg\",\"products\\\\June2020\\\\JsZJvgVNNMGScCnSyX6p.jpg\",\"products\\\\June2020\\\\MfboqfHATwviZkqQ2QcT.jpg\",\"products\\\\June2020\\\\TfuAq4br6bBHjSbq97z9.jpg\"]', 20, '2020-06-11 22:21:50', '2020-06-11 22:21:50'),
(73, 'SYDNEYBROWN', 'SANDALES', 'SANDALES RAFIA NUDE - TALONS HAUTS', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt; font-weight: normal;\">La sandale classique de</span></span><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">&nbsp;Sydney Brown</span></span><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">&nbsp;se mariera &agrave; la perfection avec l&rsquo;ensemble de votre garde-robe. Un style signature alli&eacute; &agrave; une d&eacute;marche &eacute;co-responsable.. gr&acirc;ce aux mati&egrave;res premi&egrave;res utilis&eacute;es telles que le rafia et le li&egrave;ge qui recouvrent la fibre recycl&eacute;e composant le talon.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Fabriqu&eacute;es en Europe, ces chaussures deviendront tr&egrave;s certainement vos souliers les plus &eacute;thiques possibles.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Ajust&eacute; la d&eacute;licate bride pour une tenue parfaite.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><em style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Des variations naturelles du li&egrave;ge et du rafia sont &agrave; pr&eacute;voir, ce qui rend chaque paire unique.&nbsp;<span style=\"box-sizing: inherit;\">&nbsp;</span></span></em></p>', 3350, 'products\\June2020\\p0bV8hwBl75YKtNgsCzq.jpg', '[\"products\\\\June2020\\\\DjmjEwi8IeajOdDbeL8G.jpg\",\"products\\\\June2020\\\\UJwLYXEgMFnzsPpzaS0p.jpg\",\"products\\\\June2020\\\\1lW3vr3tK5mpH9ovWXRb.jpg\",\"products\\\\June2020\\\\JPJ5knQ2Z3sgOox1XSko.jpg\"]', 10, '2020-06-11 22:28:33', '2020-06-11 22:28:33'),
(74, 'BYBLANCH', 'LOUISE', 'LOUISE - CHOCOLAT', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Il sera difficile de ne pas craquer pour ces claquettes&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">By Blanch</span>&nbsp;&agrave; la fois simples et chic : leur forme minimaliste et leur&nbsp;<em style=\"box-sizing: inherit;\">cuir de pommes</em>&nbsp;chocolat&nbsp;se marieront avec de nombreuses pi&egrave;ces de votre garde-robe. Elles sont r&eacute;alis&eacute;es dans un atelier europ&eacute;en avec un nouveau simili-cuir &agrave;&nbsp;<span style=\"box-sizing: inherit; text-decoration-line: underline;\">base de pommes</span>&nbsp;encore plus respectueux de l\'environnement.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Elles seront vos alli&eacute;es tout l&rsquo;&eacute;t&eacute; mais aussi jusqu&rsquo;&agrave; la fin de l&rsquo;&eacute;t&eacute; indien.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><em style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Les louise conviennent parfaitement aux pieds fins et taillent un petit peu plus petit que la taille standard. Nous vous conseillons de prendre une taille au dessus de votre pointure habituel.&nbsp;</span></em> &nbsp;</p>', 950, 'products\\June2020\\U4BdPuh1XnAR800NngUV.jpg', '[\"products\\\\June2020\\\\TnsO7AET1thBZgWB3Vjr.jpg\",\"products\\\\June2020\\\\v8uQWNt0KKSwOP8QUP7a.jpg\",\"products\\\\June2020\\\\4cGLVpxKOP5MnmGAaWpb.jpg\",\"products\\\\June2020\\\\DID4b0xT6IA1M1QEZhd1.jpg\"]', 20, '2020-06-11 22:30:48', '2020-06-11 22:30:48'),
(76, 'SYDNEY', 'SANDALES RAFIA NOIR', 'SANDALES RAFIA NOIR', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt; font-weight: normal;\">La sandale classique de</span></span><span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">&nbsp;Sydney Brown</span></span><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">&nbsp;se mariera &agrave; la perfection avec l&rsquo;ensemble de votre garde-robe. Un style signature alli&eacute; &agrave; une d&eacute;marche &eacute;co-responsable.. gr&acirc;ce aux mati&egrave;res premi&egrave;res utilis&eacute;es telles que le rafia et le li&egrave;ge qui recouvrent la fibre recycl&eacute;e composant le talon. Le talon de 7cm sera vous permettra de les porter aussi bien pour de longues journ&eacute;es de travail que pour danser toute la nuit.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Fabriqu&eacute;es en Europe, ces chaussures deviendront tr&egrave;s certainement vos souliers les plus &eacute;thiques possibles.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Ajust&eacute; la d&eacute;licate bride pour une tenue parfaite.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><em style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Des variations naturelles du li&egrave;ge et du rafia sont &agrave; pr&eacute;voir, ce qui rend chaque paire uniq</span></em></p>', 325, 'products\\June2020\\vVxe6P9Xx5btm9ZaDk1V.jpg', '[\"products\\\\June2020\\\\9Sb0KX4HWX0tHbruqRlf.jpg\",\"products\\\\June2020\\\\ffjm5YI8uyctvAkvuqT3.jpg\",\"products\\\\June2020\\\\C5uEYfkE0uF1Szdwwfkn.jpg\",\"products\\\\June2020\\\\TitBGaspKdoVAowiCoJO.jpg\"]', 10, '2020-06-11 22:33:34', '2020-06-11 22:33:34');
INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `images`, `stock`, `created_at`, `updated_at`) VALUES
(78, 'MINUIT SUR TERRE 1', 'NECTAR CAMEL', 'NECTAR CAMEL', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">La c&eacute;l&egrave;bre forme mocassin fait son entr&eacute;e chez&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Minuit Sur Terre</span>.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Elles se porteront avec toutes les pi&egrave;ces de votre garde-robe. Habilement confectionn&eacute;es en simili-cuir lisse, dot&eacute;es d\'&eacute;l&eacute;gants bouts en amande, d&rsquo;un empi&egrave;cement minimaliste sur le dessus, et de petits talons qui vous assureront un confort tout au long de la journ&eacute;e.&nbsp;</span></p>\r\n<p class=\"p1\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Portez-les au bureau avec une chemise et une pantalon large 7/8&egrave;me, ou avec un sweat le week-end</span></p>\r\n<p class=\"p1\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Talon de 1,5cm.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Fabriqu&eacute;es au Portugal.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin: 0px; color: #161616; padding: 0px; border: 0px; font-family: \'Source Sans Pro\'; line-height: inherit; vertical-align: baseline; letter-spacing: 1px;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-family: \'libre baskerville\', serif; font-size: inherit; font-style: italic; line-height: inherit; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; letter-spacing: 0.75pt;\">Ce mod&egrave;le taille normalement, nous vous conseillons de prendre votre taille habituelle.&nbsp;&nbsp;</span></span></p>', 1150, 'products\\June2020\\GGusyEFaw6lDSQ5EgTak.jpg', '[\"products\\\\June2020\\\\TSL75zYo0sdq6y6H6YEm.jpg\",\"products\\\\June2020\\\\SoU2JrUTkYsKi1Y04zjX.jpg\",\"products\\\\June2020\\\\jbg4SBOAphCX3RjWZdMk.jpg\",\"products\\\\June2020\\\\hzlcFKawyRodyGHyfEqq.jpg\"]', 9, '2020-06-12 00:35:49', '2020-06-13 00:13:22'),
(79, 'COLLECTION & CO', 'THASSOS TAN', 'THASSOS TAN', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Les sandales minimalistes Thassos de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Collection &amp; Co</span>&nbsp;poss&egrave;dent trois brides tress&eacute;es en simili-cuir qui &eacute;treignent d&eacute;licatement le pied. Ce classique est un indispensable dont on ne se lasse pas.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Portez les v&ocirc;tres en vacances ou comme &agrave; la ville, avec toutes vos tenues estivales pr&eacute;f&eacute;r&eacute;es.&nbsp;</span></p>', 948, 'products\\June2020\\kkbkYiBAmL3iJjIJF3rB.jpg', '[\"products\\\\June2020\\\\3Z1a0rZPQUvy8Ufwydwt.jpg\",\"products\\\\June2020\\\\cXrP239xz5W4qXoZzn98.jpg\",\"products\\\\June2020\\\\4gcoc6l5ysxhmWY9DigV.jpg\"]', 9, '2020-06-12 00:39:17', '2020-06-13 00:11:33'),
(80, 'BLANLAC', 'BLANLAC', 'COSMEA NOIR', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; text-transform: none;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">D\'origine Italienne la cr&eacute;atrice de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Blanlac</span>, Lydia et sa soeur cr&eacute;ent&nbsp;des&nbsp;chaussures qui leur ressemblent chics et &eacute;l&eacute;gantes. Leurs magnifiques pi&egrave;ces sont con&ccedil;ues au luxembourg et fabriqu&eacute;es en Italie.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; text-transform: none;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; text-transform: none;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">Elles n\'ont pas peur de r&eacute;inventer des classiques, et cette paire de sandales en est la preuve, avec sa silhouette minimaliste contrebalanc&eacute;e par une asym&eacute;trie. D&rsquo;un c&ocirc;t&eacute; le pied est presque nu, de l&rsquo;autre il est &agrave; peine couvert de leur eco-microfiber soft leather.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; text-transform: none;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; text-transform: none;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Ce sont les sandales parfaites dont le confort in&eacute;galable vous suivra du travail jusqu&rsquo;en soir&eacute;e ..</span></p>', 2590, 'products\\June2020\\BzyzfyDmGI1BuMG1GHxi.jpg', '[\"products\\\\June2020\\\\YBA5GSuVSRE2okd1g9IL.jpg\",\"products\\\\June2020\\\\11ZlvNHToaSQnsmymxJv.jpg\"]', 10, '2020-06-12 00:45:23', '2020-06-12 00:45:23'),
(82, 'BLANLACa', 'GALATELLA ROUGE', 'GALATELLA ROUGE', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">Les Galatella de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Blanlac</span>&nbsp;sont identifiables &agrave; leur &eacute;l&eacute;gant bout pointu et &agrave; leur talon aiguille chic. Cet escarpin intemporel issu de leur premi&egrave;re collection est d&eacute;j&agrave; un must-have. Leur &eacute;l&eacute;gance n&rsquo;a d&rsquo;&eacute;gal que leur confort.&nbsp;</span><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">R&eacute;alis&eacute; en Eco-microfiber suede doux doubl&eacute; d&rsquo;une mati&egrave;re &eacute;coresponsable con&ccedil;u &agrave; base de r&eacute;sidus de c&eacute;r&eacute;ales et de graines, cet escarpin est dot&eacute; d\'une semelle l&eacute;g&egrave;rement rembourr&eacute;e qui la rend confortable &agrave; porter du matin au soir.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">Leur teinte rouge dopera toutes vos tenues de sa touche vitamin&eacute;e, en journ&eacute;e comme en soir&eacute;e.</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><em style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">D\'origine Italienne la cr&eacute;atrice de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\">Blanlac</span>&nbsp;et sa soeur cr&eacute;ent&nbsp;des&nbsp;chaussures qui leur ressemblent chics et &eacute;l&eacute;gantes.&nbsp;</span><span lang=\"en-us\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en-us\">Leurs magnifiques pi&egrave;ces sont con&ccedil;ues au Luxembourg et fabriqu&eacute;es en Italie.&nbsp;</span></em></p>', 2600, 'products\\June2020\\Efsoxr0FSkckoTsl6LU8.jpg', '[\"products\\\\June2020\\\\bqyy5SNcGm3SACxFCvLS.jpg\",\"products\\\\June2020\\\\hWpRIPckLUO8rRnvxakT.jpg\"]', 17, '2020-06-12 00:50:35', '2020-06-13 14:31:49'),
(85, 'MARINA KLEIST', 'LE CABAS N°2 NOIR', 'LE CABAS N°2 NOIR', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Le Cabas N&deg;2 de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit;\">Marina Kleist</span></span>&nbsp;est un sac un peu plus petit que le Cabas mais conserve des lignes &eacute;pur&eacute;es et intemporelles.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Muni&nbsp;d&rsquo;une anse c&rsquo;est le sac parfait pour vous accompagner dans vos activit&eacute;s quotidiennes.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Il vous permet de ranger ais&eacute;ment une tablette, un porte-monnaie, un livre et une petite trousse de toilette.&nbsp;</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Chaque sac&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder;\"><span style=\"box-sizing: inherit;\">Marina Kleist</span></span> est fait main et fabriqu&eacute; &agrave; la commande, en un sens ils sont tous uniques.&nbsp; &nbsp;</span></p>', 1050, 'products\\June2020\\JZL6HGFMcpEMlY6zXlN1.jpg', '[\"products\\\\June2020\\\\SCFSZ5ee5r8mKZiJEAB5.jpg\",\"products\\\\June2020\\\\6uDuRMglPauoRyraEO6b.jpg\"]', 6, '2020-06-12 10:29:34', '2020-06-13 14:54:16'),
(86, 'ALEXANDRA K 0.6', 'MIDNIGHT BLACK SILVER', 'MIDNIGHT BLACK SILVER', '<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; color: #424242; font-family: Poppins, sans-serif; font-size: 13px;\">Le mod&egrave;le 0.6 d\'<span style=\"box-sizing: inherit; font-weight: bolder;\">Alexandra K</span>&nbsp;apporte une touche finale parfaite &agrave; un look de tous les jours. Fait &agrave; la main en simili cuir respectueux de l\'environnement Freedom-Leather. Plaque d&eacute;corative avec un num&eacute;ro de s&eacute;rie individuel.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; color: #424242; font-family: Poppins, sans-serif; font-size: 13px;\">Le sac a une sangle r&eacute;glable que vous pouvez r&eacute;gler selon vos besoins.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; color: #424242; font-family: Poppins, sans-serif; font-size: 13px;\">Sac de petite taille, mais avec un int&eacute;rieur spacieux pour toutes choses n&eacute;cessaires comme portemonnaie ou t&eacute;l&eacute;phone portable.</span></p>', 2250, 'products\\June2020\\NYlxLrAW0uKaKLqVsht6.jpg', '[\"products\\\\June2020\\\\XcjnykfjgGqRlEEdjrkA.jpg\",\"products\\\\June2020\\\\1nLl9kzy0M4JKOsVlTyp.jpg\",\"products\\\\June2020\\\\q35IAYVzH6FKR9YGLcY2.jpg\"]', 2, '2020-06-12 11:51:05', '2020-06-13 14:57:30'),
(87, 'ASHOKA', 'COMPAGNON CAMEL', 'COMPAGNON CAMEL - CUIR DE POMMES', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Le portefeuille Compagnon d&rsquo;<span style=\"box-sizing: inherit; font-weight: bolder;\">Ashoka</span>&nbsp;est subtilement d&eacute;cor&eacute; du logo de la marque dor&eacute;.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Il est r&eacute;alis&eacute; en cuir de pommes grain&eacute; et poss&egrave;de 12 emplacements pour cartes ainsi que des compartiments pour vos billets et vos pi&egrave;ces. Il est &eacute;galement pourvu d&rsquo;une poche ext&eacute;rieur pratique et discr&egrave;te. Tr&egrave;s fin, il se glissera facilement dans tous vos sacs &agrave; main.&nbsp;&nbsp;</span></p>', 11000, 'products\\June2020\\LZrMDAKzX1oUVgUWNhRr.jpg', '[\"products\\\\June2020\\\\rFQ3bnl1tLVpmDyCtMTv.jpg\",\"products\\\\June2020\\\\Zn8JJmmaRNzGhFdaxtJV.jpg\",\"products\\\\June2020\\\\Aa3fNzIIJdkNC4ddT4Xk.jpg\"]', 6, '2020-06-13 17:09:55', '2020-06-13 17:09:55'),
(88, 'ASHOKA1', 'PORTE MONNAIE NOIR - CUIR DE POMMES', 'PORTE MONNAIE NOIR - CUIR DE POMMES', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en\">Derri&egrave;re son format r&eacute;duit, cette version mini du portefeuille Compagnon d&rsquo;<span style=\"box-sizing: inherit; font-weight: bolder;\">Ashoka</span>&nbsp;dispose tout de m&ecirc;me de suffisamment de place pour bien vous organiser.&nbsp;</span><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Cet accessoire en cuir de pommes grain&eacute; s\'ouvre sur un int&eacute;rieur trois compartiments, deux am&eacute;nagements pour vos cartes ainsi qu&rsquo;un porte-monnaie ouvert.</span></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span lang=\"en\" style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\" xml:lang=\"en\">Vous retrouverez le logo argent&eacute; de la marque sur son rabat.</span></p>', 3900, 'products\\June2020\\o8GRZoWy4zlEocRXUKZX.jpg', '[\"products\\\\June2020\\\\0c2BsLNVFbExTHsHWTHr.jpg\",\"products\\\\June2020\\\\P0xOlem6B0UfFGAkpHjp.jpg\",\"products\\\\June2020\\\\QwzYeQPuzXMRTZewGsX3.jpg\"]', 32, '2020-06-13 17:13:22', '2020-06-13 17:13:22'),
(89, 'ASHOKA3', 'COMPAGNON NOIR - CUIR DE POMMES', 'COMPAGNON NOIR - CUIR DE POMMES', '<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Le portefeuille Compagnon d&rsquo;<span style=\"box-sizing: inherit; font-weight: bolder;\">Ashoka</span>&nbsp;est subtilement d&eacute;cor&eacute; du logo de la marque argent&eacute;.</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; font-size: 15px; color: #7a7a7a; font-family: Lato, sans-serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; color: #161616; letter-spacing: 0.75pt;\">Il est r&eacute;alis&eacute; en cuir de pommes grain&eacute; et poss&egrave;de 12 emplacements pour cartes ainsi que des compartiments pour vos billets et vos pi&egrave;ces. Il est &eacute;galement pourvu d&rsquo;une poche ext&eacute;rieur pratique et discr&egrave;te. Tr&egrave;s fin, il se glissera facilement dans tous vos sacs &agrave; main.</span></p>', 11000, 'products\\June2020\\yJybQu0anwNacZeOQBgr.jpg', '[\"products\\\\June2020\\\\A1NlCmd8fbWqGJ0NxoUG.jpg\",\"products\\\\June2020\\\\YfzTO3ZfCDoaKTpCcR47.jpg\",\"products\\\\June2020\\\\rjKSUwZ7NlhooSdwZn6r.jpg\",\"products\\\\June2020\\\\ujlR3egHcVgSanqfJk6E.jpg\"]', 23, '2020-06-13 17:17:16', '2020-06-13 17:17:16'),
(90, 'LAMAZUNA', 'ORICULI, CURE OREILLES', 'ORICULI, CURE OREILLES', '<p style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif; vertical-align: baseline;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Le cure-oreilles &eacute;cologique en bambou remplace des centaines de cotons-tiges !</span></p>\r\n<p class=\"MsoNormal\" style=\"box-sizing: inherit; margin: 0cm 0cm 0.0001pt; font-size: medium; color: #7a7a7a; font-family: \'Times New Roman\', serif;\"><span style=\"box-sizing: inherit; font-size: 9pt; font-family: Lato, sans-serif; color: #161616; letter-spacing: 0.75pt;\">Cet ing&eacute;nieux instrument nous vient du Japon et de Chine, o&ugrave; il est utilis&eacute; par toute la population.</span></p>', 3900, 'products\\June2020\\6uft0mx7eWQx4KWNL34i.jpg', '[\"products\\\\June2020\\\\2p0dQK4frE6Kl8OiJpYb.jpg\"]', 5, '2020-06-13 17:20:35', '2020-06-13 17:20:35'),
(91, 'PUFF-SLEEVE TOP', 'PUFF-SLEEVE TOP', 'Puff-sleeve elasticated floral top in ramie', '<p><span style=\"color: #272727; font-family: Genath-Regular, Helvetica, Arial, sans-serif; font-size: 16px;\">Cut from slightly sheer ramie, this elasticated floral top reveals a wild flora-inspired motif. It can be worn on or off shoulder. Billowing sleeves enhance the loose silhouette, while diagonal pintucks bring elegant detail to this fresh ladies\' top.</span></p>', 139000, 'products\\June2020\\GOzwphyCBwA6X1Voo4CC.jpg', '[\"products\\\\June2020\\\\IC3cEzf8yKPGW66gpUa8.jpg\",\"products\\\\June2020\\\\7FMPGmXlDR5p7s3QCVkK.jpg\",\"products\\\\June2020\\\\epgVwFJnmgqMypU50Pdu.jpg\",\"products\\\\June2020\\\\YVthPKbwnRunBST6aexL.jpg\"]', 12, '2020-06-13 17:30:22', '2020-06-13 17:30:22'),
(92, 'SLEEVELESS DRESS', 'SLEEVELESS DRESS', 'Button-down sleeveless dress in warm ivory denim with contrast See By Chloé buttons', '<p><span style=\"color: #272727; font-family: Genath-Regular, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Button-down sleeveless dress in warm ivory denim with contrast See By Chlo&eacute; buttons. The drawstring waist cinches the silhouette, while flap pockets enhance the utilitarian aesthetic. Small side slits finish this cool sleeveless dress.</span></span></p>', 136000, 'products\\June2020\\fQ7BLT0uS50hdpWLfc3K.jpg', '[\"products\\\\June2020\\\\7YT8Zu1aqyDNcZmjazTM.jpg\",\"products\\\\June2020\\\\kc14fpdP1MKg6naWmwL0.jpg\",\"products\\\\June2020\\\\5uwVkwTIxrddT2tDWG1k.jpg\"]', 5, '2020-06-13 17:34:55', '2020-06-13 17:34:55'),
(93, 'Defacto CHEMISIER À MANCHES LONGUES', '- NOIR', 'Defacto CHEMISIER À MANCHES LONGUES', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Fond&eacute;e en 2003, DEFACTO fait partie, aujourd&rsquo;hui, des marques de mode les plus populaires en Turquie et dans le monde avec plus de 242 magasins. Elle se positionne comme une marque pionni&egrave;re de la mode &agrave; travers le monde m&eacute;diterran&eacute;en.</span></p>', 14900, 'products\\June2020\\bC28Gae6oyRqbAsZcNPa.jpg', '[\"products\\\\June2020\\\\h7UlG42VUKqX3NiK0n32.jpg\",\"products\\\\June2020\\\\2Le5vsQJgwnEBaeCqlzr.jpg\",\"products\\\\June2020\\\\Q4aGqQ8Du6Fd21Rdjotr.jpg\",\"products\\\\June2020\\\\wig4b8jSETxeZQnMXmVT.jpg\"]', 22, '2020-06-13 17:40:28', '2020-06-13 17:40:28'),
(94, 'Defacto T-SHIRT', 'Defacto T-SHIRT', 'À MANCHES COURTES - NOIR', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Fond&eacute;e en 2003, DEFACTO fait partie, aujourd&rsquo;hui, des marques de mode les plus populaires en Turquie et dans le monde avec plus de 242 magasins. Elle se positionne comme une marque pionni&egrave;re de la mode &agrave; travers le monde m&eacute;diterran&eacute;en.</span></p>', 9600, 'products\\June2020\\n5f5fR7h5sRTwZUVbNOT.jpg', '[\"products\\\\June2020\\\\4mNqkoW4RSi9DBHb0JT1.jpg\",\"products\\\\June2020\\\\mA3V0EOAu36NEl04Wt6X.jpg\",\"products\\\\June2020\\\\OK3aY8ho2zdSBgjiP7Rg.jpg\",\"products\\\\June2020\\\\Ft83mIVXMlcs4KBMiF5W.jpg\"]', 12, '2020-06-13 17:45:04', '2020-06-13 17:45:04'),
(95, 'Huile de coco', 'Huile de coco', 'Jour & Nuit Huile de coco extra vierge 100 % Naturel', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">HUILE DE COCO EXTRE VIERGERiche en vitamine E et hydrate efficacement les Cheveux .la peau et le cuir cheveluAnti vieillissement Agit efficacement contre l\'acn&eacute; les taches sombres Untile pour gommage le peauCombat chut des cheveux&nbsp;</span></p>', 29000, 'products\\June2020\\gLRHKIjQc6yKCf0iRc4J.jpg', '[\"products\\\\June2020\\\\LhuxsWhjDkFnNmDzXjEj.jpg\",\"products\\\\June2020\\\\IagE1ON1UfMTgb4XVwzb.jpg\",\"products\\\\June2020\\\\xvLmB9TFPgiIQSn9DSvc.jpg\",\"products\\\\June2020\\\\SmANGo3BZCzVowTBJT7R.jpg\",\"products\\\\June2020\\\\CrvZBlERbPX43uyJRGal.jpg\"]', 22, '2020-06-13 18:16:44', '2020-06-13 18:16:44'),
(96, 'RICHIS Spray texturisant,', 'RICHIS Spray texturisant,', 'RICHIS Spray texturisant, Volume, Brillance, Anti-frizz - 100 ml', '<p style=\"box-sizing: border-box; padding: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; outline: 0px; vertical-align: baseline; max-width: 100%; margin: 0px auto !important 25px !important auto !important;\">Cette huile s\'emploie dans vos pr&eacute;parations cosm&eacute;tiques pour fortifier ongles, cheveux. Parfaite pour r&eacute;parer et nourrir les cheveux secs, d&eacute;vitalis&eacute;s, fourchus, cassants ou cr&eacute;pus, elle est r&eacute;put&eacute;e pour en favoriser la pousse.</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; outline: 0px; vertical-align: baseline; max-width: 100%; margin: 0px auto !important 25px !important auto !important;\">Cette huile s\'emploie dans vos pr&eacute;parations cosm&eacute;tiques pour fortifier ongles, cheveux. Parfaite pour r&eacute;parer et nourrir les cheveux secs, d&eacute;vitalis&eacute;s, fourchus, cassants ou cr&eacute;pus, elle est r&eacute;put&eacute;e pour en favoriser la pousse.</p>', 45000, 'products\\June2020\\j5RDi1DJWMvaGO1HNbiw.jpg', '[\"products\\\\June2020\\\\jl79W20LFi01M0P8yyLN.jpg\",\"products\\\\June2020\\\\ayLOVJ1Q9CQLZOLVIxmK.jpg\",\"products\\\\June2020\\\\cL9ocYlyU8YJVxnDhUAn.jpg\"]', 14, '2020-06-13 18:18:39', '2020-06-13 18:18:39'),
(97, 'Katze veste longue', 'Katze veste longue', 'Katze veste longue en jean effet déchiré - bleu foncé', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">katze vous propose une veste ultra tendance pour tout amoureux de mode.&nbsp;</span></p>', 19700, 'products\\June2020\\jvQOqOsQlJ6mxKItl7m8.jpg', '[\"products\\\\June2020\\\\YKahwjnxdc2TE19FRmWw.jpg\",\"products\\\\June2020\\\\WRFb56YUWRy9N8dN7yIA.jpg\"]', 12, '2020-06-13 18:21:31', '2020-06-13 18:21:31'),
(98, 'La Vie En Rose Sac de plage', 'La Vie En Rose Sac de plage', 'La Vie En Rose Sac de plage', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Bandouli&egrave;re en corde</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Fermeture &agrave; pression</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Poche interne</span><br style=\"box-sizing: border-box; color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\" /><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">100 % Papier</span></p>', 24900, 'products\\June2020\\9CJprA3ddT8uuYa5ScGh.jpg', '[\"products\\\\June2020\\\\5r2dVr0NzTPtDBg3XPR6.jpg\"]', 21, '2020-06-13 18:23:41', '2020-06-13 18:23:41'),
(99, 'Guerlain coffret mon guerlain', 'Guerlain coffret mon guerlain', '- eau de toilette 100 ml + eau de toilette 15 ml', '<p><a style=\"box-sizing: border-box; display: inline-block; font-weight: bold; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\" href=\"https://www.tendance-parfums.com/mon-guerlain.html\">Mon Guerlain</a><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">&nbsp;est un hommage &agrave; la f&eacute;minit&eacute; d&rsquo;aujourd&rsquo;hui : une f&eacute;minit&eacute; forte, libre et sensuelle, inspir&eacute;e par Angelina Jolie.&nbsp; L\'Eau de Toilette Mon Guerlain est une fragrance souriante comme un hymne &agrave; la vie. Un parfum porte-bonheur comme une invitation &agrave; oser, qui donne confiance en elle &agrave; la femme d&rsquo;aujourd&rsquo;hui.&nbsp; Cette fragrance orientale hesp&eacute;rid&eacute;e est une fragrance rayonnante qui tient sa fra&icirc;cheur des notes florales de Jasmin Sambac et de Lavande Carla sublim&eacute;es par des notes d&rsquo;agrumes.</span></p>', 13, 'products\\June2020\\EDLriNBzUkfITefrdvU3.jpg', '[\"products\\\\June2020\\\\VcUKbZMFwKOleRQy0WsL.jpg\",\"products\\\\June2020\\\\i7th8sI61udq43VvmM5b.jpg\"]', 8, '2020-06-13 18:26:59', '2020-06-13 18:26:59'),
(100, 'Astra Compact fondation', 'Astra Compact fondation', 'Compact fondation', '<p><span style=\"color: #282828; font-family: Roboto, -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, sans-serif;\">Astra Make-Up Compact Foundation - Full Coverage</span></p>', 11000, 'products\\June2020\\FwNOyhPuMygtJtCatQRX.jpg', '[\"products\\\\June2020\\\\BxRgzxir8lS16g4TeFJz.jpg\",\"products\\\\June2020\\\\95Ho73OmRaCfyA6p054d.jpg\"]', 8, '2020-06-13 18:29:31', '2020-06-13 18:29:31');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-25 14:27:24', '2020-03-25 14:27:24'),
(2, 'user', 'Normal User', '2020-03-25 14:27:24', '2020-03-25 14:27:24');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ikram_San', 'admine@admine.com', 'users/default.png', NULL, '$2y$10$9VIKBfgDRxwM9an8vvNPwOqiQDdae4MxJW7/gKc4tcCjcy1QhB542', NULL, NULL, '2020-03-25 14:29:47', '2020-03-25 14:29:48'),
(2, 2, 'Ikram', 'ikramie.96@gmail.com', 'users/default.png', NULL, '$2y$10$lrksQX7QDbj8VnmgrQC5/OcZKvS8sIfxskR/uya0Atu/EOF7OYVpK', NULL, NULL, '2020-06-08 22:38:39', '2020-06-08 22:38:40'),
(3, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$.qgw1qc7oLjdxRSaYRDeq.feRenFXHeNjwvdPYR7n0.iK9WxaD6G2', 'SGHF8EPP6tFzl0awM01fh1WAXawMLs8yrO4cpyFoCHNkqH7dx7qb16JyQKIo', NULL, '2020-06-08 22:54:31', '2020-06-08 22:54:32'),
(4, 2, 'amina', 'amina@gmail.com', 'users/default.png', NULL, '$2y$10$ctwh6e6y3yqYwaw0Km3eAuMoM0gnop95KxCh67tAJTScyf2.KPmOe', NULL, NULL, '2020-06-09 11:04:12', '2020-06-09 11:04:12'),
(5, 2, 'jack', 'jack@gmail.com', 'users/default.png', NULL, '$2y$10$e2eNk4t5lh7jnu0ogTQDjOi388KymxfsClF5KoEnF9COCYltApTE.', NULL, NULL, '2020-06-09 11:23:25', '2020-06-09 11:23:25'),
(6, 2, 'julia', 'julia@gmail.com', 'users/default.png', NULL, '$2y$10$IvtqBxI5.Q2fjBIBxxw.duPJKPBx6f7yGTYiZp8u5p2uaxLqsfIYW', NULL, NULL, '2020-06-09 11:24:11', '2020-06-09 11:24:11');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_payment_intent_id_unique` (`payment_intent_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
