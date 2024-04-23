-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-23 03:51:07
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
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

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
(1, 'Alice', 'passwd_1', '愛麗絲', '絲絲'),
(2, 'Bob', 'passwd_2', '鮑伯', '伯伯'),
(3, 'Cindy', 'passwd_3', '心蒂', ''),
(4, 'Donald', 'passwd_4', '唐納德', ''),
(5, 'Ed', 'passwd_5', '艾德', ''),
(6, 'Ford', 'passwd_6', '唐納德', ''),
(7, 'Gary', 'passwd_7', '蓋理', ''),
(8, 'Hamiltion', 'passwd_8', '漢米爾頓', ''),
(9, 'Inez', 'passwd_9', '伊涅茲', ''),
(10, 'Jules', 'passwd_j', '朱爾斯', ''),
(11, 'Karina', 'passwd_k', '卡琳娜', ''),
(12, 'Lauren', 'passwd_l', '蘿倫', ''),
(13, 'Morgan', 'passwd_m', '摩根', ''),
(14, 'Nokia', 'passwd_n', '諾基亞', ''),
(15, 'Oliver', 'passwd_o', '奧利佛', ''),
(16, 'Patrick', 'passwd_p', '派翠克', ''),
(17, 'Quinn', 'passwd_q', '昆', ''),
(18, 'Renee', 'passwd_r', '芮妮', ''),
(19, 'Sandy', 'passwd_s', '山迪', ''),
(20, 'Tab', 'passwd_t', '塔伯', ''),
(21, 'Urania', 'passwd_u', '烏拉尼亞', ''),
(22, 'Venus', 'passwd_v', '維納斯', ''),
(23, 'Wanda', 'passwd_w', '汪達', ''),
(24, 'Xavier', 'passwd_x', '賽維爾', ''),
(25, 'Yale', 'passwd_y', '耶魯', ''),
(26, 'Ziv', 'passwd_z', '日傑夫', '');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
