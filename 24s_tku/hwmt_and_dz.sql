-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-14 05:08:22
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `account` varchar(64) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `realname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `account`
--

TRUNCATE TABLE `account`;
--
-- 傾印資料表的資料 `account`
--

INSERT INTO `account` (`id`, `account`, `passwd`, `realname`, `nickname`) VALUES
(1, 'Alice', '957d3fcb8add6746ea2dfa2fb0716b71', '愛麗絲', '絲絲'),
(2, 'Bob', '008db0dc6cadc2f5841196d451b116d2', '鮑伯', '伯伯'),
(3, 'Cindy', 'a8379f12af3bc042be41e7221cece687', '心蒂', ''),
(4, 'Donald', 'b28b2d7448892c631e58982ad8b32d1e', '唐納德', ''),
(5, 'Ed', '963c023561acc0b4e077923e4358453f', '艾德', ''),
(6, 'Ford', '5a80b5c624d7e4ab3e0ac8ecc7497252', '唐納德', ''),
(7, 'Gary', '5799a16d8296e9a3be501208d0525163', '蓋理', ''),
(8, 'Hamiltion', 'ee0dd411521f4649461dc849b129643a', '漢米爾頓', ''),
(9, 'Inez', 'df3b8f22eebd8fd3558d777aa35e2420', '伊涅茲', ''),
(10, 'Jules', 'e352564061cdf2982cd96b86c32746ac', '朱爾斯', ''),
(11, 'Karina', '127fa60f85db81832d3758a3930e4d0e', '卡琳娜', ''),
(12, 'Lauren', '364a2667cfd1c2a85fd6b27e298dfe7b', '蘿倫', ''),
(13, 'Morgan', '25e2a03abf8e1edad16a7e11b895dcd1', '摩根', ''),
(14, 'Nokia', 'f8f4f6ce28a0fb4dc401d43d4c1ced3d', '諾基亞', ''),
(15, 'Oliver', '25fdb6f40562411f504d08ac1dd135e9', '奧利佛', ''),
(16, 'Patrick', '196630eb00066adfbc8cf68f633b98ad', '派翠克', ''),
(17, 'Quinn', 'e3591a345dfe2e8ebb9558f3eb0408c1', '昆', ''),
(18, 'Renee', 'a645a644be8d4992f003a4fe1de528ec', '芮妮', ''),
(19, 'Sandy', '9c044f6c64c0f2eca7c92089fdc02dba', '山迪', ''),
(20, 'Tab', 'ca63b1aabb7bfd7be26e51187198b4f3', '塔伯', ''),
(21, 'Urania', '10d4d230f87b7b226b9c45c2810b096a', '烏拉尼亞', ''),
(22, 'Venus', '91095755154a226b0f09324202e723d0', '維納斯', ''),
(23, 'Wanda', '2f7fee2ad373a341fca3a49278cdab9b', '汪達', ''),
(24, 'Xavier', '0188740b42aa171856284828318ef7ff', '賽維爾', ''),
(25, 'Yale', '5bfa830d7d4d0ba06d0ed677c612275e', '耶魯', ''),
(26, 'Ziv', '2f74376a9a185c4b96fb775e9d744ae5', '日傑夫', '');

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `description` varchar(512) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `course`
--

TRUNCATE TABLE `course`;
--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`id`, `number`, `name`, `description`) VALUES
(1, '0322', '數位編輯系統', '寫網頁後端，用 PHP 和 SQL'),
(2, '0323', '互動程式設計', '本課程將針對codepen 為學習工具，結合html基礎以及Action\r\nscript進行系統開發之學習應用'),
(3, '0324', '教育統計概論', '本課程主要目的於瞭解基礎的統計概念'),
(4, '0326', '數位敘事創作', '數位說故事'),
(5, '0327', '創意與設計思維的策略訓練與反思', '探討創意思考與方法的理念與實務');

-- --------------------------------------------------------

--
-- 資料表結構 `course_member`
--

DROP TABLE IF EXISTS `course_member`;
CREATE TABLE `course_member` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `m_type` varchar(8) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `course_member`
--

TRUNCATE TABLE `course_member`;
--
-- 傾印資料表的資料 `course_member`
--

INSERT INTO `course_member` (`id`, `user_id`, `course_id`, `m_type`) VALUES
(1, 1, 1, '老師'),
(2, 2, 1, '學生'),
(3, 3, 1, '學生'),
(4, 2, 2, '學生'),
(5, 2, 4, '學生'),
(6, 3, 5, '學生'),
(7, 4, 1, '學生'),
(8, 4, 2, '學生'),
(9, 4, 3, '學生'),
(10, 5, 1, '學生'),
(11, 5, 4, '學生'),
(12, 6, 1, '學生'),
(13, 6, 4, '學生'),
(14, 7, 2, '老師'),
(15, 7, 3, '老師'),
(16, 8, 2, '學生'),
(17, 8, 4, '學生'),
(18, 8, 5, '學生'),
(19, 9, 1, '學生'),
(20, 9, 3, '學生'),
(21, 9, 5, '學生'),
(22, 10, 2, '學生'),
(23, 10, 3, '學生'),
(24, 11, 1, '學生'),
(25, 11, 2, '學生'),
(26, 11, 5, '學生'),
(27, 12, 1, '學生'),
(28, 12, 2, '學生'),
(29, 13, 4, '老師'),
(30, 13, 5, '老師'),
(31, 14, 2, '學生'),
(32, 14, 3, '學生'),
(33, 15, 2, '學生'),
(34, 15, 3, '學生'),
(35, 15, 4, '學生'),
(36, 16, 3, '學生'),
(37, 16, 4, '學生'),
(38, 17, 4, '學生'),
(39, 17, 5, '學生'),
(40, 18, 1, '學生'),
(41, 18, 2, '學生'),
(42, 18, 4, '學生'),
(43, 19, 1, '學生'),
(44, 19, 3, '學生'),
(45, 20, 4, '學生'),
(46, 20, 5, '學生'),
(47, 21, 1, '學生'),
(48, 21, 2, '學生'),
(49, 22, 3, '學生'),
(50, 22, 5, '學生'),
(51, 23, 2, '學生'),
(52, 23, 4, '學生'),
(53, 24, 1, '學生'),
(54, 24, 5, '學生'),
(55, 25, 2, '學生'),
(56, 25, 3, '學生'),
(57, 26, 1, '學生'),
(58, 26, 4, '學生');

-- --------------------------------------------------------

--
-- 資料表結構 `dz_board`
--

DROP TABLE IF EXISTS `dz_board`;
CREATE TABLE `dz_board` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `dz_board`
--

TRUNCATE TABLE `dz_board`;
--
-- 傾印資料表的資料 `dz_board`
--

INSERT INTO `dz_board` (`id`, `name`) VALUES
(1, '八卦板'),
(2, '就可板'),
(3, '黑特板');

-- --------------------------------------------------------

--
-- 資料表結構 `dz_thread`
--

DROP TABLE IF EXISTS `dz_thread`;
CREATE TABLE `dz_thread` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `nickname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `root_thread_id` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表新增資料前，先清除舊資料 `dz_thread`
--

