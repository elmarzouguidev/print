-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mars 2020 à 13:19
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myprint`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-03-08 13:12:23', '2020-03-08 13:12:23');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:deals,slug\"}}', 3),
(64, 8, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"60%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(66, 8, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 6),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'seo', 'text_area', 'Seo', 1, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 5),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(78, 10, 'Post', 'text', 'Post', 1, 1, 1, 1, 1, 1, '{}', 3),
(79, 10, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 10, 'content', 'text_area', 'Content', 1, 1, 1, 1, 1, 1, '{}', 5),
(81, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 11, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 11, 'responde', 'rich_text_box', 'Responde', 1, 1, 1, 1, 1, 1, '{}', 3),
(84, 11, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 4),
(85, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(86, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(87, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(89, 12, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(90, 12, 'content', 'text_area', 'Content', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 12, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"60%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(92, 12, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(93, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(95, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 13, 'seo', 'text_area', 'Seo', 1, 1, 1, 1, 1, 1, '{}', 7),
(98, 13, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 8),
(99, 13, 'links', 'text', 'Links', 0, 1, 1, 1, 1, 1, '{}', 9),
(100, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(101, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(102, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(103, 13, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:portfolios,slug\"}}', 5),
(104, 13, 'images', 'multiple_images', 'Images', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"60%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"}]}', 4),
(105, 13, 'content', 'rich_text_box', 'Descriptioin', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 13, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 6),
(107, 8, 'topPromo', 'checkbox', 'TopPromo', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-08 13:12:19', '2020-03-08 13:12:19'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-08 13:12:19', '2020-03-08 13:12:19'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-03-08 13:12:19', '2020-03-08 13:12:19'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(7, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(8, 'deals', 'deals', 'Deal', 'Deals', 'voyager-star-half', 'App\\Deal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-10 08:41:47', '2020-03-11 13:25:57'),
(9, 'services', 'services', 'Service', 'Services', 'voyager-credit-card', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(10, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-people', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(11, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-question', 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(12, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-11 09:56:29', '2020-03-11 13:45:02'),
(13, 'portfolios', 'portfolios', 'Portfolio', 'Portfolios', 'voyager-images', 'App\\Portfolio', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-11 10:05:43', '2020-03-11 11:04:45');

-- --------------------------------------------------------

--
-- Structure de la table `deals`
--

DROP TABLE IF EXISTS `deals`;
CREATE TABLE IF NOT EXISTS `deals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `topPromo` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deals_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `deals`
--

