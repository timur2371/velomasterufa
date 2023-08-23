-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 28 2018 г., 19:10
-- Версия сервера: 5.5.53-MariaDB
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `velomasterufa`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-18 03:37:23', '2018-07-18 00:37:23', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://velomasterufa.ru', 'yes'),
(2, 'home', 'http://velomasterufa.ru', 'yes'),
(3, 'blogname', 'Веломастер Уфа', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'voniqwer@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:24:\"ultimate-tables/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:73:\"D:\\Timur\\Projects\\velomasterufa/wp-content/themes/velomasterufa/index.php\";i:2;s:73:\"D:\\Timur\\Projects\\velomasterufa/wp-content/themes/velomasterufa/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'velomasterufa-theme', 'yes'),
(41, 'stylesheet', 'velomasterufa-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:72:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:29:\"tablepress_import_tables_wptr\";b:1;s:23:\"tablepress_edit_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1532792244;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1532824644;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532824980;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1532867983;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531971730;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Twenty Sixteen/velomasterufa-theme', 'yes'),
(144, 'theme_mods_velomasterufa', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531971720;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(164, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(184, 'theme_mods_velomasterufa-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(206, 'recently_activated', 'a:1:{s:39:\"mce-table-buttons/mce_table_buttons.php\";i:1532716079;}', 'yes'),
(213, 'acf_version', '4.4.12', 'yes'),
(259, 'widget_wp_ultimatetables', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_ezw_tco', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'ez-toc-settings', 'a:39:{s:15:\"fragment_prefix\";s:1:\"i\";s:8:\"position\";s:6:\"before\";s:5:\"start\";i:4;s:17:\"show_heading_text\";b:1;s:12:\"heading_text\";s:17:\"Table of Contents\";s:18:\"enabled_post_types\";a:1:{i:0;s:4:\"page\";}s:22:\"auto_insert_post_types\";a:0:{}s:14:\"show_hierarchy\";b:1;s:7:\"counter\";s:7:\"decimal\";s:13:\"smooth_scroll\";b:1;s:20:\"smooth_scroll_offset\";i:30;s:26:\"moile_smooth_scroll_offset\";i:0;s:10:\"visibility\";b:1;s:26:\"visibility_hide_by_default\";b:0;s:5:\"width\";s:4:\"auto\";s:12:\"width_custom\";i:275;s:18:\"width_custom_units\";s:2:\"px\";s:8:\"wrapping\";s:4:\"none\";s:15:\"title_font_size\";i:120;s:21:\"title_font_size_units\";s:1:\"%\";s:17:\"title_font_weight\";i:500;s:9:\"font_size\";i:95;s:15:\"font_size_units\";s:1:\"%\";s:5:\"theme\";s:4:\"grey\";s:24:\"custom_background_colour\";s:4:\"#fff\";s:20:\"custom_border_colour\";s:4:\"#ddd\";s:19:\"custom_title_colour\";s:4:\"#999\";s:18:\"custom_link_colour\";s:7:\"#428bca\";s:24:\"custom_link_hover_colour\";s:7:\"#2a6496\";s:26:\"custom_link_visited_colour\";s:7:\"#428bca\";s:9:\"lowercase\";b:0;s:9:\"hyphenate\";b:0;s:16:\"include_homepage\";b:0;s:11:\"exclude_css\";b:0;s:7:\"exclude\";s:0:\"\";s:14:\"heading_levels\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}s:13:\"restrict_path\";s:0:\"\";s:19:\"css_container_class\";s:0:\"\";s:21:\"widget_affix_selector\";s:0:\"\";}', 'yes'),
(280, 'tablepress_plugin_options', '{\"plugin_options_db_version\":36,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"1.9\",\"first_activation\":1532115799,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":true,\"use_custom_css_file\":true,\"custom_css\":\"\",\"custom_css_minified\":\"\",\"custom_css_version\":0}', 'yes'),
(281, 'tablepress_tables', '{\"last_id\":1,\"table_post\":{\"1\":35}}', 'yes'),
(369, 'category_children', 'a:0:{}', 'yes'),
(409, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1532789704;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(410, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532789709;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:19:\"velomasterufa-theme\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(411, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1532789709;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:24:\"ultimate-tables/init.php\";s:5:\"1.6.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"ultimate-tables/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-tables\";s:4:\"slug\";s:15:\"ultimate-tables\";s:6:\"plugin\";s:24:\"ultimate-tables/init.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-tables/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ultimate-tables.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-tables/assets/icon-256x256.png?rev=1177576\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-tables/assets/icon-128x128.png?rev=1177576\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-tables/assets/banner-1544x500.png?rev=1266393\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-tables/assets/banner-772x250.png?rev=1266393\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(414, 'new_admin_email', 'voniqwer@gmail.com', 'yes'),
(422, '_transient_timeout_plugin_slugs', '1532802480', 'no'),
(423, '_transient_plugin_slugs', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:49:\"easy-table-of-contents/easy-table-of-contents.php\";i:2;s:39:\"mce-table-buttons/mce_table_buttons.php\";i:3;s:25:\"tablepress/tablepress.php\";i:4;s:24:\"ultimate-tables/init.php\";}', 'no'),
(434, '_site_transient_timeout_theme_roots', '1532791508', 'no'),
(435, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:19:\"velomasterufa-theme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1532023863:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1532255416:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1532708933:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1531918174:1'),
(11, 11, '_wp_trash_meta_status', 'publish'),
(12, 11, '_wp_trash_meta_time', '1531918327'),
(13, 11, '_wp_desired_post_slug', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(14, 3, '_edit_lock', '1531918200:1'),
(15, 2, '_edit_lock', '1531925957:1'),
(16, 2, '_wp_trash_meta_status', 'publish'),
(17, 2, '_wp_trash_meta_time', '1531926099'),
(18, 2, '_wp_desired_post_slug', 'sample-page'),
(19, 15, '_menu_item_type', 'post_type'),
(20, 15, '_menu_item_menu_item_parent', '0'),
(21, 15, '_menu_item_object_id', '5'),
(22, 15, '_menu_item_object', 'page'),
(23, 15, '_menu_item_target', ''),
(24, 15, '_menu_item_classes', 'a:1:{i:0;s:6:\"active\";}'),
(25, 15, '_menu_item_xfn', ''),
(26, 15, '_menu_item_url', ''),
(27, 16, '_menu_item_type', 'post_type'),
(28, 16, '_menu_item_menu_item_parent', '0'),
(29, 16, '_menu_item_object_id', '7'),
(30, 16, '_menu_item_object', 'page'),
(31, 16, '_menu_item_target', ''),
(32, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 16, '_menu_item_xfn', ''),
(34, 16, '_menu_item_url', ''),
(35, 17, '_menu_item_type', 'post_type'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '9'),
(38, 17, '_menu_item_object', 'page'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', ''),
(43, 18, '_menu_item_type', 'custom'),
(44, 18, '_menu_item_menu_item_parent', '0'),
(45, 18, '_menu_item_object_id', '18'),
(46, 18, '_menu_item_object', 'custom'),
(47, 18, '_menu_item_target', ''),
(48, 18, '_menu_item_classes', 'a:1:{i:0;s:16:\"contacts-in-menu\";}'),
(49, 18, '_menu_item_xfn', ''),
(50, 18, '_menu_item_url', 'http://velomasterufa/#contacts-mainpage'),
(51, 14, '_wp_trash_meta_status', 'publish'),
(52, 14, '_wp_trash_meta_time', '1531926231'),
(53, 19, '_wp_trash_meta_status', 'publish'),
(54, 19, '_wp_trash_meta_time', '1531926790'),
(55, 20, '_wp_trash_meta_status', 'publish'),
(56, 20, '_wp_trash_meta_time', '1531927066'),
(57, 21, '_wp_trash_meta_status', 'publish'),
(58, 21, '_wp_trash_meta_time', '1531927150'),
(59, 22, '_edit_lock', '1531927448:1'),
(60, 22, '_wp_trash_meta_status', 'publish'),
(61, 22, '_wp_trash_meta_time', '1531927500'),
(62, 23, '_wp_trash_meta_status', 'publish'),
(63, 23, '_wp_trash_meta_time', '1531992796'),
(64, 24, '_edit_last', '1'),
(66, 24, 'position', 'normal'),
(67, 24, 'layout', 'no_box'),
(68, 24, 'hide_on_screen', ''),
(69, 24, '_edit_lock', '1532085108:1'),
(70, 24, 'field_5b507d13a3e81', 'a:14:{s:3:\"key\";s:19:\"field_5b507d13a3e81\";s:5:\"label\";s:10:\"Адрес\";s:4:\"name\";s:6:\"adress\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(72, 5, 'adress', 'г. Уфа, ул. Менделеева, 114/2'),
(73, 5, '_wp_page_template', 'default'),
(74, 5, 'phone', '+79373384000'),
(75, 24, 'field_5b50bddb76877', 'a:15:{s:3:\"key\";s:19:\"field_5b50bddb76877\";s:5:\"label\";s:14:\"Телефон\";s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(82, 24, 'field_5b50d6093ef89', 'a:14:{s:3:\"key\";s:19:\"field_5b50d6093ef89\";s:5:\"label\";s:8:\"one nore\";s:4:\"name\";s:8:\"one_nore\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(83, 24, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(84, 7, '_wp_page_template', 'default'),
(85, 35, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(86, 35, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1],\"columns\":[1,1,1]}'),
(87, 49, '_edit_last', '1'),
(88, 49, '_edit_lock', '1532725613:1'),
(95, 53, '_wp_attached_file', '2018/07/fish-2.jpg'),
(96, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:311;s:4:\"file\";s:18:\"2018/07/fish-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"fish-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"fish-2-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 49, '_thumbnail_id', '56'),
(106, 56, '_wp_attached_file', '2018/07/1.jpg'),
(107, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2667;s:4:\"file\";s:13:\"2018/07/1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 57, '_wp_attached_file', '2018/07/veloremont.jpg'),
(111, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:22:\"2018/07/veloremont.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"veloremont-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"veloremont-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 1, '_edit_lock', '1532713834:1'),
(117, 1, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-18 03:37:23', '2018-07-18 00:37:23', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-medium wp-image-53\" src=\"http://velomasterufa/wp-content/uploads/2018/07/fish-2-300x187.jpg\" alt=\"\" width=\"300\" height=\"187\" />', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-07-27 19:52:52', '2018-07-27 16:52:52', '', 0, 'http://velomasterufa/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-18 03:37:23', '2018-07-18 00:37:23', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://velomasterufa/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-07-18 18:01:39', '2018-07-18 15:01:39', '', 0, 'http://velomasterufa/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-18 03:37:23', '2018-07-18 00:37:23', '<h2>Кто мы</h2><p>Наш адрес сайта: http://velomasterufa.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-18 03:37:23', '2018-07-18 00:37:23', '', 0, 'http://velomasterufa/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-18 15:39:52', '2018-07-18 12:39:52', '', 'О сервисе', '', 'publish', 'closed', 'closed', '', '%d0%be-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b5', '', '', '2018-07-19 19:32:04', '2018-07-19 16:32:04', '', 0, 'http://velomasterufa/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-07-18 15:39:52', '2018-07-18 12:39:52', '', 'О сервисе', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-18 15:39:52', '2018-07-18 12:39:52', '', 5, 'http://velomasterufa/2018/07/18/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-07-18 15:40:44', '2018-07-18 12:40:44', '[ultimatetables 1 /]', 'Прайс-лист', '', 'publish', 'closed', 'closed', '', 'pricelist', '', '', '2018-07-20 21:55:12', '2018-07-20 18:55:12', '', 0, 'http://velomasterufa/?page_id=7', 1, 'page', '', 0),
(8, 1, '2018-07-18 15:40:35', '2018-07-18 12:40:35', '', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-18 15:40:35', '2018-07-18 12:40:35', '', 7, 'http://velomasterufa/2018/07/18/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-07-18 15:41:22', '2018-07-18 12:41:22', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-18 18:14:30', '2018-07-18 15:14:30', '', 0, 'http://velomasterufa/?page_id=9', 2, 'page', '', 0),
(10, 1, '2018-07-18 15:40:56', '2018-07-18 12:40:56', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-18 15:40:56', '2018-07-18 12:40:56', '', 9, 'http://velomasterufa/2018/07/18/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-07-18 15:50:55', '2018-07-18 12:50:55', '', 'Контакты', '', 'trash', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b__trashed', '', '', '2018-07-18 15:52:07', '2018-07-18 12:52:07', '', 5, 'http://velomasterufa/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-18 15:50:55', '2018-07-18 12:50:55', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-18 15:50:55', '2018-07-18 12:50:55', '', 11, 'http://velomasterufa/2018/07/18/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-07-18 18:01:39', '2018-07-18 15:01:39', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://velomasterufa/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-18 18:01:39', '2018-07-18 15:01:39', '', 2, 'http://velomasterufa/2018/07/18/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-07-18 18:03:51', '2018-07-18 15:03:51', '{\n    \"nav_menu[-1953031347]\": {\n        \"value\": {\n            \"name\": \"main-menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:03:51\"\n    },\n    \"nav_menu_item[-546109294]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0435\",\n            \"url\": \"http://velomasterufa/%d0%be-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b5/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0435\",\n            \"nav_menu_term_id\": -1953031347,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:03:51\"\n    },\n    \"nav_menu_item[-1087147599]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041f\\u0440\\u0430\\u0439\\u0441-\\u043b\\u0438\\u0441\\u0442\",\n            \"url\": \"http://velomasterufa/%d0%bf%d1%80%d0%b0%d0%b9%d1%81-%d0%bb%d0%b8%d1%81%d1%82/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041f\\u0440\\u0430\\u0439\\u0441-\\u043b\\u0438\\u0441\\u0442\",\n            \"nav_menu_term_id\": -1953031347,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:03:51\"\n    },\n    \"nav_menu_item[-483625739]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"http://velomasterufa/%d0%b1%d0%bb%d0%be%d0%b3/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1953031347,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:03:51\"\n    },\n    \"nav_menu_item[-1945542934]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"url\": \"http://velomasterufa/#contacts\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -1953031347,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:03:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f2ce55f-0bfb-44b6-b015-44ec387bf881', '', '', '2018-07-18 18:03:51', '2018-07-18 15:03:51', '', 0, 'http://velomasterufa/2018/07/18/6f2ce55f-0bfb-44b6-b015-44ec387bf881/', 0, 'customize_changeset', '', 0),
(15, 1, '2018-07-18 18:03:51', '2018-07-18 15:03:51', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-07-18 18:25:00', '2018-07-18 15:25:00', '', 0, 'http://velomasterufa/2018/07/18/15/', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-07-18 18:03:51', '2018-07-18 15:03:51', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-07-18 18:03:51', '2018-07-18 15:03:51', '', 0, 'http://velomasterufa/2018/07/18/16/', 2, 'nav_menu_item', '', 0),
(17, 1, '2018-07-18 18:03:51', '2018-07-18 15:03:51', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-07-18 18:03:51', '2018-07-18 15:03:51', '', 0, 'http://velomasterufa/2018/07/18/17/', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-07-18 18:03:51', '2018-07-18 15:03:51', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2018-07-19 12:33:16', '2018-07-19 09:33:16', '', 0, 'http://velomasterufa/2018/07/18/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f/', 4, 'nav_menu_item', '', 0),
(19, 1, '2018-07-18 18:13:10', '2018-07-18 15:13:10', '{\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://velomasterufa/#contacts\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:13:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '106428a5-2b0f-4814-baf4-8f92d0b3057a', '', '', '2018-07-18 18:13:10', '2018-07-18 15:13:10', '', 0, 'http://velomasterufa/2018/07/18/106428a5-2b0f-4814-baf4-8f92d0b3057a/', 0, 'customize_changeset', '', 0),
(20, 1, '2018-07-18 18:17:46', '2018-07-18 15:17:46', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"menu-main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:17:46\"\n    },\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://velomasterufa/#contacts-mainpage\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:17:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb8be249-4632-40fd-aad3-d5f269a02c04', '', '', '2018-07-18 18:17:46', '2018-07-18 15:17:46', '', 0, 'http://velomasterufa/2018/07/18/cb8be249-4632-40fd-aad3-d5f269a02c04/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-07-18 18:19:10', '2018-07-18 15:19:10', '{\n    \"nav_menu_item[15]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://velomasterufa/%d0%be-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b5/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"active\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0435\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:19:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb753496-c626-4dc3-8b4d-d94ba7b4a899', '', '', '2018-07-18 18:19:10', '2018-07-18 15:19:10', '', 0, 'http://velomasterufa/2018/07/18/fb753496-c626-4dc3-8b4d-d94ba7b4a899/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-07-18 18:25:00', '2018-07-18 15:25:00', '{\n    \"nav_menu_item[15]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://velomasterufa/%d0%be-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b5/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"active\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441\\u0435\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-18 15:25:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f5e27eb-5537-425c-af9b-2d8343e76fcb', '', '', '2018-07-18 18:25:00', '2018-07-18 15:25:00', '', 0, 'http://velomasterufa/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2018-07-19 12:33:16', '2018-07-19 09:33:16', '{\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://velomasterufa/#contacts-mainpage\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"contacts-in-menu\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-19 09:33:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '227df066-cfa8-41a3-aecb-97c5dca05346', '', '', '2018-07-19 12:33:16', '2018-07-19 09:33:16', '', 0, 'http://velomasterufa/2018/07/19/227df066-cfa8-41a3-aecb-97c5dca05346/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-07-19 14:59:11', '2018-07-19 11:59:11', '', 'Основные поля', '', 'publish', 'closed', 'closed', '', 'acf_%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d1%8b%d0%b5-%d0%bf%d0%be%d0%bb%d1%8f', '', '', '2018-07-19 21:19:08', '2018-07-19 18:19:08', '', 0, 'http://velomasterufa/?post_type=acf&#038;p=24', 0, 'acf', '', 0),
(26, 1, '2018-07-20 15:26:09', '2018-07-20 12:26:09', '[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 15:26:09', '2018-07-20 12:26:09', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-07-20 18:04:21', '2018-07-20 15:04:21', 'I know I\'m right\r\n\r\n[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 18:04:21', '2018-07-20 15:04:21', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-07-20 19:01:05', '2018-07-20 16:01:05', '<strong>I know I\'m right</strong>\r\n\r\n[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:01:05', '2018-07-20 16:01:05', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-07-20 19:02:55', '2018-07-20 16:02:55', '<strong>I know I\'m right</strong>', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:02:55', '2018-07-20 16:02:55', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-07-20 19:24:50', '2018-07-20 16:24:50', '[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:24:50', '2018-07-20 16:24:50', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-07-20 19:25:03', '2018-07-20 16:25:03', 'фывафыв\r\n\r\n[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:25:03', '2018-07-20 16:25:03', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-07-20 19:38:34', '2018-07-20 16:38:34', 'фывафыв\r\n\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:38:34', '2018-07-20 16:38:34', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-07-20 19:39:02', '2018-07-20 16:39:02', '&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:39:02', '2018-07-20 16:39:02', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-07-20 19:44:16', '2018-07-20 16:44:16', '[[\"\\u0444\\u044b\\u0432\",\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\"],[\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\"],[\"\\u0444\\u044b\\u0432\\u0430\\u0430\\u0430\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"],[\"\\u0439\\u0439\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"],[\"\\u0439\\u0439\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"]]', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-07-20 19:46:15', '2018-07-20 16:46:15', '', 0, 'http://velomasterufa/?post_type=tablepress_table&#038;p=35', 0, 'tablepress_table', 'application/json', 0),
(36, 1, '2018-07-20 19:45:32', '2018-07-20 16:45:32', '[[\"\\u0444\\u044b\\u0432\",\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\"],[\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\",\"\\u0444\\u044b\\u0432\\u0430\"],[\"\\u0444\\u044b\\u0432\\u0430\\u0430\\u0430\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"],[\"\\u0439\\u0439\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"],[\"\\u0439\\u0439\",\"\\u0439\\u0439\",\"\\u0439\\u0439\"]]', '', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-20 19:45:32', '2018-07-20 16:45:32', '', 35, 'http://velomasterufa/2018/07/20/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-07-20 20:08:37', '2018-07-20 17:08:37', '&nbsp;\n<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\n<tbody>\n<tr style=\"height: 24px;\">\n<td style=\"width: 1.11858%; height: 24px;\">1</td>\n<td style=\"width: 77.1082%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\n<td style=\"width: 21.7731%; height: 24px;\">600-2150</td>\n</tr>\n<tr style=\"height: 24px;\">\n<td style=\"width: 1.11858%; height: 24px;\">2</td>\n<td style=\"width: 77.1082%; height: 24px;\">ТО воздушной вилки</td>\n<td style=\"width: 21.7731%; height: 24px;\">600-2350</td>\n</tr>\n<tr style=\"height: 24px;\">\n<td style=\"width: 1.11858%; height: 24px;\">2</td>\n<td style=\"width: 77.1082%; height: 24px;\">ТО воздушной вилки</td>\n<td style=\"width: 21.7731%; height: 24px;\">600-2350</td>\n</tr>\n</tbody>\n</table>\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-07-20 20:08:37', '2018-07-20 17:08:37', '', 7, 'http://velomasterufa/2018/07/20/7-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-20 19:56:38', '2018-07-20 16:56:38', '<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 33.3333%;\">1</td>\r\n<td style=\"width: 33.3333%;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 33.3333%;\">600-2150</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.3333%;\">2</td>\r\n<td style=\"width: 33.3333%;\">ТО воздушной вилки</td>\r\n<td style=\"width: 33.3333%;\">ТО воздушной вилки600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\n<br />', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 19:56:38', '2018-07-20 16:56:38', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-20 20:03:06', '2018-07-20 17:03:06', '<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 12.6788%; height: 24px;\">1</td>\r\n<td style=\"width: 53.9878%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 33.3333%; height: 24px;\">600-2150</td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 12.6788%; height: 24px;\">2</td>\r\n<td style=\"width: 53.9878%; height: 24px;\">ТО воздушной вилки</td>\r\n<td style=\"width: 33.3333%; height: 24px;\">600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:03:06', '2018-07-20 17:03:06', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-07-20 20:03:41', '2018-07-20 17:03:41', '<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 3.70548%; height: 24px;\">1</td>\r\n<td style=\"width: 84.303%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 11.9914%; height: 24px;\">600-2150</td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 3.70548%; height: 24px;\">2</td>\r\n<td style=\"width: 84.303%; height: 24px;\">ТО воздушной вилки</td>\r\n<td style=\"width: 11.9914%; height: 24px;\">600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:03:41', '2018-07-20 17:03:41', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-07-20 20:04:13', '2018-07-20 17:04:13', '<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 3.70548%; height: 24px;\">1</td>\r\n<td style=\"width: 74.5213%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2150</td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 3.70548%; height: 24px;\">999</td>\r\n<td style=\"width: 74.5213%; height: 24px;\">ТО воздушной вилки</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:04:13', '2018-07-20 17:04:13', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-07-20 20:04:31', '2018-07-20 17:04:31', '<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 1.11858%; height: 24px;\">1</td>\r\n<td style=\"width: 77.1082%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2150</td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 1.11858%; height: 24px;\">999</td>\r\n<td style=\"width: 77.1082%; height: 24px;\">ТО воздушной вилки</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:04:31', '2018-07-20 17:04:31', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-20 20:05:33', '2018-07-20 17:05:33', '<table style=\"width: 90%; border-collapse: collapse; margin: 0 auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 1.11858%; height: 24px;\">1</td>\r\n<td style=\"width: 77.1082%; height: 24px;\">ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2150</td>\r\n</tr>\r\n<tr style=\"height: 24px;\">\r\n<td style=\"width: 1.11858%; height: 24px;\">2</td>\r\n<td style=\"width: 77.1082%; height: 24px;\">ТО воздушной вилки</td>\r\n<td style=\"width: 21.7731%; height: 24px;\">600-2350</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:05:33', '2018-07-20 17:05:33', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-20 20:21:05', '2018-07-20 17:21:05', '[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 20:21:05', '2018-07-20 17:21:05', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-20 21:34:32', '2018-07-20 18:34:32', '[ultimatetables 1 /]\r\n\r\n&nbsp;\r\n\r\n&lt;table&gt;\r\n&lt;tr&gt;\r\n&lt;th&gt;№&lt;/th&gt;\r\n&lt;th&gt;Название&lt;/th&gt;\r\n&lt;th&gt;Цена, руб&lt;/th&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;1&lt;/td&gt;\r\n&lt;td&gt;ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)&lt;/td&gt;\r\n&lt;td&gt;600-2150&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;2&lt;/td&gt;\r\n&lt;td&gt;ТО воздушной вилки&lt;/td&gt;\r\n&lt;td&gt;600-2350 &lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;3&lt;/td&gt;\r\n&lt;td&gt;ТО пружинно-масляной вилки&lt;/td&gt;\r\n&lt;td&gt;600-850 &lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;4&lt;/td&gt;\r\n&lt;td&gt;ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)&lt;/td&gt;\r\n&lt;td&gt;600&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;5&lt;/td&gt;\r\n&lt;td&gt;ТО передней втулки&lt;/td&gt;\r\n&lt;td&gt;200&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;6&lt;/td&gt;\r\n&lt;td&gt;ТО задней втулки (без ТО барабана или трещётки)&lt;/td&gt;\r\n&lt;td&gt;300&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;7&lt;/td&gt;\r\n&lt;td&gt;ТО задней втулки (с ТО барабана или трещётки)&lt;/td&gt;\r\n&lt;td&gt;450&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;8&lt;/td&gt;\r\n&lt;td&gt;ТО каретки (для разборных кареток)&lt;/td&gt;\r\n&lt;td&gt;250&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/table&gt;', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 21:34:32', '2018-07-20 18:34:32', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-20 21:35:05', '2018-07-20 18:35:05', '[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 21:35:05', '2018-07-20 18:35:05', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-07-20 21:35:19', '2018-07-20 18:35:19', '[ultimatetables 1 /]\r\n<table>\r\n<tbody>\r\n<tr>\r\n<th>№</th>\r\n<th>Название</th>\r\n<th>Цена, руб</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>\r\n<td>600-2150</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>ТО воздушной вилки</td>\r\n<td>600-2350</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>ТО пружинно-масляной вилки</td>\r\n<td>600-850</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>\r\n<td>600</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>ТО передней втулки</td>\r\n<td>200</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>ТО задней втулки (без ТО барабана или трещётки)</td>\r\n<td>300</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>ТО задней втулки (с ТО барабана или трещётки)</td>\r\n<td>450</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>ТО каретки (для разборных кареток)</td>\r\n<td>250</td>\r\n</tr>\r\n</tbody>\r\n</table>\n<br />', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 21:35:19', '2018-07-20 18:35:19', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-07-20 21:55:12', '2018-07-20 18:55:12', '[ultimatetables 1 /]', 'Прайс-лист', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-20 21:55:12', '2018-07-20 18:55:12', '', 7, 'http://velomasterufa/2018/07/20/7-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-25 14:27:41', '2018-07-25 11:27:41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-57\" src=\"http://velomasterufa/wp-content/uploads/2018/07/veloremont-300x200.jpg\" alt=\"\" width=\"600\" height=\"400\" />', 'Статья 1', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b0%d0%bc%d0%be%d0%ba', '', '', '2018-07-27 21:09:12', '2018-07-27 18:09:12', '', 0, 'http://velomasterufa/?p=49', 0, 'post', '', 0),
(50, 1, '2018-07-25 14:27:35', '2018-07-25 11:27:35', 'Описание', 'Замок', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-25 14:27:35', '2018-07-25 11:27:35', '', 49, 'http://velomasterufa/2018/07/25/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-25 14:50:23', '2018-07-25 11:50:23', 'Описание', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-25 14:50:23', '2018-07-25 11:50:23', '', 49, 'http://velomasterufa/2018/07/25/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-07-25 14:57:42', '2018-07-25 11:57:42', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-25 14:57:42', '2018-07-25 11:57:42', '', 49, 'http://velomasterufa/2018/07/25/49-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-25 15:34:34', '2018-07-25 12:34:34', '', 'fish-2', '', 'inherit', 'open', 'closed', '', 'fish-2', '', '', '2018-07-25 15:34:34', '2018-07-25 12:34:34', '', 49, 'http://velomasterufa/wp-content/uploads/2018/07/fish-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-07-26 02:23:38', '2018-07-25 23:23:38', '<img class=\"alignnone size-medium wp-image-53\" src=\"http://velomasterufa/wp-content/uploads/2018/07/fish-2-300x187.jpg\" alt=\"\" width=\"300\" height=\"187\" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-26 02:23:38', '2018-07-25 23:23:38', '', 49, 'http://velomasterufa/2018/07/26/49-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-26 02:24:02', '2018-07-25 23:24:02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-26 02:24:02', '2018-07-25 23:24:02', '', 49, 'http://velomasterufa/2018/07/26/49-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-07-26 02:40:06', '2018-07-25 23:40:06', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-07-26 02:40:06', '2018-07-25 23:40:06', '', 49, 'http://velomasterufa/wp-content/uploads/2018/07/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-07-27 19:49:39', '2018-07-27 16:49:39', '', 'veloremont', '', 'inherit', 'open', 'closed', '', 'veloremont', '', '', '2018-07-27 19:49:39', '2018-07-27 16:49:39', '', 49, 'http://velomasterufa/wp-content/uploads/2018/07/veloremont.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-07-27 19:50:15', '2018-07-27 16:50:15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-medium wp-image-57\" src=\"http://velomasterufa/wp-content/uploads/2018/07/veloremont-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-27 19:50:15', '2018-07-27 16:50:15', '', 49, 'http://velomasterufa/2018/07/27/49-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-27 19:51:54', '2018-07-27 16:51:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone wp-image-57\" src=\"http://velomasterufa/wp-content/uploads/2018/07/veloremont-300x200.jpg\" alt=\"\" width=\"600\" height=\"400\" />', 'Статья 1', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-27 19:51:54', '2018-07-27 16:51:54', '', 49, 'http://velomasterufa/2018/07/27/49-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-27 19:52:52', '2018-07-27 16:52:52', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-medium wp-image-53\" src=\"http://velomasterufa/wp-content/uploads/2018/07/fish-2-300x187.jpg\" alt=\"\" width=\"300\" height=\"187\" />', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-27 19:52:52', '2018-07-27 16:52:52', '', 1, 'http://velomasterufa/2018/07/27/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'menu-main', 'menu-main', 0),
(3, 'Ремонт', '%d1%80%d0%b5%d0%bc%d0%be%d0%bd%d1%82', 0),
(4, 'Обслуживание', '%d0%be%d0%b1%d1%81%d0%bb%d1%83%d0%b6%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(49, 3, 0),
(49, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ultimatetables`
--

CREATE TABLE `wp_ultimatetables` (
  `id` mediumint(9) NOT NULL,
  `title` longtext NOT NULL,
  `width` longtext NOT NULL,
  `height` longtext NOT NULL,
  `border` longtext NOT NULL,
  `round` longtext NOT NULL,
  `width_thumbnail` longtext NOT NULL,
  `height_thumbnail` longtext NOT NULL,
  `thumbnail_border` longtext NOT NULL,
  `thumbnail_round` longtext NOT NULL,
  `number_thumbnails` longtext NOT NULL,
  `ivalues` longtext NOT NULL,
  `sizetitle` longtext NOT NULL,
  `sizedescription` longtext NOT NULL,
  `sizethumbnail` longtext NOT NULL,
  `font` longtext NOT NULL,
  `color1` longtext NOT NULL,
  `color2` longtext NOT NULL,
  `color3` longtext NOT NULL,
  `time` longtext NOT NULL,
  `animation` longtext NOT NULL,
  `mode` longtext NOT NULL,
  `op1` longtext NOT NULL,
  `op2` longtext NOT NULL,
  `op3` longtext NOT NULL,
  `op4` longtext NOT NULL,
  `op5` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_ultimatetables`
--

INSERT INTO `wp_ultimatetables` (`id`, `title`, `width`, `height`, `border`, `round`, `width_thumbnail`, `height_thumbnail`, `thumbnail_border`, `thumbnail_round`, `number_thumbnails`, `ivalues`, `sizetitle`, `sizedescription`, `sizethumbnail`, `font`, `color1`, `color2`, `color3`, `time`, `animation`, `mode`, `op1`, `op2`, `op3`, `op4`, `op5`) VALUES
(1, '', '2', '8', '', '', '2', '', '', '', '', 'Названиеt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggЦена, рубt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg600-2150t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО воздушной вилкиt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg600-2350t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО пружинно-масляной вилкиt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg600-850t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg600t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО передней втулкиt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg200t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО задней втулки (без ТО барабана или трещётки)t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg300t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО задней втулки (с ТО барабана или трещётки)t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg450t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hggТО каретки (для разборных кареток)t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg250t6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndt6r4ndkh6gfd57hgg', '\"oLanguage\": {\r\n			\"sLengthMenu\": \"Display _MENU_ records per page\",\r\n			\"sZeroRecords\": \"Nothing found - sorry\",\r\n			\"sInfo\": \"Showing _START_ to _END_ of _TOTAL_ records\",\r\n			\"sInfoEmpty\": \"Showing 0 to 0 of 0 records\",\r\n                        \"sSearch\": \"Search: \",\r\n			\"sInfoFiltered\": \"(filtered from _MAX_ total records)\"\r\n		}', 'false', 'false', '', 'false', '', '', '', '', '', 'false', 'false', 'false', '', 'false');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,tp09_edit_drag_drop_sort'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'default_password_nag', ''),
(17, 1, 'session_tokens', 'a:1:{s:64:\"7327be5de40bf11439af6b978bc88b78a59081d3f523825d2408760efc613f88\";a:4:{s:10:\"expiration\";i:1532880000;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532707200;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'closedpostboxes_acf', 'a:1:{i:0;s:11:\"acf_options\";}'),
(21, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(22, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"postcustom\";}'),
(23, 1, 'metaboxhidden_page', 'a:6:{i:0;s:6:\"acf_24\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(24, 1, 'wp_user-settings', 'editor=tinymce&post_dfw=off&hidetb=1&libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1532523096'),
(26, 1, 'phone', '+79373384000'),
(27, 1, 'adress', 'г. Уфа, ул. Менделеева, 114/2'),
(28, 1, 'wp_tablepress_user_options', '{\"user_options_db_version\":36,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true}'),
(29, 1, 'closedpostboxes_post', 'a:0:{}'),
(30, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bxp63Ov3U.WK2utTKCLCrEuu83J0Z3/', 'admin', 'voniqwer@gmail.com', '', '2018-07-18 00:37:22', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_ultimatetables`
--
ALTER TABLE `wp_ultimatetables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_ultimatetables`
--
ALTER TABLE `wp_ultimatetables`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