TRUNCATE TABLE `dz_thread`;
--
-- 傾印資料表的資料 `dz_thread`
--

INSERT INTO `dz_thread` (`id`, `board_id`, `time`, `nickname`, `title`, `content`, `root_thread_id`, `ip`) VALUES
(16, 3, '2020-04-19 10:25:02', 'ddd', 'ddd', 'ddd', 0, '::1'),
(17, 0, '2020-04-19 10:25:41', '龜', '', 'ddddd', 16, '::1'),
(18, 0, '2020-04-19 10:27:30', 'ddd', '', 'aaa', 16, '::1'),
(19, 3, '2020-04-21 11:27:30', '龜', '喵嗚嗚', '!!!!!!!!', 0, '::1'),
(20, 0, '2020-04-21 11:27:49', '龜', '', 'zzzzzzz', 19, '::1'),
(21, 2, '2021-03-28 06:34:42', 'www', '喵嗚嗚', '喵', 0, '::1'),
(22, 3, '2021-04-06 10:32:37', 'www', '喵嗚嗚', 'aydgjkhgjfhjkfhdh', 0, '::1'),
(23, 0, '2021-04-06 10:35:18', '龜', '', 'wertyugfghjhg', 22, '::1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `course_member`
--
ALTER TABLE `course_member`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dz_board`
--
ALTER TABLE `dz_board`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dz_thread`
--
ALTER TABLE `dz_thread`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_member`
--
ALTER TABLE `course_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dz_board`
--
ALTER TABLE `dz_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dz_thread`
--
ALTER TABLE `dz_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