INSERT INTO `deals` (`id`, `title`, `slug`, `active`, `image`, `content`, `created_at`, `updated_at`, `topPromo`) VALUES
(1, 'Flayer', 'flayer', 1, 'deals\\March2020\\ggS088LD3MLImZHIZOEi.jpg', '<p>The final cost depends on which turnaround time and paper/finish options you\'ve selected at checkout - you can get an accurate quote in seconds using our online cost calculator.</p>', '2020-03-10 08:55:00', '2020-03-11 14:31:44', 0),
(2, 'Pack T_shirt', 'pack-t-shirt', 1, 'deals\\March2020\\QaEM8u165I70mbVV9ENK.jpg', '<p>survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-03-11 08:45:00', '2020-03-11 14:30:22', 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responde` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqs_question_unique` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `responde`, `active`, `created_at`, `updated_at`) VALUES
(1, 'How much do color business card cost?', '<p><br /><br />Color Business Cards start at $19.99 for 50 cards.<br /><br />The final cost depends on which turnaround time and paper/finish options you\'ve selected at checkout - you can get an accurate quote in seconds using our online cost calculator.</p>', 1, '2020-03-11 09:04:01', '2020-03-11 09:04:01'),
(2, 'How many sheets do I get in a pack of flyers?', '<div class=\"inner\">\r\n<p>Color Business Cards start at $19.99 for 50 cards.</p>\r\n<p>The final cost depends on which turnaround time and paper/finish options you\'ve selected at checkout - you can get an accurate quote in seconds using our online cost calculator.</p>\r\n</div>', 1, '2020-03-11 09:04:00', '2020-03-11 09:04:32'),
(3, 'What are colors postcards made of?', '<p><br /><br />Color Business Cards start at $19.99 for 50 cards.<br /><br />The final cost depends on which turnaround time and paper/finish options you\'ve selected at checkout - you can get an accurate quote in seconds using our online cost calculator.</p>', 1, '2020-03-11 09:04:54', '2020-03-11 09:04:54');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-08 13:12:20', '2020-03-08 13:12:20');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-08 13:12:20', '2020-03-08 13:12:20', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-03-08 13:12:20', '2020-03-11 09:56:45', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2020-03-08 13:12:20', '2020-03-11 09:56:45', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-03-08 13:12:20', '2020-03-11 09:56:45', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-03-08 13:12:20', '2020-03-11 09:56:45', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-08 13:12:20', '2020-03-09 08:42:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-08 13:12:20', '2020-03-09 08:42:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-08 13:12:20', '2020-03-09 08:42:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-08 13:12:20', '2020-03-09 08:42:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-03-08 13:12:20', '2020-03-11 09:56:46', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 16, 9, '2020-03-08 13:12:23', '2020-03-11 10:06:07', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 16, 8, '2020-03-08 13:12:23', '2020-03-11 10:06:07', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-03-08 13:12:24', '2020-03-11 09:56:45', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-03-08 13:12:25', '2020-03-09 08:42:19', 'voyager.hooks', NULL),
(15, 1, 'Sliders', '', '_self', 'voyager-images', NULL, 16, 6, '2020-03-09 08:38:37', '2020-03-11 10:06:07', 'voyager.sliders.index', NULL),
(16, 1, 'CMS', '', '_self', 'voyager-browser', '#000000', NULL, 2, '2020-03-09 08:42:11', '2020-03-09 08:42:54', NULL, ''),
(17, 1, 'Deals', '', '_self', 'voyager-star-half', NULL, 16, 3, '2020-03-10 08:41:48', '2020-03-11 09:56:45', 'voyager.deals.index', NULL),
(18, 1, 'Services', '', '_self', 'voyager-credit-card', NULL, 16, 2, '2020-03-11 08:37:29', '2020-03-11 09:56:45', 'voyager.services.index', NULL),
(19, 1, 'Testimonials', '', '_self', 'voyager-people', NULL, 16, 5, '2020-03-11 08:48:58', '2020-03-11 10:06:07', 'voyager.testimonials.index', NULL),
(20, 1, 'Faqs', '', '_self', 'voyager-question', NULL, 16, 7, '2020-03-11 08:59:46', '2020-03-11 10:06:07', 'voyager.faqs.index', NULL),
(21, 1, 'Products', '', '_self', 'voyager-bag', NULL, 16, 1, '2020-03-11 09:56:29', '2020-03-11 09:56:45', 'voyager.products.index', NULL),
(22, 1, 'Portfolios', '', '_self', 'voyager-images', NULL, 16, 4, '2020-03-11 10:05:43', '2020-03-11 10:06:07', 'voyager.portfolios.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-03-08 13:12:24', '2020-03-08 13:12:24');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(2, 'browse_bread', NULL, '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(3, 'browse_database', NULL, '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(4, 'browse_media', NULL, '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(5, 'browse_compass', NULL, '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(6, 'browse_menus', 'menus', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(7, 'read_menus', 'menus', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(8, 'edit_menus', 'menus', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(9, 'add_menus', 'menus', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(10, 'delete_menus', 'menus', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(11, 'browse_roles', 'roles', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(12, 'read_roles', 'roles', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(13, 'edit_roles', 'roles', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(14, 'add_roles', 'roles', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(15, 'delete_roles', 'roles', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(16, 'browse_users', 'users', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(17, 'read_users', 'users', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(18, 'edit_users', 'users', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(19, 'add_users', 'users', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(20, 'delete_users', 'users', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(21, 'browse_settings', 'settings', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(22, 'read_settings', 'settings', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(23, 'edit_settings', 'settings', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(24, 'add_settings', 'settings', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(25, 'delete_settings', 'settings', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(26, 'browse_categories', 'categories', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(27, 'read_categories', 'categories', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(28, 'edit_categories', 'categories', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(29, 'add_categories', 'categories', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(30, 'delete_categories', 'categories', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(31, 'browse_posts', 'posts', '2020-03-08 13:12:23', '2020-03-08 13:12:23'),
(32, 'read_posts', 'posts', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(33, 'edit_posts', 'posts', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(34, 'add_posts', 'posts', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(35, 'delete_posts', 'posts', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(36, 'browse_pages', 'pages', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(37, 'read_pages', 'pages', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(38, 'edit_pages', 'pages', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(39, 'add_pages', 'pages', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(40, 'delete_pages', 'pages', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(41, 'browse_hooks', NULL, '2020-03-08 13:12:25', '2020-03-08 13:12:25'),
(42, 'browse_sliders', 'sliders', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(43, 'read_sliders', 'sliders', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(44, 'edit_sliders', 'sliders', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(45, 'add_sliders', 'sliders', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(46, 'delete_sliders', 'sliders', '2020-03-09 08:38:37', '2020-03-09 08:38:37'),
(47, 'browse_deals', 'deals', '2020-03-10 08:41:48', '2020-03-10 08:41:48'),
(48, 'read_deals', 'deals', '2020-03-10 08:41:48', '2020-03-10 08:41:48'),
(49, 'edit_deals', 'deals', '2020-03-10 08:41:48', '2020-03-10 08:41:48'),
(50, 'add_deals', 'deals', '2020-03-10 08:41:48', '2020-03-10 08:41:48'),
(51, 'delete_deals', 'deals', '2020-03-10 08:41:48', '2020-03-10 08:41:48'),
(52, 'browse_services', 'services', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(53, 'read_services', 'services', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(54, 'edit_services', 'services', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(55, 'add_services', 'services', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(56, 'delete_services', 'services', '2020-03-11 08:37:29', '2020-03-11 08:37:29'),
(57, 'browse_testimonials', 'testimonials', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(58, 'read_testimonials', 'testimonials', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(59, 'edit_testimonials', 'testimonials', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(60, 'add_testimonials', 'testimonials', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(61, 'delete_testimonials', 'testimonials', '2020-03-11 08:48:58', '2020-03-11 08:48:58'),
(62, 'browse_faqs', 'faqs', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(63, 'read_faqs', 'faqs', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(64, 'edit_faqs', 'faqs', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(65, 'add_faqs', 'faqs', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(66, 'delete_faqs', 'faqs', '2020-03-11 08:59:46', '2020-03-11 08:59:46'),
(67, 'browse_products', 'products', '2020-03-11 09:56:29', '2020-03-11 09:56:29'),
(68, 'read_products', 'products', '2020-03-11 09:56:29', '2020-03-11 09:56:29'),
(69, 'edit_products', 'products', '2020-03-11 09:56:29', '2020-03-11 09:56:29'),
(70, 'add_products', 'products', '2020-03-11 09:56:29', '2020-03-11 09:56:29'),
(71, 'delete_products', 'products', '2020-03-11 09:56:29', '2020-03-11 09:56:29'),
(72, 'browse_portfolios', 'portfolios', '2020-03-11 10:05:43', '2020-03-11 10:05:43'),
(73, 'read_portfolios', 'portfolios', '2020-03-11 10:05:43', '2020-03-11 10:05:43'),
(74, 'edit_portfolios', 'portfolios', '2020-03-11 10:05:43', '2020-03-11 10:05:43'),
(75, 'add_portfolios', 'portfolios', '2020-03-11 10:05:43', '2020-03-11 10:05:43'),
(76, 'delete_portfolios', 'portfolios', '2020-03-11 10:05:43', '2020-03-11 10:05:43');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
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
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Structure de la table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portfolios_slug_unique` (`slug`),
  UNIQUE KEY `portfolios_links_unique` (`links`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `portfolios`
--

INSERT INTO `portfolios` (`id`, `seo`, `images`, `active`, `links`, `created_at`, `updated_at`, `name`, `slug`, `content`, `date`) VALUES
(3, 'akoo prod akoo prod', '[\"portfolios\\\\March2020\\\\RFG82Mepz8tQkkfQGlpc.jpg\",\"portfolios\\\\March2020\\\\NNoH8eLKqvnCo0TAzXnu.jpg\",\"portfolios\\\\March2020\\\\YDgr4h4geGW6HScylPL4.jpg\",\"portfolios\\\\March2020\\\\qyT4jWPnYG1m1NOsjvHp.jpg\",\"portfolios\\\\March2020\\\\Gyme6mTVerGJ1X32JjuG.jpg\",\"portfolios\\\\March2020\\\\5QaYMMMQAZRPQG4RH3to.jpg\"]', 1, NULL, '2020-03-11 11:05:24', '2020-03-11 11:05:24', 'akoo prod', 'akoo-prod', '<p>akoo prod akoo prod akoo prod akoo prod</p>', '2020-03-13');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-08 13:12:24', '2020-03-08 13:12:24');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `content`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Flayer A5 to Resh', 'flayer-a5-to-resh', 'Flayer A5 to Resh\r\nFlayer A5 to Resh', 'products\\March2020\\5olBYDO9m7W2TyJ9XSPH.jpg', NULL, '2020-03-11 13:37:00', '2020-03-11 13:45:30'),
(2, 'Stickers alpha', 'stickers-alpha', 'Stickers alpha', 'products\\March2020\\Q5mjX9atnjGhtBkyqbpU.jpg', '100', '2020-03-11 13:38:00', '2020-03-11 13:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-08 13:12:20', '2020-03-08 13:12:20'),
(2, 'user', 'Normal User', '2020-03-08 13:12:20', '2020-03-08 13:12:20');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `title`, `seo`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Flyer Printing', 'Flyer Printing , printing', 'services\\March2020\\jibnbSR84jDQhCINp4UE.png', 1, '2020-03-11 08:39:39', '2020-03-11 08:39:39'),
(2, 'Sticker Printing', 'Sticker Printing', 'services\\March2020\\qU2geSFluovjaQqcfh0c.png', 1, '2020-03-11 08:39:58', '2020-03-11 08:39:58'),
(3, 'Poster Printing', 'Poster Printing', 'services\\March2020\\6iTUqNqAlFyD8lIJd2Oe.png', 1, '2020-03-11 08:40:14', '2020-03-11 08:40:14'),
(4, 'Postcards Printing', 'Postcards Printing', 'services\\March2020\\TPX37GHJa9eJlQ3Csm2M.png', 1, '2020-03-11 08:40:45', '2020-03-11 08:40:45'),
(5, 'T-Shirt Printing', 'T-Shirt Printing', 'services\\March2020\\s2WMM8foADT9tptI8psW.png', 1, '2020-03-11 08:41:03', '2020-03-11 08:41:03');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'home.presentation', 'Presentation', 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'text_area', 6, 'Home'),
(12, 'home.presentation_title', 'Presentation : Title', 'HaymacPrinter  Service and   Best', NULL, 'text', 7, 'Home'),
(13, 'home.presentation_image', 'Presentation : Image', 'settings\\March2020\\0tmqqpxfNeSYVdkBe8KO.jpg', NULL, 'image', 8, 'Home'),
(14, 'home.service_title', 'Service : Title', 'HaymacPrinter  Service and   Best', NULL, 'text', 9, 'Home'),
(15, 'home.service', 'Service', 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'text_area', 10, 'Home'),
(16, 'home.faqs', 'Faqs', 'We Can Help you with all Printing Needs', NULL, 'text', 11, 'Home'),
(17, 'home.faqs_desc', 'Faqs Description :', 'There are many people variation of pass of lorem sum available inthe majority have suffer freedom text some.', NULL, 'text_area', 12, 'Home'),
(18, 'home.faqs_image', 'Faqs : Image', 'settings\\March2020\\mbO7uNLw4VW43XyxIlKp.jpg', NULL, 'image', 13, 'Home'),
(21, 'home.topPromo', 'Top Prmo', 'Try Our Premium Dexen Stationery Designs', NULL, 'text', 14, 'Home'),
(22, 'home.promo_content', 'Top Prmo : Content', '<li class=\"cta-three__features-item\"><i class=\"fa fa-check\"></i>\r\n \r\n   Professional designs with added fizz\r\n                                \r\n </li>\r\n \r\n  <li class=\"cta-three__features-item\"><i class=\"fa fa-check\"></i>\r\n \r\n   Professional designs with added fizz\r\n                                \r\n </li>\r\n \r\n  <li class=\"cta-three__features-item\"><i class=\"fa fa-check\"></i>\r\n \r\n   Professional designs with added fizz\r\n                                \r\n </li>\r\n \r\n  <li class=\"cta-three__features-item\"><i class=\"fa fa-check\"></i>\r\n \r\n   Professional designs with added fizz\r\n                                \r\n </li>', NULL, 'code_editor', 15, 'Home'),
(23, 'home.topPromo_image', 'Top Prmo : image', 'settings\\March2020\\FeuoPcsuLRBc7nuoi8JT.png', NULL, 'image', 16, 'Home'),
(24, 'all-setting.tele', 'Tele', '061234567876', NULL, 'text', 17, 'All setting'),
(25, 'all-setting.email', 'Email', 'C@hay/ma', NULL, 'text', 18, 'All setting'),
(26, 'all-setting.facebook', 'facebook', NULL, NULL, 'text', 19, 'All setting'),
(27, 'all-setting.linkedin', 'linkedin', NULL, NULL, 'text', 20, 'All setting'),
(28, 'all-setting.youtube', 'youtube', NULL, NULL, 'text', 21, 'All setting'),
(29, 'all-setting.pinterest', 'pinterest', NULL, NULL, 'text', 22, 'All setting'),
(30, 'all-setting.twitter', 'twitter', NULL, NULL, 'text', 23, 'All setting'),
(31, 'all-setting.address', 'address', 'casa', NULL, 'text', 24, 'All setting'),
(32, 'deals.deals_title', 'Deals : title', 'Nos Deals', NULL, 'text', 25, 'Deals'),
(33, 'products.title', 'Products : title', 'Nos Produits', NULL, 'text', 26, 'Products'),
(34, 'deals.recent', 'Deals :  recent', 'Recent deals', NULL, 'text', 27, 'Deals'),
(35, 'portfolio.title', 'Portfolio: title', 'Portfolio', NULL, 'text', 28, 'Portfolio');

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `content`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'L\'imprimant en line', 'L\'imprimant en line', 'sliders\\March2020\\Sme9y4qpYS8izvGgHHk7.jpg', 1, '2020-03-09 09:17:49', '2020-03-09 09:30:16'),
(2, 'Impremerie en line', 'Impremerie en line', 'sliders\\March2020\\YzBFiXxILZbK57Bo81A2.jpg', 1, '2020-03-09 09:23:55', '2020-03-09 09:30:07');

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'client.png',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `Post`, `avatar`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Elmarzougui Abdelghafour', 'DEVLOPPER', 'testimonials\\March2020\\IBDGemIEM8dxYXLQwAcy.jpg', 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', '2020-03-11 08:54:50', '2020-03-11 08:55:44'),
(2, 'Kawtar', 'CEO', 'testimonials\\March2020\\XDJlVV0w9gLnEkUONYrQ.jpg', 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', '2020-03-11 08:55:12', '2020-03-11 08:55:31');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-03-08 13:12:24', '2020-03-08 13:12:24'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-03-08 13:12:24', '2020-03-08 13:12:24');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$IKOWYRuobnxmJssOh/GHOe/aNegnsjo2YqBdYbhgGRsfkC9PKbvZy', 'vUxVF3YRQHZSC6qN2xEZBHbTdV4mu51QpgkexSwww16tSkekFWx2JLCRr4C8', NULL, '2020-03-08 13:12:23', '2020-03-08 13:12:23');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
