-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-16 06:11:56
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
-- 資料庫: `laravelfive`
--

--
-- 資料表結構 `elements` 若已生成可把這段拿掉
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

INSERT INTO `elements` (`updater_id`, `page`, `mode`, `title`, `position`, `icon`, `subtitle`, `content`, `url`, `url_txt`, `pic`, `video`, `alt`, `title_pos`, `title_color`, `q_mode`, `i_mode`, `sort`, `enabled`, `isShowTitle`, `created_at`, `updated_at`) VALUES
(NULL, 'about', 'image', '好好學協會', 'infos', NULL, '初衷', '好好學協會創立於民國一百一十二年一月十一日，為一個小型的四人團隊。創立初期，好好學協會秉持「生於臺灣，深根臺灣」的期望與「知識無疆，學海無涯」的省思，建立了 Apprentice 平台。應運時代更迭科技日新月異，平台旨在變化的洪流中作為人們身旁的媒介，將知識的燈盞不斷傳遞下去。僅願所有自見盲區的人，都能在這裡找到合適的引路燈。', NULL, NULL, 'elements/wy/Header Size Bulb 3 Tiny PNG.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2023-01-15 07:07:00', '2023-01-16 04:51:29'),
(NULL, 'contact', 'text', '聯絡我們', 'infos', NULL, NULL, NULL, NULL, NULL, 'elements/wy/445-800x150.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2023-01-15 07:56:00', '2023-01-16 04:50:53');
COMMIT;

-- --------------------------------------------------------

--
-- 傾印資料表的資料 `data_rows` 吃老師的網頁元素 (elements) 集 voyager 設定
--

INSERT INTO `data_rows` (`data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'updater_id', 'hidden', 'Updater Id', 0, 0, 0, 0, 0, 0, '{}', 2),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'page', 'text', '頁面', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"page_id\"}}', 6),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'mode', 'select_dropdown', '模式', 1, 1, 1, 1, 1, 1, '{\"default\":\"text\",\"options\":{\"text\":\"\\u7d14\\u6587\\u5b57\",\"image\":\"\\u5716\\u6587\",\"video\":\"\\u5f71\\u7247\"}}', 3),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"description\":\"\\u6a19\\u984c\\u5167\\u5bb9\\u8acb\\u63a7\\u5236\\u572840\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"required|max:40\"}}', 4),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'position', 'text', '位置', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"position_id\"}}', 7),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'icon', 'text', '圖示', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"icon_id\"}}', 9),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'subtitle', 'text', '副標題', 0, 0, 1, 1, 1, 1, '{\"description\":\"\\u526f\\u6a19\\u984c\\u5167\\u5bb9\\u8acb\\u63a7\\u5236\\u572880\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:80\"}}', 5),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'content', 'text_area', '內容', 0, 0, 1, 1, 1, 1, '{}', 10),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'url', 'text', '網址', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 11),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'url_txt', 'text', '網址文字', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 12),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"show_as_images\":true}', 13),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'video', 'text', '影片連結', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 14),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'alt', 'text', '替代文字', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 15),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'title_pos', 'hidden', 'Title Pos', 0, 0, 0, 0, 0, 0, '{}', 16),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'title_color', 'hidden', 'Title Color', 0, 0, 0, 0, 0, 0, '{}', 17),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'q_mode', 'hidden', 'Q Mode', 0, 0, 0, 0, 0, 0, '{}', 18),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'i_mode', 'hidden', 'I Mode', 0, 0, 0, 0, 0, 0, '{}', 19),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"min\":0,\"display\":{\"width\":\"4\",\"id\":\"sort_id\"}}', 8),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true}', 20),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'isShowTitle', 'checkbox', '是否顯示標題', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true}', 21),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'created_at', 'timestamp', '創建於', 0, 0, 1, 1, 0, 1, '{}', 22),
( (SELECT `id` FROM `data_types` WHERE `data_types`.`name` = 'elements' ), 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 23);

--
-- 傾印資料表的資料 `settings`
--

INSERT INTO `settings` (`key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
('association.phone', '協會電話', '00-000-0000', NULL, 'text', 7, 'Association'),
('association.location', '協會地址', 'xx市xx區xx路x段xxx號', NULL, 'text', 8, 'Association'),
('association.email', '協會信箱', 'niceguy@very.nice', NULL, 'text', 9, 'Association');