-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-31 07:57:03
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

--
-- 傾印資料表的資料 `articles`
--

INSERT INTO `articles` (`id`, `cgy_id`, `title`, `author_id`, `content_small`, `content`, `attachment_names`, `attachment_paths`, `sort`, `status`, `featured`, `meta_description`, `meta_keywords`, `seo_title`, `slug`, `pic`, `created_at`, `updated_at`) VALUES
(11, 29, '「寵物飼料推薦」ZIWI巔峰｜最頂級的狗飼料', 1, '狗狗真的太挑食了\r\n很常聽到周圍朋友說他們家狗狗或貓咪挑食', '<p>狗狗真的太挑食了</p>\r\n<p>很常聽到周圍朋友說他們家狗狗或貓咪挑食</p>\r\n<p>我想說我家的小時候真的是甚麼都很愛吃 結果現在一歲多而已 我依然也面臨到了挑食的狀況</p>\r\n<p>而且挑食到寧願餓到吐胃酸 吐了三次還是依然不吃</p>\r\n<p>真的是每天要餵他吃口飯 都還要拜託他?????? 挑食到就算幫他加入了鮮食 他依然愛吃不吃的</p>\r\n<p>想說 不然換個飼料看看 決定直接就讓他的狗生走上巔峰XD</p>\r\n<p>直接就換最頂級的<strong>&nbsp;ZIWI巔峰</strong>&nbsp;無穀飼料&nbsp;狗狗飼料給他吃</p>\r\n<p>這可是直接風乾生食肉片的高級食材&nbsp;巔峰飼料 無穀飼料真的大推</p>\r\n<p>果真 一吃成主顧 ??? 餐餐在那等著吃飯 !!!</p>\r\n<p><strong><u>狗飼料 推薦</u></strong></p>\r\n<p><img title=\"270126865_306214168084962_7423592673158380459_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641142050-1272662292-g_n.jpg\" alt=\"270126865_306214168084962_7423592673158380459_n.jpg\" width=\"450\" height=\"600\" loading=\"lazy\"></p>\r\n<p>這次幫小狗子選的是&nbsp;<strong>經典系列 羊肚羊肉</strong>&nbsp;+&nbsp;<strong>超能系列&nbsp;奧塔哥山谷牛鹿</strong>&nbsp;(裡面有附上一個小杯子 方便我們撈取飼料 不會碰到手潮濕造成飼料變質)</p>\r\n<p>打開真的是一個滿滿的肉乾味 讓我都想說這孩子吃的也比我好太多了吧XD</p>\r\n<p>而且使用的都是<strong>原隻動物</strong></p>\r\n<p>原隻動物的意思就是為完整原始的整隻動物 而非僅使用部分部位的肉 讓他們吃起來直接回歸原始的健康食性 透過攝取天然的食物來獲得日常所需的各種營養素</p>\r\n<p>天然 無穀 且無甘油 也無人工添加物</p>\r\n<p>吃起來狗狗們更兼康 主人也更加的安心</p>\r\n<p><img title=\"270105124_1275580826296565_7167085564346377360_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641145651-2839926469-g_n.jpg\" alt=\"270105124_1275580826296565_7167085564346377360_n.jpg\" loading=\"lazy\"></p>\r\n<div class=\"article-inread-ad mib-ad-box\" data-adindex=\"1\"><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"3542\" data-merge-position=\"3342\" data-sibling-position=\"4386\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad3342\"></div>\r\n<div id=\"scupio-pixnet_4108_18154_18818_content\"><iframe id=\"scupio-pixnet_4108_18154_18818_content_frame_registed\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\r\n</ins><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"4386\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad4386\"></div>\r\n<ins class=\"scupioadslot pixnet-ad\" data-sca-pub=\"lRsFDg07UQ==\" data-sca-web=\"4108\" data-sca-category=\"6\" data-sca-cid=\"19492\" data-sca-slot-type=\"STA\" data-sca-status=\"done\"><iframe id=\"sc-1673845943586-86792215563_frame_340fd8a4-0d6d-4ac2-b812-fd7dc99cd00c\" title=\"scupio_iframe\" src=\"https://img.scupio.com/html/ad.html?v=1.0.65\" name=\"scupioadframe\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\"></iframe></ins></ins></div>\r\n<p>&nbsp;</p>\r\n<p>(&nbsp;<strong>經典系列 羊肚羊肉</strong>&nbsp;)這款則屬於單一肉類使得狗貓能有更好的低敏食物選擇 單一更純粹也更可以避免犬貓食用到其容易過敏的食材</p>\r\n<p>狗狗系列的口味還有<strong>&nbsp;放牧雞 / 牛肉 / 羊肉 / 鯖魚羊肉 / 鹿肉</strong>&nbsp;這幾種可以選擇</p>\r\n<p><img title=\"270178664_295045509328580_5399348665059513000_n (2).jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641145673-1290124335-g_n.jpg\" alt=\"270178664_295045509328580_5399348665059513000_n (2).jpg\" loading=\"lazy\"></p>\r\n<p>超能系列則是與經典系列有著四大相異之處</p>\r\n<p>(&nbsp;<strong>超能系列&nbsp;奧塔哥山谷牛鹿</strong>&nbsp;)這款他<strong>超越兩種以上的優質蛋白質</strong>來源(5種：肉+魚) +<strong>&nbsp;100%紐西蘭特選地區的頂級肉品</strong>&nbsp;+&nbsp;<strong>超級食物注入</strong>&nbsp;+以及這是<strong>專為寵物設計的高能量營養配方</strong></p>\r\n<p>奧塔哥翻譯來自原文Otago 這個地形在紐西蘭南島 地勢高且高低起伏大 而且位處高海拔 氣候涼爽沒有受到空氣污染</p>\r\n<p>所以保有著茂密的原生草與非常清淨水源</p>\r\n<p>在這裡飼養出來的草飼牛、鹿 每天聽著大自然的音樂聲(就像日本的和牛會聽音樂一樣) 心情根本超級放鬆</p>\r\n<p>肉質吃起來當然會特別的鮮甜 而且也因為山谷的陡坡落差大 所以牛、鹿有著更大的活動肌力空間 讓肉質則更有彈性且好吃 也為當地最有名 最高級的食材</p>\r\n<p>含鐵量更比經典系列的牛鹿口味高33% 更<strong>適合老年/體弱/過瘦/比較缺乏血紅素</strong>可以運輸養分的犬貓</p>\r\n<p>還有著<strong>&nbsp;赫拉奇平原白肉 /&nbsp;東海角日出雙羊&nbsp;</strong>口味</p>\r\n<p>毛孩真的也太幸福了吧!!!!!!!!</p>\r\n<p><img title=\"270190141_965281890862778_7353854008841820854_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641143819-2451465042-g_n.jpg\" alt=\"270190141_965281890862778_7353854008841820854_n.jpg\" loading=\"lazy\">&nbsp;<img title=\"270122068_2979583595688479_1716000723128325540_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641144222-1582675247-g_n.jpg\" alt=\"270122068_2979583595688479_1716000723128325540_n.jpg\" loading=\"lazy\"></p>\r\n<div class=\"article-inread-ad mib-ad-box\" data-adindex=\"2\"><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"4033\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad4033d\"><ins class=\"adsbygoogle\" data-ad-client=\"ca-pub-6865528665029394\" data-ad-slot=\"desktop_article_center2\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\">\r\n<div id=\"aswift_2_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_2\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-6865528665029394&amp;output=html&amp;h=280&amp;slotname=desktop_article_center2&amp;adk=3687253998&amp;adf=3889562482&amp;pi=t.ma~as.desktop_article_cen_&amp;w=336&amp;lmt=1673845970&amp;format=336x280&amp;url=https%3A%2F%2Fjessiebob1930.pixnet.net%2Fblog%2Fpost%2F220673715&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673845943119&amp;bpp=2&amp;bdt=1787&amp;idt=326&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=300x250%2C336x280&amp;nras=1&amp;correlator=2510758362366&amp;frm=20&amp;pv=1&amp;ga_vid=1524087634.1673845882&amp;ga_sid=1673845943&amp;ga_hid=1076811745&amp;ga_fc=1&amp;ga_cid=339004216.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=171&amp;ady=5325&amp;biw=1519&amp;bih=666&amp;scr_x=0&amp;scr_y=2715&amp;eid=44759875%2C44759926%2C44759842%2C44777876%2C44774606%2C44779793&amp;oid=2&amp;psts=ACgb8tuZ9wn6sz4r9zI_1dCLp7u880pV60BhzeqSc9zGgAtgP1SlYit4eA3cB99vJzAfdEY0cTt6a9aBNvlh9A%2CACgb8tvrvrLqcxOuX5JwpQfv7DKu03bdGcAqJW0ns3GyopqYVqDHIUfwKxROxhFWRanG_Az_2bgm1KH-YkrL_Os%2CACgb8ttkydmMdGqSwrjE8n8g8iFFwRjxWaZn1FJjGelXXApubRm2w0vJLQaUImVwl_FAwzXpRqoUn-lBpAxU_Ag&amp;pvsid=3473649948149013&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C666&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=3&amp;fsb=1&amp;xpc=2Z3zinTf1x&amp;p=https%3A//jessiebob1930.pixnet.net&amp;dtd=27522\" name=\"aswift_2\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!3\" data-google-query-id=\"CPzFwZOqy_wCFYa0vAodM9cAIg\" data-load-complete=\"true\"></iframe></div>\r\n</ins></div>\r\n</ins><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"4390\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad4390d\"><ins class=\"adsbygoogle\" data-ad-client=\"ca-pub-6865528665029394\" data-ad-slot=\"desktop_article_center2-2\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\">\r\n<div id=\"aswift_3_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_3\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-6865528665029394&amp;output=html&amp;h=280&amp;slotname=desktop_article_center2-2&amp;adk=3247889475&amp;adf=2104258816&amp;pi=t.ma~as.desktop_article_cen_&amp;w=336&amp;lmt=1673845970&amp;format=336x280&amp;url=https%3A%2F%2Fjessiebob1930.pixnet.net%2Fblog%2Fpost%2F220673715&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673845943124&amp;bpp=3&amp;bdt=1791&amp;idt=414&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=300x250&amp;nras=1&amp;correlator=2510758362366&amp;frm=20&amp;pv=1&amp;ga_vid=1524087634.1673845882&amp;ga_sid=1673845943&amp;ga_hid=1076811745&amp;ga_fc=1&amp;ga_cid=339004216.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=512&amp;ady=5325&amp;biw=1519&amp;bih=666&amp;scr_x=0&amp;scr_y=2715&amp;eid=44759875%2C44759926%2C44759842%2C44777876%2C44774606%2C44779793&amp;oid=2&amp;psts=ACgb8tuZ9wn6sz4r9zI_1dCLp7u880pV60BhzeqSc9zGgAtgP1SlYit4eA3cB99vJzAfdEY0cTt6a9aBNvlh9A%2CACgb8tvrvrLqcxOuX5JwpQfv7DKu03bdGcAqJW0ns3GyopqYVqDHIUfwKxROxhFWRanG_Az_2bgm1KH-YkrL_Os%2CACgb8ttkydmMdGqSwrjE8n8g8iFFwRjxWaZn1FJjGelXXApubRm2w0vJLQaUImVwl_FAwzXpRqoUn-lBpAxU_Ag&amp;pvsid=3473649948149013&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C666&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=2&amp;fsb=1&amp;xpc=AStErBxGRo&amp;p=https%3A//jessiebob1930.pixnet.net&amp;dtd=27503\" name=\"aswift_3\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!4\" data-google-query-id=\"CKzVwZOqy_wCFSUDXAodhCAPMw\" data-load-complete=\"true\"></iframe></div>\r\n</ins></div>\r\n</ins></div>\r\n<p>&nbsp;</p>\r\n<p>飼料的大小也適中</p>\r\n<p>雖說只是臘腸 不過太小顆依然很容易有噎到嗆到的狀況發生</p>\r\n<p>ZIWI巔峰飼料為正方形的 且大小剛剛好 讓他在吃的時候 也可以多咀嚼一下 適口性更加外 對消化道也會更加健康</p>\r\n<p>使用30~40度溫和的風將食材風乾 使用低溫不僅不會破壞食材營養 而且經數小時風乾後達到最穩定的水活性控制 讓產品品質穩定 可常溫存放</p>\r\n<p>而且肉片最適合牙齒撕、咬、啃 所以在吃飯的同時 牙齒與牙齦也會更健康</p>\r\n<p><img title=\"270126850_454400322758262_3784975756796236785_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641144049-1274611666-g_n.jpg\" alt=\"270126850_454400322758262_3784975756796236785_n.jpg\" loading=\"lazy\">&nbsp;<img title=\"270107558_2774721422821086_1157860652502531796_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641144459-273915403-g_n.jpg\" alt=\"270107558_2774721422821086_1157860652502531796_n.jpg\" loading=\"lazy\"></p>\r\n<p>不過肉含量高的飼料市面上真的也是蠻多種的</p>\r\n<p>&nbsp;但是我就決定直接幫他選擇&nbsp;<strong>寵物食品界中的王者&nbsp;巔峰全產品高達96%以上的含肉量</strong></p>\r\n<p>全部都是使用高品質的食材&nbsp;【產地】<strong>皆為100%紐西蘭食材來源</strong></p>\r\n<p>與最高規格的製程 堅持在紐西蘭生產 製造 包裝皆在紐西蘭完成 這樣也可以大大降低瑕疵品跟變質等等風險</p>\r\n<p>新鮮度當然也不用多說 絕對是最優質的<strong>人可食用品質</strong>&nbsp;及<strong>天然草飼放牧肉品</strong></p>\r\n<p><img title=\"270170120_3070549136548108_6399451668219565356_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641145038-1196261212-g_n.jpg\" alt=\"270170120_3070549136548108_6399451668219565356_n.jpg\" loading=\"lazy\"></p>\r\n<p>真的第一次看他吃飯吃這麼快的</p>\r\n<p>快到我拍起來都是模糊的!!! 就知道王者等級果真是最厲害的!!!</p>\r\n<p><img title=\"270095518_1230755570667176_6774742580916695913_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641144794-1023542879-g_n.jpg\" alt=\"270095518_1230755570667176_6774742580916695913_n.jpg\" loading=\"lazy\"></p>\r\n<p><strong>【安全認證】更是符合世界各國安全標準</strong></p>\r\n<p>巔峰全產品皆完全符合美國AAFCO，紐西蘭NZFSA、FDA、歐盟、日本等國的營養標準</p>\r\n<p>所有產品皆送往獨立實驗室檢驗 且每一批次皆留存樣本供日後追蹤問題使用 確保安心且新鮮送達世界各地</p>\r\n<p>所以毛孩的爸媽絕對可以放100顆心&nbsp; 讓你家毛孩寶貝們直接食用這款<strong>最頂級的寵物食品</strong></p>\r\n<p><img title=\"270208986_498125524949778_2583611223559196761_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641145119-1397469598-g_n.jpg\" alt=\"270208986_498125524949778_2583611223559196761_n.jpg\" loading=\"lazy\"></p>\r\n<p>巔峰比乾飼料的含水量高出1倍</p>\r\n<p>一般顆粒乾飼料為7% 巔峰則是14% 如果是家中毛孩不愛喝水的 更能夠幫助毛孩補充到水分</p>\r\n<p>ZIWI不僅營養含量高 適口性佳 且香味的部分也都是全方位遠勝一般飼料</p>\r\n<p>就算把他當成零食獎勵 他們都會愛不釋手</p>\r\n<p>這真的是完完全全一次性就直接幫我解決了困擾我很久的挑食問題</p>\r\n<p>而且他的毛色也更加的柔 更漂亮了</p>\r\n<p><img title=\"\" src=\"https://s.pixfs.net/f.pixnet.net/images/emotions/heart.gif\" alt=\"\" width=\"19\" height=\"19\" loading=\"lazy\"></p>\r\n<p><img title=\"270126858_887834325227214_1190967744815551695_n.jpg\" src=\"https://pic.pimg.tw/jessiebob1930/1641146729-347324533-g_n.jpg\" alt=\"270126858_887834325227214_1190967744815551695_n.jpg\" loading=\"lazy\"></p>\r\n<p>最後提醒大家一下 因為肉含量較高的關係</p>\r\n<p>所以所提供的也是一般顆粒的3倍熱量 相對比在罐頭及顆粒乾飼料上可以少2/3</p>\r\n<p>如果你家毛孩一天正常吃三杯的話 可以減少至一杯或一杯半</p>\r\n<p>他就既可以吃飽 也可以獲得身體所需營養及熱量的補充了哦</p>', NULL, NULL, 1, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1641140918-4187029521-g_n-fit-500.jpg\"]', '2023-01-16 05:14:00', '2023-01-16 05:35:02'),
(12, 23, '依綺品飯店~煙波大飯店宜蘭館', 1, '在孩子升上國、高中之後，出遊過夜的機會變得很少，趕在6月底暑假和國旅補助湧出人潮之前，從煙波官網訂了宜蘭煙波大飯店的住宿，在孩子結業式結束、和同學玩夠之後出發！', '<p>在孩子升上國、高中之後，出遊過夜的機會變得很少，趕在6月底暑假和國旅補助湧出人潮之前，從煙波官網訂了宜蘭煙波大飯店的住宿，在孩子結業式結束、和同學玩夠之後出發！<br><br>宜蘭煙波大飯店的特點就2個：<br>1、睡飽吃飽：從官網可以選擇6點後入住，豐盛美味的早餐可以吃到下午1點半，然後2點前退房就好，不必趕著早起吃早餐，睡到飽再去吃飽，完全符合我和女兒們的慵懶放空風格，自在悠哉。<br><br>2、網美拍照空間：宜蘭煙波離市中心有一段距離，照說應該有個游泳池健身房之類的度假設施，拍謝，都妹有，讓你不必為了住夠本而排滿使用設施的行程（沒有那種「不用可惜」的遺憾），但它有一些很美的網美拍照空間，可以讓女孩兒們拍得過癮，留下到此一遊的美照。</p>\r\n<p><img title=\"312537462_6175395379156366_2777812072551371619_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120258-1089838490-g_n.jpg\" alt=\"312537462_6175395379156366_2777812072551371619_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312797539_6175395889156315_374996686436396526_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120258-3664505740-g_n.jpg\" alt=\"312797539_6175395889156315_374996686436396526_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312921307_6175396165822954_8529191147573224231_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120261-1793131473-g_n.jpg\" alt=\"312921307_6175396165822954_8529191147573224231_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"313340364_6175395775822993_8499180043409279179_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120262-1394699760-g_n.jpg\" alt=\"313340364_6175395775822993_8499180043409279179_n.jpg\" loading=\"lazy\"></p>\r\n<p><br>我們的房型是豪華家庭房，房間很大，床也很大，床和枕頭偏軟；房內沒有浴缸，浴室和廁所是分開的，洗手台在浴廁外，人多很方便，不會浪費時間等待。浴室的沐浴乳和洗髮精是瓶裝固定式的。沒有瓶裝礦泉水，有透明水瓶，每個樓層都有飲水機，就自個兒拿水瓶去裝水，很環保。</p>\r\n<p><img title=\"312309180_6175394142489823_5010451868233617200_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120258-2128854946-g_n.jpg\" alt=\"312309180_6175394142489823_5010451868233617200_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312399826_6175396089156295_3912218505637264955_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120258-3368961713-g_n.jpg\" alt=\"312399826_6175396089156295_3912218505637264955_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312967564_6175395649156339_7622650566738579263_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120261-2417751146-g_n.jpg\" alt=\"312967564_6175395649156339_7622650566738579263_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"313369014_6175395302489707_669184728357938226_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120262-630062001-g_n.jpg\" alt=\"313369014_6175395302489707_669184728357938226_n.jpg\" loading=\"lazy\"></p>\r\n<p><br>晚上8～10點在1樓有暗黑派對，憑住宿C/I時給的券入場，可以換派派專屬小點一份，是宜蘭滷味鴨爪之類的，我不敢吃爪類，滷豆皮味道一般般，派對很無趣，大家都外帶小點回房去了。</p>\r\n<div>\r\n<div class=\"trv-player-container\">\r\n<div class=\"trv-wrapper\">\r\n<div id=\"br_video_player_0d2d0\" class=\"trvd_video_player\">\r\n<div class=\"media-player\">\r\n<div class=\"trv-video\">&nbsp;</div>\r\n<div class=\"trv-overlay\">&nbsp;</div>\r\n<div class=\"trv-media-controls\">\r\n<div class=\"trv-progress-bar\">\r\n<div class=\"trv-progress-padding\">&nbsp;</div>\r\n<div class=\"trv-buffered\">&nbsp;</div>\r\n<div class=\"trv-play-progress\">&nbsp;</div>\r\n<div class=\"trv-hover-progress\">&nbsp;</div>\r\n<div class=\"button-holder\">\r\n<div class=\"trv-progressBtn\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<button class=\"togglePlayPause brpBtn sprite-background\" title=\"Pause\" type=\"button\">Play</button><button class=\"volume brpBtn sprite-background\" title=\"volume\" type=\"button\">volume</button><span class=\"trv-currentTime\">00:13</span><span class=\"timeDivider\">/</span><span class=\"trv-duration\">05:46</span><span class=\"videoTitle\" title=\"【#部落客新聞台】吃貨不可以少的「日韓零食」！如同感情般不要勉強的蕃薯巧克力？甜鹹介紹應有盡有！feat.貝兒貪食怪\">【#部落客新聞台】吃貨不可以少的「日韓零食」！如同感情般不要勉強的蕃薯巧克力？甜鹹介紹應有盡有！feat.貝兒貪食怪</span><button class=\"BR brpBtn sprite-background\" title=\"Truvid.com\" type=\"button\">Truvid</button><button class=\"fullScreen brpBtn sprite-background\" title=\"Full Screen\" type=\"button\">fullScreen</button></div>\r\n<div class=\"video-overlay\">\r\n<div class=\"overlayBtnWrapper\">\r\n<div class=\"overlay-backwards-wrapper\">&nbsp;</div>\r\n<div class=\"overlay-play-wrapper\">&nbsp;</div>\r\n<div class=\"overlay-forward-wrapper\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><img title=\"312059995_6175394885823082_6450993150994189535_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120255-3612565637-g_n.jpg\" alt=\"312059995_6175394885823082_6450993150994189535_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312853033_6175395145823056_1993518038709484727_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120259-3774115862-g_n.jpg\" alt=\"312853033_6175395145823056_1993518038709484727_n.jpg\" loading=\"lazy\"></p>\r\n<p>早午餐很豐盛，有現沖牛肉湯、蒜味肉羹湯、三星蔥鮮肉湯包、宜蘭鴨賞⋯誠意滿滿，讓我們飽到必須去樓上走走消化一下，頂樓可以遠眺周遭景緻，雖然沒有田園風光，但仍有心曠神怡之感（風很大），還可以看到火車（是有多愛火車？！看不膩泥～）。</p>\r\n<p><img title=\"312078978_6175394192489818_3517632852865780378_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120255-2330087821-g_n.jpg\" alt=\"312078978_6175394192489818_3517632852865780378_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"312188917_6175395719156332_3349799574714588016_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120255-1592724370-g_n.jpg\" alt=\"312188917_6175395719156332_3349799574714588016_n.jpg\" loading=\"lazy\"></p>\r\n<p><img title=\"313353665_6175395589156345_489551391500009563_n.jpg\" src=\"https://pic.pimg.tw/iris641201/1667120262-1477652215-g_n.jpg\" alt=\"313353665_6175395589156345_489551391500009563_n.jpg\" loading=\"lazy\"></p>\r\n<p>因為在我們抵達之前飯店人員就已來電表示地下停車場已滿，讓我們停在大門外，所以不知道停車場的狀況，傳說的迎賓點心也沒吃到，但可能因為我們是旺季來臨前入住，雖然電梯也等蠻久的（太小、太少、一直滿載），但整體而言是符合我們所付價格（4,050元）的C/P值，如果像網路評價上，有些人付出的是我的雙倍，而又遇到客人滿載，自然是會有不滿的，但設施方面（如：沒浴缸、洗手台在外面、沒休閒設施⋯之類的）應該是事先做過功課才訂房，而不是入住之後才抱怨。</p>', NULL, NULL, 2, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1667120261-2417751146-g_n-fit-500.jpg\"]', '2023-01-16 05:17:00', '2023-01-16 05:36:46'),
(13, 28, 'Onkyo TX-8260 數位立體聲網路串流擴大機開箱！', 1, '數位娛樂浪潮已經猶如海嘯淹沒許多人的生活，影音串流影片取代了 DVD 與藍光，線上音樂平台甚至讓 CD 以及唱片行幾乎絕跡。', '<p><a href=\"https://ifans.pixnet.net/album/photo/261653412\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (31).png\" src=\"https://pic.pimg.tw/ifans/1653414531-2685296729-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (31).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>數位娛樂浪潮已經猶如海嘯淹沒許多人的生活，影音串流影片取代了 DVD 與藍光，線上音樂平台甚至讓 CD 以及唱片行幾乎絕跡，現在許多人想在家看影片、聽音樂，轉頭看看家裡客廳那些早期買的音響設備，還真很難把手機音樂或智慧電視的訊號送進去感受往日的磅礡以及多聲道！這篇，小旭要開箱一款已經推出好一段時間，並且受到許多玩家喜愛的日系大廠「Onkyo&nbsp;TX-8260 數位立體聲網路串流擴大機」，它能讓你輕鬆將行動裝置與家庭劇院的聲音訊號，透過 Chromecast、AirPlay、Bluetooth、Wi-Fi 等無線方式或各種有線連結方式串入，也可以插入 USB 隨身碟或行動硬碟，輕鬆享受各種多元聲音來源與數位化無損音質完全不再是夢想！</p>\r\n<p>以往要購買 Onkyo&nbsp;TX-8260 這組數位立體聲網路串流擴大機，玩家必須找一些管道引進或請人海外代購，不管是購買還是保固都有點困難，現在台灣已經有代理商正式引進，購買時就可以多多注意是否為正規代理貨，以獲得完善的後續服務與完善保固，Onkyo 擴大機甚至保固兩年呢！^^</p>\r\n<p><strong>進口代理：<a href=\"https://www.huanyudigital.com.tw/\" target=\"_blank\" rel=\"noopener\">釪環數位音響有限公司</a></strong><br><strong>聯絡電話：04-23301990</strong></p>\r\n<p>訂購都可洽<a href=\"https://www.huanyudigital.com.tw/location\" target=\"_blank\" rel=\"noopener\">全台各地釪環數位特約經銷商</a></p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645044\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (2).png\" src=\"https://pic.pimg.tw/ifans/1653331946-3241529662-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (2).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>「Onkyo&nbsp;TX-8260 數位立體聲網路串流擴大機」(以下簡稱 Onkyo&nbsp;TX-8260)&nbsp;具備 Onkyo&nbsp;知名的「Optimum Gain Volume Circuitry」技術，並結合衰減器與可變增益的小信號放大電路進行音量控制，同時可帶來更低雜訊與更低的訊噪！而一開始提到內建 Google 家的 Chromecast 以及蘋果家 AirPlay 無線投放功能，還有標準 Bluetooth、Wi-Fi 與 FlareConnect、DTS Play-Fi 等無線連結功能，更是 Onkyo&nbsp;TX-8260 最大特點！</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (33).png\" src=\"https://pic.pimg.tw/ifans/1653414531-3031497380-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (33).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>在連結 Wi-Fi 無線網路後更可串接 Spotify、TIDAL，潘多拉、TuneIn 和 Deezer 等世界各地線上音樂串流媒體服務平台，不僅如此它還內建 FM/AM 收音機功能，支援 DTS Play-Fi 多室音樂播放、同網 NAS 或電腦資料夾的音樂檔案播放，最高 DSD64 (2.8MHz)/DSD128 (5.6 MHz)&nbsp; 和 192kHz/24bit PCM 等 FLAC、WAV、WMA、ALAC、DSD、AIFF、MP3 以及 AAC 等音樂格式，規格之豐富絕對不是只有「擴大機數位化」這麼簡單而已！</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (9).png\" src=\"https://pic.pimg.tw/ifans/1653331949-2705307421-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (9).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>也因此，屬於「音響麻瓜」一員的我，對於可以將各種串流平台音樂傳送到擴大機上播放，進而使用外擴的喇叭播放數位音樂，這真的太燒了！來吧～開箱 ^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645128\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (1).png\" src=\"https://pic.pimg.tw/ifans/1653331953-643178728-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (1).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>Onkyo&nbsp;TX-8260 機身前方有功能面板以及多組按鍵，看似很多且複雜，但其實操作相當簡單，黑灰色機身更是感覺相當有質感！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645052\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (7).png\" src=\"https://pic.pimg.tw/ifans/1653331946-3442155666-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (7).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>小旭個人超愛這種帶點金屬切割質感按鈕，搭配著猶如傳統擴大機的觸感與回饋度，光是在主機視覺上就完全加分！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645036\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (3).png\" src=\"https://pic.pimg.tw/ifans/1653331946-4012441043-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (3).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>前方面板左邊分別有電源鍵、鍍金 1/4 英寸 (6.35mm) 麥克風插孔、三段調光鈕、A/B 組喇叭雙聲到或四聲道的切換等按鈕！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653460\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (45).gif\" src=\"https://pic.pimg.tw/ifans/1653414541-1629602596-g.gif\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (45).gif\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>中間上方為一面功能顯示面板，可顯示當下連線模式、網路連線狀態以及操作資訊、設定資訊、功能狀態、曲目資訊 (限英文) 等等！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645056\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (8).png\" src=\"https://pic.pimg.tw/ifans/1653331948-1720703239-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (8).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>中間下方則可切換聲音輸入來源以及低音/高音/平衡控制等音效調整旋鈕！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653388\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (34).png\" src=\"https://pic.pimg.tw/ifans/1653414531-3076691200-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (34).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>面板右手邊則有一個四向選擇鍵，可在操作面板上快速選取並切換自己想要的功能選單；至於旁邊則是剛剛前面看到的大型音量旋鈕！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645040\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (5).png\" src=\"https://pic.pimg.tw/ifans/1653331946-2350596398-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (5).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>此外，右下方還有四組 BGM 以及前置 USB 連接埠 (5V/0.5A)，方便使用者連接 USB 隨身碟或外接硬碟，進而播放外接裝置內的音樂格式檔案！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645108\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (21).png\" src=\"https://pic.pimg.tw/ifans/1653331952-3292788267-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (21).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>當然，除了透過前方面板實體操作按鍵之外，Onkyo&nbsp;TX-8260 包裝內有標配一支功能相當豐富的 IR 紅外線遙控器！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645116\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (22).png\" src=\"https://pic.pimg.tw/ifans/1653331952-3062393384-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (22).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>這麼多按鈕會不會很難啊？其實不用怕啦！因為遙控器等於是把各種功能全部化身為按鈕，讓使用者可以快速切換各種不同設備來源，並且立即進行音樂播放、快轉、設定等操作！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645064\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (13).png\" src=\"https://pic.pimg.tw/ifans/1653331949-3978091988-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (13).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>機身背面，齁齁~可豐富了！密密麻麻一堆端子，幾乎可以說是要什麼有什麼，多組輸入可以讓你盡情連結各種已經入手的影音設備、電腦、遊戲機音源等等！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645076\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (11).png\" src=\"https://pic.pimg.tw/ifans/1653331949-4007962260-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (11).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>輸入部分，COAXIAL 同軸數位與 Toslink 光纖都各有兩組，二聲道類比 RCA 則有七個、FM/AM 天線孔各一組&nbsp;(接收天線於盒內配件中提供)，背後也還有一組 USB 連接埠 (5V/1A)，另外還有 RJ-45 網路端子、IR (Infra-red) 端子，甚至 MM 唱機輸入通通都有；輸出部分則有 Line Out、 Zone2 與超低音信號、耳機輸出等各一個，喇叭輸出兩個，夠豐富吧！^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645092\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (16).png\" src=\"https://pic.pimg.tw/ifans/1653331950-163286943-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (16).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>連 PHONO、CD、TV、GAME、PC、BD/DVD 等對應端子都幫你分門別類，因此透過遙控置按壓指定設備時就能快速切換對應的音源，完全省去記憶哪一個 LINE IN 接什麼設備的困擾！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645080\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (14).png\" src=\"https://pic.pimg.tw/ifans/1653331950-912695182-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (14).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>喇叭部分可連結 A/B 兩組，因此最多可連結四顆喇叭進行切換，達到兩聲道立體聲或四聲道環繞的效果，讓使用者依據聆聽內容以及情境來做不同搭配使用，例如聽人聲的喇叭、追劇的喇叭或聽古典的喇叭、聽搖滾的喇叭，四聲道一起狂奔等等！</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (15).png\" src=\"https://pic.pimg.tw/ifans/1653331950-1069555183-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (15).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>要再接其他 PREOUT 後級擴大機也行，整體連接功能相當相當完整！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645072\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (10).png\" src=\"https://pic.pimg.tw/ifans/1653331949-2420115551-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (10).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>至於機身後面的兩根天線寶寶，則是 Wi-Fi 無線網路天線，以利設備放在壁櫃內或音響櫃內時，可擁有穩定的連線品質來收聽網路串流平台音樂！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261645104\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (20).png\" src=\"https://pic.pimg.tw/ifans/1653331951-3707627203-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (20).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>Onkyo&nbsp;TX-8260 具備 160W/通道大電流放大系統，包含前面提到的豐富完整連接埠，只要搭配一組適當得宜的雙聲道喇叭，就能輕鬆在家裡聽聽音樂、看看電影，好好享受一個悠閒的午後或假日電影院啊！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653408\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (35).png\" src=\"https://pic.pimg.tw/ifans/1653414534-499983552-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (35).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>那麼，接著就來實際安裝，並看看一些常用的連結功能與應用吧！^^</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (36).png\" src=\"https://pic.pimg.tw/ifans/1653414534-2175347925-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (36).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>小旭搭配的喇叭是 KLIPSCH RP-600m 這款得獎作品，與 Onkyo&nbsp;TX-8260 連結之後，使用&nbsp;AirPlay 將 iPhone 上的 KKBOX 無損音質 Hi-Fi 真實原音播放出來，整體感受真的是超級過癮！</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (37).png\" src=\"https://pic.pimg.tw/ifans/1653414534-1018951542-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (37).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>KLIPSCH RP-600m 的聲音表現在高低層次方面非常分明，高音部分小旭個人覺得音質很細膩，最近聽江念庭的《嘸啥人知的歌星》，那種猶如蔡琴的呢喃感以及口語，整體細節非常棒，而中低音部分更有不錯的飽滿度，與 Onkyo&nbsp;TX-8260 搭配不管撥放音樂還是撥放電影都非常非常過癮！</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (40).png\" src=\"https://pic.pimg.tw/ifans/1653414536-1551733109-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (40).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>至於怎麼播放？連結電視可以漿電視的聲音透過光纖連結到&nbsp; Onkyo&nbsp;TX-8260，我相信這個部分對大部分使用者來說都不是問題！至於把手機上的音樂丟到 Onkyo&nbsp;TX-8260，這個其實並不難！</p>\r\n<p>前面有提到 Onkyo&nbsp;TX-8260 支援 Chromecast、AirPlay 與 Bluetooth、Wi-Fi 等功能，所以不管你是 Android 還是 iOS (iPhone、iPad)、Mac/MacBook 等裝置，幾乎<strong>完全不用額外安裝任何 APP</strong>，就能透過裝置手機系統內建的無線投放功能直接無線輸出 ^^</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (9).png\" src=\"https://pic.pimg.tw/ifans/1653416143-2693624806-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (9).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>例如，小旭使用 iPhone 打開 YouTube 或 YouTube Music，直接選擇要播放裝置，然後將聲音透過\"無線\"方式投到 Onkyo&nbsp;TX-8260，輕鬆簡單就能播放！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653432\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (48).gif\" src=\"https://pic.pimg.tw/ifans/1653414541-1963351775-g.gif\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (48).gif\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>整個投放操作非常簡單！一般來講有使用過手機把聲音投放到藍牙喇叭、車機的使用者，對這樣的操作模式應該都很熟悉 ^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653540\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (8).png\" src=\"https://pic.pimg.tw/ifans/1653416143-1920767997-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (8).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>KKBOX 以及 Apple&nbsp;Music 也都是一樣，只要是在同一個 WiFi 無線網路環境下，選擇無線投放裝置按一下就出去了！^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653380\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (29).png\" src=\"https://pic.pimg.tw/ifans/1653414531-292262096-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (29).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>同樣有支援&nbsp;AirPlay 的 iPad、Mac、MacBook 等等蘋果裝置，也不用額外下載 APP 就能直接使用 ^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653436\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (47).gif\" src=\"https://pic.pimg.tw/ifans/1653414541-1338474551-g.gif\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (47).gif\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>因此，只要使用你平常慣用的音樂串流平台 APP，然後直接選取播放裝置，聲音就能輕鬆送到 Onkyo&nbsp;TX-8260 上面了！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653528\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (5).png\" src=\"https://pic.pimg.tw/ifans/1653416142-3372950948-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (5).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>除了音樂串流平台等 APP 可以直接投放，這兩年很夯的 Podcast 也是打開相關 APP 就能直接無線投放！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653404\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (39).png\" src=\"https://pic.pimg.tw/ifans/1653414534-2569019113-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (39).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>如果是 Android 裝置也不用擔心！因為 Onkyo&nbsp;TX-8260 支援 Chromecast 無線連結功能，一樣可以直接使用你慣用的音樂串流 APP，然後進行無線投放！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653520\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (1).png\" src=\"https://pic.pimg.tw/ifans/1653416142-2323852619-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (1).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>不過，話說 Onkyo&nbsp;其實也有提供一個名為「Onkyo&nbsp;Controller」的 APP，只是根據我自己的使用經驗.......不下載其實也沒關係 XDDDD</p>\r\n<p>謎之音：畢竟直接打開手機上的音樂 APP 就能使用了咩，好像看來也不用再去多下載一個 APP！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653516\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (2).png\" src=\"https://pic.pimg.tw/ifans/1653416142-2046869183-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (2).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>那？這個 APP 要幹嘛咧？基本上，下載「Onkyo&nbsp;Controller」的好處，大概就是可以透過大大的圖形介面，進行如同遙控器般的各種功能切換，我能想到的大概就這樣 (會不會太殘酷) XD</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653428\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (46).gif\" src=\"https://pic.pimg.tw/ifans/1653414540-1259278205-g.gif\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (46).gif\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>也就是說，下載「Onkyo&nbsp;Controller」APP 之後，透過裡面的大型按鈕切面，可以切換不同的裝置音源或切換到你手機上安裝的音樂串流平台 APP，等於是一個設備以及音源「匯整」的目錄介面這樣！</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653440\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (43).gif\" src=\"https://pic.pimg.tw/ifans/1653414540-3817472146-g.gif\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (43).gif\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>只是啊，我在想......這些透過 APP 切換的動作，或許直接使用紅外線遙控器會快速一點！XD</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653544\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (7).png\" src=\"https://pic.pimg.tw/ifans/1653416143-1904912477-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機畫面 (ifans 林小旭) (7).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>假如真的要認真用到這個 APP，我個人覺得通常應該是突然找不到遙控器，也懶得走到音響櫃去按面板時，可以直接拿出手機來切換音樂來源，有點把安裝「Onkyo&nbsp;Controller」APP 的手機當另外一個遙控器這樣 XD</p>\r\n<p><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (41).png\" src=\"https://pic.pimg.tw/ifans/1653414536-2674934954-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (41).png\" border=\"0\" loading=\"lazy\"></p>\r\n<p>好，最後！使用 Onkyo&nbsp;TX-8260 一段時間，先來講講缺點！ Onkyo&nbsp;TX-8260 前方面板無法顯示中文曲目，這是個人比較可惜的地方 (所以中文曲目會變成 *****，英文就沒問題)，不過由於大部分這類設備都是放在音響櫃或電視櫃下方，因此是否能看到曲目好像也不是太大的困擾！</p>\r\n<p>而如果你是智慧電視的話，透過智慧電視上的各種影音 APP 或音樂串流平台，那麼音樂資訊透過電視大大畫面直接呈現曲目、封面、歌詞，好像又是比較實際且較好的呈現方式，所以不能顯示中文曲目這件事情，我一開始覺得怎麼會這樣？可是後來好像也完全覺得沒差了 XD</p>\r\n<div class=\"google-auto-placed ap_container\"><ins class=\"adsbygoogle adsbygoogle-noablate\" data-ad-format=\"auto\" data-ad-client=\"ca-pub-0496851471383904\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\">\r\n<div id=\"aswift_5_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_5\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-0496851471383904&amp;output=html&amp;h=280&amp;adk=1036791002&amp;adf=2219939784&amp;pi=t.aa~a.107396794~i.159~rp.4&amp;w=750&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846476&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=3309550362&amp;ad_type=text_image&amp;format=750x280&amp;url=https%3A%2F%2Fifans.pixnet.net%2Fblog%2Fpost%2F231983437%3Futm_source%3DPIXNET%26utm_medium%3Dppage&amp;fwr=0&amp;pra=3&amp;rh=188&amp;rw=750&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846423438&amp;bpp=7&amp;bdt=2218&amp;idt=7&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=0x0%2C180x150%2C0x0%2C1519x722%2C180x320%2C1005x124%2C180x280&amp;nras=6&amp;correlator=4648670173642&amp;frm=20&amp;pv=1&amp;ga_vid=1524087634.1673845882&amp;ga_sid=1673846422&amp;ga_hid=786449124&amp;ga_fc=1&amp;ga_cid=339004216.1673845882&amp;u_tz=480&amp;u_his=8&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=245&amp;ady=19832&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=17031&amp;eid=44759875%2C44759926%2C44759842%2C44777876%2C31071260%2C31071010&amp;oid=2&amp;psts=ACgb8ttMpFCYNCXADvdEJ-T-bAo7ZwDxI5Ke_HOo0rpTjhqidtScbTHIcaCQ_xL3Q2ELJIa1GNRo2YvAJgdfNman0Ikx1jn1jPc38KYfORyB%2CACgb8tvfDRo4A8SrnJYkumtq_F4ukX_xFWOnC5fAba8hLxFkuNwsGvAIMY-Vaii5po5TXbmqWTA8RuW1YLaEpGhtkKsYFib5H6JHAMBKTUrSwfA&amp;pvsid=3348331196862639&amp;tmod=390707610&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=384&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=7&amp;uci=a!7&amp;btvi=5&amp;fsb=1&amp;xpc=FfotVFErju&amp;p=https%3A//ifans.pixnet.net&amp;dtd=53169\" name=\"aswift_5\" width=\"750\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!7\" data-gtm-yt-inspected-1163015_304=\"true\" data-gtm-yt-inspected-4=\"true\" data-gtm-yt-inspected-23=\"true\" data-google-query-id=\"CM6F5oSsy_wCFeFYDwIdoKMOlg\" data-load-complete=\"true\"></iframe></div>\r\n</ins></div>\r\n<p>另外就是 Onkyo&nbsp;TX-8260 的遙控器本身使用 IR 紅外線控制，所以如果你的音響櫃或電視櫃有門片，那麼在關門之後可能會因為被遮蔽而產生無法使用遙控器的困擾，但好險這時後有「Onkyo&nbsp;Controller」APP 可以使用手機來操作 (看來還是裝上去好了)，好像又解決了一個問題，而且機身後面有 IR 孔，其實也可以另外去買延伸線，這部分真的就要看個人使用習慣了！^^</p>\r\n<p><a href=\"https://ifans.pixnet.net/album/photo/261653424\"><img title=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (42).png\" src=\"https://pic.pimg.tw/ifans/1653414537-1677240601-g.png\" alt=\"ONKYO TX-8260 雙聲道串流擴大機 (ifans 林小旭) (42).png\" border=\"0\" loading=\"lazy\"></a></p>\r\n<p>優點部分，那當然就是可以切換將手機、平板或電腦上的音樂，直接使用「無線」連結方式拋送到 Onkyo&nbsp;TX-8260 播放，而且大部分都不用額外打開「Onkyo&nbsp;Controller」這個 APP&nbsp;就能投放，真的是超級好用且相當方便！而小旭本身客廳使用的是 Smart TV 智慧電視，所以電視上已經安裝的 Disney+、YouTube、LiTV、KKTV 影音串流平台以及&nbsp;KKBOX、Spotify 音樂平台聲音，都可以從智慧電視透過光纖送到 Onkyo&nbsp;TX-8260 上面，而這之間當然也包含連結在電視 HDMI 上面的 Nintendo Switch 遊戲機，這些連結從智慧電視透過光纖送到 Onkyo&nbsp;TX-8260，連結方式也就相較更單純、更簡單！</p>\r\n<p>加上 Onkyo&nbsp;TX-8260 可以連結兩組左右聲道立體聲喇叭，因此使用時可以能依據不同情境以及需求，立即進行 A/B 組喇叭單獨切換或是四顆一起發聲，後方更有一堆堆的連接埠來讓各種設備串接其中，以這些功能、連結性以及推力來說，相信不僅可以滿足大部分居家環境使用，甚至對於一些玩家來說也是很好的數位新選擇！</p>\r\n<p>至於音質表現方面，這完全是要看你搭配的喇叭而定 (雖然喇叭的好壞不是決定在多醣體，畢竟不同的價位以及喇叭本身屬性、調性都有所不同，以小旭搭配的&nbsp;KLIPSCH RP-600m 來說，整體組合起來不僅對我來說非常過癮，也能完全滿足我的日常聽音樂以及看電影的需求，音質表現方面在前面有提到，這邊就不再重複贅述！面對如此完整且安裝上沒有太複雜的客廳神器，以上簡單開箱分享提供給你參考，希望對你有幫助，如果還有疑問的話，都歡迎在底下留言唷！^^</p>\r\n<p><strong>延伸閱讀：</strong></p>\r\n<p><strong>進口代理：釪環數位音響有限公司 (<a href=\"https://www.facebook.com/Klipsch.tw/\" target=\"_blank\" rel=\"noopener\">粉絲團點這邊</a>) (<a href=\"https://www.huanyudigital.com.tw/\" target=\"_blank\" rel=\"noopener\">官網點這邊</a>)</strong><br><strong>聯絡電話：04-23301990</strong></p>\r\n<p>訂購都可洽<a href=\"https://www.huanyudigital.com.tw/location\" target=\"_blank\" rel=\"noopener\">全台各地釪環數位特約經銷商</a></p>\r\n<p><strong>歡迎訂閱與支持：<a href=\"https://linkby.tw/ifans\" target=\"_blank\" rel=\"noopener\">https://linkby.tw/ifans</a></strong></p>\r\n<p><strong>小旭的部落格：<a href=\"https://ifans.pixnet.net/blog\" target=\"_blank\" rel=\"noopener\">https://ifans.pixnet.net/blog</a><br>小旭的 YouTube：&nbsp;<a href=\"https://www.youtube.com/c/ifansblog\" target=\"_blank\" rel=\"noopener\">https://www.youtube.com/c/ifansblog</a></strong><br><strong>小旭的 臉書粉絲團：<a href=\"https://www.facebook.com/search/top/?q=ifans\" target=\"_blank\" rel=\"noopener\">https://www.facebook.com/search/top/?q=ifans</a>&nbsp;<br>小旭的 IG：<a href=\"https://www.instagram.com/ifans_blog/\" target=\"_blank\" rel=\"noopener\">https://www.instagram.com/ifans_blog/</a>&nbsp;<br>小旭的 Clubhouse：@ifans3c&nbsp;<br>小旭的&nbsp;twitter：<a href=\"https://twitter.com/ifans_blog\" target=\"_blank\" rel=\"noopener\">https://twitter.com/ifans_blog<br></a>還有「科技酷宅」Podcast：<a href=\"https://podcasts.apple.com/tw/podcast/id1446542592\" target=\"_blank\" rel=\"noopener\">https://podcasts.apple.com/tw/podcast/id1446542592</a></strong></p>\r\n<p><strong>如果您覺得這一篇文章對您有幫助，可否為我按個讚或加入 ifans 家族粉絲團呢 ^^</strong></p>', NULL, NULL, 3, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1653414531-2685296729-g-fit-500.png\"]', '2023-01-16 05:22:00', '2023-01-16 05:35:51');
INSERT INTO `articles` (`id`, `cgy_id`, `title`, `author_id`, `content_small`, `content`, `attachment_names`, `attachment_paths`, `sort`, `status`, `featured`, `meta_description`, `meta_keywords`, `seo_title`, `slug`, `pic`, `created_at`, `updated_at`) VALUES
(14, 24, '新開幕1700坪商場！全台最美甜水果專賣店，蔬菜7樣200元。', 1, '全台最美甜水果專賣店，就是這間心苑農場，超高CP值蔬菜7樣200元、水果玉米筍32支100元，專業尋菓師挑選新鮮好水果，享受貴婦級美學購物，價格卻是超便宜！', '<p><strong>心苑農場/大地商場</strong></p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353653_49a460ec37_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<center>\r\n<div id=\"aswift_0_host\" tabindex=\"0\" title=\"Advertisement\" data-ad-slot=\"4996917960\" aria-label=\"Advertisement\" data-ad-status=\"filled\"><iframe id=\"aswift_0\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=90&amp;slotname=4996917960&amp;adk=1497495950&amp;adf=1449505741&amp;pi=t.ma~as.4996917960&amp;w=728&amp;lmt=1673846553&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553085&amp;bpp=18&amp;bdt=285&amp;idt=294&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=5&amp;saldr=sa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;correlator=8288998812326&amp;frm=20&amp;pv=2&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=139&amp;ady=1037&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=0&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;pvsid=99647230848624&amp;tmod=691487876&amp;uas=0&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoEebr%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;btvi=1&amp;fsb=1&amp;xpc=GrQLArA7IT&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=312\" name=\"aswift_0\" width=\"728\" height=\"90\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!1\" data-google-query-id=\"CLDvsqmsy_wCFQIIXAodvhsMAw\" data-load-complete=\"true\"></iframe></div>\r\n</center>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>全台最美甜水果專賣店，就是這間<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>，超高CP值蔬菜7樣200元、水果玉米筍32支100元，專業尋菓師挑選新鮮好水果，享受貴婦級美學購物，價格卻是超便宜！</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356502_a78f85fae0_b.jpg\" alt=\"心苑農場 大地商場\" width=\"600\" height=\"900\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>位於台中北屯<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">大地商場</a>A41櫃，由2大設計師「苾花芫」與「雲手美術」聯手打造，原木溫潤質感搭配玻璃窗框，沒有用到一支鐵釘，攤位上還停了30隻木雕鳥，可以仔細尋找看看。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356497_b7d8bbeca0_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>販售甜水果和新鮮蔬菜，攤位設計美到爆炸，買菜也能很時尚很優雅！偶像劇完全可以來這裡拍攝，想像男女主角邂逅場景，拿起同一包蔬菜牽起緣分XD</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617300330_14a9ac93bd_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>做好品質把關，每日限量銷售。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617300315_2d8d91b67f_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_1_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_1\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=2453298308&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846838&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553176&amp;bpp=37&amp;bdt=376&amp;idt=243&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=4174&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=1317&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=2&amp;uci=a!2&amp;btvi=3&amp;fsb=1&amp;xpc=2kKSPumH5Q&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_1\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!2\" data-google-query-id=\"CIzAkrGty_wCFRQMXAod7RgBtA\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>千萬別以為這麼有設計質感的農場，賣得蔬果葉菜就會很貴很貴。你看看這水果玉米筍32支100元！真的超值划算，一整年均有販售，而且價格固定，中秋節也不會漲價。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617300295_2884ec7355_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>由專業農夫種植，保持整支玉米筍原型，避免參差不齊的來源。每支水果玉米筍剝開都很漂亮，甜度非常高。我們買回家，將玉米筍前後頭切掉，放電鍋半杯水、蒸一蒸就可以剝殼食用，裡面的玉米鬚也可以吃。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617300260_b2710b5636_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>還有這區也很划算！蔬菜7樣200元！平均一包只要28點多元，實在好便宜，而且一眼望去都是高單價蔬菜，種類非常豐富，選擇很多，任意搭配。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356337_ba16bddb60_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>每包的單價，和連鎖超市不相上下，有些甚至更物超所值。包裝也特別針對2-4人小家庭，獨立分裝乾淨衛生，買回去不用花時間處理，清水洗洗就能料理食用。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356322_620e091710_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>超受歡迎的歐式生菜，可以直接當沙拉來吃，市面價至少50、60元，<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>配起來只要約28元，很快就賣完，晚來買不到。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353443_349dfe0399_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_2_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_2\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=4235417991&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846839&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553213&amp;bpp=1&amp;bdt=413&amp;idt=279&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=7702&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=4860&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=3&amp;uci=a!3&amp;btvi=4&amp;fsb=1&amp;xpc=3BW7BP8RJs&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_2\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!3\" data-google-query-id=\"CLjig7Kty_wCFQEDXAodO5wMxg\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>平常有在買菜的朋友就知道，新鮮水蓮不便宜，這裡同樣可搭7樣200元，而且這包的重量絕對超過連鎖超市、還更便宜。難怪很多外縣市朋友都指定要逛，大老遠跑來也值得。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353433_1280b8e20d_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>在<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>買菜很有安全感，不僅蔬菜品質有專人把關，價格也都公開透明、平價、公道，不會有秤重後被菜價嚇到的情況。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617131439_69410e769b_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>因應現代人飲食習慣改變，特地準備不一樣的食材，像是水果系列蔬菜，高山櫛瓜、水果小黃瓜、水果玉米筍、水果彩椒、水果絲瓜，這些都是可以做異國風味料理的食材，直接生吃或簡單烹調，不需要大火熱炒，更能保留蔬菜營養。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356162_ac1404335c_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>這是Baby四季豆、甜豆，在營養價值最高峰的生長期新鮮採摘，吃起來特別嫩，很好入口。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356137_1021896277_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>仔細看這是青江菜baby-青江苗，超級無敵嫩！只需要汆燙20、30秒就熟了，或是煮泡麵時放進去熱水燜一下就可以吃。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616864286_f6a5a1b668_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_3_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_3\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=3264694797&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846841&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553214&amp;bpp=1&amp;bdt=414&amp;idt=376&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=11230&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=8385&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=7&amp;fsb=1&amp;xpc=DDfxG02FXd&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_3\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!4\" data-google-query-id=\"CLu4yrKty_wCFdcNXAodvQcICw\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>高山櫛瓜現採清甜可口，不分大小都適用7樣200元，可以依照家庭需求，選擇想要的份量。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353258_b4e39b507a_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>正值花椰菜產季，有販售美美的紫花椰和乳酪花椰，不只可以吃，還可以當婚禮抽捧花，傳遞幸福。買幾顆放日常餐桌上當擺飾，想吃再拿來煮，實在是一舉數得。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353243_bb85e8e1d6_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>好可愛的日本圓茄，捧在手上圓滾滾很討喜，剖半焗烤就很好吃。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616356042_7ddbe69b65_b.jpg\" alt=\"心苑農場 大地商場\" width=\"600\" height=\"900\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>有專屬木製推車，享受採購的生活美學儀式感，特別有溫度。來這裡買菜就像是貴婦，但其實菜價非常便宜，CP值超高。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353178_95129ce822_b.jpg\" alt=\"心苑農場 大地商場\" width=\"600\" height=\"900\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>不只是我們這種料理小白安心購買，豐富經驗的家庭主婦也都一試成主顧。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617353108_e5586efdf7_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_4_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_4\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=3786900128&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846842&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553215&amp;bpp=1&amp;bdt=415&amp;idt=587&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=15400&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=12525&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ%2CACgb8tuOWQKsXdAzoJCiSiHKCs3uxFijyXf41Y7kcA-m1CVxMBfSStYgxhfDjHVXgVSQ2qmm8XYi7_tHgD7Tvebq&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=5&amp;uci=a!5&amp;btvi=8&amp;fsb=1&amp;xpc=Qzn1p7Eb4W&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_4\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!5\" data-google-query-id=\"CNPxobOty_wCFQUBvAodSVwDig\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>熟客一來就說「我今天要宴客」專業店員推薦最新蔬果，分享料理方式，晚上就能輕鬆端出整桌豐盛好菜。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616864166_68fd96a386_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"584\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>先來分享我們今天的部分戰利品，有生菜、奶油白菜、日本圓茄、水蓮、高山櫛瓜、糖果椒、娃娃菜，全部加起來只要200元。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616864126_260a99871f_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>想買到好吃水果不踩雷，其實比買菜更高難度，<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>自稱「甜水果專賣店」，掛保證讓大家安心買。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617131189_d36bce0371_b.jpg\" alt=\"心苑農場 大地商場\" width=\"600\" height=\"800\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>以專業尋菓師之姿，尋尋覓覓找到最好最甜的。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617299800_7705610e3b_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>在日本發光的集集山蕉，口感又香又Q，清楚標記出每串價格。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617131154_a0626978e6_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_5_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_5\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=3352626139&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846844&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553262&amp;bpp=6&amp;bdt=462&amp;idt=584&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280%2C805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=19123&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=16239&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ%2CACgb8tuOWQKsXdAzoJCiSiHKCs3uxFijyXf41Y7kcA-m1CVxMBfSStYgxhfDjHVXgVSQ2qmm8XYi7_tHgD7Tvebq%2CACgb8ttHXs-RuBtIGNkfHtQCxUj4YDTeKmNnxDpiZet6upeXzuW1nW4qe4C4w0gfSnz41psPavHHtDpqqafppK2J&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=6&amp;uci=a!6&amp;btvi=9&amp;fsb=1&amp;xpc=4DsaF4vhK3&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_5\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!6\" data-google-query-id=\"CIXRi7Sty_wCFRQMXAod7RgBtA\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>經過六年時間尋找固定合作的農夫，確保水果品質穩定。每一季會規畫4-5種主打商品，現正爆甜款推薦美濃薄皮玉女小蕃茄、屏東枋寮黑珍珠、高雄大社棗子和帝王芭樂。另外還有日本品種哈密瓜，甜度直逼珍珠奶茶。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616355867_93ca352577_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>高雄美濃薄皮玉女小番茄，真的是皮薄多汁，甜蜜蜜好滋味，讓我一顆接著一顆吃。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617299735_b301045445_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>高雄大社帝王芭樂，這是珍珠芭樂和無籽芭樂育種出來的，農夫栽種技術難度高，芭樂籽比較少，吃起來清脆又香甜。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616355812_650e9d2fb8_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>屏東枋寮黑珍珠，水分很飽滿，重點是甜度破表，如果要和其他水果一起吃，建議最後才吃蓮霧，不然會覺得其他的不甜XD</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617352928_db4fd1a3e0_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>高雄大社棗子，選用珍愛、珍蜜、珍寶品種，大顆飽滿看起來像青蘋果，甜脆多汁媲美水梨。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617131049_536167eb91_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_6_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_6\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=2402549136&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846845&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553268&amp;bpp=10&amp;bdt=467&amp;idt=819&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280%2C805x280%2C805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=22621&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=19777&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ%2CACgb8tuOWQKsXdAzoJCiSiHKCs3uxFijyXf41Y7kcA-m1CVxMBfSStYgxhfDjHVXgVSQ2qmm8XYi7_tHgD7Tvebq%2CACgb8ttHXs-RuBtIGNkfHtQCxUj4YDTeKmNnxDpiZet6upeXzuW1nW4qe4C4w0gfSnz41psPavHHtDpqqafppK2J%2CACgb8ttu_DMIIsvx4cUUL6BiUv3Ga9aH8CsE7fzuYVzg_b1yZYeFRoFKxTwGPWbwEuOMKvnek8o_eDKabnkk5YY&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=7&amp;uci=a!7&amp;btvi=10&amp;fsb=1&amp;xpc=mWMmlJaPoG&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_6\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!7\" data-google-query-id=\"CJSA27Sty_wCFYkKXAodFZYNWA\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>的每種水果都好吃，有感受到店家的用心挑選，我們買回去一下子就被家人吃光光。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616355752_c6021118ab_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>除了蔬菜、甜水果之外，還有年輕雞媽媽剛生的土雞蛋，經過<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>嚴格篩選裝盒，帶回家冷藏可放30天。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616863936_c4d92615b1_b.jpg\" alt=\"心苑農場 大地商場\" width=\"600\" height=\"900\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>結帳可使用LINE Pay付款，現場門市購買(不包含宅配)滿百元有1點，集滿10點還可換3包大葉菜類。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617299610_b6649f180e_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">心苑農場</a>門市座落地點為<a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">大地商場</a>，佔地1700坪，位於敦富路及敦富一街口，總站夜市斜對面，舊社捷運站左轉2分鐘即可抵達。商場設有專屬停車場，汽機車停車位非常多。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617352853_dc2a69209e_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\">大地商場</a>以「美學市場x 餐桌食堂x青農創想」為出發，結合了餐飲品牌搭配在地青農生鮮、假日生活市集。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616863916_af104cc434_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_7_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_7\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=1484920270&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846846&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553300&amp;bpp=1&amp;bdt=499&amp;idt=933&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280%2C805x280%2C805x280%2C805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=26394&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=23530&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ%2CACgb8tuOWQKsXdAzoJCiSiHKCs3uxFijyXf41Y7kcA-m1CVxMBfSStYgxhfDjHVXgVSQ2qmm8XYi7_tHgD7Tvebq%2CACgb8ttHXs-RuBtIGNkfHtQCxUj4YDTeKmNnxDpiZet6upeXzuW1nW4qe4C4w0gfSnz41psPavHHtDpqqafppK2J%2CACgb8ttu_DMIIsvx4cUUL6BiUv3Ga9aH8CsE7fzuYVzg_b1yZYeFRoFKxTwGPWbwEuOMKvnek8o_eDKabnkk5YY%2CACgb8tulcxWextPy-oM7ZAfXshHc13CgoKMf6F-512zCoHDbQTKNiP_WNbrzi_bSp76Sugn2n4zqevupLAaMc9g0CQ&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=8&amp;uci=a!8&amp;btvi=11&amp;fsb=1&amp;xpc=5U2lQcFZhQ&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_7\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!8\" data-google-query-id=\"COeToLWty_wCFQkNXAodzToEZQ\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>北屯一日遊必逛景點，繽紛彩繪的大地長頸鹿，可以來當網美打卡。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617299555_89773b605d_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>保有傳統市場的人情味，空間乾淨明亮，美食區提供巨大原木長桌，感覺就像一家人聚在一起的食堂，充滿溫馨氛圍。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617299535_6d12196f7f_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>這裡打造出北屯舊社美食生活圈，預計招募50家異國美食餐飲品牌，想必未來會更加熱鬧。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616863846_c68de06b9a_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"534\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>大地商場還有很多遊樂設施，旋轉木馬、咖啡杯、小火車、海盜船等，很適合親子共趣來用餐、購物、玩樂。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617130939_b59578edc9_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<p>假日還可以來逛市集，文創商品、服飾、烘焙甜點、農產品都有，散發濃濃文青味，有時候也會有街頭藝人表演。</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52616355567_7f95fc72a8_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"533\" loading=\"lazy\"></a></p>\r\n<p>&nbsp;</p>\r\n<div id=\"aswift_8_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_8\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4958007660428293&amp;output=html&amp;h=280&amp;slotname=6473651160&amp;adk=3683904987&amp;adf=1913325797&amp;pi=t.ma~as.6473651160&amp;w=805&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1673846847&amp;rafmt=1&amp;format=805x280&amp;url=https%3A%2F%2Fmercury0314.pixnet.net%2Fblog%2Fpost%2F568492356-%25e5%25bf%2583%25e8%258b%2591%25e8%25be%25b2%25e5%25a0%25b4&amp;region=test&amp;host=ca-host-pub-7449992691305813&amp;h_ch=7999488453&amp;fwr=0&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673846553302&amp;bpp=9&amp;bdt=502&amp;idt=1138&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=805x280%2C805x280%2C805x280%2C805x280%2C805x280%2C805x280%2C805x280&amp;prev_slotnames=4996917960&amp;nras=3&amp;correlator=8288998812326&amp;pv_h_ch=7999488453&amp;frm=20&amp;pv=1&amp;ga_vid=339004216.1673845882&amp;ga_sid=1673846553&amp;ga_hid=1653966555&amp;ga_fc=1&amp;ga_cid=1524087634.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=100&amp;ady=29799&amp;biw=1519&amp;bih=722&amp;scr_x=0&amp;scr_y=26953&amp;eid=44759875%2C44759926%2C44759842%2C44779794&amp;oid=2&amp;psts=ACgb8tsxDuwTPh9l2_kmsyKfBpEXWoWHl16UJ7fETgaODl_sPem7pMu5CdQYlwoyUb8bMZoWlts1OzU1QD4nMZI%2CACgb8tsKlY9jh1VwOIW9vj4P91h2bfPzZKUhsGc_e3SdlDe7u9B4xidMOwhPtlCufQCHTjTU6dgdnHtqlsskFDD5FJAfPvhgxCzZWLFRlFi0Xkc%2CACgb8tvOeqHKXVPUS_SrChRfzEVI8iOPxtl8IBry7YB6HHcFZCFHzBy4IzhnHT_R22V0WVjKThqnRuOH0fwncA%2CACgb8tulYsUO0mbQhM_QKt0xi1A8R5GFpGq7Eq9bNog1VildzYJ9wEUalOfJ-O1B9UiXqmufOztOkJOQq3wqHQ%2CACgb8tuOWQKsXdAzoJCiSiHKCs3uxFijyXf41Y7kcA-m1CVxMBfSStYgxhfDjHVXgVSQ2qmm8XYi7_tHgD7Tvebq%2CACgb8ttHXs-RuBtIGNkfHtQCxUj4YDTeKmNnxDpiZet6upeXzuW1nW4qe4C4w0gfSnz41psPavHHtDpqqafppK2J%2CACgb8ttu_DMIIsvx4cUUL6BiUv3Ga9aH8CsE7fzuYVzg_b1yZYeFRoFKxTwGPWbwEuOMKvnek8o_eDKabnkk5YY%2CACgb8tulcxWextPy-oM7ZAfXshHc13CgoKMf6F-512zCoHDbQTKNiP_WNbrzi_bSp76Sugn2n4zqevupLAaMc9g0CQ%2CACgb8tvMhQ4ImHqsbf4HA9Vx2izLNABGWnDKvILs24N5Tg_YruvA0SXB0VX06uNlo8kGt1_r7VKqjJ_F1D8K2JFOzw&amp;pvsid=99647230848624&amp;tmod=32352014&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;ifi=9&amp;uci=a!9&amp;btvi=12&amp;fsb=1&amp;xpc=vrEcygLwmH&amp;p=https%3A//mercury0314.pixnet.net&amp;dtd=M\" name=\"aswift_8\" width=\"805\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!9\" data-google-query-id=\"CJbk3bWty_wCFSUDXAodhCAPMw\" data-load-complete=\"true\"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>整體心得：老實說我們原本看心苑農場的裝潢和蔬果精緻度，還以為會非常高價位，貴婦才買得起那種，結果價格竟然很親民，真的是兼具顏值和CP值，大家不用望之卻步！而且大地商場有得吃有得玩，非常值得來走走～</p>\r\n<p><a href=\"https://mercury0314.pixnet.net/blog/post/568492356\" target=\"_blank\" rel=\"noopener\"><img title=\"心苑農場 大地商場\" src=\"https://live.staticflickr.com/65535/52617352768_1e787224ab_b.jpg\" alt=\"心苑農場 大地商場\" width=\"800\" height=\"419\" loading=\"lazy\"></a></p>\r\n<div>\r\n<p><strong>心苑農場-北屯門市</strong><br>地址：台中市北屯區敦富一街133號<br>(大地商場-A41櫃)<br>營業時間：13:00-18:00，週一公休<br>粉絲團：<a href=\"https://www.facebook.com/profile.php?id=100063562346763\" target=\"_blank\" rel=\"noopener\"><u>心苑農場</u></a><br>Line：<a href=\"https://lin.ee/ZmQRExN\" target=\"_blank\" rel=\"noopener\"><u>https://lin.ee/ZmQRExN</u></a></p>\r\n<p><strong>心苑農場-西區門市</strong><br>地址：台中市西區健行路1049號<br>(金典綠園道-第六市場32櫃)<br>營業時間：11:00-18:00，週一公休</p>\r\n<p><strong>大地商場</strong><br>交通：台中捷運舊社站，出口左轉<br>粉絲團：<a href=\"http://facebook.com/greatlandsquare\" target=\"_blank\" rel=\"noopener\"><u>facebook.com/greatlandsquare</u></a></p>\r\n</div>', NULL, NULL, 5, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/52617353653_49a460ec37_b-fit-500.jpg\"]', '2023-01-16 05:28:00', '2023-01-16 05:35:10');
INSERT INTO `articles` (`id`, `cgy_id`, `title`, `author_id`, `content_small`, `content`, `attachment_names`, `attachment_paths`, `sort`, `status`, `featured`, `meta_description`, `meta_keywords`, `seo_title`, `slug`, `pic`, `created_at`, `updated_at`) VALUES
(15, 26, '瑞典發現歐洲最大稀土礦床：10年後可開採，可望減少對中國依賴', 1, '瑞典國有礦業公司LKAB表示，在該國最北部的基律納地區發現了超過100萬噸的稀土元素沉積物，是目前歐洲已知最大的同類礦床。', '<h3>基律納地區發現歐洲最大礦床，稀土元素與生活息息相關</h3>\r\n<p>瑞典國有礦業公司<a title=\"LKAB\" href=\"https://lkab.com/en/press/europes-largest-deposit-of-rare-earth-metals-is-located-in-the-kiruna-area/\" target=\"_blank\" rel=\"noopener\">LKAB</a>週四表示，在該國最北部的基律納地區（the Kiruna area）發現了超過100萬噸的稀土元素沉積物，是目前歐洲已知最大的同類礦床。而這些稀土元素對製造智慧型手機、電動汽車、風力渦輪機乃至於國防方面的導彈巡航系統都至關重要。</p>\r\n<p><a title=\"《美聯社》\" href=\"https://apnews.com/article/china-sweden-europe-business-climate-and-environment-962efd20602a9cfa2d4e164e7ee450b8\" target=\"_blank\" rel=\"noopener\">《美聯社》</a>指出，稀土攸關每個人的生活，它們對於快速成長的綠色能源領域和電動汽車發動機也非常重要。但歐盟在市場上遠遠落後於競爭對手，大約98%的稀土礦產來自中國。<a title=\"《德國之聲》\" href=\"https://www.dw.com/zh/%E5%88%B6%E7%BE%8E%E7%8E%8B%E7%89%8C%E7%99%BB%E5%9C%BA-%E4%B8%AD%E5%9B%BD%E5%A8%81%E8%83%81%E7%A8%80%E5%9C%9F%E5%8F%8D%E5%87%BB/a-48843963\" target=\"_blank\" rel=\"noopener\">《德國之聲》</a>也指出，中國擁有全球37%的稀土礦藏，幾乎沒有其他稀土供應方有同樣的競爭力。</p>\r\n<h3>開採的過程漫長艱辛</h3>\r\n<p>據LKAB稱，公司將於今年提交開發特許權的申請，預計至少需要10年時間來調查盈利並評估開採的條件。LKAB目前已經準備在現有的基律納礦井中向新礦床靠近，以便進一步調查採礦條件。</p>\r\n<p>執行長珍蒙斯托姆（Jan Mostr&ouml;m）表示正在進行大量投資，同時對土地利用抱持謙卑態度，盡可能避免負面影響。</p>\r\n<p><a title=\"《路透社》\" href=\"https://www.reuters.com/markets/commodities/swedens-lkab-finds-europes-biggest-deposit-rare-earth-metals-2023-01-12/\" target=\"_blank\" rel=\"noopener\">《路透社》</a>報導也指出，人類行動往往會影響所在地區的水資源和生物多樣性，因此北歐國家在批准新礦物開採的過程往往漫長而艱辛。</p>\r\n<h3>歐洲正值綠色能源轉型，渴望擺脫進口牽制</h3>\r\n<p><a title=\"《路透社》\" href=\"https://www.reuters.com/markets/commodities/swedens-lkab-finds-europes-biggest-deposit-rare-earth-metals-2023-01-12/\" target=\"_blank\" rel=\"noopener\">《路透社》</a>引述瑞典地質調查局礦產資源部的地質學家艾瑞克強森（Erik Jonsson）的說法表示，歐洲目前缺乏加工稀土金屬和製造中間產品的完整能力。他說：「我們還需要關注這些金屬整體的價值鏈，例如我們想用於風力渦輪機或電動汽車發動機的高效磁鐵。」</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p6_special-3\" class=\"ad-section__content\" data-google-query-id=\"CIjyxt2vy_wCFdRBDwIdWmUMKg\">\r\n<div id=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0__container__\" class=\"parent_hk_thenewslens_curation_desktop_middle_tw\">\r\n<div id=\"gliaplayer-hk_thenewslens_curation_desktop_middle_tw-1673847469504-1955975131-container\" class=\"gliaplayer-container account_hk_thenewslens slot_hk_thenewslens_curation_desktop_middle_tw slot_undefined ad-playing gliaplayer-float\" data-slot=\"hk_thenewslens_curation_desktop_middle_tw\" data-article=\"www.thenewslens.com.my\" data-test-id=\"gliaplayer-container\" data-player-mounted=\"\">\r\n<div class=\"gliaplayer-container-aspect\">\r\n<div class=\"gliaplayer-wrapper\" data-ref=\"wrapper\" data-test-id=\"gliaplayer-wrapper\">\r\n<div id=\"gliaplayer-hk_thenewslens_curation_desktop_middle_tw-1673847469504-1955975131\" class=\"gliaplayer\" data-ref=\"player\" data-test-id=\"gliaplayer-player\" data-arb-aspect-ratio=\"1.7777777777777777\" data-arb-resize-mode=\"horizontal\">\r\n<div id=\"el-8665707886\">\r\n<div id=\"el-209857557\" class=\"dailymotion-player-root dailymotion-player-x9yc1\">\r\n<div class=\"dailymotion-player-wrapper\"><iframe class=\"dailymotion-player\" src=\"https://geo.dailymotion.com/player/x9yc1.html?video=k6S8js4bbo1Ei8ywYm1&amp;mute=true&amp;scaleMode=fit&amp;syndication=276265\" width=\"100%\" height=\"100%\" frameborder=\"0\" allow=\"autoplay; fullscreen; picture-in-picture\" allowfullscreen=\"allowfullscreen\"></iframe></div>\r\n</div>\r\n</div>\r\n<div class=\"ImaAd-module_root_2DAhA\" data-ref=\"imaAd\" data-status=\"adStarted\" data-ad-unit-group-order=\"10\" data-ad-unit-group-id=\"undefined\">\r\n<div class=\"ImaAd-module_ad-container_3jKnP\" data-ref=\"imaAdContainer\" data-test-id=\"ima-ad-container\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"CloseButton_root_1G7QW\" data-shape=\"square\" data-test-id=\"gliaplayer-unfloat-button\" data-ref=\"unfloatButton\">\r\n<div class=\"CloseButton_button_3QT-R\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>據<a title=\"《美聯社》\" href=\"https://apnews.com/article/china-sweden-europe-business-climate-and-environment-962efd20602a9cfa2d4e164e7ee450b8\" target=\"_blank\" rel=\"noopener\">《美聯社》</a>報導，歐盟委員會（European Commission）的資料顯示，由於歐盟正值經濟上數位和綠色轉型，稀土需求到2030年將成長5倍。</p>\r\n<p>內部市場專員蒂埃里布雷頓（Thierry Breton）亦提出警告，如果沒有安全、可持續地獲得原料，歐盟想成為首個氣候中和大陸的雄心壯志將面臨風險。他說：「過去一年中，中國稀土和永久磁鐵的價格就上漲了50-90%。原料供應已然成為地緣政治工具。」</p>\r\n<p>歐盟也渴望從過去吸取教訓，減少對俄羅斯石油和天然氣的片面依賴。日前直到2月24日莫斯科的全面入侵烏克蘭後，歐盟才開始切斷關係。瑞典工業部長艾芭布希（Ebba Busch）在此一探勘後稱瑞典為「金礦」。他說：「這必須改變。短期目標是實現貿易多樣化，但從長遠來看，我們不能只依靠貿易協議。 歐盟若要真正脫離中國和俄羅斯的牽制達到自給自足，就必須仰賴礦物開採。」</p>\r\n<h3>新聞來源</h3>\r\n<ul>\r\n<li><a title=\"Sweden\'s LKAB finds Europe\'s biggest deposit of rare earth metals（Reuters）\" href=\"https://www.reuters.com/markets/commodities/swedens-lkab-finds-europes-biggest-deposit-rare-earth-metals-2023-01-12/\" target=\"_blank\" rel=\"noopener\">Sweden\'s LKAB finds Europe\'s biggest deposit of rare earth metals（Reuters）</a></li>\r\n<li><a title=\"China note! EU-member Sweden locates rare earth deposits（AP News）\" href=\"https://apnews.com/article/china-sweden-europe-business-climate-and-environment-962efd20602a9cfa2d4e164e7ee450b8\" target=\"_blank\" rel=\"noopener\">China note! EU-member Sweden locates rare earth deposits（AP News）</a></li>\r\n<li><a title=\"Europe&rsquo;s largest deposit of rare earth metals is located in the Kiruna area（LKAB）\" href=\"https://lkab.com/en/press/europes-largest-deposit-of-rare-earth-metals-is-located-in-the-kiruna-area/\" target=\"_blank\" rel=\"noopener\">Europe&rsquo;s largest deposit of rare earth metals is located in the Kiruna area（LKAB）</a></li>\r\n<li><a title=\"制美王牌登場? 中国威脅稀土反擊（德國之聲）\" href=\"https://www.dw.com/zh/%E5%88%B6%E7%BE%8E%E7%8E%8B%E7%89%8C%E7%99%BB%E5%9C%BA-%E4%B8%AD%E5%9B%BD%E5%A8%81%E8%83%81%E7%A8%80%E5%9C%9F%E5%8F%8D%E5%87%BB/a-48843963\" target=\"_blank\" rel=\"noopener\">制美王牌登場? 中国威脅稀土反擊（德國之聲）</a></li>\r\n</ul>\r\n<h3>延伸閱讀</h3>\r\n<ul>\r\n<li><a title=\"擔心烏俄戰爭衝擊過量下單，「歐洲用」液化天然氣沒地方儲存、35艘載運船被迫停在海上\" href=\"https://www.thenewslens.com/article/175269\" target=\"_blank\" rel=\"noopener\">擔心烏俄戰爭衝擊過量下單，「歐洲用」液化天然氣沒地方儲存、35艘載運船被迫停在海上</a></li>\r\n<li><a title=\"歐洲降低對俄能源依賴，普亭與艾爾多安協議在土耳其設天然氣中心\" href=\"https://www.thenewslens.com/article/175139\" target=\"_blank\" rel=\"noopener\">歐洲降低對俄能源依賴，普亭與艾爾多安協議在土耳其設天然氣中心</a></li>\r\n<li><a title=\"「最糟糕情況還沒到來」 ，IMF警告全球經濟前景的四個重點\" href=\"https://www.thenewslens.com/article/174838\" target=\"_blank\" rel=\"noopener\">「最糟糕情況還沒到來」 ，IMF警告全球經濟前景的四個重點</a></li>\r\n<li><a title=\"為什麼「歐洲這個冬天會凍死人」是胡説八道：俄羅斯將如何輸掉能源戰？\" href=\"https://www.thenewslens.com/article/174103\" target=\"_blank\" rel=\"noopener\">為什麼「歐洲這個冬天會凍死人」是胡説八道：俄羅斯將如何輸掉能源戰？</a></li>\r\n<li><a title=\"北溪一號與二號天然氣管線疑遭人為破壞，是誰做的？外媒分析一次看\" href=\"https://www.thenewslens.com/article/174084\" target=\"_blank\" rel=\"noopener\">北溪一號與二號天然氣管線疑遭人為破壞，是誰做的？外媒分析一次看</a></li>\r\n</ul>\r\n<p>【加入關鍵評論網會員】每天精彩好文直送你的信箱，每週獨享編輯精選、時事精選、藝文週報等特製電子報。還可留言與作者、記者、編輯討論文章內容。<a title=\"立刻點擊免費加入會員！\" href=\"https://www.thenewslens.com/profile/subscribe?utm_source=article&amp;utm_medium=CTA&amp;utm_campaign=member\" target=\"_blank\" rel=\"noopener\">立刻點擊免費加入會員！</a></p>', NULL, NULL, 4, 'draft', 1, NULL, NULL, NULL, NULL, '[\"articles/1ywwoqngmvtpa65uj9aomdjhbo1jwy-fit-500.jpg\"]', '2023-01-16 05:40:00', '2023-01-16 12:55:47'),
(16, 27, '如何維繫遠距離戀愛？網友熱議5大方式，讓你保持戀愛溫度', 1, '對戀人來說「遠距離戀愛」是感情中的一大考驗，許多人擔心彼此的感情會因分隔兩地而導致戀情無疾而終。', '<p>對戀人來說「遠距離戀愛」是感情中的一大考驗，許多人擔心彼此的感情會因分隔兩地而導致戀情無疾而終，究竟要如何避免因為物理距離而使感情產生間隙，順利克服遠距離的酸楚及問題呢？現在就一起來看看網友熱議的維繫方式有哪些吧！</p>\r\n<p>《Social Lab社群實驗室》本次透過《OpView社群口碑資料庫》追蹤近一年內「遠距離戀愛」話題的網路聲量表現，帶您了解網友熱議的維持遠距離戀愛熱度的方式有哪些。</p>\r\n<h2><strong>不常見面但要「保持聯絡」 「多充實自己」勿將另一伴當作生活重心</strong></h2>\r\n<p>觀察近一年內網友針對「遠距離戀愛」相關話題的討論，可以發現「保持溝通、聯絡」受到網友最熱烈的討論。有網友提到，雙方身處異地，當生活上遇到困難需要伴侶幫助時，無法馬上出現在對方身邊，因此可以透過保持良好的溝通與聯繫來給予伴侶情感上的支持與陪伴；也有網友分享過往異國戀愛的經驗，「我原本是個很愛冷戰的人，總想等見面才解決問題，但異國戀能見面的機會很少，有爭執一定要好好向對方溝通，不然會成為感情的致命傷」，不少網友看了也紛紛在文章留言處表示贊同。</p>\r\n<figure class=\"fig-cont include-image\">\r\n<div class=\"image-wrapper image-wrapper-withsizes\"><img class=\" lazyloaded\" src=\"https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644\" srcset=\"https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644 375w, https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644 768w, https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w1200 1200w\" alt=\"\" data-hashid=\"0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw\" data-width=\"3336\" data-height=\"2191\" data-srcset=\"https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644 375w, https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644 768w, https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w1200 1200w\" data-src=\"https://obs.line-scdn.net/0h8KUcvaZLZ2RoGnLCRHgYM1BMaxVbfH1tSih_UE4dbVARNnQzAHw0B0oca0hMLSVlSHl8Vh4fbQBMLCVlBw/w644\" data-expand=\"300\">\r\n<div class=\"placeholder\">&nbsp;</div>\r\n</div>\r\n<figcaption>▲TOP 5 維持遠距離戀愛的方法 網路聲量排行</figcaption>\r\n</figure>\r\n<p>此外，「充實自己的生活」也是維繫異地戀的好方法。有兩性專家發文提到，「遠距離戀愛首先要培養成熟獨立的人格」，要接受另一伴無法時常陪伴身邊的事實，能獨自面對生活及學會獨處，建議要能跳脫過往舒適圈，多方去探索自己的興趣或是參加進修的課程，重新分配過去與伴侶相處的時間，多花時間陪伴家人、朋友，豐富自己的生活，既能轉移伴侶不在身邊的空虛孤獨感，還能促使自我成長更增添戀愛中的個人魅力，吸引網友於底下留言「推，正在進行中，保持自我生活，反而讓彼此產生一種距離美」、「有自己的生活步調，才能避免遠距離戀愛的不安全感」。</p>\r\n<p>另一方面，有網友提到伴侶間建立共同的默契及目標也十分重要。像是「規劃共同未來、創造專屬互動模式」，都能讓彼此產生更深刻的連結。鄉民們在感情版說道「遠距離交往時，因對未來感到越不確定，容易使關係缺乏信任感，後來發現透過訂定共同目標，像是見面日期、一起旅遊的假期等，讓彼此有具體期待的事情，能有效安撫見不到面焦躁的情緒。」</p>\r\n<p>遠距離戀愛不全然是壞事，有較多的自我空間和時間，不常見面兩人也許會更珍惜下次的相處時光，看完網友們熱議的遠距離戀愛維持方式，你是否對維持異地戀更有信心呢？</p>\r\n<p><strong><em><a href=\"http://www.social-lab.cc/?utm_source=Linetoday&amp;utm_medium=social&amp;utm_campaign=recommend\" target=\"_blank\" rel=\"noopener\">觀看更多OpView口碑分析報告</a></em></strong></p>', NULL, NULL, 6, 'draft', 1, NULL, NULL, NULL, NULL, 'articles/315314182_2716885061775772_3107775117230886425_n-fit-500.jpg', '2023-01-16 05:44:00', '2023-01-16 06:32:19'),
(17, 28, '【AI繪圖時代】創意工作者會不會被人工智慧取代？設計師如何培養AI圖像溝通技能？', 1, '2022年被稱為「AI繪圖元年」，如果創造性工作也被AI取代，那人類的價值還剩什麼？', '<p>2022年被稱為「AI繪圖元年」。</p>\r\n<p>隨著AI繪圖工具Midjourney、Stable Diffusion、NovelAI等在2022下半年逐步開放群眾測試，只要輸入幾個關鍵字便能快速產生圖像，人人都能進行創作，AI圖像在台灣網路社群開始流行；而9月初，&nbsp;<a title=\"傑森．艾倫（Jason Allen）的Midjourney畫作《Th&eacute;&acirc;tre D\'op&eacute;ra Spatial》獲得美國科羅拉多州博覽會數位藝術類首獎\" href=\"https://www.thenewslens.com/article/172691\" target=\"_blank\" rel=\"noopener\">傑森．艾倫（Jason Allen）的Midjourney畫作《Th&eacute;&acirc;tre D\'op&eacute;ra Spatial》獲得美國科羅拉多州博覽會數位藝術類首獎</a>，則是將AI繪圖推向爭端。</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p2-2\" class=\"ad-section__content\" data-google-query-id=\"CIXSnbKxy_wCFd1VDwId7h4L_g\">\r\n<div id=\"google_ads_iframe_/21870649235/tnl_a_p2_0__container__\">當時艾倫高喊：「人工智慧贏了，人類輸了。」許多人的疑問與擔憂是，如果創造性工作也被機器取代，那人類的價值還剩什麼？</div>\r\n</div>\r\n</div>\r\n<h3>如何使用AI繪圖工具？</h3>\r\n<p>輸入「/imagine」和提示字（prompt），幾秒內AI就能幫你產出四張圖。聽起來容易，但如果僅止於此，你很有可能會對AI繪圖工具產生的結果感到相當失望。</p>\r\n<p>不同的AI繪圖工具擅長的圖像類型迥異，例如NovelAI擅長二次元，Dall-E較為擬真，而Midjourney最具藝術性，擅長抽象圖像、油畫、動漫和模型等，因此，在創作之前必須先熟悉AI工具的特性，創作結果才比較能符合期待。設計師／AI圖像溝通師林自庠比喻，不同的畫家專業領域不同，若要求一位油畫家完成鉛筆畫，也許不至於無法詮釋，但很可能與期待的品質有所差距，而AI繪畫工具也是如此。</p>\r\n<p>不同的AI繪圖工具對提示字的要求與詮釋也不盡相同。</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p6_special-3\" class=\"ad-section__content\" data-google-query-id=\"CMLBnbKxy_wCFRpMDwIdVmgH0g\">\r\n<div id=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0__container__\"><iframe id=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0\" tabindex=\"0\" title=\"3rd party ad content\" role=\"region\" name=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0\" width=\"1\" height=\"1\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" aria-label=\"Advertisement\" data-load-complete=\"true\" data-google-container-id=\"3\"></iframe></div>\r\n<div class=\"AV62b1d407ca3a836d05636515\">\r\n<div id=\"aniBox\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673847914809\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673847914809Wrapper\" class=\"avp-p-wrapper av-floating\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673847914809Container\">\r\n<div id=\"content_1575064331\"><video src=\"https://content1.avplayer.com/58fcbed1073ef420086c9d08/videos/6304d63d067b0c1abf0fddb6/6304d6aaa47ebba45d028593/video.mp4?AV_TAGID=62b1d407ca3a836d05636515&amp;AV_TEMPID=62b1d2936f86fa0ac2372849&amp;cid=62b1d2e9d08b594f6e7042a4&amp;pid=624c9625ddd86c139e378795&amp;AV_PUBLISHERID=624c9625ddd86c139e378795&amp;av_qd1=6304d7c9f22bb9e2cb0252a2&amp;videoId=6304d63d067b0c1abf0fddb6\" muted=\"true\" width=\"400\" height=\"225\"></video></div>\r\n<div class=\"avp-p-gui ads-mode\" data-id=\"gui_796417318\" data-avp-mobile=\"false\" data-avp-width=\"400\" data-avp-height=\"225\" data-avp-theme=\"default\" data-theme-color=\"#ff0000\" data-avp-ui-size=\"xs\">\r\n<div class=\"avp-p-gui-b avp-hidden\">\r\n<div class=\"avp-p-dk avp-pos-abs\">AI藝術創作者鳥巢說明，由於Midjourney官方期望提示字言簡意賅，因此寫在越前面的提示字越影響圖像生成效果。此外，對比Stable Diffusion能夠接受更精準的提示字，生成的圖像更貼近提示字描述與創作者的需求，使用Midjourney進行創作則較考驗運氣，「所以我們才會自稱『召喚師』，召喚出的結果有點隨機的成分。」</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>擁有六個月Midjourney使用經驗的玩家李怡志則認為，利用AI工具生成圖像是一個「解構再建構」的過程，使用者將期待的畫面拆解成文字描述，再交給AI進行演算重新組合圖像，考驗使用者與AI「有效溝通」的技巧，「使用者需要知道AI聽得懂什麼、聽不懂什麼，接著再去修改語彙表達給AI。」</p>\r\n<p>因此，「如何撰寫提示字」成為AI圖像創作者、玩家們最需要深入研究的課題，也正是使用AI繪圖工具的專業所在。</p>\r\n<p>觀摩他人的作品、測試提示字效果是AI圖像創作者、玩家們的日常作業；而Midjourney本身的使用介面、AI繪圖工具的官網藝廊、Lexica等提示字網站以及AI圖像創作社群，都是提示字的學習資源。</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p10-4\" class=\"ad-section__content\" data-google-query-id=\"CKjrnbKxy_wCFVBGDwIdwqAKTA\">\r\n<div id=\"google_ads_iframe_/21870649235/tnl_a_p10_0__container__\">林自庠表示，平時要保持「玩」的習慣，在大量嘗試的過程中便能漸漸掌握AI工具對提示字的理解程度以及可以設定、調整的幅度。李怡志舉例，在參考、大量測試提示字後發現，若想透過Midjourney生成「人在水中」的圖像，使用「underwater photography」的效果遠比其他提示字效果更好、更穩定。鳥巢則是透露，從接觸AI繪圖工具至今，他每天至少花費10小時進行圖像創作與提示字研究。</div>\r\n</div>\r\n</div>\r\n<p>不過，現階段AI工具仍各自的弱點與局限。最令Midjourney使用者詬病的是，手部幾乎無法完美成像；而筆者使用Nijijourney則發現，儘管提示字要求二次元女孩子穿著長褲，演算的成品仍然僅能呈現短裙加長襪。</p>\r\n<div class=\"self-html\">\r\n<figure class=\"op-social embed-responsive\"><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fani3small.meme%2Fposts%2Fpfbid0464vW78NVUEQqyg7UEQDCfhEpYu6dq8ei7eViGs8qMQRnGijj8fH24HYJ3EPPajRl&amp;show_text=true&amp;width=500\" width=\"500\" height=\"659\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowfullscreen=\"allowfullscreen\"></iframe></figure>\r\n</div>\r\n<h3>創意工作應用AI繪圖工具，打造「人類－AI創意循環」</h3>\r\n<p>2022年11月底，台灣遊戲公司雷亞公開招募「AI美術設計師／AI溝通師」協助利用AI工具使開發專案更有效率地進行。雷亞遊戲執行長暨共同創辦人游名揚在12月22日舉行的AI詠唱者忘年會（第0屆AIGC年會）中談到：「我認為AI將會成為創意產業的開發主流，它與人類之間存在十倍到一百倍的開發差異，產業內清楚這件事情。」</p>\r\n<p>AI最大的優勢在於生產速度快，在非常短時間內產出大量視覺內容，而這樣的特性正在改變設計工作的流程與效率。</p>\r\n<p>鳥巢說明，過往業主將設計需求告訴設計師、插畫師，一個星期後才能看到圖像內容，有時還會覺得不太滿意、與預期成果還有一段差距，再花費時間進行修改。但使用AI工具進行設計，即使它生成圖像不符期待，也不再需要等一個禮拜才能修改，而是隨時都能快速調整，「AI它太快了，我可以一直重下提示字，Midjourney一分鐘可以產12張圖。」</p>\r\n<p>李怡志認為，如果設計師善於使用AI繪圖工具，他便能將業主的需求及時轉譯給AI、快速打樣，透過AI生成的圖像確認雙方對設計內容的共識，「以前室內設計跟業主溝通時用筆畫半天，現在1、2分鐘內就根據你的字出一個大樣，30分鐘內出10個給業主參考不成問題。」</p>\r\n<p>AI能將業主或設計師腦中的想像快速地轉化為實際的畫面，也能幾乎無成本地、輕鬆地嘗試各種創意。林自庠認為，AI工具能夠幫助設計者獲取更多的靈感、進行腦力激盪；鳥巢也說：「『概念發想』正是AI很重要的特性與優勢。」</p>\r\n<p>鳥巢曾受公仔設計公司委託，使用AI工具進行公仔設計概念發想。只需透過特定提示字控制AI生成公仔圖像，其餘設計則是鳥巢天馬行空地想像、透過提示字描述畫面元素，由AI負責快速且有品質地完成視覺內容；每天10張圖、連續20天，一共200張概念圖便能供公仔設計公司挑選、參考，再進一步設計公仔樣式。</p>\r\n<div class=\"self-html\">\r\n<figure class=\"op-social embed-responsive\"><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fjosefhsu%2Fposts%2Fpfbid02YcVW1ZzEcQAo3NyLy9FBxEwdSDetANShUU6ru9J8UEgkyYbs9TaauCsx5hn8yPsrl&amp;show_text=true&amp;width=500\" width=\"500\" height=\"667\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowfullscreen=\"allowfullscreen\"></iframe></figure>\r\n</div>\r\n<p>此外，AI也能幫助設計師獲取所需設計素材。林自庠表示，平時從事包裝設計常仰賴素材網站中的既有素材，內容有限也不具獨特性，而AI工具不僅能夠彌補圖庫的不足，將原本不存在的素材生成出來，還能根據設計主體生成客製化的素材。</p>\r\n<div class=\"self-html\">\r\n<figure class=\"op-social embed-responsive\"><iframe src=\"https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FYY0110%2Fposts%2Fpfbid036qWmL2XCjAVvz7NTHkqjt7B2FJpEjcgNDmQcb9n4RxJEHsAjM9Wm6XHeWsdbLxnrl&amp;show_text=true&amp;width=500\" width=\"500\" height=\"709\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowfullscreen=\"allowfullscreen\"></iframe></figure>\r\n</div>\r\n<p>「即使目前需要用到AI的設計案不多，但我還是會在整理業主的需求過後，去思考AI能夠幫助我做到什麼。」林自庠分享，比起懼怕AI繪圖工具的應用，更多的是期待將AI工具融入設計師的日常工作之中。</p>\r\n<p>鳥巢強調，設計師不必擔心被AI取代，設計師真正的專業在於腦中的創意點子、在於依循業主的需求進行創作的本領，這些是AI還無法取代的。維吉尼亞大學電腦科學系新任助理教授郭彥伶也在AI詠唱者忘年會（第0屆AIGC年會）中提到，AI的產出容易因演算模型的設計而趨向大眾偏好，也難以融入創作者個人的獨特經驗，「缺乏原創性」是當前AI難以突破、改善的限制。</p>\r\n<p>不過，郭彥伶仍期許，人類與AI能夠共創正向的創意循環。鳥巢說明，目前AI的優勢在於它的「廣度」，AI匯集幾億人的美學，能夠幫助人類快速地進行前期的設計概念發想，拓展人類對於視覺內容的想像；而人類則是以「精細度」為優勢，憑藉個人的特色調整視覺內容，利用自身在特定繪畫領域、設計主題中長時間累積而來的經驗將圖像畫得更精細、更考究，「人類、AI結合不是很好嗎？」</p>\r\n<hr>\r\n<h3>五款熱門的AI繪圖工具</h3>\r\n<p><strong>Midjourney</strong>，點擊<a title=\"連結\" href=\"https://discord.gg/midjourney\" target=\"_blank\" rel=\"noopener\">連結</a>進入Discord，在對話框輸入「/imagine prompt: 」與提示字便能得到圖片。每隻Discord帳號擁有25張免費試用額度；付費方案採訂閱制，依服務內容而有不同價格，每月最低10美元。</p>\r\n<p><strong>Nijijourney</strong>，點擊<a title=\"連結\" href=\"https://discord.com/invite/nijijourney\" target=\"_blank\" rel=\"noopener\">連結</a>進入Discord，或是直接在Midjourney提示字中輸入「--niji」。提示字接受英文、日文、韓文及簡體中文，使用方式與Midjourney相同。免費試用與付費訂閱制度與Midjourney相同。</p>\r\n<p><strong>Stable Diffusion</strong>，代碼和模型都完全開源，可以<a title=\"免費下載\" href=\"https://dbzer0.itch.io/lucid-creations\" target=\"_blank\" rel=\"noopener\">免費下載</a>並安裝在自己的裝置上；近期也提供<a title=\"網頁版\" href=\"https://stablediffusionweb.com/\" target=\"_blank\" rel=\"noopener\">網頁版</a>服務，輸入文字按下「Generate image」按鈕即可獲得圖片。</p>\r\n<p><strong>Dalle-E2</strong>，點擊<a title=\"連結\" href=\"https://openai.com/dall-e-2/\" target=\"_blank\" rel=\"noopener\">連結</a>並以電子郵件帳號登入即可使用，輸入文字並按下「Generate」按鈕即可獲得圖片，或是上傳既有圖片，重新演算整個或部分圖像內容。首月擁有50張免費額度，次月起每月15張免費額度；付費算圖購買額度，最低15美金。</p>\r\n<p><strong>NovelAI</strong>，點擊<a title=\"連結\" href=\"https://novelai.net/stories\" target=\"_blank\" rel=\"noopener\">連結</a>註冊帳號、登入使用介面，提供文字生成及圖象生成服務。目前不提供免費額度，收費最低一個月10美元。</p>\r\n<p>【加入關鍵評論網會員】每天精彩好文直送你的信箱，每週獨享編輯精選、時事精選、藝文週報等特製電子報。還可留言與作者、記者、編輯討論文章內容。<a title=\"立刻點擊免費加入會員！\" href=\"https://www.thenewslens.com/profile/subscribe?utm_source=article&amp;utm_medium=CTA&amp;utm_campaign=member\" target=\"_blank\" rel=\"noopener\">立刻點擊免費加入會員！</a></p>\r\n<p>責任編輯：朱家儀<br>核稿編輯：翁世航</p>', NULL, NULL, 7, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/315314182_2716885061775772_3107775117230886425_n-fit-500.jpg\"]', '2023-01-16 05:51:12', '2023-01-16 05:51:12'),
(18, 14, '有心血管疾病可以做重量訓練嗎？高強度運動心跳太快怎麼辦？', 1, '進入健身房後就像是照妖鏡，如果沒有評估自己身體狀況，貿然從事高強度運動，像是重量訓練、飛輪等，承受較大運動壓力下，平日沒有發作的病徵...', '<p>記得剛進健身房的時候，健身房教練有問過小青：「你是剛剛開始接觸健身嗎？是不是以前都沒有規律的運動習慣？」其實教練會這樣問是有原因的，有些學員剛開始課程時，自認體能良好，熱身後就開始高強度運動，在中途時突然感到胸悶不適、呼吸困難，尤其心臟砰砰直跳，更甚者有心口疼痛的症狀，讓學員心生恐懼懷疑自己是否有心臟方面的問題。</p>\r\n<p>今天小青來健身房問教練這個問題，教練說這要從頭開始解釋起。現在許多人平日工作生活多屬靜態為多，如果平日沒有規律運動習慣的話，其實很難發現自己是否有心臟血管方面的問題，時間久了會讓這問題長期被忽視。</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p2-2\" class=\"ad-section__content\" data-google-query-id=\"CMyF9vCyy_wCFUdHDwIdgfwLuw\"></div>\r\n</div>\r\n<p>然而進入健身房後就像是照妖鏡，如果沒有評估自己身體狀況，貿然從事高強度運動，像是重量訓練、飛輪等，承受較大運動壓力下，平日沒有發作的病徵，這時心臟負擔變大、增加耗氧量，假使有血管阻塞情況，激烈運動會讓心肌缺氧情況變得更明顯，這就是誘發這情況的原因。</p>\r\n<p>為了避免因為突然運動誘發心臟及相關併發疾病等風險，醫師建議男性約在35－45歲、女生在40－50歲間，就要開始養成定期心血管健檢的習慣。這是為什麼呢？其實心血管疾病都是好發在50歲以上的中年人居多，心臟科醫師表示台灣年輕人抽菸比例太高，門診曾經遇過39歲男性上班族，工作忙碌又經常熬夜加班，習慣性靠著抽菸來紓壓，直到某日心肌梗塞發作，才驚覺健康情況下滑。</p>\r\n<p>今日不少年輕人的血壓、血脂都比往日同齡相較比例更高，卻不願意按照醫囑服藥控制，當危險因子控制不佳時，心血管疾病當然就找上門。醫師建議男性超過40歲、女性停經之後就可以開始心臟方面的健檢，這年齡層的人往往因為工作忙碌忽略檢查，更是需要注意的族群。特別是有心臟病家族史的朋友，假使經濟許可，35歲以後就可以開始。</p>\r\n<p>有哪些是需要檢查的項目呢？ 首先是基本的動脈硬化指數檢查，了解自身與同年紀的族群比較心血管動脈硬化風險高低；其次，運動心電圖和心臟超音波也可列入檢查項目。透過運動心電圖檢測，顯示你的心肌是否有足夠氧氣提供，診斷是否有心律不整等心臟疾病相關風險；心臟超音波檢查是看心臟的結構，檢測有沒有瓣膜性心臟病或心臟衰竭問題。</p>\r\n<div class=\"ad-section\">\r\n<div id=\"gpt-tnl_a_p6_special-3\" class=\"ad-section__content\" data-google-query-id=\"COGG9vCyy_wCFYtLDwIdlcUCwA\">\r\n<div id=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0__container__\"><iframe id=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0\" tabindex=\"0\" title=\"3rd party ad content\" role=\"region\" name=\"google_ads_iframe_/21870649235/tnl_a_p6_special_0\" width=\"1\" height=\"1\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" aria-label=\"Advertisement\" data-load-complete=\"true\" data-google-container-id=\"3\"></iframe></div>\r\n<div class=\"AV62b1d407ca3a836d05636515\">\r\n<div id=\"aniBox\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673848314719\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673848314719Wrapper\" class=\"avp-p-wrapper av-floating\">\r\n<div id=\"aniplayer_AV62b1d407ca3a836d05636515-1673848314719Container\">\r\n<div id=\"content_1397459295\"><video src=\"https://content1.avplayer.com/58fcbed1073ef420086c9d08/videos/6304d63e067b0c1abf0fddb9/6304d6d785e51fc355009a93/video.mp4?AV_TAGID=62b1d407ca3a836d05636515&amp;AV_TEMPID=62b1d2936f86fa0ac2372849&amp;cid=62b1d2e9d08b594f6e7042a4&amp;pid=624c9625ddd86c139e378795&amp;AV_PUBLISHERID=624c9625ddd86c139e378795&amp;av_qd1=6304d7c9f22bb9e2cb0252a2&amp;videoId=6304d63e067b0c1abf0fddb9\" muted=\"true\" width=\"400\" height=\"225\"></video></div>\r\n<div class=\"avp-p-gui\" data-id=\"gui_562615724\" data-avp-mobile=\"false\" data-avp-width=\"400\" data-avp-height=\"225\" data-avp-theme=\"default\" data-theme-color=\"#ff0000\" data-avp-ui-size=\"xs\">\r\n<div class=\"avp-p-gui-b avp-hidden\">&nbsp;</div>\r\n<div class=\"avp-p-gui-m\">\r\n<div class=\"avp-p-cn-sec-bnext avp-pos-abs avp-btn avp-hidden\">那如果檢查有這方面問題，是不是就要放棄運動了呢？倒也不需要這麼灰心，假使真有心血管疾病，或高血壓及肥胖的族群，首先要避免高衝擊運動，如舉重、爬樓梯、仰臥起坐等會瞬間增加心跳量的運動，盡可能避免血壓爆衝的危險。運動前也最好做足暖身運動的準備，讓身體及心臟逐漸適應運動帶來的身體變化。</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>以下為私人教練建議幾個運動原則給有類似困擾的塑身朋友，您可以斟酌參考使用。</p>\r\n<h3>教練建議的運動種類：漸進式原則</h3>\r\n<p><strong>一、運動種類</strong>：建議從事肌力訓練、柔軟度、心肺運動。</p>\r\n<p><strong>二、運動強度建議</strong>：</p>\r\n<ul>\r\n<li>心肺運動：最大心跳＝220－年齡（以1分鐘為單位），一般運動強度的建議是最大心跳數的 60％至 80％的範圍間為最佳。</li>\r\n<li>肌力訓練：感覺到肌肉微微發酸的程度就可以停止。</li>\r\n<li>柔軟度訓練：稍微感覺到緊繃但是不到疼痛的程度。</li>\r\n</ul>\r\n<p><strong>三、運動頻率建議</strong>：心肺運動每週5次，肌力訓練每週2－3次，柔軟度每週3－5次。</p>\r\n<p><strong>四、每次持續時間建議</strong>：心肺運動30分鐘以上，柔軟度15－30秒，肌力訓練8－15下／3組。</p>\r\n<p>這樣的運動方式有什麼好處呢？首先對於心臟血管的負擔比較小，不會增加額外的壓力，當然這個只是基本原則，每個人的情況、體質都不同，最好的方式是把你的情況詳細告知，讓你的教練幫忙在不同階段調整強度。</p>\r\n<p>飲食方面就要比平常更花心思一點，假設女性一天如果完全沒有運動的情況，<a title=\"新陳代謝\" href=\"https://superfit.com.tw/all/metabolism-and-bmr/\" target=\"_blank\" rel=\"noopener\">新陳代謝</a>所需攝取總熱量大約是1300大卡左右，其中碳水化合物與飽和性脂肪的比例都要控制在10％以內，也就是各130大卡，這樣對於心血管的壓力也比較小。</p>\r\n<p>那如果被確診有心血管疾病的朋友，能夠做什麼運動呢？還是可以從事重量訓練，不過是要在醫師的監督與建議之下，可以每週做一到二次不連續的重量訓練（間隔1到2天比較適合） ，讓肌肉在重量訓練之後得到休息、修補並且強化的時間。也可以<a title=\"搭配有氧運動\" href=\"https://superfit.com.tw/all/aerobic-and-anaerobic/\" target=\"_blank\" rel=\"noopener\">搭配有氧運動</a>，每次30分鐘，一週累計做150分鐘，也能達到維持良好生活型態的運動需求，從內到外改善基礎健康狀態。</p>\r\n<p>等到慢慢適應之後，徵詢過醫師建議後，請教練慢慢增加訓練菜單，包括啞鈴、舉重等重量訓練可增加肌耐力及肌肉比例的動作，逐漸提高身體能量的消耗、代謝，這樣才能在安全範圍內達成塑身減重的目標。當然還是建議在專業健身教練指導下循序漸進鍛鍊，才能避免不必要的受傷風險。</p>\r\n<p>說了這麼多注意事項，絕不是要讓有這方面病徵的朋友產生恐懼、或是止步不前、放棄雕塑身體的想法，而是要重新認識自己身體的狀態，從事安全有效並在專業人士指導下的活動。雖然聽起來麻煩很多，但是為了自己的健康著想，千萬不要做出超出自己身體負荷範圍的運動，以免危及生命安全。</p>\r\n<p>本文經<a title=\"SuperFit\" href=\"https://www.facebook.com/superfit.tw/\" target=\"_blank\" rel=\"noopener\">SuperFit</a>授權轉載，原文<a title=\"刊載於此\" href=\"https://superfit.com.tw/workout/heartbeat-too-fast/\" target=\"_blank\" rel=\"noopener\">刊載於此</a></p>\r\n<h3>延伸閱讀</h3>\r\n<ul>\r\n<li><a dir=\"ltr\" title=\"如何分辨運動後的「痛爽感」是正常痠痛，還是肌肉拉傷？ \" href=\"https://www.thenewslens.com/article/94574\" target=\"_blank\" rel=\"noopener\" data-ctorig=\"https://www.thenewslens.com/article/94574\" data-cturl=\"https://www.google.com/url?client=internal-element-cse&amp;cx=ffbec494da84adc97&amp;q=https://www.thenewslens.com/article/94574&amp;sa=U&amp;ved=2ahUKEwiSq7WT8ub7AhXTy4sBHbavCNUQFnoECAEQAg&amp;usg=AOvVaw3gN9bsyrsjwiYV7V2Lvd2s\">如何分辨運動後的「痛爽感」是正常痠痛，還是肌肉拉傷？</a></li>\r\n<li><a dir=\"ltr\" title=\"柔術醫師談疼痛：有病可不可以去運動？ \" href=\"https://www.thenewslens.com/article/90626\" target=\"_blank\" rel=\"noopener\" data-ctorig=\"https://www.thenewslens.com/article/90626\" data-cturl=\"https://www.google.com/url?client=internal-element-cse&amp;cx=ffbec494da84adc97&amp;q=https://www.thenewslens.com/article/90626&amp;sa=U&amp;ved=2ahUKEwiSq7WT8ub7AhXTy4sBHbavCNUQFnoECAkQAg&amp;usg=AOvVaw0vnAlZQOKCdXezoqAK4SbB\">柔術醫師談疼痛：有病可不可以去運動？</a></li>\r\n<li><a dir=\"ltr\" title=\"確診康復解隔離後，可以直接回歸到之前的訓練菜單嗎？\" href=\"https://www.thenewslens.com/article/171869\" target=\"_blank\" rel=\"noopener\" data-ctorig=\"https://www.thenewslens.com/article/171869\" data-cturl=\"https://www.google.com/url?client=internal-element-cse&amp;cx=ffbec494da84adc97&amp;q=https://www.thenewslens.com/article/171869&amp;sa=U&amp;ved=2ahUKEwiSq7WT8ub7AhXTy4sBHbavCNUQFnoECAIQAg&amp;usg=AOvVaw2GJjDrzj5oyYIcJ5YXWEyG\">確診康復解隔離後，可以直接回歸到之前的訓練菜單嗎？</a></li>\r\n</ul>\r\n<p>【加入關鍵評論網會員】每天精彩好文直送你的信箱，每週獨享編輯精選、時事精選、藝文週報等特製電子報。還可留言與作者、記者、編輯討論文章內容。立刻點擊免費加入會員！</p>\r\n<p>責任編輯：朱家儀<br>核稿編輯：翁世航</p>', NULL, NULL, 8, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/zy2crhzoftwqy9tiwusmc6iekmmrt3-fit-500.jpg\"]', '2023-01-16 05:54:02', '2023-01-16 05:54:02'),
(19, 23, '《戀愛+旅行│甜蜜·蜜月行｜環島旅程-花蓮住宿篇 Part2》', 1, '第二晚入住位於市區花蓮門諾醫院旁的【花蓮翰品酒店】遠遠的就可以看到一棟彩色外觀的飯店走近一看處處是童趣...', '<p>走近一看處處是童趣</p>\r\n<p>【花蓮翰品酒店】和幾米合作</p>\r\n<p>室內室外都有幾米的裝置藝術</p>\r\n<p>這篇一樣幫大家分類為四區</p>\r\n<p>一起來看看吧!!</p>\r\n<h2 id=\"h2-0\">大廳區</h2>\r\n<p>因為位於市區，佔地較小</p>\r\n<p>Lobby不走氣派路線，改走溫馨路線</p>\r\n<p>這也跟【花蓮翰品酒店】標榜是親子飯店有關係</p>\r\n<p>撇除冷冰冰的水晶吊燈</p>\r\n<p>換上幾米的裝置藝術，連我都要尖叫了..</p>\r\n<p>這也太可愛了吧</p>\r\n<p>(呆呆維: 阿妳就小朋友阿~曾三歲😏😏)</p>\r\n<p>左下跟又下的那兩張照片</p>\r\n<p>地上的琴鍵真的可以彈出聲音喔!!</p>\r\n<p>超酷的👍👍</p>\r\n<p><img title=\"S__35209293.jpg\" src=\"https://pic.pimg.tw/debbyt5407/1668409057-667384567-g_l.jpg\" alt=\"S__35209293.jpg\" loading=\"lazy\"></p>\r\n<h2 id=\"h2-1\">戶外區</h2>\r\n<p>飯店雖然不大</p>\r\n<p>但該有的設施也沒少喔</p>\r\n<p>看看這戶外的大游泳池</p>\r\n<p>暑氣都少一半了</p>\r\n<p>現場會有一位救生員，還有很多造型的游泳圈可供租借喔</p>\r\n<p>如果帶小朋友來，應該可以耗上一下午，放電成功😆😆</p>\r\n<p><img title=\"S__35209291.jpg\" src=\"https://pic.pimg.tw/debbyt5407/1668409072-4217927789-g_l.jpg\" alt=\"S__35209291.jpg\" loading=\"lazy\"></p>\r\n<h2 id=\"h2-2\">房間區</h2>\r\n<p>房間不算大，中規中矩的</p>\r\n<p>附上繡有翰品英文字樣的浴袍</p>\r\n<p>一樣住在高樓層，看出去是寬闊的街景</p>\r\n<p>整體而言~乾淨舒服</p>\r\n<p><img title=\"S__35209295.jpg\" src=\"https://pic.pimg.tw/debbyt5407/1668409072-2359985202-g_l.jpg\" alt=\"S__35209295.jpg\" width=\"400\" height=\"400\" loading=\"lazy\"></p>\r\n<h2 id=\"h2-3\">壽星專案</h2>\r\n<p>這次來住翰品的亮點就是他們提供的「壽星方案」</p>\r\n<div class=\"article-inread-ad mib-ad-box\" data-adindex=\"1\"><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"3542\" data-embed=\"false\" data-merge-position=\"3342\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad3342\"></div>\r\n<div id=\"scupio-pixnet_4108_18154_18818_content\"><iframe id=\"scupio-pixnet_4108_18154_18818_content_frame_registed\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\r\n</ins></div>\r\n<p>&nbsp;</p>\r\n<p>只要是當月壽星</p>\r\n<p>都可以使用這個方案</p>\r\n<p>除了價格優惠外</p>\r\n<p>還會附上</p>\r\n<ol>\r\n<li>紅酒和兩個紅酒杯 ( 還有冰桶喔)</li>\r\n<li>房間布置: 充氣生日熊+兩頂壽星帽</li>\r\n<li>冰箱還有一個小小的海綿蛋糕</li>\r\n</ol>\r\n<p><img title=\"S__35209294.jpg\" src=\"https://pic.pimg.tw/debbyt5407/1668409072-148165412-g_l.jpg\" alt=\"S__35209294.jpg\" width=\"400\" height=\"400\" loading=\"lazy\"></p>\r\n<p>總體而言</p>\r\n<p>【花蓮翰品酒店】走的是一種溫馨的感覺</p>\r\n<p>飯店內的燈光大多都設定為昏黃色</p>\r\n<p>若喜歡比較亮的冰友們，可能會覺得暗一點</p>\r\n<p>讓QQ鈞最驚訝的就是這個「壽星方案」</p>\r\n<p>可以看出飯店的用心</p>\r\n<p>&nbsp;</p>\r\n<p>贈送的紅酒更是意外的好喝</p>\r\n<p>因為呆呆維不喝酒，這瓶紅酒跟了我繞了台灣一圈呢😂😂</p>\r\n<p>💡房間：👍👍👍👍</p>\r\n<p>💡View：👍👍👍👍</p>\r\n<p>💡早餐：👍👍👍</p>\r\n<p>💡價格:&nbsp; 👍👍👍👍👍</p>\r\n<p>&nbsp;</p>\r\n<p>【花蓮翰品酒店 酒店資訊】</p>\r\n<p>🕋地址：花蓮縣花蓮市永興路2號</p>\r\n<p>☎電話：<a href=\"https://www.google.com/search?q=%E8%8A%B1%E8%93%AE%E7%BF%B0%E5%93%81%E9%85%92%E5%BA%97&amp;rlz=1C1GCEB_enTW809TW809&amp;biw=1280&amp;bih=577&amp;sxsrf=ALiCzsbY3GSH9d7jbez-zIEVrrfNm-8K5Q:1666163595265&amp;ei=9kxOY6SEGceF-Ab_wJbIAQ&amp;oq=%E8%8A%B1%E8%93%AE%E7%BF%B0%E5%93%81&amp;gs_lcp=Cgdnd3Mtd2l6EAEYADIICAAQgAQQsQMyBQgAEIAEMgsIABCABBCxAxCDATIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyCwguEIAEEMcBEK8BMgUIABCABDIFCAAQgAQ6BQguEIAEOgQIIxAnOgQIABBDOhEILhCABBCxAxCDARDHARDRAzoFCAAQogQ6BwgAEB4QogQ6EAguELEDEIMBEMcBEK8BEEM6CggAELEDEIMBEEM6BwguENQCEEM6CgguEMcBEK8BEENKBAhBGABKBAhGGABQAFjWD2DxHWgAcAF4AIABqwGIAY0KkgEEMTIuM5gBAKABAcABAQ&amp;sclient=gws-wiz&amp;tbs=lf:1,lf_ui:2&amp;tbm=lcl&amp;rflfq=1&amp;num=10&amp;rldimm=5127955564783343903&amp;lqi=ChLoirHok67nv7Dlk4HphZLlupdI75HC98-rgIAIWicQABABEAIQAxgAGAEYAhgDIhXoirHok64g57-wIOWTgSDphZLlupeSAQVob3RlbJoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VNMloyUnVVVUZSRUFF&amp;ved=2ahUKEwid2e6J3-v6AhVTc3AKHcDlCwYQvS56BAhZEAE&amp;sa=X&amp;rlst=f\" target=\"_blank\" rel=\"noopener noreferrer\">03 823 5388</a></p>\r\n<p>💻飯店網站 :&nbsp;<a href=\"https://hualien.chateaudechine.com/tw/index\" target=\"_blank\" rel=\"noopener noreferrer\">https://hualien.chateaudechine.com/tw/index</a></p>\r\n<p>🎀喜歡QQ鈞的冰友，請按追縱喔🎀</p>\r\n<p>我會繼續吃吃喝喝幫大家發現好吃好玩的地方😊</p>', NULL, NULL, 9, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1668408962-1672179172-g_l.jpg\"]', '2023-01-16 05:56:00', '2023-01-16 05:59:41'),
(20, 25, '《扭蛋》史努比環保扭蛋', 1, 'PEANUTS－SNOOPY－（2019/03）（日本發售）', '<p>1. PEANUTS－SNOOPY－（2019/03）（日本發售）</p>\r\n<div><img src=\"https://pic.pimg.tw/emily8/1577645478-315820410_n.jpg\" alt=\"\" loading=\"lazy\"><br>\r\n<div>2. PEANUTS 2－BEST FRIENDS－（2019/09）（日本發售）</div>\r\n<div><img src=\"https://pic.pimg.tw/emily8/1577645563-3419908773_n.jpg\" alt=\"\" loading=\"lazy\"></div>\r\n<div>3. PEANUTS 3－BASEBALL－（2020/01）（日本發售）</div>\r\n</div>\r\n<div><img src=\"https://pic.pimg.tw/emily8/1579706207-2784758622.jpg\" alt=\"\" loading=\"lazy\"></div>\r\n<div>&nbsp;</div>\r\n<div>4. PEANUTS 4－ASTRONAUT SNOOPY －（2020/08）（日本發售）￥500</div>\r\n<div><img src=\"https://pic.pimg.tw/emily8/1597782073-4211808617-g_n.jpg\" alt=\"\" loading=\"lazy\"></div>\r\n<div>&nbsp;</div>\r\n<div>5. P5 (2022/09)</div>\r\n<div>&nbsp;</div>', NULL, NULL, 10, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1577645478-315820410_n-fit-500.jpg\"]', '2023-01-16 05:59:00', '2023-01-16 05:59:32'),
(21, 24, '彰化市區｜彰化阿璋肉圓｜那些年的國宴肉圓', 1, '吃了阿三又吃了北門口\r\n怎麼樣都要再來阿璋朝聖一下', '<h2>&nbsp;</h2>\r\n<h2>吃了阿三又吃了北門口</h2>\r\n<div class=\"article-body\">\r\n<div class=\"article-content\">\r\n<div id=\"article-content-inner\" class=\"article-content-inner\">\r\n<p>怎麼樣都要再來阿璋朝聖一下</p>\r\n<p>阿璋位置很好，火車站附近走路一下就到了</p>\r\n<p>跟店家點了肉圓之後</p>\r\n<p>就是端著自己找位置坐下來享用</p>\r\n<p>雖然這兩、三間的店面風格不一樣</p>\r\n<p>但都是同一間店，點餐區都在這個轉角</p>\r\n<p><img title=\"圖片\" src=\"https://pic.pimg.tw/aw78/1668775438-434133218-g_n.png\" alt=\"圖片\" width=\"350\" height=\"263\" loading=\"lazy\"></p>\r\n<p>更有味道一點的內用區</p>\r\n<p><img title=\"IMG_20221117_125709.jpg\" src=\"https://pic.pimg.tw/aw78/1668775018-1461616498-g_n.jpg\" alt=\"IMG_20221117_125709.jpg\" width=\"350\" height=\"263\" loading=\"lazy\"></p>\r\n<p>看起來特別氣派的內用區</p>\r\n<p>牆上還看得到郭台銘在民國七十多年就來吃的簽名</p>\r\n<p>還有馬英九、蔡英文當總統的時候都有來吃的簽名</p>\r\n<p><img title=\"IMG_20221117_125657.jpg\" src=\"https://pic.pimg.tw/aw78/1668775017-302577754-g_n.jpg\" alt=\"IMG_20221117_125657.jpg\" width=\"350\" height=\"263\" loading=\"lazy\"></p>\r\n<div class=\"article-inread-ad\" data-adindex=\"1\"><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"3542\" data-merge-position=\"3342\" data-sibling-position=\"4386\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad3342d\"><ins class=\"adsbygoogle\" data-ad-client=\"ca-pub-6865528665029394\" data-ad-slot=\"3party_criteo_pb_pc_article_center01\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\">\r\n<div id=\"aswift_0_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_0\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-6865528665029394&amp;output=html&amp;h=280&amp;slotname=3party_criteo_pb_pc_article_center01&amp;adk=3070957094&amp;adf=584519714&amp;pi=t.ma~as.3party_criteo_pb_pc_&amp;w=336&amp;lmt=1673848804&amp;format=336x280&amp;url=https%3A%2F%2Faw78.pixnet.net%2Fblog%2Fpost%2F36278138-%25e5%25bd%25b0%25e5%258c%2596%25e5%25b8%2582%25e5%258d%2580%25ef%25bd%259c%25e5%25bd%25b0%25e5%258c%2596%25e9%2598%25bf%25e7%2592%258b%25e8%2582%2589%25e5%259c%2593%25ef%25bd%259c%25e9%2582%25a3%25e4%25ba%259b%25e5%25b9%25b4%25e7%259a%2584%25e8%2582%2589%25e5%259c%2593%3Futm_source%3DPIXNET%26utm_medium%3DHashtag_article&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673848803892&amp;bpp=3&amp;bdt=2295&amp;idt=112&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;correlator=6505523573068&amp;frm=20&amp;pv=2&amp;ga_vid=1524087634.1673845882&amp;ga_sid=1673848804&amp;ga_hid=93088475&amp;ga_fc=1&amp;ga_cid=339004216.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=216&amp;ady=1834&amp;biw=1519&amp;bih=666&amp;scr_x=0&amp;scr_y=0&amp;eid=44759875%2C44759926%2C44759842%2C44777876&amp;oid=2&amp;pvsid=3557716224079012&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C666&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=4&amp;uci=a!4&amp;btvi=1&amp;fsb=1&amp;xpc=NMj1SJqT1a&amp;p=https%3A//aw78.pixnet.net&amp;dtd=130\" name=\"aswift_0\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!4\" data-google-query-id=\"CIiAytq0y_wCFW5XDwIdnQQGWg\" data-load-complete=\"true\"></iframe></div>\r\n</ins></div>\r\n</ins><ins class=\"adsbyfalcon pixnet-ad\" data-ad-client=\"1\" data-ad-slot=\"4386\" data-embed=\"false\" data-adsbyfalcon-status=\"done\">\r\n<div id=\"pixad4386d\"><ins class=\"adsbygoogle\" data-ad-client=\"ca-pub-6865528665029394\" data-ad-slot=\"3party_criteo_pb_pc_article_center01r\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\">\r\n<div id=\"aswift_4_host\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\"><iframe id=\"aswift_4\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-6865528665029394&amp;output=html&amp;h=280&amp;slotname=3party_criteo_pb_pc_article_center01r&amp;adk=3322948956&amp;adf=425741023&amp;pi=t.ma~as.3party_criteo_pb_pc_&amp;w=336&amp;lmt=1673848804&amp;format=336x280&amp;url=https%3A%2F%2Faw78.pixnet.net%2Fblog%2Fpost%2F36278138-%25e5%25bd%25b0%25e5%258c%2596%25e5%25b8%2582%25e5%258d%2580%25ef%25bd%259c%25e5%25bd%25b0%25e5%258c%2596%25e9%2598%25bf%25e7%2592%258b%25e8%2582%2589%25e5%259c%2593%25ef%25bd%259c%25e9%2582%25a3%25e4%25ba%259b%25e5%25b9%25b4%25e7%259a%2584%25e8%2582%2589%25e5%259c%2593%3Futm_source%3DPIXNET%26utm_medium%3DHashtag_article&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC43NCIsW10sZmFsc2UsbnVsbCwiNjQiLFtbIk5vdF9BIEJyYW5kIiwiOTkuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMDkuMC41NDE0Ljc0Il0sWyJDaHJvbWl1bSIsIjEwOS4wLjU0MTQuNzQiXV0sZmFsc2Vd&amp;dt=1673848803969&amp;bpp=2&amp;bdt=2373&amp;idt=116&amp;shv=r20230111&amp;mjsv=m202212050101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dc08e01c83a6931e6-228391cd50d90092%3AT%3D1673845881%3AS%3DALNI_MaOD8ooXWcH6ojU-MA-0jtRHO2yug&amp;gpic=UID%3D00000ba5377e91fd%3AT%3D1673845881%3ART%3D1673845881%3AS%3DALNI_MbfrUfxkqqKhe_udsoSEaqk3eb_9Q&amp;prev_fmts=336x280%2C300x250%2C0x0&amp;nras=1&amp;correlator=6505523573068&amp;frm=20&amp;pv=1&amp;ga_vid=1524087634.1673845882&amp;ga_sid=1673848804&amp;ga_hid=93088475&amp;ga_fc=1&amp;ga_cid=339004216.1673845882&amp;u_tz=480&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=557&amp;ady=1834&amp;biw=1519&amp;bih=666&amp;scr_x=0&amp;scr_y=0&amp;eid=44759875%2C44759926%2C44759842%2C44777876&amp;oid=2&amp;pvsid=3557716224079012&amp;tmod=32352014&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fwww.pixnet.net%2F&amp;eae=0&amp;fc=896&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C666&amp;vis=1&amp;rsz=%7C%7CoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=0&amp;bc=31&amp;ifi=8&amp;uci=a!8&amp;btvi=2&amp;fsb=1&amp;xpc=OGoWUevpaK&amp;p=https%3A//aw78.pixnet.net&amp;dtd=124\" name=\"aswift_4\" width=\"336\" height=\"280\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" data-google-container-id=\"a!8\" data-google-query-id=\"CMirz9q0y_wCFXJIDwId03gPbA\" data-load-complete=\"true\"></iframe></div>\r\n</ins></div>\r\n</ins></div>\r\n<p>&nbsp;</p>\r\n<p>外皮來看就跟阿三、北門口蠻不一樣的</p>\r\n<p>也比較是平常會在路邊吃到的肉圓</p>\r\n<p><img title=\"IMG_20221117_125014.jpg\" src=\"https://pic.pimg.tw/aw78/1668775018-1961653854-g_n.jpg\" alt=\"IMG_20221117_125014.jpg\" width=\"350\" height=\"263\" loading=\"lazy\"></p>\r\n<p>一把插起來就插到了肉塊</p>\r\n<p><img title=\"IMG_20221117_125011.jpg\" src=\"https://pic.pimg.tw/aw78/1668775016-1295562242-g_n.jpg\" alt=\"IMG_20221117_125011.jpg\" width=\"350\" height=\"263\" loading=\"lazy\"></p>\r\n<p>就真的是一個平常吃得到的好吃肉圓</p>\r\n<p>上了國宴的平民美食</p>\r\n<p>彰化人說是他從小吃到大的味道</p>\r\n<p>我個人是認為要吃點當地「特色」的話</p>\r\n<p>外皮是略輸阿三跟北門口炸成碰皮的特色啦</p>\r\n<p>&nbsp;</p>\r\n<p><img title=\"\" src=\"https://s.pixfs.net/f.pixnet.net/images/emotions/032.gif\" alt=\"\" width=\"20\" height=\"20\" loading=\"lazy\">彰化阿璋肉圓</p>\r\n<p>500彰化縣彰化市長安街144號</p>\r\n<p>營業時間　9:00-22:00</p>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, 11, 'online', 1, NULL, NULL, NULL, NULL, '[\"articles/1668775018-1961653854-g_n-fit-500.jpg\"]', '2023-01-16 06:01:00', '2023-01-16 06:02:06');

-- --------------------------------------------------------

--
-- 資料表結構 `article_tag`
--

CREATE TABLE `article_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 11, 27, '2023-01-31 06:11:29', '2023-01-31 06:11:29'),
(2, 11, 3, '2023-01-31 06:12:34', '2023-01-31 06:12:34'),
(3, 12, 18, '2023-01-31 06:12:55', '2023-01-31 06:12:55'),
(4, 12, 19, '2023-01-31 06:13:10', '2023-01-31 06:13:10'),
(5, 13, 21, '2023-01-31 06:13:29', '2023-01-31 06:13:29'),
(6, 13, 22, '2023-01-31 06:13:43', '2023-01-31 06:13:43'),
(7, 14, 15, '2023-01-31 06:13:58', '2023-01-31 06:13:58'),
(8, 14, 20, '2023-01-31 06:14:16', '2023-01-31 06:14:16'),
(9, 15, 28, '2023-01-31 06:16:52', '2023-01-31 06:16:52'),
(10, 16, 9, '2023-01-31 06:17:20', '2023-01-31 06:17:20'),
(11, 17, 26, '2023-01-31 06:17:34', '2023-01-31 06:17:34'),
(12, 17, 25, '2023-01-31 06:17:47', '2023-01-31 06:17:47'),
(13, 18, 9, '2023-01-31 06:18:33', '2023-01-31 06:18:33'),
(14, 19, 19, '2023-01-31 06:18:53', '2023-01-31 06:18:53'),
(15, 20, 21, '2023-01-31 06:19:16', '2023-01-31 06:19:16'),
(16, 21, 15, '2023-01-31 06:19:43', '2023-01-31 06:19:43');

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
(4, NULL, '商品', '[]', '<p>所有與販賣有關的分類</p>', 1, 1, NULL, '2023-01-15 06:29:00', '2023-01-15 06:36:34', NULL),
(5, 4, '實體商品', '[]', NULL, 1, 2, NULL, '2023-01-15 06:35:32', '2023-01-15 06:35:32', NULL),
(6, 4, '虛擬商品', '[]', NULL, 1, 2, NULL, '2023-01-15 06:37:00', '2023-01-15 06:42:21', NULL),
(7, 5, '客製化', '[]', NULL, 1, 3, NULL, '2023-01-15 06:41:00', '2023-01-15 06:42:08', NULL),
(8, 5, '文具', '[]', NULL, 1, 3, NULL, '2023-01-15 06:43:00', '2023-01-15 06:44:21', NULL),
(9, 5, '食品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:45:00', '2023-01-15 06:48:10', NULL),
(10, 5, '3C產品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:49:18', '2023-01-15 06:49:18', NULL),
(11, 5, '3C周邊', '[]', NULL, 1, 3, NULL, '2023-01-15 06:50:54', '2023-01-15 06:50:54', NULL),
(12, 5, '裝飾品/小物', '[]', NULL, 1, 3, NULL, '2023-01-15 06:51:57', '2023-01-15 06:51:57', NULL),
(13, 5, '精品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:52:00', '2023-01-15 06:53:31', NULL),
(14, 5, '運動/休閒', '[]', NULL, 1, 3, NULL, '2023-01-15 06:55:21', '2023-01-15 06:55:21', NULL),
(15, 5, '書籍', '[]', NULL, 1, 1, NULL, '2023-01-15 06:57:16', '2023-01-15 06:57:16', NULL),
(16, 5, '兒童商品', '[]', NULL, 1, 3, NULL, '2023-01-15 06:58:18', '2023-01-15 06:58:18', NULL),
(17, 6, '貼圖', '[]', NULL, 1, 3, NULL, '2023-01-15 06:59:22', '2023-01-15 06:59:22', NULL),
(18, 6, '平台擴充工具', '[]', NULL, 1, 3, NULL, '2023-01-15 07:00:17', '2023-01-15 07:00:17', NULL),
(19, 6, '生產力工具', '[]', NULL, 1, 3, NULL, '2023-01-15 07:01:40', '2023-01-15 07:01:40', NULL),
(20, 6, '電子票卷', '[]', NULL, 1, 3, NULL, '2023-01-15 07:03:25', '2023-01-15 07:03:25', NULL),
(21, 6, 'NFT加密藝術', '[]', NULL, 1, 3, NULL, '2023-01-15 07:05:00', '2023-01-15 07:05:00', NULL),
(22, NULL, '部落格文章', '[]', NULL, 1, 1, NULL, '2023-01-16 03:43:06', '2023-01-16 03:43:06', NULL),
(23, 22, '旅遊', '[]', NULL, 1, 4, NULL, '2023-01-16 03:44:00', '2023-01-16 03:48:00', NULL),
(24, 22, '美食', '[]', NULL, 1, 2, NULL, '2023-01-16 03:44:29', '2023-01-16 03:44:29', NULL),
(25, 22, '興趣', '[]', NULL, 1, 3, NULL, '2023-01-16 03:45:25', '2023-01-16 03:45:25', NULL),
(26, 22, '時事', '[]', NULL, 1, 4, NULL, '2023-01-16 03:46:30', '2023-01-16 03:46:30', NULL),
(27, 22, '關係', '[]', NULL, 1, 1, NULL, '2023-01-16 03:47:32', '2023-01-16 03:47:32', NULL),
(28, 22, '科技', '[]', NULL, 1, 5, NULL, '2023-01-16 03:49:07', '2023-01-16 03:49:07', NULL),
(29, 22, '寵物', '[]', NULL, 1, 6, NULL, '2023-01-16 03:49:52', '2023-01-16 03:49:52', NULL),
(30, 22, '所有文章', '[]', NULL, 1, 1, NULL, '2023-01-16 07:29:39', '2023-01-16 07:29:39', NULL),
(31, 22, '最新文章', '[]', NULL, 1, 1, NULL, '2023-01-16 08:01:45', '2023-01-16 08:01:45', NULL);

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

--
-- 傾印資料表的資料 `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mobile`, `subject`, `mode`, `message`, `service`, `email`, `status`, `tag`, `handler_id`, `creator_id`, `source`, `created_at`, `updated_at`) VALUES
(1, 'ffghh', '0986553224', '我有意見', NULL, 'vnvbnv', NULL, '123@demo.com', 'unHandled', NULL, NULL, NULL, NULL, '2023-01-16 19:04:29', '2023-01-16 19:04:29'),
(2, '489', '14053851960', '我有意見2', NULL, 'khjhkhj', NULL, 'cc407cc@gmail.com', 'unHandled', NULL, NULL, NULL, NULL, '2023-01-16 19:17:47', '2023-01-16 19:17:47'),
(3, '5665', '14053851960', '我有意見3', NULL, '564646', NULL, 'cc407cc@gmail.com', 'unHandled', NULL, NULL, NULL, NULL, '2023-01-16 19:21:47', '2023-01-16 19:21:47'),
(4, '4564', '14053851960', '我有意見4', NULL, '5656', NULL, 'cc407cc@gmail.com', 'unHandled', NULL, NULL, NULL, NULL, '2023-01-16 19:22:20', '2023-01-16 19:22:20'),
(5, '564654', '14053851960', '我有意見5', NULL, '6546', NULL, 'cc407cc@gmail.com', 'unHandled', NULL, NULL, NULL, NULL, '2023-01-16 19:23:58', '2023-01-16 19:23:58');

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
(2, 1, 'name', 'text', '姓名/供應商', 1, 0, 1, 1, 1, 1, '{}', 1),
(3, 1, 'email', 'text', '電子郵件', 1, 1, 1, 1, 1, 1, '{}', 1),
(4, 1, 'password', 'password', '密碼', 1, 0, 0, 1, 1, 0, '{}', 1),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 1),
(6, 1, 'created_at', 'timestamp', '創建於', 0, 1, 1, 0, 0, 0, '{}', 1),
(7, 1, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, '{}', 1),
(8, 1, 'avatar', 'image', '頭像', 0, 1, 1, 1, 1, 1, '{}', 1),
(9, 1, 'user_belongsto_role_relationship', 'relationship', '角色', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 1),
(11, 1, 'settings', 'hidden', '設定', 0, 0, 0, 0, 0, 0, '{}', 1),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 1),
(14, 2, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 1),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 1),
(18, 3, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 1),
(19, 3, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 1),
(20, 3, 'display_name', 'text', '顯示名稱', 1, 1, 1, 1, 1, 1, NULL, 1),
(21, 1, 'role_id', 'text', '角色ID', 0, 1, 1, 1, 1, 1, '{}', 1),
(22, 4, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'text', '父分類ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"}}', 1),
(24, 4, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc100\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:100\"}}', 1),
(25, 4, 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 1),
(26, 4, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"desc_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc500\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:500\"}}', 1),
(27, 4, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5143\\u7d20\\u662f\\u5426\\u555f\\u7528\",\"default\":1,\"checked\":true}', 1),
(28, 4, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"description\":\"\\u76f8\\u540c\\u5546\\u54c1\\u914d\\u7f6e\\u9ed8\\u8a8d\\u6392\\u5e8f\",\"validation\":{\"rule\":\"required|max:2000\"},\"default\":1}', 1),
(29, 4, 'type', 'text', '類型', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"type_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc30\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:30\"}}', 1),
(30, 4, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 1),
(31, 4, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 1),
(32, 5, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(33, 5, 'updater_id', 'text', '更新者ID', 0, 1, 1, 1, 1, 0, '{\"display\":{\"width\":\"2\",\"id\":\"updater_id\"}}', 1),
(34, 5, 'page', 'text', '頁面', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"page_id\"},\"description\":\"\\u4f4d\\u65bc\\u9996\\u9801\\u4e0b\\u7684\\u54ea\\u500b\\u9801\\u9762  ex:\\u9996\\u9801 =>index \\u547d\\u540d\\u65b9\\u5f0f:\\u8207URL\\u76f8\\u540c\\u540d\\u7a31\",\"validation\":{\"rule\":\"required|max:20\"}}', 1),
(35, 5, 'mode', 'select_dropdown', '元素類型', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"mode_id\"},\"validation\":{\"rule\":\"required|max:20\"},\"default\":\"image\",\"options\":{\"text\":\"\\u5167\\u6587\",\"image\":\"\\u5716\\u6587\",\"video\":\"\\u5f71\\u7247\",\"title\":\"\\u6a19\\u984c\",\"icon\":\"icon\"}}', 1),
(36, 5, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc40\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:40\"}}', 1),
(37, 5, 'position', 'text', '排版位置', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"position_id\"},\"description\":\"\\u7db2\\u9801\\u914d\\u7f6e\\u7684\\u7a7a\\u9593 \\u547d\\u540d\\u65b9\\u5f0f:\\u8207\\u8996\\u5716\\u4e2d\\u5c0d\\u61c9\\u7684\\u4f4d\\u7f6eClass\\u540d\\u7a31\",\"validation\":{\"rule\":\"required|max:40\"}}', 1),
(38, 5, 'icon', 'image', '圖示', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"icon_id\"}}', 1),
(39, 5, 'subtitle', 'text', '副標題', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"5\",\"id\":\"subtitle_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc00\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:80\"}}', 1),
(40, 5, 'content', 'rich_text_box', '內文', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc100\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:2000\"}}', 1),
(41, 5, 'url', 'text', '網址', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"url_id\"},\"description\":\"\\u53c3\\u8003\\u7db2\\u5740\\/\\u8d85\\u9023\\u7d50\",\"validation\":{\"rule\":\"max:255\"}}', 1),
(42, 5, 'url_txt', 'text', '網址文字', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"url_txt_id\"},\"description\":\"\\u8d85\\u9023\\u7d50\\u986f\\u793a\\u6587\\u5b57\",\"validation\":{\"rule\":\"max:100\"}}', 1),
(43, 5, 'pic', 'media_picker', '照片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 1),
(44, 5, 'video', 'media_picker', '影片網址', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"video_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"}}', 1),
(45, 5, 'alt', 'text', '替代文字', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"alt_id\"},\"description\":\"\\u7121\\u6cd5\\u88ab\\u986f\\u793a\\u7684\\u5a92\\u9ad4\\u3001\\u6587\\u4ef6\\u7b49\\uff0c\\u986f\\u793a\\u7684\\u66ff\\u4ee3\\u6587\\u5b57\\uff0c\\u5fc5\\u9808\\u5c0f\\u65bc00\\u5b57\\u6578\",\"validation\":{\"rule\":\"max:100\"}}', 1),
(46, 5, 'title_pos', 'text', '標題位置', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_pos_id\"},\"description\":\"\\u547d\\u540d\\u65b9\\u5f0f:\\u5c0d\\u61c9\\u4f4d\\u7f6e\\u7684class\",\"validation\":{\"rule\":\"max:20\"}}', 1),
(47, 5, 'title_color', 'text', '標題顏色', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_color_id\"},\"validation\":{\"rule\":\"max:30\"}}', 1),
(48, 5, 'q_mode', 'hidden', 'Q Mode', 0, 0, 0, 0, 0, 0, '{}', 1),
(49, 5, 'i_mode', 'hidden', 'I Mode', 0, 0, 0, 0, 0, 0, '{}', 1),
(50, 5, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"description\":\"\\u76f8\\u540c\\u7db2\\u9801\\u914d\\u7f6e\\u7684\\u7a7a\\u9593\\u4e2d\\u7684\\u4f4d\\u7f6e\\u6392\\u5e8f\",\"validation\":{\"rule\":\"required|max:2000\"},\"default\":1}', 1),
(51, 5, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5143\\u7d20\\u662f\\u5426\\u555f\\u7528\",\"default\":1,\"checked\":true}', 1),
(52, 5, 'isShowTitle', 'checkbox', '是否顯示標題', 1, 1, 1, 1, 1, 0, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"isShowTitle_id\"},\"default\":1,\"checked\":true}', 1),
(53, 5, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 0, '{}', 1),
(54, 5, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 1),
(55, 6, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(56, 6, 'cgy_id', 'text', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgy_id\"},\"validation\":{\"rule\":\"required\"}}', 1),
(57, 6, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"title_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc50\\u5b57\\u6578\",\"validation\":{\"rule\":\"required|max:50\"}}', 1),
(58, 6, 'pics', 'media_picker', '照片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"pic_id\"},\"description\":\"\\u53ef\\u591a\\u9078\",\"validation\":{\"rule\":\"max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":true,\"quality\":90,\"show_as_images\":true,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 1),
(59, 6, 'price_og', 'number', '初始售價', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"price_og_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"default\":0}', 1),
(60, 6, 'price_new', 'number', '更新售價', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"price_new_id\"},\"validation\":{\"rule\":\"min:0\"},\"default\":0}', 1),
(61, 6, 'badge', 'hidden', 'Badge', 0, 0, 0, 0, 0, 0, '{}', 1),
(62, 6, 'star', 'number', '星數', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"star_id\"},\"description\":\"\\u5546\\u54c1\\u8a55\\u50f9\",\"validation\":{\"rule\":\"required|min:0|max:5\"},\"default\":0}', 1),
(63, 6, 'stock', 'number', '庫存', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"stock_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"default\":0}', 1),
(64, 6, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"desc_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc400\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:400\"}}', 1),
(65, 6, 'chars', 'rich_text_box', '特色', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"chars_id\"},\"description\":\"\\u5fc5\\u9808\\u5c0f\\u65bc300\\u5b57\\u6578\\uff0c\\u53ef\\u63a5\\u53d7\\u7db2\\u9801\\u6307\\u4ee4\\u78bc\",\"validation\":{\"rule\":\"max:300\"}}', 1),
(66, 6, 'sku', 'text', 'SKU', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sku_id\"},\"validation\":{\"rule\":\"max:100\"}}', 1),
(67, 6, 'options', 'hidden', '可共選項', 0, 0, 0, 0, 0, 0, '{}', 1),
(68, 6, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"sort_id\"},\"description\":\"\\u5546\\u54c1\\u9673\\u5217\\u6392\\u5e8f\",\"default\":1}', 1),
(69, 6, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"description\":\"\\u6b64\\u5546\\u54c1\\u9805\\u76ee\\u662f\\u5426\\u4f7f\\u7528\",\"default\":1,\"checked\":true}', 1),
(70, 6, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 1, '{}', 1),
(71, 6, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 1),
(72, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 1),
(73, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 1),
(74, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 1),
(75, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 1),
(76, 1, 'current_team_id', 'text', '當下團隊 ID', 0, 0, 1, 1, 1, 1, '{}', 1),
(77, 1, 'profile_photo_path', 'text', '大頭照路徑', 0, 0, 1, 1, 1, 1, '{}', 1),
(78, 1, 'username', 'text', '使用者名稱', 0, 1, 1, 1, 1, 1, '{}', 1),
(79, 1, 'nickname', 'text', '綽號', 0, 0, 1, 1, 1, 1, '{}', 1),
(80, 1, 'gender', 'text', '性別', 0, 1, 1, 1, 1, 1, '{}', 1),
(81, 1, 'identify', 'text', '身分確認', 0, 1, 1, 1, 1, 1, '{}', 1),
(82, 1, 'title', 'text', '標題', 0, 0, 1, 1, 1, 1, '{}', 1),
(83, 1, 'birthday', 'text', '生日', 0, 0, 1, 1, 1, 1, '{}', 1),
(84, 1, 'organization', 'text', '組織', 0, 1, 1, 1, 1, 1, '{}', 1),
(85, 1, 'tel', 'text', '市內電話', 0, 1, 1, 1, 1, 1, '{}', 1),
(86, 1, 'mobile', 'text', '手機號碼', 0, 1, 1, 1, 1, 1, '{}', 1),
(87, 1, 'fb_id', 'text', 'Fb ID', 0, 0, 1, 1, 1, 1, '{}', 1),
(88, 1, 'first_name', 'text', '名', 0, 0, 1, 1, 1, 1, '{}', 1),
(89, 1, 'last_name', 'text', '姓', 0, 0, 1, 1, 1, 1, '{}', 1),
(90, 1, 'pic', 'text', '照片', 0, 1, 1, 1, 1, 1, '{}', 1),
(91, 1, 'post_id', 'text', '貼文編號貼文編號', 0, 1, 1, 1, 1, 1, '{}', 1),
(92, 1, 'address', 'text', '地址', 0, 1, 1, 1, 1, 1, '{}', 1),
(93, 1, 'desc', 'text', '描述', 0, 0, 1, 1, 1, 1, '{}', 1),
(94, 1, 'enabled', 'text', '是否啟用', 1, 1, 1, 1, 1, 1, '{}', 1),
(95, 1, 'socialLinks', 'text', '社群連結', 0, 1, 1, 1, 1, 1, '{}', 1),
(96, 1, 'provider', 'hidden', '供應商', 0, 0, 0, 0, 0, 0, '{}', 1),
(97, 1, 'provider_id', 'hidden', '供應商 ID', 0, 0, 0, 0, 0, 0, '{}', 1),
(98, 4, 'cgy_belongsto_cgy_relationship', 'relationship', '父分類ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(99, 4, 'icon_html', 'code_editor', 'Icon html', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"icon_htmlid\"}}', 1),
(100, 6, 'vender_id', 'text', '販賣商ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"}}', 1),
(101, 6, 'item_belongsto_cgy_relationship', 'relationship', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgy_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(103, 6, 'item_belongsto_user_relationship', 'relationship', '販賣商ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"vender_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(104, 8, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(105, 8, 'name', 'text', '填表人', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"name_id_id\"},\"validation\":{\"rule\":\"required|max:20\"}}', 1),
(106, 8, 'mobile', 'text', '手機號碼', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"mobile_id\"},\"validation\":{\"rule\":\"max:20\"}}', 1),
(107, 8, 'subject', 'text', '主旨', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"subject_id\"},\"validation\":{\"rule\":\"required|max:100\"}}', 1),
(108, 8, 'mode', 'hidden', '模式', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"mode_id\"},\"validation\":{\"rule\":\"max:100\"}}', 1),
(109, 8, 'message', 'text_area', '訊息', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"message_id\"},\"validation\":{\"rule\":\"max:500\"}}', 1),
(110, 8, 'service', 'text', '所需服務', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"service_id\"},\"validation\":{\"rule\":\"max:40\"}}', 1),
(111, 8, 'email', 'text', '電子郵箱', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"email_id\"},\"validation\":{\"rule\":\"max:100\"}}', 1),
(112, 8, 'status', 'select_dropdown', '聯絡單狀態', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"status_id\"},\"default\":\"none\",\"options\":{\"none\":\"\\u5c1a\\u672a\\u8655\\u7406\",\"handled\":\"\\u8655\\u7406\\u4e2d\",\"done\":\"\\u5df2\\u5b8c\\u6210\"}}', 1),
(113, 8, 'tag', 'text', '標籤', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"tag_id\"},\"validation\":{\"rule\":\"max:100\"}}', 1),
(114, 8, 'handler_id', 'hidden', '處理者ID', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"handler_id_id\"}}', 1),
(115, 8, 'creator_id', 'hidden', '建立者ID', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"creator_id_id\"}}', 1),
(116, 8, 'source', 'text', '來源', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"source_id\"},\"validation\":{\"rule\":\"max:20\"}}', 1),
(117, 8, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 1),
(118, 8, 'updated_at', 'timestamp', '更新於', 0, 1, 0, 0, 0, 0, '{}', 1),
(119, 9, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(120, 9, 'cgy_id', 'text', '分類ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"cgy_id_id\"},\"validation\":{\"rule\":\"required\"}}', 1),
(121, 9, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"title_id\"},\"validation\":{\"rule\":\"required|max:40\"}}', 1),
(122, 9, 'author_id', 'text', '作者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"author_id\"},\"validation\":{\"rule\":\"required\"}}', 1),
(123, 9, 'content_small', 'text_area', '部分內容', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_small_id\"},\"validation\":{\"rule\":\"max:80\"}}', 1),
(124, 9, 'content', 'rich_text_box', '內容', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_id\"}}', 1),
(125, 9, 'attachment_names', 'text', '附件檔名', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"attachment_names_id\"},\"validation\":{\"rule\":\"max:200\"}}', 1),
(126, 9, 'attachment_paths', 'text', '附件路徑', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"8\",\"id\":\"attachment_paths_id\"},\"validation\":{\"rule\":\"max:500\"}}', 1),
(127, 9, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"validation\":{\"rule\":\"required|min:0\"}}', 1),
(128, 9, 'status', 'select_dropdown', '狀態', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"status_id\"},\"validation\":{\"rule\":\"required|max:30\"},\"default\":\"draft\",\"options\":{\"draft\":\"\\u8349\\u641e\",\"online\":\"\\u4e0a\\u7dda\"}}', 1),
(129, 9, 'featured', 'checkbox', '是否精選', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"2\",\"id\":\"featured_id\"},\"validation\":{\"rule\":\"required\"},\"checked\":true}', 1),
(130, 9, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"meta_description_id\"},\"validation\":{\"rule\":\"max:255\"}}', 1),
(131, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"meta_keywords_id\"},\"validation\":{\"rule\":\"max:255\"}}', 1),
(132, 9, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"seo_title_id\"},\"validation\":{\"rule\":\"max:255\"}}', 1),
(133, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"slug_id\"},\"validation\":{\"rule\":\"max:255\"}}', 1),
(134, 9, 'pic', 'media_picker', '圖片', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"12\",\"id\":\"pic_id\"},\"checked\":true,\"validation\":{\"rule\":\"required|max:255\"},\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"show_as_images\":true,\"hide_thumbnails\":true,\"quality\":90,\"thumbnails\":[{\"type\":\"fit\",\"name\":\"fit-500\",\"width\":500,\"height\":500,\"x\":50,\"y\":50,\"position\":\"center\"}]}', 1),
(135, 9, 'created_at', 'timestamp', '建立', 0, 1, 1, 1, 0, 1, '{}', 1),
(136, 9, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 1),
(137, 9, 'article_belongsto_cgy_relationship', 'relationship', '類別', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"cgy_id_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(138, 9, 'article_belongsto_user_relationship', 'relationship', '作者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"author_id\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 1),
(139, 10, 'article_id', 'text', '文章ID', 1, 1, 1, 1, 1, 1, '{}', 7),
(140, 10, 'tag_id', 'text', '標籤ID', 1, 1, 1, 1, 1, 1, '{}', 6),
(141, 10, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 5),
(142, 10, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 4),
(143, 10, 'article_tag_belongsto_article_relationship', 'relationship', '文章', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Article\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(145, 10, 'article_tag_belongsto_tag_relationship', 'relationship', '標籤', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsTo\",\"column\":\"tag_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_tag\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(146, 11, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(147, 11, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"validation\":{\"rule\":\"required|max:40\"}}', 1),
(148, 11, 'type', 'text', '類型', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"type_id\"},\"validation\":{\"rule\":\"max:30\"}}', 1),
(149, 11, 'mode', 'text', '模式', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"mode_id\"},\"validation\":{\"rule\":\"max:30\"}}', 1),
(150, 11, 'link', 'text', '鏈結', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"link_id\"},\"validation\":{\"rule\":\"max:255\"},\"default\":\"#\"}', 1),
(151, 11, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"sort_id\"},\"min\":1}', 1),
(152, 11, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true,\"default\":1,\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"}}', 1),
(153, 11, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 1),
(154, 11, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 1),
(155, 10, 'id', 'text', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1);

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
(1, 'users', 'users', '用戶', '用戶集', 'voyager-person', 'TCG\\Voyager\\Models\\User', NULL, NULL, NULL, 1, 1, NULL, '2023-01-12 20:03:27', '2023-01-14 09:26:00'),
(2, 'menus', 'menus', '側邊欄', '側邊欄', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, '', 1, 0, NULL, '2023-01-12 20:03:27', '2023-01-12 20:03:27'),
(3, 'roles', 'roles', '角色', '角色', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, '', 1, 0, NULL, '2023-01-12 20:03:27', '2023-01-12 20:03:27'),
(4, 'cgies', 'cgies', '分類', '分類集', 'voyager-bag', 'App\\Models\\Cgy', NULL, NULL, NULL, 1, 1, NULL, '2023-01-12 20:45:39', '2023-01-15 06:42:37'),
(5, 'elements', 'elements', '網路元素', '網路元素集', 'voyager-puzzle', 'App\\Models\\Element', NULL, NULL, NULL, 1, 1, NULL, '2023-01-14 05:21:05', '2023-01-16 01:10:03'),
(6, 'items', 'items', '商品', '商品集', 'voyager-dollar', 'App\\Models\\Item', NULL, NULL, NULL, 1, 1, NULL, '2023-01-14 08:10:35', '2023-01-15 08:44:58'),
(8, 'contacts', 'contacts', '聯絡單', '聯絡單集', 'voyager-paper-plane', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 1, NULL, '2023-01-16 00:59:30', '2023-01-16 03:01:39'),
(9, 'articles', 'articles', '文章', '文章集', 'voyager-news', 'App\\Models\\Article', NULL, NULL, NULL, 1, 1, NULL, '2023-01-16 02:48:52', '2023-01-16 06:47:42'),
(10, 'article_tag', 'article-tag', '文章標籤', '文章標籤集', 'voyager-character', 'App\\Models\\ArticleTag', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-01-31 03:53:23', '2023-01-31 06:11:18'),
(11, 'tags', 'tags', '標籤', '標籤集', 'voyager-milestone', 'App\\Models\\Tag', NULL, NULL, NULL, 1, 1, NULL, '2023-01-31 05:21:17', '2023-01-31 05:41:12');

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
  `vender_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `item_tag`
--

CREATE TABLE `item_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, 'footer', '2023-01-15 04:54:06', '2023-01-15 04:54:20'),
(4, 'article_cgy', '2023-01-16 11:25:15', '2023-01-16 11:25:15');

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
(25, 2, 'Blog Details', '/blog_details', '_self', NULL, '#000000', 24, 2, '2023-01-14 15:11:35', '2023-01-31 00:35:27', NULL, ''),
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
(48, 1, '文章集', '', '_self', 'voyager-news', NULL, NULL, 19, '2023-01-16 02:48:52', '2023-01-16 02:48:52', 'voyager.articles.index', NULL),
(49, 4, 'All Articles', '', '_self', NULL, '#000000', NULL, 20, '2023-01-16 11:26:30', '2023-01-16 11:33:43', NULL, ''),
(50, 4, 'New Articles', '', '_self', NULL, '#000000', NULL, 21, '2023-01-16 11:28:59', '2023-01-16 11:33:49', NULL, ''),
(51, 4, 'New Events', '', '_self', NULL, '#000000', NULL, 22, '2023-01-16 11:29:11', '2023-01-16 11:34:53', NULL, ''),
(52, 4, 'Travel', '', '_self', NULL, '#000000', NULL, 23, '2023-01-16 11:29:21', '2023-01-16 11:33:25', NULL, ''),
(53, 4, 'Food', '', '_self', NULL, '#000000', NULL, 24, '2023-01-16 11:29:35', '2023-01-16 11:35:04', NULL, ''),
(54, 4, 'Sport & Interest', '', '_self', NULL, '#000000', NULL, 25, '2023-01-16 11:29:57', '2023-01-16 11:35:30', NULL, ''),
(55, 4, 'Pet', '', '_self', NULL, '#000000', NULL, 26, '2023-01-16 11:30:05', '2023-01-16 11:35:37', NULL, ''),
(56, 4, 'Technology', '', '_self', NULL, '#000000', NULL, 27, '2023-01-16 11:30:40', '2023-01-16 11:35:49', NULL, ''),
(57, 1, '文章標籤集', '', '_self', 'voyager-character', NULL, NULL, 28, '2023-01-31 03:53:23', '2023-01-31 03:53:23', 'voyager.article-tag.index', NULL),
(58, 1, '標籤集', '', '_self', 'voyager-milestone', NULL, NULL, 29, '2023-01-31 05:21:17', '2023-01-31 05:21:17', 'voyager.tags.index', NULL);

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
(48, '2017_01_26_112101_create_article_tag', 2),
(49, '2017_01_26_113420_create_comments', 2),
(50, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(51, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(52, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(53, '2017_08_05_000000_add_group_to_settings_table', 2),
(54, '2017_11_26_013050_add_user_role_relationship', 2),
(55, '2017_11_26_015000_create_user_roles_table', 2),
(56, '2018_03_11_000000_add_user_settings', 2),
(57, '2018_03_14_000000_add_details_to_data_types_table', 2),
(58, '2018_03_16_000000_make_settings_value_nullable', 2),
(59, '2018_03_28_205026_create_items_table', 2),
(60, '2018_04_09_124213_create_item_tag', 2),
(61, '2018_04_18_173507_create_orders_table', 2),
(62, '2018_04_19_133408_create_order_item_table', 2),
(63, '2019_06_22_112612_add_columns_users_table', 2),
(64, '2019_08_19_000000_create_failed_jobs_table', 2),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(66, '2023_01_12_160025_create_sessions_table', 2),
(67, '2023_01_15_141309_add_columns_cgies_table', 2),
(68, '2023_01_15_151637_add_columns_items_table', 2),
(69, '2023_01_15_154000_create_item_user_table', 2);

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
(50, 'delete_articles', 'articles', '2023-01-16 02:48:52', '2023-01-16 02:48:52'),
(51, 'browse_article_tag', 'article_tag', '2023-01-31 03:53:23', '2023-01-31 03:53:23'),
(52, 'read_article_tag', 'article_tag', '2023-01-31 03:53:23', '2023-01-31 03:53:23'),
(53, 'edit_article_tag', 'article_tag', '2023-01-31 03:53:23', '2023-01-31 03:53:23'),
(54, 'add_article_tag', 'article_tag', '2023-01-31 03:53:23', '2023-01-31 03:53:23'),
(55, 'delete_article_tag', 'article_tag', '2023-01-31 03:53:23', '2023-01-31 03:53:23'),
(56, 'browse_tags', 'tags', '2023-01-31 05:21:17', '2023-01-31 05:21:17'),
(57, 'read_tags', 'tags', '2023-01-31 05:21:17', '2023-01-31 05:21:17'),
(58, 'edit_tags', 'tags', '2023-01-31 05:21:17', '2023-01-31 05:21:17'),
(59, 'add_tags', 'tags', '2023-01-31 05:21:17', '2023-01-31 05:21:17'),
(60, 'delete_tags', 'tags', '2023-01-31 05:21:17', '2023-01-31 05:21:17');

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
(60, 1);

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
('3eo6hGFzr006vaWXynRtjVarw0xxqNAHaeMNR32B', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDJVaFE1eGdrS2NQQ0tieHc2ZmloZjZrSTFFMUttSTVZMm9MZEN3TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675148146),
('5BMsELp1MyQk3f2PK4EhLWFytrwEyOXWsvL8TWZp', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWXdST2ZSN3pZYllVRDRpbkQ4cEphb2ZOZjI3Nmw2NUZsZmdmcTQxeiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU2OiJodHRwOi8vbG9jYWxob3N0OjYwODAvSS5KZXRzdHJlYW0vcHVibGljL2Jsb2dfZGV0YWlscy8yMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1675148144),
('9HrqNYQpGMNVAXzdJAIkej8dPBOPJjAwHORx2Za8', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkFXejFlRWNBUmpWZG1WajNnTDhoeWs5aDFPdzFFckRvRXNJbTBhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147938),
('kLAqA6tzWILJHxYGKTReqBfS5rz24nl5FifXXGyC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGtEcElEUjFzWllxcFNXRXpIMXV3RGJlRkVMYTZ5TmZQWlBEbW9kTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147384),
('lhmZgMc2IMsHQ6ZbYtEKhteYXK93Zx6jdSFDIasZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXZtS285cTdmUmV1S3hqQ0NPZnRKMFlNNW1wbVRlRFJSUWhTbHJ6byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147906),
('LpDFXd7DsglfiOPMLN6E6SetcGtZqK95zP2vJBoo', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0I5N3JhR21uam1PR3dVWTg3bldVTG93WXdodDh3MjkwenJqaTlOQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147422),
('UAT72hCug6vbgQ1piAc2ucP1brrwjXHsiG7JEyEj', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1VSTFBCeVpTbnc4aG15WUNrajZBWDRUTENmbW9wdG1OWGJsUFF6ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147399),
('UFbFo8C0NlRb7QTHKoMxLal2KfgSNQjKuw59uT5U', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3NWWHdybHRYcDRqbTBMYWRJMHNsZWNqUEQzYU1rT3g1VkloUGdDQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9JLkpldHN0cmVhbS9wdWJsaWMvYmxvZ19kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1675147732);

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
(1, 'site.title', '網站標題', 'CoDitto', '', 'text', 1, NULL),
(2, 'site.description', '網站描述', '客製化你們的好友關係，時事話題、感情心情、吃喝玩樂、學習工作，可以聊什麼、分享什麼由你決定!', '', 'text', 2, NULL),
(3, 'site.logo', '網站 Logo', 'settings\\January2023\\jbx8X4GaKAiVl1yMNYcE.png', '', 'image', 3, NULL),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, NULL),
(5, 'admin.bg_image', '後台背景圖像', '', '', 'image', 5, NULL),
(6, 'admin.title', 'Admin 標題', 'Voyager', '', 'text', 1, NULL),
(7, 'admin.description', '後台描述', '歡迎使用 Voyager - 不可錯過的 Laravel 後台管理框架', '', 'text', 2, NULL),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, NULL),
(9, 'admin.icon_image', '後台圖標', '', '', 'image', 4, NULL),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID （於後台控制面板使用）', '', '', 'text', 1, NULL),
(11, 'site.fb_url', 'Facebook Link', 'https://www.facebook.com/Co.freedesign', NULL, 'text', 6, NULL),
(12, 'site.Tw_url', 'Twitter Link', 'https://twitter.com/', NULL, 'text', 7, NULL),
(13, 'site.ig_url', 'Instagram Link', 'https://www.instagram.com/', NULL, 'text', 8, NULL),
(14, 'site.paypal_url', 'Paypal Link', 'https://www.paypal.com/tw/home', NULL, 'text', 11, NULL),
(18, 'site.copyright_icon', 'Copyright icon', '<i class=\"fa-solid fa-palette\"></i>', NULL, 'code_editor', 12, NULL),
(19, 'site.producer', '製作人', 'Jessie', NULL, 'text', 13, NULL),
(20, 'site.producer_url', '製作人網頁', 'https://www.facebook.com/cc407cc.jessie', NULL, 'text', 14, NULL),
(21, 'site.contact_country', '公司聯絡地址-國家', '台灣', NULL, 'text', 15, NULL),
(22, 'site.contact_zipcode', '公司聯絡地址-郵政區號', '100', NULL, 'text', 16, NULL),
(24, 'site.contact_city', '公司聯絡地址-縣市', '台北市', NULL, 'text', 17, NULL),
(25, 'site.contact_area', '公司聯絡地址-鄉政市區', '中正區', NULL, 'text', 18, NULL),
(26, 'site.contact_addr', '公司聯絡地址-地址', '100台北市中正區重慶南路一段122號', NULL, 'text', 19, NULL),
(27, 'site.contact_phone', '公司聯絡電話', '(02)23322212', NULL, 'text', 20, NULL),
(28, 'site.contact_time', '公司營業時間', '星期一到五 9:00 - 17:00', NULL, 'text', 21, NULL),
(29, 'site.contact_email', '公司聯絡電子信箱', 'support@gmail.com', NULL, 'text', 22, NULL);

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
(14, '資料結構', 'def,portfolio', NULL, '#', 4, 1, '2020-11-03 03:30:55', '2020-11-03 03:32:00'),
(15, '美食', '文章', NULL, '#', 1, 1, '2023-01-31 05:41:39', '2023-01-31 05:41:39'),
(16, '小吃', '文章', NULL, '#', 1, 1, '2023-01-31 05:41:57', '2023-01-31 05:41:57'),
(17, '必吃', '文章', NULL, '#', 1, 1, '2023-01-31 05:42:23', '2023-01-31 05:42:23'),
(18, '口袋名單', '文章', NULL, '#', 1, 1, '2023-01-31 05:42:47', '2023-01-31 05:42:47'),
(19, '旅遊', '文章', NULL, '#', 1, 1, '2023-01-31 05:44:29', '2023-01-31 05:44:29'),
(20, '好店', '文章', NULL, '#', 1, 1, '2023-01-31 05:44:47', '2023-01-31 05:44:47'),
(21, '最推', '文章', NULL, '#', 1, 1, '2023-01-31 05:45:34', '2023-01-31 05:45:34'),
(22, 'cp值', '文章', NULL, '#', 1, 1, '2023-01-31 05:46:01', '2023-01-31 05:46:01'),
(23, '排隊', '文章', NULL, '#', 1, 1, '2023-01-31 05:46:25', '2023-01-31 05:46:25'),
(24, '經濟', '文章', NULL, '#', 1, 1, '2023-01-31 05:46:40', '2023-01-31 05:46:40'),
(25, '新知', '文章', NULL, '#', 1, 1, '2023-01-31 05:47:09', '2023-01-31 05:47:09'),
(26, 'AI', '文章', NULL, '#', 1, 1, '2023-01-31 05:47:21', '2023-01-31 05:47:21'),
(27, '毛小孩', '文章', NULL, '#', 1, 1, '2023-01-31 05:47:46', '2023-01-31 05:47:46'),
(28, '國際', '文章', NULL, '#', 1, 1, '2023-01-31 05:48:10', '2023-01-31 05:48:10');

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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cgies`
--
ALTER TABLE `cgies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_tag`
--
ALTER TABLE `item_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `item_user`
--
ALTER TABLE `item_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  ADD CONSTRAINT `item_tag_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
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
