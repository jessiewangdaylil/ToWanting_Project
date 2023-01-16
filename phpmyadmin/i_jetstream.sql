-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-16 04:56:06
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `i.jetstream`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cgy_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `content_small` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_names` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_paths` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cgies`
--

CREATE TABLE `cgies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_html` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cgies`
--

INSERT INTO `cgies` (`id`, `parent_id`, `title`, `pic`, `desc`, `enabled`, `sort`, `type`, `created_at`, `updated_at`, `icon_html`) VALUES
(4, NULL, '商品', '[]', '<p>所有與販賣有關的分類</p>', 1, 1, NULL, '2023-01-15 06:29:00', '2023-01-15 06:36:34', '<i class=\"fa-brands fa-product-hunt\"></i>'),
(5, 4, '實體商品', '[]', NULL, 1, 2, NULL, '2023-01-15 06:35:32', '2023-01-15 06:35:32', '<i class=\"fa-solid fa-gift\"></i>'),
(6, 4, '虛擬商品', '[]', NULL, 1, 2, NULL, '2023-01-15 06:37:00', '2023-01-15 06:42:21', '<i class=\"fa-light fa-gift\"></i>'),
(7, 5, '客製化', '[]', NULL, 1, 3, NULL, '2023-01-15 06:41:00', '2023-01-15 06:42:08', '<i class=\"fa-solid fa-sparkles\"></i>'),
(8, 5, '文具', '[]', NULL, 1, 3, NULL, '2023-01-15 06:43:00', '2023-01-15 06:44:21', '<i class=\"fa-solid fa-pen-nib\"></i>'),
(9, 5, '食品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:45:00', '2023-01-15 06:48:10', '<i class=\"fa-solid fa-pot-food\"></i>'),
(10, 5, '3C產品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:49:18', '2023-01-15 06:49:18', '<i class=\"fa-duotone fa-laptop\"></i>'),
(11, 5, '3C周邊', '[]', NULL, 1, 3, NULL, '2023-01-15 06:50:54', '2023-01-15 06:50:54', '<i class=\"fa-duotone fa-usb-drive\"></i>'),
(12, 5, '裝飾品/小物', '[]', NULL, 1, 3, NULL, '2023-01-15 06:51:57', '2023-01-15 06:51:57', '<i class=\"fa-duotone fa-tree-decorated\"></i>'),
(13, 5, '精品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:52:00', '2023-01-15 06:53:31', '<i class=\"fa-solid fa-rings-wedding\"></i>'),
(14, 5, '運動/休閒', '[]', NULL, 1, 3, NULL, '2023-01-15 06:55:21', '2023-01-15 06:55:21', '<i class=\"fa-solid fa-game-console-handheld-crank\"></i>'),
(15, 5, '書籍', '[]', NULL, 1, 1, NULL, '2023-01-15 06:57:16', '2023-01-15 06:57:16', '<i class=\"fa-duotone fa-books\"></i>'),
(16, 5, '兒童商品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:58:18', '2023-01-15 06:58:18', NULL),
(17, 6, '貼圖', '[]', NULL, 1, 3, NULL, '2023-01-15 06:59:22', '2023-01-15 06:59:22', '<i class=\"fa-duotone fa-face-smile\"></i>'),
(18, 6, '平台擴充工具', '[]', NULL, 1, 3, NULL, '2023-01-15 07:00:17', '2023-01-15 07:00:17', NULL),
(19, 6, '生產力工具', '[]', NULL, 1, 3, NULL, '2023-01-15 07:01:40', '2023-01-15 07:01:40', '<i class=\"fa-duotone fa-lightbulb\"></i>'),
(20, 6, '電子票卷', '[]', NULL, 1, 3, NULL, '2023-01-15 07:03:25', '2023-01-15 07:03:25', '<i class=\"fa-solid fa-ticket\"></i>'),
(21, 6, 'NFT加密藝術', '[]', NULL, 1, 3, NULL, '2023-01-15 07:05:00', '2023-01-15 07:05:00', '<i class=\"fa-sharp fa-solid fa-hexagon-vertical-nft-slanted\"></i>'),
(22, NULL, '部落格文章', '[]', NULL, 1, 1, NULL, '2023-01-16 03:43:06', '2023-01-16 03:43:06', '<i class=\"fa-duotone fa-scroll\"></i>'),
(23, 22, '旅遊', '[]', NULL, 1, 4, NULL, '2023-01-16 03:44:00', '2023-01-16 03:48:00', '<i class=\"fa-duotone fa-plane-departure\"></i>'),
(24, 22, '美食', '[]', NULL, 1, 2, NULL, '2023-01-16 03:44:29', '2023-01-16 03:44:29', NULL),
(25, 22, '興趣', '[]', NULL, 1, 3, NULL, '2023-01-16 03:45:25', '2023-01-16 03:45:25', '<i class=\"fa-sharp fa-solid fa-music\"></i>'),
(26, 22, '時事', '[]', NULL, 1, 4, NULL, '2023-01-16 03:46:30', '2023-01-16 03:46:30', '<i class=\"fa-duotone fa-bullhorn\"></i>'),
(27, 22, '關係', '[]', NULL, 1, 1, NULL, '2023-01-16 03:47:32', '2023-01-16 03:47:32', '<i class=\"fa-duotone fa-heart\"></i>'),
(28, 22, '科技', '[]', NULL, 1, 5, NULL, '2023-01-16 03:49:07', '2023-01-16 03:49:07', '<i class=\"fa-duotone fa-microchip\"></i>'),
(29, 22, '寵物', '[]', NULL, 1, 6, NULL, '2023-01-16 03:49:52', '2023-01-16 03:49:52', '<i class=\"fa-duotone fa-dog\"></i>');

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_to` bigint(20) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unHandled',
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handler_id` bigint(20) UNSIGNED DEFAULT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `data_rows`
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
-- 傾印資料表的資料 `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', '姓名/供應商', 1, 0, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', '電子郵件', 1, 1, 1, 1, 1, 1, '{}', 7),
(4, 1, 'password', 'password', '密碼', 1, 0, 0, 1, 1, 0, '{}', 8),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 9),
(6, 1, 'created_at', 'timestamp', '創建於', 0, 1, 1, 0, 0, 0, '{}', 10),
(7, 1, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, '{}', 12),
(8, 1, 'avatar', 'image', '頭像', 0, 1, 1, 1, 1, 1, '{}', 14),
(9, 1, 'user_belongsto_role_relationship', 'relationship', '角色', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 19),
(11, 1, 'settings', 'hidden', '設定', 0, 0, 0, 0, 0, 0, '{}', 20),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', '顯示名稱', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', '角色ID', 0, 1, 1, 1, 1, 1, '{}', 16),
(22, 4, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'text', '父分類ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"}}', 3),
(24, 4, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc100\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:100\"}}', 5),
(25, 4, 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 8),
(26, 4, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"desc_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc500\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:500\"}}', 10),
(27, 4, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5143\\u7d20\\u662f\\u5426\\u555f\\u7528\",\"default\":1,\"checked\":true}', 2),
(28, 4, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"description\":\"\\u76f8\\u540c\\u5546\\u54c1\\u914d\\u7f6e\\u9ed8\\u8a8d\\u6392\\u5e8f\",\"validation\":{\"rule\":\"required|max:2000\"},\"default\":1}', 7),
(29, 4, 'type', 'text', '類型', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"type_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc30\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:30\"}}', 6),
(30, 4, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 11),
(31, 4, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 12),
(32, 5, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(33, 5, 'updater_id', 'text', '更新者ID', 0, 1, 1, 1, 1, 0, '{\"display\":{\"width\":\"2\",\"id\":\"updater_id\"}}', 3),
(34, 5, 'page', 'text', '頁面', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"page_id\"},\"description\":\"\\u4f4d\\u65bc\\u9996\\u9801\\u4e0b\\u7684\\u54ea\\u500b\\u9801\\u9762  ex:\\u9996\\u9801 =>index \\u547d\\u540d\\u65b9\\u5f0f:\\u8207URL\\u76f8\\u540c\\u540d\\u7a31\",\"validation\":{\"rule\":\"required|max:20\"}}', 5),
(35, 5, 'mode', 'select_dropdown', '元素類型', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"mode_id\"},\"validation\":{\"rule\":\"required|max:20\"},\"default\":\"image\",\"options\":{\"text\":\"\\u5167\\u6587\",\"image\":\"\\u5716\\u6587\",\"video\":\"\\u5f71\\u7247\",\"title\":\"\\u6a19\\u984c\",\"icon\":\"icon\"}}', 4),
(36, 5, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc40\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:40\"}}', 9),
(37, 5, 'position', 'text', '排版位置', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"position_id\"},\"description\":\"\\u7db2\\u9801\\u914d\\u7f6e\\u7684\\u7a7a\\u9593 \\u547d\\u540d\\u65b9\\u5f0f:\\u8207\\u8996\\u5716\\u4e2d\\u5c0d\\u61c9\\u7684\\u4f4d\\u7f6eClass\\u540d\\u7a31\",\"validation\":{\"rule\":\"required|max:40\"}}', 6),
(38, 5, 'icon', 'image', '圖示', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"icon_id\"}}', 17),
(39, 5, 'subtitle', 'text', '副標題', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"5\",\"id\":\"subtitle_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc00\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:80\"}}', 10),
(40, 5, 'content', 'rich_text_box', '內文', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc100\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:2000\"}}', 13),
(41, 5, 'url', 'text', '網址', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"url_id\"},\"description\":\"\\u53c3\\u8003\\u7db2\\u5740\\/\\u8d85\\u9023\\u7d50\",\"validation\":{\"rule\":\"max:255\"}}', 14),
(42, 5, 'url_txt', 'text', '網址文字', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"url_txt_id\"},\"description\":\"\\u8d85\\u9023\\u7d50\\u986f\\u793a\\u6587\\u5b57\",\"validation\":{\"rule\":\"max:100\"}}', 15),
(43, 5, 'pic', 'media_picker', '照片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 18),
(44, 5, 'video', 'media_picker', '影片網址', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"video_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"}}', 19),
(45, 5, 'alt', 'text', '替代文字', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"alt_id\"},\"description\":\"\\u7121\\u6cd5\\u88ab\\u986f\\u793a\\u7684\\u5a92\\u9ad4\\u3001\\u6587\\u4ef6\\u7b49\\uff0c\\u986f\\u793a\\u7684\\u66ff\\u4ee3\\u6587\\u5b57\\uff0c\\u5fc5\\u9808\\u5c0f\\u65bc00\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:100\"}}', 16),
(46, 5, 'title_pos', 'text', '標題位置', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_pos_id\"},\"description\":\"\\u547d\\u540d\\u65b9\\u5f0f:\\u5c0d\\u61c9\\u4f4d\\u7f6e\\u7684class\",\"validation\":{\"rule\":\"max:20\"}}', 11),
(47, 5, 'title_color', 'text', '標題顏色', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_color_id\"},\"validation\":{\"rule\":\"max:30\"}}', 12),
(48, 5, 'q_mode', 'hidden', 'Q Mode', 0, 0, 0, 0, 0, 0, '{}', 20),
(49, 5, 'i_mode', 'hidden', 'I Mode', 0, 0, 0, 0, 0, 0, '{}', 21),
(50, 5, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"description\":\"\\u76f8\\u540c\\u7db2\\u9801\\u914d\\u7f6e\\u7684\\u7a7a\\u9593\\u4e2d\\u7684\\u4f4d\\u7f6e\\u6392\\u5e8f\",\"validation\":{\"rule\":\"required|max:2000\"},\"default\":1}', 7),
(51, 5, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5143\\u7d20\\u662f\\u5426\\u555f\\u7528\",\"default\":1,\"checked\":true}', 2),
(52, 5, 'isShowTitle', 'checkbox', '是否顯示標題', 1, 1, 1, 1, 1, 0, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"isShowTitle_id\"},\"default\":1,\"checked\":true}', 8),
(53, 5, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 0, '{}', 22),
(54, 5, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 23),
(55, 6, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(56, 6, 'cgy_id', 'text', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgy_id\"},\"validation\":{\"rule\":\"required\"}}', 5),
(57, 6, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc50\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:50\"}}', 9),
(58, 6, 'pics', 'media_picker', '照片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 15),
(59, 6, 'price_og', 'number', '初始售價', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"price_og_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"default\":0}', 6),
(60, 6, 'price_new', 'number', '更新售價', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"price_new_id\"},\"validation\":{\"rule\":\"min:0\"},\"default\":0}', 7),
(61, 6, 'badge', 'hidden', 'Badge', 0, 0, 0, 0, 0, 0, '{}', 18),
(62, 6, 'star', 'number', '星數', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"star_id\"},\"description\":\"\\u5546\\u54c1\\u8a55\\u50f9\",\"validation\":{\"rule\":\"required|min:0|max:5\"},\"default\":0}', 8),
(63, 6, 'stock', 'number', '庫存', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"stock_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"default\":0}', 12),
(64, 6, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"desc_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc400\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:400\"}}', 17),
(65, 6, 'chars', 'rich_text_box', '特色', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"chars_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc300\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:300\"}}', 16),
(66, 6, 'sku', 'text', 'SKU', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sku_id\"},\"validation\":{\"rule\":\"max:100\"}}', 13),
(67, 6, 'options', 'hidden', '可共選項', 0, 0, 0, 0, 0, 0, '{}', 14),
(68, 6, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"sort_id\"},\"description\":\"\\u5546\\u54c1\\u9673\\u5217\\u6392\\u5e8f\",\"default\":1}', 2),
(69, 6, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5546\\u54c1\\u9805\\u76ee\\u662f\\u5426\\u4f7f\\u7528\",\"default\":1,\"checked\":true}', 3),
(70, 6, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 1, '{}', 19),
(71, 6, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 20),
(72, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 11),
(73, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 13),
(74, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 15),
(75, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 18),
(76, 1, 'current_team_id', 'text', '當下團隊 ID', 0, 0, 1, 1, 1, 1, '{}', 21),
(77, 1, 'profile_photo_path', 'text', '大頭照路徑', 0, 0, 1, 1, 1, 1, '{}', 22),
(78, 1, 'username', 'text', '使用者名稱', 0, 1, 1, 1, 1, 1, '{}', 23),
(79, 1, 'nickname', 'text', '綽號', 0, 0, 1, 1, 1, 1, '{}', 24),
(80, 1, 'gender', 'text', '性別', 0, 1, 1, 1, 1, 1, '{}', 25),
(81, 1, 'identify', 'text', '身分確認', 0, 1, 1, 1, 1, 1, '{}', 26),
(82, 1, 'title', 'text', '標題', 0, 0, 1, 1, 1, 1, '{}', 27),
(83, 1, 'birthday', 'text', '生日', 0, 0, 1, 1, 1, 1, '{}', 28),
(84, 1, 'organization', 'text', '組織', 0, 1, 1, 1, 1, 1, '{}', 29),
(85, 1, 'tel', 'text', '市內電話', 0, 1, 1, 1, 1, 1, '{}', 30),
(86, 1, 'mobile', 'text', '手機號碼', 0, 1, 1, 1, 1, 1, '{}', 31),
(87, 1, 'fb_id', 'text', 'Fb ID', 0, 0, 1, 1, 1, 1, '{}', 32),
(88, 1, 'first_name', 'text', '名', 0, 0, 1, 1, 1, 1, '{}', 6),
(89, 1, 'last_name', 'text', '姓', 0, 0, 1, 1, 1, 1, '{}', 5),
(90, 1, 'pic', 'text', '照片', 0, 1, 1, 1, 1, 1, '{}', 33),
(91, 1, 'post_id', 'text', '貼文編號貼文編號', 0, 1, 1, 1, 1, 1, '{}', 34),
(92, 1, 'address', 'text', '地址', 0, 1, 1, 1, 1, 1, '{}', 35),
(93, 1, 'desc', 'text', '描述', 0, 0, 1, 1, 1, 1, '{}', 36),
(94, 1, 'enabled', 'text', '是否啟用', 1, 1, 1, 1, 1, 1, '{}', 37),
(95, 1, 'socialLinks', 'text', '社群連結', 0, 1, 1, 1, 1, 1, '{}', 38),
(96, 1, 'provider', 'hidden', '供應商', 0, 0, 0, 0, 0, 0, '{}', 3),
(97, 1, 'provider_id', 'hidden', '供應商 ID', 0, 0, 0, 0, 0, 0, '{}', 4),
(98, 4, 'cgy_belongsto_cgy_relationship', 'relationship', '父分類ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(99, 4, 'icon_html', 'code_editor', 'Icon html', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"icon_htmlid\"}}', 9),
(100, 6, 'vender_id', 'text', '販賣商ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"}}', 11),
(101, 6, 'item_belongsto_cgy_relationship', 'relationship', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgy_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(103, 6, 'item_belongsto_user_relationship', 'relationship', '販賣商ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"vender_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(104, 8, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(105, 8, 'name', 'text', '填表人', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"name_id_id\"},\"validation\":{\"rule\":\"required|max:20\"}}', 5),
(106, 8, 'mobile', 'text', '手機號碼', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"mobile_id\"},\"validation\":{\"rule\":\"max:20\"}}', 6),
(107, 8, 'subject', 'text', '主旨', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"subject_id\"},\"validation\":{\"rule\":\"required|max:100\"}}', 8),
(108, 8, 'mode', 'hidden', '模式', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"mode_id\"},\"validation\":{\"rule\":\"max:100\"}}', 9),
(109, 8, 'message', 'text_area', '訊息', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"message_id\"},\"validation\":{\"rule\":\"max:500\"}}', 13),
(110, 8, 'service', 'text', '所需服務', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"service_id\"},\"validation\":{\"rule\":\"max:40\"}}', 10),
(111, 8, 'email', 'text', '電子郵箱', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"email_id\"},\"validation\":{\"rule\":\"max:100\"}}', 7),
(112, 8, 'status', 'select_dropdown', '聯絡單狀態', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"status_id\"},\"default\":\"none\",\"options\":{\"none\":\"\\u5c1a\\u672a\\u8655\\u7406\",\"handled\":\"\\u8655\\u7406\\u4e2d\",\"done\":\"\\u5df2\\u5b8c\\u6210\"}}', 4),
(113, 8, 'tag', 'text', '標籤', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"tag_id\"},\"validation\":{\"rule\":\"max:100\"}}', 11),
(114, 8, 'handler_id', 'hidden', '處理者ID', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"handler_id_id\"}}', 2),
(115, 8, 'creator_id', 'hidden', '建立者ID', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"creator_id_id\"}}', 3),
(116, 8, 'source', 'text', '來源', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"source_id\"},\"validation\":{\"rule\":\"max:20\"}}', 12),
(117, 8, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 14),
(118, 8, 'updated_at', 'timestamp', '更新於', 0, 1, 0, 0, 0, 0, '{}', 15),
(119, 9, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(120, 9, 'cgy_id', 'text', '分類ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"cgy_id_id\"},\"validation\":{\"rule\":\"required\"}}', 6),
(121, 9, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"title_id\"},\"validation\":{\"rule\":\"required|max:40\"}}', 9),
(122, 9, 'author_id', 'text', '作者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"author_id\"},\"validation\":{\"rule\":\"required\"}}', 8),
(123, 9, 'content_small', 'text_area', '部分內容', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_small\"},\"validation\":{\"rule\":\"max:80\"}}', 10),
(124, 9, 'content', 'rich_text_box', '內容', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_id\"}}', 11),
(125, 9, 'attachment_names', 'text', '附件檔名', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"attachment_names_id\"},\"validation\":{\"rule\":\"max:200\"}}', 12),
(126, 9, 'attachment_paths', 'text', '附件路徑', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"8\",\"id\":\"attachment_paths_id\"},\"validation\":{\"rule\":\"max:500\"}}', 13),
(127, 9, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"validation\":{\"rule\":\"required\"}}', 2),
(128, 9, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"status_id\"},\"validation\":{\"rule\":\"required|max:30\"},\"default\":\"draft\",\"options\":{\"draft\":\"\\u8349\\u641e\",\"online\":\"\\u4e0a\\u7dda\"}}', 3),
(129, 9, 'featured', 'checkbox', '是否精選', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"2\",\"id\":\"featured_id\"},\"validation\":{\"rule\":\"required\"},\"checked\":true}', 4),
(130, 9, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"meta_description_id\"},\"validation\":{\"rule\":\"max:255\"}}', 15),
(131, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"meta_keywords_id\"},\"validation\":{\"rule\":\"max:255\"}}', 16),
(132, 9, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"seo_title_id\"},\"validation\":{\"rule\":\"max:255\"}}', 17),
(133, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"slug_id\"},\"validation\":{\"rule\":\"max:255\"}}', 18),
(134, 9, 'pic', 'media_picker', '圖片', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"12\",\"id\":\"pic_id\"},\"checked\":true,\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 14),
(135, 9, 'created_at', 'timestamp', '建立', 0, 1, 1, 1, 0, 1, '{}', 19),
(136, 9, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 20),
(137, 9, 'article_belongsto_cgy_relationship', 'relationship', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"cgy_id_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(138, 9, 'article_belongsto_user_relationship', 'relationship', '作者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"author_id\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- 資料表結構 `data_types`
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
-- 傾印資料表的資料 `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', '用戶', '用戶集', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-01-12 20:03:27', '2023-01-14 09:26:00'),
(2, 'menus', 'menus', '側邊欄', '側邊欄', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-01-12 20:03:27', '2023-01-12 20:03:27'),
(3, 'roles', 'roles', '角色', '角色', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-01-12 20:03:27', '2023-01-12 20:03:27'),
(4, 'cgies', 'cgies', '分類', '分類集', 'voyager-bag', 'App\\Models\\Cgy', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2023-01-12 20:45:39', '2023-01-15 06:42:37'),
(5, 'elements', 'elements', '網路元素', '網路元素集', 'voyager-puzzle', 'App\\Models\\Element', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"page\",\"order_direction\":\"asc\",\"default_search_key\":\"page\",\"scope\":null}', '2023-01-14 05:21:05', '2023-01-16 01:10:03'),
(6, 'items', 'items', '商品', '商品集', 'voyager-dollar', 'App\\Models\\Item', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2023-01-14 08:10:35', '2023-01-15 08:44:58'),
(8, 'contacts', 'contacts', '聯絡單', '聯絡單集', 'voyager-paper-plane', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"creator_id\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2023-01-16 00:59:30', '2023-01-16 03:01:39'),
(9, 'articles', 'articles', '文章', '文章集', 'voyager-news', 'App\\Models\\Article', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":\"created_at\",\"scope\":null}', '2023-01-16 02:48:52', '2023-01-16 03:55:23');

-- --------------------------------------------------------

--
-- 資料表結構 `elements`
--

CREATE TABLE `elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updater_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_txt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_pos` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q_mode` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i_mode` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `isShowTitle` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `elements`
--

INSERT INTO `elements` (`id`, `updater_id`, `page`, `mode`, `title`, `position`, `icon`, `subtitle`, `content`, `url`, `url_txt`, `pic`, `video`, `alt`, `title_pos`, `title_color`, `q_mode`, `i_mode`, `sort`, `enabled`, `isShowTitle`, `created_at`, `updated_at`) VALUES
(1, 1, 'index', 'image', '你還在煩惱沒時間維持友誼關係嗎?', 'slider', NULL, '與好友多久沒見面了呢? 禮物怎麼挑呢? 真希望我有一起...的朋友! 不要煩惱了   幫你解決 😉', NULL, '/register', '選擇我的夥伴', '[\"elements/1.png\"]', NULL, NULL, 'hero__caption', '#000000', NULL, NULL, 1, 1, 1, '2023-01-14 09:43:28', '2023-01-14 12:43:11'),
(2, 1, 'index', 'image', '基本資料就能簡單註冊', 'introduction', NULL, NULL, '<ul>\r\n<li>● 我們不需要您填寫過多驗證身分以外的個人資訊</li>\r\n<li>● 與好友分享的資訊只針對您同意的對象選擇一次性或有期效公開</li>\r\n<li>● 分享資訊具有防截圖與複製功能選項</li>\r\n</ul>', '/about', '了解更多', '[\"elements/2.png\"]', NULL, NULL, NULL, '#000000', NULL, NULL, 1, 1, 1, '2023-01-14 13:05:05', '2023-01-15 06:29:54'),
(3, 1, 'index', 'image', '分享您的一些資訊，尋找到志同道合的夥伴', 'introduction', NULL, NULL, '<ul>\r\n<li>● 您可以分享一些資訊讓人主動了解你</li>\r\n<li>●當您是社團發起人，交友關係由你決定!</li>\r\n<li>●想更了解他人，發送了解更多，並設計你想了解的內容!</li>\r\n<li>●只要對方同意，你們也能先成為朋友^^</li>\r\n</ul>', '/about', '了解更多', '[\"elements/4-fit-500.jpg\"]', NULL, NULL, NULL, '#000000', NULL, NULL, 2, 1, 1, '2023-01-14 13:48:19', '2023-01-14 14:14:06');

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
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
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cgy_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_og` int(11) NOT NULL DEFAULT 0,
  `price_new` int(11) DEFAULT NULL,
  `badge` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT 10,
  `stock` int(11) NOT NULL DEFAULT 0,
  `desc` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chars` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cgy_parent_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`id`, `cgy_id`, `title`, `pics`, `price_og`, `price_new`, `badge`, `star`, `stock`, `desc`, `chars`, `sku`, `options`, `sort`, `enabled`, `created_at`, `updated_at`, `vender_id`, `cgy_parent_id`) VALUES
(13, 7, '客製化雷切-木質擴香禮盒', '[\"items/800x0-fit-500.jpg\",\"items/original-fit-500.jpg\",\"items/original (1).jpg\"]', 1199, 1099, NULL, 5, 100, '<p>▲ 不僅擴香，還能點綴浪漫氛圍！</p>\r\n<p>市場上的擴香瓶外型大同小異，我們不喜歡紙片的單薄又擔心車內玻璃瓶會打翻。<br>邱比特透過木螺牙結合，穩定結構展現療癒外型。</p>\r\n<p>▲ 透過環境空氣流動，讓香氣自然擴散！</p>', '<p>橡果象徵著堅定耐心與永恆之愛，祝福戀人們都能有長久愛情。我們將橡果融合香氛，不僅療癒且擴香，絕對是情人送禮質感首選 !</p>\r\n<p>來自台灣的設計，全木製結構<br>透過木質包覆香氣，為你營造生活美好點滴 !</p>', NULL, NULL, 1, 1, '2023-01-15 07:13:39', '2023-01-15 14:07:18', 1, 0),
(14, 7, '客製化雷切-木質無線充電器', '[\"items/800x0 (3).jpg\",\"items/800x0 (1).jpg\",\"items/800x0 (4).jpg\"]', 1031, 931, NULL, 5, 316, NULL, '<p>原木光環無限充電器設計簡約</p>\r\n<p>超薄木質無限充電器。顯示出完美的木紋</p>\r\n<p>除了採用優質天然木材，充電器自然融入附近的物件。</p>', NULL, NULL, 5, 1, '2023-01-15 08:22:50', '2023-01-15 14:07:51', 1, 0),
(15, 7, '客製化-台灣雪山 擴香石 香氛 擴香石 精油 新年禮物 小禮盒', '[\"items/800x0 (6).jpg\",\"items/800x0 (7).jpg\",\"items/800x0 (8).jpg\"]', 687, 587, NULL, 5, 20, NULL, '<p>客製化名牌(可寫中文2個字內、英文8個字母內)</p>\r\n<p>搭配純天然精油</p>\r\n<p>附精美包裝，送禮沒煩惱</p>', NULL, NULL, 3, 1, '2023-01-15 08:28:15', '2023-01-15 14:06:56', 1, 0),
(16, 7, '人像繪製-皮革鑰匙圈', '[\"items/800x1 (11).jpg\",\"items/800x1 (12).jpg\",\"items/800x1 (13).jpg\"]', 449, 349, NULL, 4, 600, NULL, '<p>皮革鑰匙圈不管是掛在鑰匙上還是包包上，每天看到它自然會想起送你鑰匙圈的他/她，情侶之間送鑰匙圈還有將情感連在一起的含義，是不是好浪漫!</p>', NULL, NULL, 4, 1, '2023-01-15 08:32:42', '2023-01-15 14:07:32', 1, 0),
(17, 7, '人像繪製-保溫杯', '[\"items/cup.jpg\",\"items/cup2.jpg\",\"items/cup3.jpg\",\"items/cup4.jpg\"]', 2289, 2189, NULL, 0, 50, NULL, '<p>Kinto運動水壺600ml大容量搭配沉穩不失質感的配色，還能客製愛的人在保溫杯上，讓喝水都變成一件幸福的事情!</p>', NULL, NULL, 2, 1, '2023-01-15 08:37:33', '2023-01-15 08:38:26', 1, 0),
(18, 8, '零錢盒 實木堆疊文具收納', '[\"items/box.jpg\",\"items/box2.jpg\",\"items/box3.jpg\",\"items/box4.jpg\"]', 420, 400, NULL, 0, 10, '<p>【產品規格】<br>材質：木<br>尺寸：90 x 90 x 80mm 內容量尺寸 圓直徑:78mm 深:55mm</p>\r\n<p>此商品單獨販售基本材，不包含照片中零件。<br><br>‧因拍攝及螢幕會產生些微色差，故圖片僅供參考，顏色請以實際收到的商品為準。<br><br>‧部分商品由實木製作，原木木紋色澤因自然生態而不盡相同，無法接受請勿購買。</p>', '<p>一起來為家裡妝點些新氣象吧！ Jeantopia質感木裝飾， 可搭配多樣豐富DIY素材， 創作個人特色裝飾小物非難事!</p>', NULL, NULL, 1, 1, '2023-01-15 08:44:13', '2023-01-15 08:44:13', 1, 0),
(19, 8, 'HOVERPEN 自立筆 2.0【星際】', '[\"items/pan.jpg\",\"items/pan2.jpg\",\"items/pan3.jpg\",\"items/pan4.jpg\"]', 2550, 1688, NULL, 5, 5, '<p><strong class=\"m-richtext-el\">專為地球人設計<br></strong><span class=\"m-richtext-el\">自立筆〔星際〕底座傾斜更好拿取，我們把這個角度做成了 23.5 度 &mdash;&mdash; 地球自轉軸傾角，是一組代表地球人的風格筆座組！此外，磁力結構專為地球重力設計，可適用於 0.7 倍到 1.3 倍地球重力的環境（在金星、土星、天王星、海王星上也適用 &mdash;&mdash; 前提是那個星球有固體平面可放自立筆！）</span></p>\r\n<p>&nbsp;</p>', '<p>「記得仰望星空，別只是俯視腳步，為你眼前的事物尋找意義，驚嘆這宇宙如何形成。<br>請記著要保持好奇心。」 &mdash;&mdash; 史蒂芬・霍金</p>\r\n<p>星空，是人類對於未知探索的極致象徵 &mdash;&mdash;</p>', NULL, NULL, 2, 1, '2023-01-15 08:50:59', '2023-01-15 08:51:46', 1, 0),
(20, 8, '替換式日附日期章組', '[\"items/stamp.jpg\",\"items/stamp2.jpg\",\"items/stamp3.jpg\",\"items/stamp4.jpg\"]', 880, 850, NULL, 5, 0, NULL, '<p>可任意調整自己想要的日期-----時效2022-2031 適合蓋印－明信片／手帳／卡片／吊牌　各種手作 內含：辦公室貓貓-＊日期章-1支長方形尺寸3.5*5cm ＊透明印章-8種圖款 祝福花圈-＊日期章-1支圓形尺寸3.5*3.5cm</p>', NULL, NULL, 3, 1, '2023-01-15 08:54:40', '2023-01-15 08:54:40', 1, 0),
(21, 8, 'TOBIcoBACO 跳箱造型木製迷你收納盒-Zazou抽屜5層', '[\"items/fivelayersbox.jpg\",\"items/fivelayersbox2.jpg\",\"items/fivelayersbox3.jpg\",\"items/fivelayersbox4.jpg\"]', 2980, 2700, NULL, 5, 30, '<p>來自日本廣島豐田產業，純手工打造木製收納盒。<br><br>仿照小學體育課的跳箱，讓您回憶童年！！<br><br>3層5層，容量不同，可依需求作收納與歸類使用。<br><br>放在桌面上保證是目光與話題焦點！！<br><br>本賣場款式資訊如下<br><br>款式：Zazou 抽屜式5段<br>層數：5層<br>尺吋：W14.5XD16XH23 cm<br>重量：約895g<br>材質：桐木/頂層為厚帆布與消臭綿<br>多種款式與尺寸依使用需求選擇！<br>迷你堆疊式：3層/5層<br>迷你抽屜式：3層/5層<br>一般抽屜式：3層B6/5層B6/5層B5<br>產地/製造方式<br>產地日本 純手工製作</p>', '<p>來自日本廣島豐田產業，純手工打造木製收納盒。 仿照小學體育課的跳箱，讓您回憶童年！！ 3層5層，容量不同，可依需求作收納與歸類使用。 放在桌面上保證是目光與話題焦點！</p>\r\n<p>&nbsp;</p>', NULL, NULL, 4, 1, '2023-01-15 08:58:28', '2023-01-15 08:59:26', 1, 0),
(22, 8, 'Simple文具洞洞板', '[\"items/board.jpg\",\"items/board2.jpg\",\"items/board3.jpg\",\"items/board4.jpg\"]', 680, 680, NULL, 5, 100, NULL, '<p>木匠兄妹商品皆為手工製品，製作與組裝過程中會有些微差異，每件作品皆為獨一無二，其差異不影響外觀及功能使用，皆屬正常現象。 產品為實木素材，木料深淺及紋路會因生長氣候及各種外在因素影響，而略有不同，且因木料規格限制，部份商品會以併板製作，根據氣候變化可能產生膨脹收縮的反應，其收縮幅度因木料密度而有所不同，若木作拼接處出現細微縫隙屬皆自然現象。</p>', NULL, NULL, 5, 1, '2023-01-15 09:03:08', '2023-01-15 09:03:08', 1, 0),
(23, 9, '英國GREEN STEM CBD軟糖 (30粒)', '[\"items/candy.jpg\",\"items/candy2.jpg\",\"items/candy3.jpg\",\"items/candy4.jpg\"]', 1940, 1740, NULL, 4, 200, '<p>GREEN STEM只採用 100%有機CBD，我們的大麻二酚源自美國合法大麻籽油農場。含高達85%活性CBD，並絶不含THC。而大麻植物中的所有THC(大麻中使人精神興奮的成份)都會被分離，使您可以安全地享用我們的產品，不會因為THC而帶來任何副作用，最重要的是，您不會因使用GREEN STEM產品而出現精神興奮。</p>', '<p><br>英國GREEN STEM CBD軟糖適合喜歡天然果味又愛方便的CBD愛好者。每粒軟糖含10毫克廣譜 CBD 油，可保留天然存在的萜烯和其他植物大麻素。GREEN STEM CBD軟糖混合了三種不同口味：檸檬、香橙和提子味，全部口味均採用天然、真正的水果味道配製。我們建議在需要時服用每劑 1-2 粒軟糖</p>', NULL, NULL, 1, 1, '2023-01-15 09:06:42', '2023-01-15 09:06:42', 1, 0),
(24, 9, '新年限定 | 送禮 | 新年卡片餅乾', '[\"items/cookie.jpg\",\"items/cookie2.jpg\",\"items/cookie3.jpg\"]', 530, 530, NULL, 5, 0, NULL, '<p>餅乾約7x6cm、每片獨立包裝、蛋奶素可食用、</p>\r\n<p>內容物:小麥粉、植物油(棕櫚油.黃豆油)、砂糖、食鹽、全蛋、香草粉、日本食用色素</p>', NULL, NULL, 2, 1, '2023-01-15 09:09:33', '2023-01-15 09:09:33', 1, 0),
(25, 10, '高速雙用OTG隨身碟 - 64GB', '[\"items/USB.jpg\",\"items/USB2.jpg\",\"items/USB3.jpg\",\"items/USB4.jpg\"]', 799, 704, NULL, 4, 20, '<p>簡潔圓柱設計，賦予金屬切邊，反射出金屬光線，細緻與閃耀，圓洞設計也可當吊飾孔使用，實用與美感同時兼具</p>', '<p>【商品特點】<br>△ 搭載TYPE-C、TYPE - A兩介面<br>△ 採用COB封裝技術，具防水、防塵功能<br>△ 最新傳輸介面符合USB 3.1 GEN 1規範<br>△ 採360&deg;旋轉設計，方便收納<br>△ 最高讀寫可達 70 MB &amp; 20 MB</p>', NULL, NULL, 1, 1, '2023-01-15 09:26:42', '2023-01-15 09:26:42', 1, 0),
(26, 10, 'Tank 英倫酒吧搖滾 入耳式耳機', '[\"items/airset.jpg\",\"items/airset2.jpg\",\"items/airset3.jpg\",\"items/airset4.jpg\"]', 1080, 951, NULL, 5, 2, '<p>希望耳機不只是呈現音頻的工具，更能成為傳遞情感的橋樑。 結合音響技術與高效單體，加強低頻率聲響，去除雜音的降噪功能，滿足你的搖滾基音</p>', '<p>【商品特點】<br>△ 採用防彈線材200D，高功能低阻抗抗拉力強<br>△ 獨家減壓技術，避免耳鳴頭暈<br>△ 國際電聲實驗室調校音域寬廣層次清晰<br>△ 高傳導直線型3.5mm立體聲接頭<br>△ 附輕巧旅行收納包，防水耐汗抗震，易攜帶 ( 附理線夾以及矽膠耳塞 )</p>\r\n<p>&nbsp;</p>', NULL, NULL, 2, 1, '2023-01-15 09:28:54', '2023-01-15 09:28:54', 1, 0),
(27, 10, 'MUFU機車行車記錄器 V10S國民機|贈64GB記憶卡', '[\"items/pan4.jpg\",\"items/recoder.jpg\"]', 3490, 3490, NULL, 5, 2, NULL, '<p>◉V10S主機防水　不擔心大雨來襲<br>◍DIY快速安裝<br>◉感應式開關機設計 即插即錄<br>◍SONY星光級感光元件 Full HD1080P畫質<br>◍碰撞傾倒自動鎖檔<br>◉專屬APP即時觀看影像<br>◍連續錄影長達7.5小時<br>◉TS檔案格式 秒錄秒存<br>◍AI智能降噪 人聲更清晰<br>◍主機保固服務1年(需登錄官網</p>', NULL, NULL, 3, 1, '2023-01-15 09:31:48', '2023-01-15 14:30:03', 1, 0),
(28, 10, 'actto 復古打字機無線藍牙鍵盤 - 奶油黃 - 迷你款', '[\"items/keyborad.jpg\",\"items/keyborad2.jpg\",\"items/keyborad3.jpg\",\"items/keyborad4.jpg\"]', 1549, 1449, NULL, 5, 38, NULL, '<p>「家」和「辦公室」是人們待最久的地方，試著在這些一成不變的空間裡增加一些色彩吧！復古打字機外型配上 5 款夢幻色系，讓「鍵盤」成為桌上最美風景</p>', NULL, NULL, 4, 1, '2023-01-15 09:37:18', '2023-01-15 09:37:18', 1, 0),
(29, 10, 'Actto LED 無線藍牙滑鼠 - 奶油黃', '[\"items/mouse.jpg\",\"items/mouse0.jpg\",\"items/mouse2.jpg\",\"items/mouse3.jpg\"]', 940, 699, NULL, 4, 60, NULL, '<p>來自韓國最美靜音無線滑鼠，輕巧造型搭配夢幻馬卡龍配色，彩繪你的工作時光 🌈</p>', NULL, NULL, 5, 1, '2023-01-15 09:40:30', '2023-01-15 09:40:30', 1, 0),
(30, 9, '7 種茶主題綜合茶包', '[\"items/tea.jpg\"]', 150, 150, NULL, 5, 30, NULL, '<p>1. 日月潭紅茶 | 讓嘴角微笑的自然甜<br>2. 台日綠茶集 | 春日氣息的鮮爽回甘<br>3. 台灣茶之青 | 百年搖青，經典烏龍香<br>4. 低咖啡因焙茶｜茶職人手焙的烤茶香<br>5. 蜜香風味選 | 小綠葉蟬咬出來的甜蜜蜜<br>6. 冷泡茶精選｜嚴選的鮮、甜、焙、甘<br>7. 鮮奶茶專門｜與牛奶一拍即合的濃郁茶味<br>8. 茶主題探索全集（含上述1~7，共七盒）</p>', NULL, NULL, 3, 1, '2023-01-15 09:45:32', '2023-01-15 10:14:12', 1, 0),
(31, 9, '【七見櫻堂】三明治餅輕巧裝(六入)', '[\"items/twolayercookie.jpg\",\"items/twolayercookie2.jpg\"]', 230, 230, NULL, 5, 195, NULL, '<div class=\"m-product-basic-info m-box m-box-main\">\r\n<div class=\"m-box-body\">\r\n<div class=\"m-product-list-item\">台北人氣推薦伴手禮 酥鬆綿密的餅乾體，搭配香濃滑順的夾餡 層層包覆的口感，如同甜點般口口令人驚艷</div>\r\n<div class=\"m-product-list-item\">內容物:麵粉、奶油、靜岡抹茶、可可、鐵觀音、文山包種茶、宇治焙茶</div>\r\n</div>\r\n</div>', NULL, NULL, 5, 1, '2023-01-15 09:48:38', '2023-01-15 09:48:38', 1, 0),
(32, 9, '台灣香菇脆片1入(100g/包)', '[\"items/crispy mushroom.jpg\",\"items/crispy mushroom2.jpg\",\"items/crispy mushroom3.jpg\"]', 280, 168, NULL, 5, 89, NULL, '<p><strong class=\"m-richtext-el\">香菇脆片</strong><br>採用台灣土產的新鮮香菇作為原料，以高科技真空脫水技術製作，保留著蔬果的原始風味，且無添加任何色素、香料，讓您吃到最酥脆鮮美的香菇脆片，品嚐到最自然的美味。<br><br><strong class=\"m-richtext-el\">香菇為珍貴料理食材</strong><br>香菇來自台灣本地，是珍貴的料理食材，台灣香菇因香味濃郁，一直以來深受國人喜愛，我們將香菇經過特殊的低溫真空乾燥技術，製成了特殊又美味的酥脆爽口零嘴。</p>', NULL, NULL, 4, 1, '2023-01-15 09:53:19', '2023-01-15 09:53:19', 1, 0),
(33, 17, '會動的♪Snoopy（慵懶手繪風）', '[\"items/會動的Snoopy（慵懶手繪風）LINE貼圖.png\"]', 60, 60, NULL, 5, 10000, NULL, NULL, NULL, NULL, 1, 1, '2023-01-15 09:56:55', '2023-01-15 14:27:53', 1, 0),
(34, 17, '史努比（全螢幕貼圖～賀卡篇）', '[\"items/史努比（全螢幕貼圖～賀卡篇）.png\"]', 60, 60, NULL, 5, 10000, NULL, NULL, NULL, NULL, 2, 1, '2023-01-15 09:58:48', '2023-01-15 14:28:59', 1, 0),
(35, 17, 'Snoopy 就是要動貼圖', '[\"items/Snoopy 就是要動貼圖.png\"]', 60, 60, NULL, 5, 10000, NULL, NULL, NULL, NULL, 3, 1, '2023-01-15 10:00:30', '2023-01-15 14:29:46', 1, 0),
(36, 17, '史努比（慵懶可愛篇）', '[\"items/史努比（慵懶可愛篇.png\"]', 60, 60, NULL, 5, 10000, NULL, NULL, NULL, NULL, 4, 1, '2023-01-15 10:01:48', '2023-01-15 14:29:24', 1, 0),
(37, 17, '萬用貼圖♪Snoopy暖心問候語', '[\"items/萬用貼圖♪Snoopy暖心問候語.png\"]', 60, 60, NULL, 2, 10000, NULL, NULL, NULL, NULL, 5, 1, '2023-01-15 10:03:12', '2023-01-15 14:27:37', 1, 0),
(38, 18, '頁面主題1', '[\"items/63739dad6291d396176419.jpg\"]', 100, 100, NULL, 5, 10000, NULL, NULL, NULL, NULL, 1, 1, '2023-01-15 10:09:05', '2023-01-15 14:28:09', 1, 0),
(39, 18, '頁面主題2', '[\"items/63852e0861e41143389035.jpg\"]', 100, 100, NULL, 5, 10000, NULL, NULL, NULL, NULL, 2, 1, '2023-01-15 10:09:47', '2023-01-15 14:29:10', 1, 0),
(40, 18, '頁面主題3', '[\"items/6399d6bac90d2355897989.jpg\"]', 100, 100, NULL, 5, 10000, NULL, NULL, NULL, NULL, 3, 1, '2023-01-15 10:10:20', '2023-01-15 14:30:23', 1, 0),
(41, 18, '頁面主題4', '[\"items/639b27b08dc3e992484638.png\"]', 100, 100, NULL, 5, 10000, NULL, NULL, NULL, NULL, 4, 1, '2023-01-15 10:12:32', '2023-01-15 14:30:39', 1, 0),
(42, 18, '頁面主題5', '[\"items/639b581ff33f2855846655.png\"]', 100, 100, NULL, 5, 10000, NULL, NULL, NULL, NULL, 1, 1, '2023-01-15 10:15:09', '2023-01-15 14:28:22', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `item_tag`
--

CREATE TABLE `item_tag` (
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `item_user`
--

CREATE TABLE `item_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(2, 'header', '2023-01-14 15:06:43', '2023-01-15 05:15:51'),
(3, 'footer', '2023-01-15 04:54:06', '2023-01-15 04:54:20');

-- --------------------------------------------------------

--
-- 資料表結構 `menu_items`
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
-- 傾印資料表的資料 `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, '控制面板', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2023-01-12 20:03:28', '2023-01-14 08:43:08', 'voyager.dashboard', 'null'),
(2, 1, '媒體', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.media.index', NULL),
(3, 1, '用戶', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.users.index', NULL),
(4, 1, '角色', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.roles.index', NULL),
(5, 1, '工具', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-01-12 20:03:28', '2023-01-12 20:03:28', NULL, NULL),
(6, 1, '側邊欄管理', '', '_self', 'voyager-list', NULL, 5, 10, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.menus.index', NULL),
(7, 1, '資料庫', '', '_self', 'voyager-data', NULL, 5, 11, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.database.index', NULL),
(8, 1, '指南針', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.bread.index', NULL),
(10, 1, '設定', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-01-12 20:03:28', '2023-01-12 20:03:28', 'voyager.settings.index', NULL),
(12, 1, '網路元素集', '', '_self', 'voyager-puzzle', NULL, NULL, 15, '2023-01-14 05:21:05', '2023-01-14 05:21:05', 'voyager.elements.index', NULL),
(13, 1, '分類集', '', '_self', 'voyager-archive', '#000000', NULL, 16, '2023-01-14 05:23:38', '2023-01-14 05:23:38', 'voyager.cgies.index', NULL),
(14, 1, '商品集', '', '_self', 'voyager-gift', '#000000', NULL, 17, '2023-01-14 08:10:35', '2023-01-14 09:24:54', 'voyager.items.index', 'null'),
(16, 2, 'Index', '/', '_self', NULL, '#000000', NULL, 1, '2023-01-14 15:07:51', '2023-01-14 15:09:44', NULL, ''),
(17, 2, 'Shop', '/shop', '_blank', NULL, '#000000', NULL, 2, '2023-01-14 15:08:20', '2023-01-14 15:25:39', NULL, ''),
(18, 2, 'About', '/about', '_self', NULL, '#000000', NULL, 3, '2023-01-14 15:08:40', '2023-01-14 15:09:44', NULL, ''),
(19, 2, 'Latest', '#', '_self', NULL, '#000000', NULL, 4, '2023-01-14 15:09:01', '2023-01-14 15:09:44', NULL, ''),
(20, 2, 'Product List', '/product_list', '_self', NULL, '#000000', 19, 1, '2023-01-14 15:09:41', '2023-01-14 15:09:44', NULL, ''),
(21, 2, 'Product Detail', '/product_details', '_self', NULL, '#000000', 19, 2, '2023-01-14 15:10:04', '2023-01-14 15:10:07', NULL, ''),
(22, 2, 'Blog', '/blog', '_self', NULL, '#000000', 24, 1, '2023-01-14 15:10:24', '2023-01-14 15:11:11', NULL, ''),
(23, 2, 'Pages', '#', '_self', NULL, '#000000', NULL, 6, '2023-01-14 15:10:42', '2023-01-14 15:11:42', NULL, ''),
(24, 2, 'Blog', '#', '_self', NULL, '#000000', NULL, 5, '2023-01-14 15:11:06', '2023-01-14 15:11:09', NULL, ''),
(25, 2, 'Blog Details', '/blog-details', '_self', NULL, '#000000', 24, 2, '2023-01-14 15:11:35', '2023-01-14 15:11:42', NULL, ''),
(26, 2, 'Login', '/login', '_self', NULL, '#000000', 23, 1, '2023-01-14 15:12:02', '2023-01-14 15:12:05', NULL, ''),
(27, 2, 'Cart', '/cart', '_self', NULL, '#000000', 23, 2, '2023-01-14 15:12:18', '2023-01-14 15:12:21', NULL, ''),
(28, 2, 'Element', '/element', '_self', NULL, '#000000', 23, 3, '2023-01-14 15:12:35', '2023-01-14 15:12:40', NULL, ''),
(29, 2, 'Confirmation', '/confirmation', '_self', NULL, '#000000', 23, 4, '2023-01-14 15:13:05', '2023-01-14 15:13:10', NULL, ''),
(30, 2, 'Product Checkout', '/product_checkout', '_self', NULL, '#000000', 23, 5, '2023-01-14 15:13:39', '2023-01-14 15:13:43', NULL, ''),
(31, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-01-14 15:14:02', '2023-01-14 15:22:19', NULL, ''),
(32, 3, '快速連結', '#', '_blank', NULL, '#000000', NULL, 1, '2023-01-15 04:54:52', '2023-01-15 04:55:49', NULL, ''),
(33, 3, '關於我們', '/about', '_self', NULL, '#000000', 32, 1, '2023-01-15 04:55:47', '2023-01-15 04:55:49', NULL, ''),
(34, 3, '結交朋友', '/lobby', '_blank', NULL, '#000000', 32, 2, '2023-01-15 04:59:04', '2023-01-15 04:59:09', NULL, ''),
(35, 3, '新功能介紹', '/update', '_blank', NULL, '#000000', 32, 3, '2023-01-15 05:00:24', '2023-01-15 05:00:29', NULL, ''),
(36, 3, '聯絡我們', '/contact', '_blank', NULL, '#000000', 32, 4, '2023-01-15 05:00:52', '2023-01-15 05:00:57', NULL, ''),
(37, 3, '交友功能', '', '_self', '#', '#000000', NULL, 2, '2023-01-15 05:01:56', '2023-01-15 05:03:01', NULL, ''),
(38, 3, '公開社群', '/public_group', '_blank', NULL, '#000000', 37, 1, '2023-01-15 05:02:58', '2023-01-15 05:03:01', NULL, ''),
(39, 3, '平台工具箱', '/toolbax', '_blank', NULL, '#000000', 37, 2, '2023-01-15 05:07:01', '2023-01-15 05:07:20', NULL, ''),
(40, 3, '禮物商店', '/gift', '_blank', NULL, '#000000', 37, 3, '2023-01-15 05:08:11', '2023-01-15 05:08:14', NULL, ''),
(41, 3, '生產力工作室', '/studio', '_blank', NULL, '#000000', 37, 4, '2023-01-15 05:10:15', '2023-01-15 05:12:13', NULL, ''),
(42, 3, '資源', '#', '_self', NULL, '#000000', NULL, 3, '2023-01-15 05:11:16', '2023-01-15 05:12:22', NULL, ''),
(43, 3, '常見問題', '/question', '_blank', NULL, '#000000', 42, 1, '2023-01-15 05:12:03', '2023-01-15 05:12:22', NULL, ''),
(44, 3, '條款和條件', '/terms_conditions', '_blank', NULL, '#000000', 42, 2, '2023-01-15 05:13:07', '2023-01-15 05:13:10', NULL, ''),
(45, 3, '隱私權政策', '/privacy_policy', '_blank', NULL, '#000000', 42, 3, '2023-01-15 05:13:45', '2023-01-15 05:13:48', NULL, ''),
(46, 3, '問題回報', '/inquire', '_blank', NULL, '#000000', 42, 4, '2023-01-15 05:15:15', '2023-01-15 05:15:18', NULL, ''),
(47, 1, '聯絡單集', '', '_self', 'voyager-paper-plane', NULL, NULL, 18, '2023-01-16 00:59:30', '2023-01-16 00:59:30', 'voyager.contacts.index', NULL),
(48, 1, '文章集', '', '_self', 'voyager-news', NULL, NULL, 19, '2023-01-16 02:48:52', '2023-01-16 02:48:52', 'voyager.articles.index', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_03_132607_create_cgies_table', 1),
(13, '2017_01_06_144001_create_elements', 1),
(14, '2017_01_12_215420_create_contacts', 1),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(16, '2017_01_14_005015_create_translations_table', 1),
(17, '2017_01_14_222727_create_tags', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_01_26_112016_create_articles', 1),
(20, '2017_01_26_112101_create_article_tag', 1),
(21, '2017_01_26_113420_create_comments', 1),
(22, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(23, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(24, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(25, '2017_08_05_000000_add_group_to_settings_table', 1),
(26, '2017_11_26_013050_add_user_role_relationship', 1),
(27, '2017_11_26_015000_create_user_roles_table', 1),
(28, '2018_03_11_000000_add_user_settings', 1),
(29, '2018_03_14_000000_add_details_to_data_types_table', 1),
(30, '2018_03_16_000000_make_settings_value_nullable', 1),
(31, '2018_03_28_205026_create_items_table', 1),
(32, '2018_04_09_124213_create_item_tag', 1),
(33, '2018_04_18_173507_create_orders_table', 1),
(34, '2018_04_19_133408_create_order_item_table', 1),
(35, '2019_06_22_112612_add_columns_users_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2023_01_12_160025_create_sessions_table', 1),
(42, '2023_01_15_141309_add_columns_cgies_table', 2),
(44, '2023_01_15_151637_add_columns_items_table', 3),
(47, '2023_01_15_154000_create_item_user_table', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `receiver` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverTitle` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverMobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverEmail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiverAddress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couponCode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) NOT NULL DEFAULT 0,
  `shipCost` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'create',
  `pay_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_at` timestamp NULL DEFAULT NULL,
  `pay_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_pre` int(11) DEFAULT NULL,
  `pay_after` int(11) DEFAULT NULL,
  `reply_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `option` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(2, 'browse_bread', NULL, '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(3, 'browse_database', NULL, '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(4, 'browse_media', NULL, '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(5, 'browse_compass', NULL, '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(6, 'browse_menus', 'menus', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(7, 'read_menus', 'menus', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(8, 'edit_menus', 'menus', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(9, 'add_menus', 'menus', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(10, 'delete_menus', 'menus', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(11, 'browse_roles', 'roles', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(12, 'read_roles', 'roles', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(13, 'edit_roles', 'roles', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(14, 'add_roles', 'roles', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(15, 'delete_roles', 'roles', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(16, 'browse_users', 'users', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(17, 'read_users', 'users', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(18, 'edit_users', 'users', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(19, 'add_users', 'users', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(20, 'delete_users', 'users', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(21, 'browse_settings', 'settings', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(22, 'read_settings', 'settings', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(23, 'edit_settings', 'settings', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(24, 'add_settings', 'settings', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(25, 'delete_settings', 'settings', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(26, 'browse_cgies', 'cgies', '2023-01-12 20:45:39', '2023-01-12 20:45:39'),
(27, 'read_cgies', 'cgies', '2023-01-12 20:45:39', '2023-01-12 20:45:39'),
(28, 'edit_cgies', 'cgies', '2023-01-12 20:45:39', '2023-01-12 20:45:39'),
(29, 'add_cgies', 'cgies', '2023-01-12 20:45:39', '2023-01-12 20:45:39'),
(30, 'delete_cgies', 'cgies', '2023-01-12 20:45:39', '2023-01-12 20:45:39'),
(31, 'browse_elements', 'elements', '2023-01-14 05:21:05', '2023-01-14 05:21:05'),
(32, 'read_elements', 'elements', '2023-01-14 05:21:05', '2023-01-14 05:21:05'),
(33, 'edit_elements', 'elements', '2023-01-14 05:21:05', '2023-01-14 05:21:05'),
(34, 'add_elements', 'elements', '2023-01-14 05:21:05', '2023-01-14 05:21:05'),
(35, 'delete_elements', 'elements', '2023-01-14 05:21:05', '2023-01-14 05:21:05'),
(36, 'browse_items', 'items', '2023-01-14 08:10:35', '2023-01-14 08:10:35'),
(37, 'read_items', 'items', '2023-01-14 08:10:35', '2023-01-14 08:10:35'),
(38, 'edit_items', 'items', '2023-01-14 08:10:35', '2023-01-14 08:10:35'),
(39, 'add_items', 'items', '2023-01-14 08:10:35', '2023-01-14 08:10:35'),
(40, 'delete_items', 'items', '2023-01-14 08:10:35', '2023-01-14 08:10:35'),
(41, 'browse_contacts', 'contacts', '2023-01-16 00:59:30', '2023-01-16 00:59:30'),
(42, 'read_contacts', 'contacts', '2023-01-16 00:59:30', '2023-01-16 00:59:30'),
(43, 'edit_contacts', 'contacts', '2023-01-16 00:59:30', '2023-01-16 00:59:30'),
(44, 'add_contacts', 'contacts', '2023-01-16 00:59:30', '2023-01-16 00:59:30'),
(45, 'delete_contacts', 'contacts', '2023-01-16 00:59:30', '2023-01-16 00:59:30'),
(46, 'browse_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52'),
(47, 'read_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52'),
(48, 'edit_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52'),
(49, 'add_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52'),
(50, 'delete_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52');

-- --------------------------------------------------------

--
-- 資料表結構 `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `permission_role`
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
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- 資料表結構 `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '管理員', '2023-01-12 20:03:28', '2023-01-12 20:03:28'),
(2, 'user', '普通用戶', '2023-01-12 20:03:28', '2023-01-12 20:03:28');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VESfzPYpn8Yw5gl4Az0LO53vqjwD7WzEjjuBrdiu', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicDBoUjc5c2o1ZGxHV0dpR2FTZnpPdUoxUjEwZksydkxub0k3aFlJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYWRtaW4vYXJ0aWNsZXMvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1673841326);

-- --------------------------------------------------------

--
-- 資料表結構 `settings`
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
-- 傾印資料表的資料 `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', '網站標題', 'CoDitto', '', 'text', 1, 'Site'),
(2, 'site.description', '網站描述', '客製化你們的好友關係，時事話題、感情心情、吃喝玩樂、學習工作，可以聊什麼、分享什麼由你決定!', '', 'text', 2, 'Site'),
(3, 'site.logo', '網站 Logo', 'settings\\January2023\\jbx8X4GaKAiVl1yMNYcE.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', '後台背景圖像', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin 標題', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', '後台描述', '歡迎使用 Voyager - 不可錯過的 Laravel 後台管理框架', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', '後台圖標', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID （於後台控制面板使用）', NULL, '', 'text', 1, 'Admin'),
(11, 'site.fb_url', 'Facebook Link', 'https://www.facebook.com/Co.freedesign', NULL, 'text', 6, 'Site'),
(12, 'site.Tw_url', 'Twitter Link', 'https://twitter.com/', NULL, 'text', 7, 'Site'),
(13, 'site.ig_url', 'Instagram Link', 'https://www.instagram.com/', NULL, 'text', 8, 'Site'),
(14, 'site.paypal_url', 'Paypal Link', 'https://www.paypal.com/tw/home', NULL, 'text', 11, 'Site'),
(18, 'site.copyright_icon', 'Copyright icon', '<i class=\"fa-solid fa-palette\"></i>', NULL, 'code_editor', 12, 'Site'),
(19, 'site.producer', '製作人', 'Jessie', NULL, 'text', 13, 'Site'),
(20, 'site.producer_url', '製作人網頁', 'https://www.facebook.com/cc407cc.jessie', NULL, 'text', 14, 'Site'),
(21, 'site.contact_country', '公司聯絡地址-國家', '台灣', NULL, 'text', 15, 'Site'),
(22, 'site.contact_zipcode', '公司聯絡地址-郵政區號', '100', NULL, 'text', 16, 'Site'),
(24, 'site.contact_city', '公司聯絡地址-縣市', '台北市', NULL, 'text', 17, 'Site'),
(25, 'site.contact_area', '公司聯絡地址-鄉政市區', '中正區', NULL, 'text', 18, 'Site'),
(26, 'site.contact_addr', '公司聯絡地址-地址', '100台北市中正區重慶南路一段122號', NULL, 'text', 19, 'Site'),
(27, 'site.contact_phone', '公司聯絡電話', '(02)23322212', NULL, 'text', 20, 'Site'),
(28, 'site.contact_time', '公司營業時間', '星期一到五 9:00 - 17:00', NULL, 'text', 21, 'Site'),
(29, 'site.contact_email', '公司聯絡電子信箱', 'support@gmail.com', NULL, 'text', 22, 'Site');

-- --------------------------------------------------------

--
-- 資料表結構 `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tags`
--

INSERT INTO `tags` (`id`, `title`, `type`, `mode`, `link`, `sort`, `enabled`, `created_at`, `updated_at`) VALUES
(2, '熱賣商品', 'shop,def', NULL, '#', 0, 1, '2018-07-08 02:12:57', '2018-09-24 18:43:07'),
(3, '推薦商品', 'shop', NULL, '#', 0, 1, '2018-07-08 02:12:57', '2018-07-08 02:12:57'),
(7, '商城', 'qna', NULL, '#', 1, 1, '2018-07-08 02:12:57', '2018-07-11 06:44:03'),
(8, '費用', 'qna', NULL, '#', 2, 1, '2018-07-08 02:12:57', '2018-07-08 02:12:57'),
(9, '其他', 'qna,def', NULL, '#', 4, 1, '2018-07-11 06:44:24', '2018-08-13 17:55:48'),
(10, 'PHP', 'def,portfolio', NULL, '#', 0, 1, '2020-11-03 03:30:04', '2020-11-03 03:31:24'),
(11, 'Laravel', 'def,portfolio', NULL, '#', 1, 1, '2020-11-03 03:30:15', '2020-11-03 03:31:39'),
(12, 'App', 'def', NULL, '#', 2, 1, '2020-11-03 03:30:28', '2020-11-03 03:30:28'),
(13, '人工智慧', 'def,portfolio', NULL, '#', 3, 1, '2020-11-03 03:30:41', '2020-11-03 03:31:46'),
(14, '資料結構', 'def,portfolio', NULL, '#', 4, 1, '2020-11-03 03:30:55', '2020-11-03 03:32:00');

-- --------------------------------------------------------

--
-- 資料表結構 `translations`
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
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identify` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `organization` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `socialLinks` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `username`, `nickname`, `gender`, `identify`, `title`, `birthday`, `organization`, `tel`, `mobile`, `fb_id`, `first_name`, `last_name`, `pic`, `post_id`, `address`, `desc`, `enabled`, `socialLinks`, `provider`, `provider_id`) VALUES
(1, 1, 'Jessie', 'cc407cc@gmail.com', 'users/default.png', NULL, '$2y$10$rYuHth5zueRVLHx7SM3gI.1zD7M1qedsKxrjeKocJ6DYpSCfZfufm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 20:05:39', '2023-01-12 20:05:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_cgy_id_index` (`cgy_id`),
  ADD KEY `articles_author_id_index` (`author_id`);

--
-- 資料表索引 `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_article_id_index` (`article_id`),
  ADD KEY `article_tag_tag_id_index` (`tag_id`);

--
-- 資料表索引 `cgies`
--
ALTER TABLE `cgies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cgies_parent_id_index` (`parent_id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_index` (`article_id`),
  ADD KEY `comments_user_id_index` (`user_id`);

--
-- 資料表索引 `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_handler_id_index` (`handler_id`),
  ADD KEY `contacts_creator_id_index` (`creator_id`);

--
-- 資料表索引 `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- 資料表索引 `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- 資料表索引 `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_updater_id_index` (`updater_id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_cgy_id_index` (`cgy_id`),
  ADD KEY `items_vender_id_index` (`vender_id`);

--
-- 資料表索引 `item_tag`
--
ALTER TABLE `item_tag`
  ADD KEY `item_tag_item_id_index` (`item_id`),
  ADD KEY `item_tag_tag_id_index` (`tag_id`);

--
-- 資料表索引 `item_user`
--
ALTER TABLE `item_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_user_item_id_foreign` (`item_id`),
  ADD KEY `item_user_user_id_foreign` (`user_id`);

--
-- 資料表索引 `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- 資料表索引 `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_owner_id_index` (`owner_id`);

--
-- 資料表索引 `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_order_id_index` (`order_id`),
  ADD KEY `order_item_item_id_index` (`item_id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- 資料表索引 `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- 資料表索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- 資料表索引 `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_fb_id_unique` (`fb_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- 資料表索引 `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cgies`
--
ALTER TABLE `cgies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `elements`
--
ALTER TABLE `elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_user`
--
ALTER TABLE `item_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_cgy_id_foreign` FOREIGN KEY (`cgy_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `cgies`
--
ALTER TABLE `cgies`
  ADD CONSTRAINT `cgies_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_handler_id_foreign` FOREIGN KEY (`handler_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_updater_id_foreign` FOREIGN KEY (`updater_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_cgy_id_foreign` FOREIGN KEY (`cgy_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_vender_id_foreign` FOREIGN KEY (`vender_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `item_tag`
--
ALTER TABLE `item_tag`
  ADD CONSTRAINT `item_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `item_user`
--
ALTER TABLE `item_user`
  ADD CONSTRAINT `item_user_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- 資料表的限制式 `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
