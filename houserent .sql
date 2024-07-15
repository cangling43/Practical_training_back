-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-07-15 17:28:38
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `houserent`
--

-- --------------------------------------------------------

--
-- 表的结构 `contract`
--

CREATE TABLE `contract` (
  `contract_id` bigint(20) NOT NULL,
  `renter_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `renter_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `createTime` date NOT NULL COMMENT '合同生效时间',
  `duringTime` bigint(70) NOT NULL COMMENT '租赁时间',
  `cardId` bigint(128) NOT NULL COMMENT '身份证号',
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '租客联系地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `house`
--

CREATE TABLE `house` (
  `house_id` bigint(20) NOT NULL,
  `house_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deposit` int(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `area` int(11) NOT NULL,
  `elevator` tinyint(1) NOT NULL COMMENT '是否有电梯',
  `parking_space` tinyint(1) NOT NULL COMMENT '是否有停车位',
  `floor` int(20) NOT NULL COMMENT '底层/中层/高层',
  `num_bed` int(11) NOT NULL COMMENT '卧室个数',
  `num_bath` int(20) NOT NULL,
  `status` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rent_method` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `house`
--

INSERT INTO `house` (`house_id`, `house_name`, `address`, `price`, `deposit`, `owner_id`, `description`, `image_list`, `area`, `elevator`, `parking_space`, `floor`, `num_bed`, `num_bath`, `status`, `rent_method`, `updatedAt`, `createdAt`) VALUES
(1, '汤臣二品123', '白沙洲', 1000000, 10, 1, '白沙洲豪华别野', 'https://pic1.ajkimg.com/display/anjuke/d5d6cf-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/567f723d04e159d15530371b0bba4749-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/f5a6f4-%E9%A2%86%E7%BF%94%E6%88%BF%E5%9C%B0%E4%BA%A7/0bc97e2e9da02ca35d23d80a33030d68-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/816420-%E9%A2%86%E7%BF%94%E6%88%BF%E5%9C%B0%E4%BA%A7/787a75e11f4b69449db1c215d9595021-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/92ae53-%E9%A2%86%E7%BF%94%E6%88%BF%E5%9C%B0%E4%BA%A7/92f7a2d9a8fc4ef2e52372c9cfc88b72-800x650.jpg?frame=1', 400, 0, 0, 0, 1, 0, '1', '整租', '2024-07-15 06:44:39', '2024-07-10 00:48:46'),
(2, '汤臣二品', '华农', 200, 0, 1, '华农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/1e1cc2-%E5%98%89%E5%88%A9%E4%BF%A1/cb47742c807fbc4ba74b7c0818fc6867-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/bcfba6-%E5%98%89%E5%88%A9%E4%BF%A1/89cceb8753e391357e182f52727a7b27-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/5c1c32-%E5%98%89%E5%88%A9%E4%BF%A1/36870da4c42dc79ff5932bca9d1af952-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/e904db-%E5%98%89%E5%88%A9%E4%BF%A1/6077d444b6e64abe348e93a0def5df78-800x650.jpg?frame=1', 400, 0, 0, 0, 1, 0, '正在出租', '整租', '2024-07-13 08:49:29', '2024-07-10 00:48:46'),
(3, '汤臣三品', '华农', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/f099d5-%E5%98%89%E5%88%A9%E4%BF%A1/7712debd859aa0836d0fd3a497c2a7ae-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/16600f-%E5%98%89%E5%88%A9%E4%BF%A1/f8d8a3a2b9f3dbcbf39f979a5ec8e49e-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/ca5253-%E5%98%89%E5%88%A9%E4%BF%A1/3d2c991f17e96a913e026d56761acf26-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/f38ed5-%E5%98%89%E5%88%A9%E4%BF%A1/ef58ab65b43d15d6181f0bbe8ba52726-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '已出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(4, '汤臣四品', '华农', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/7a3395-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/e3547ec35bb3e456d555557489b220f4-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/e61713-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/2fab116324b37f232530290e3fe59007-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/d06264-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/f1f26058d097ee6ad7d36d69c936084e-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/66023c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/89513e5c52054391156524baefcf8a37-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '正在出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(6, '汤臣一品', '白沙洲', 1000000, 0, 1, '白沙洲豪华别野', 'https://pic1.ajkimg.com/display/anjuke/0dda03-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/11362165032a993fe2d6d64e609bb71c-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/99df55-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/34faea39e0879fbf9fc8e9e5f672febd-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/ab62ab-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0d109b1e6c7e67829afaf38372ffb146-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/35ce6c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/ba9958ae3b6b286bcf743ab8e284d25e-800x650.jpg?frame=1', 400, 0, 0, 0, 1, 0, '已出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(8, '汤臣三品', '华农', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/dd07ce-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/9073ec575b5674c2c62ce36c7aacddb4-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/7bc89a-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/544e53edc34e925e36055ad30bfe74b7-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/704509-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0ce218d7e92b82d6d15ef50fec1741c9-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/b9df1f-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/823feb1c3b6be82db2d6319bf9304cf3-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '正在出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(9, '测试房源名称', '测试地址', 50000, 50000, 1, NULL, 'https://pic1.ajkimg.com/display/anjuke/3a3d6b-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/a56b3f03f714c5713e1f8dc47bd3ad78-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/cf8b05-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/831b992f9f99b766cdeeccd61c53ff68-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/35ce89-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/49224a238e195217db9e30ab03107b29-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/f21e2d-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0a16d55d847bdfcfeea0c7844949b993-800x650.jpg?frame=1', 500, 1, 1, 12, 1, 2, '已出租', '整租', '2024-07-11 19:19:26', '2024-07-11 19:19:26'),
(10, '很好小区', 'hh', 100, 200, 2, '2', 'https://pic1.ajkimg.com/display/anjuke/10bbc5-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/f9abe720b3fac7c2761533f77a4e5e85-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/146268-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/67fc72b1ba5356d2c3c1baa7c414782d-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/5d180c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/a28281263d0a257184df9a4e5b369b68-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/e26e13-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/821eb36a10bb779d6d1afee0950d6811-800x650.jpg?frame=1', 500, 1, 1, 12, 233, 3, '1', '整租', '2024-07-11 21:13:40', '2024-07-11 21:13:40'),
(14, 'haha小区', 'hh', 1232, 12312, 1, '', 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=800', 500, 1, 1, 123, 123, 12, '1', '整租', '2024-07-14 01:12:34', '2024-07-14 01:12:34'),
(15, '测试房源名称', '测试地址', 50000, 50000, 1, NULL, 'https://pic1.ajkimg.com/display/anjuke/3a3d6b-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/a56b3f03f714c5713e1f8dc47bd3ad78-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/cf8b05-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/831b992f9f99b766cdeeccd61c53ff68-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/35ce89-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/49224a238e195217db9e30ab03107b29-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/f21e2d-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0a16d55d847bdfcfeea0c7844949b993-800x650.jpg?frame=1', 500, 1, 1, 12, 1, 2, '已出租', '整租', '2024-07-11 19:19:26', '2024-07-11 19:19:26'),
(16, '很好小区', 'hh', 100, 200, 2, '2', 'https://pic1.ajkimg.com/display/anjuke/10bbc5-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/f9abe720b3fac7c2761533f77a4e5e85-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/146268-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/67fc72b1ba5356d2c3c1baa7c414782d-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/5d180c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/a28281263d0a257184df9a4e5b369b68-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/e26e13-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/821eb36a10bb779d6d1afee0950d6811-800x650.jpg?frame=1', 500, 1, 1, 12, 233, 3, '1', '整租', '2024-07-11 21:13:40', '2024-07-11 21:13:40'),
(17, 'haha小区', 'hh', 1232, 12312, 1, '', 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=800', 500, 1, 1, 123, 123, 12, '1', '整租', '2024-07-14 01:12:34', '2024-07-14 01:12:34'),
(18, '汤臣三品', '橘子洲', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/f099d5-%E5%98%89%E5%88%A9%E4%BF%A1/7712debd859aa0836d0fd3a497c2a7ae-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/16600f-%E5%98%89%E5%88%A9%E4%BF%A1/f8d8a3a2b9f3dbcbf39f979a5ec8e49e-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/ca5253-%E5%98%89%E5%88%A9%E4%BF%A1/3d2c991f17e96a913e026d56761acf26-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/f38ed5-%E5%98%89%E5%88%A9%E4%BF%A1/ef58ab65b43d15d6181f0bbe8ba52726-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '已出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(19, '汤臣四品', '橘子洲', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/7a3395-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/e3547ec35bb3e456d555557489b220f4-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/e61713-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/2fab116324b37f232530290e3fe59007-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/d06264-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/f1f26058d097ee6ad7d36d69c936084e-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/66023c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/89513e5c52054391156524baefcf8a37-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '正在出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(20, '汤臣一品', '橘子洲', 1000000, 0, 1, '白沙洲豪华别野', 'https://pic1.ajkimg.com/display/anjuke/0dda03-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/11362165032a993fe2d6d64e609bb71c-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/99df55-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/34faea39e0879fbf9fc8e9e5f672febd-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/ab62ab-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0d109b1e6c7e67829afaf38372ffb146-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/35ce6c-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/ba9958ae3b6b286bcf743ab8e284d25e-800x650.jpg?frame=1', 400, 0, 0, 0, 1, 0, '已出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(21, '汤臣三品', '橘子洲头', 2000000, 0, 1, '华中农豪华别野', 'https://pic1.ajkimg.com/display/anjuke/dd07ce-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/9073ec575b5674c2c62ce36c7aacddb4-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/7bc89a-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/544e53edc34e925e36055ad30bfe74b7-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/704509-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/0ce218d7e92b82d6d15ef50fec1741c9-800x650.jpg?frame=1,https://pic1.ajkimg.com/display/anjuke/b9df1f-%E5%AE%89%E5%B1%85%E5%AE%A2N%2B/823feb1c3b6be82db2d6319bf9304cf3-800x650.jpg?frame=1', 400, 1, 1, 1, 2, 1, '正在出租', '整租', '2024-07-10 00:48:46', '2024-07-10 00:48:46'),
(25, '很好好小区', 'hh', 1232, 200, 19, '华中农业大学', '\"\"', 500, 1, 1, 12, 11, 3, '1', '整租', '2024-07-15 06:45:29', '2024-07-15 06:45:29'),
(24, '金', 'hh', 500, 111, 1, '1231231', '\"\"', 500, 1, 1, 11, 1, 1, '2', '合租', '2024-07-15 06:03:09', '2024-07-15 06:03:09');

-- --------------------------------------------------------

--
-- 表的结构 `liuyan`
--

CREATE TABLE `liuyan` (
  `mb_id` bigint(64) NOT NULL,
  `user_id` bigint(50) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '未读为1  已读为2',
  `createAt` date NOT NULL,
  `updateAt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `news_id` bigint(12) NOT NULL COMMENT 'id主键',
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`news_id`, `title`, `content`, `phone`, `email`, `address`, `createdAt`, `updatedAt`) VALUES
(1, '租房合同', '`\r\n# 房屋租赁合同\r\n## 合同编号：_______\r\n## 合同双方：\r\n**出租方（甲方）：**\r\n- 姓名：_______\r\n- 身份证号：_______\r\n- 联系电话：_______\r\n- 地址：_______\r\n**承租方（乙方）：**\r\n- 姓名：_______\r\n- 身份证号：_______\r\n- 联系电话：_______\r\n- 地址：_______\r\n鉴于甲方是房屋所有权人，同意将房屋出租给乙方；乙方愿意承租甲方房屋。甲乙双方遵循平等、自愿、公平、诚信的原则，经充分协商，达成以下协议：\r\n## 第一条 房屋基本情况\r\n1. 甲方出租房屋地址：_______（以下简称“租赁房屋”）。\r\n2. 租赁房屋面积：_______平方米。\r\n3. 房屋结构及设施情况：_______。\r\n## 第二条 租赁期限\r\n1. 本合同租赁期限自_______年_______月_______日起至_______年_______月_______日止。\r\n2. 租赁期满后，如乙方需继续租赁，应提前一个月通知甲方，并签订新的租赁合同。\r\n## 第三条 租金及支付方式\r\n1. 租金为人民币（大写）：_______元整（小写）：￥_______元。\r\n2. 租金支付方式：每_______个月支付一次，乙方应在每月_______日前将租金支付至甲方指定的账户。\r\n3. 甲方收到租金后，应向乙方出具收款凭证。\r\n## 第四条 保证金\r\n1. 乙方应在签订本合同时一次性向甲方支付保证金人民币￥_______元。\r\n2. 租赁期满后，乙方按照本合同约定将房屋及附属设施交还给甲方，甲方无息退还保证金。\r\n## 第五条 房屋使用及维护\r\n1. 乙方应合理使用租赁房屋及其附属设施，并承担日常维护责任。\r\n2. 甲方负责租赁房屋主体结构及附属设施的维修，确保房屋及设施安全。\r\n3. 乙方不得擅自改变房屋结构和用途，如需装修，应征得甲方书面同意。\r\n## 第六条 合同变更、解除及终止\r\n1. 甲乙双方协商一致，可以变更或解除本合同。\r\n2. 在租赁期内，如乙方未按约定支付租金，甲方有权提前解除合同。\r\n3. 租赁期满或合同解除后，乙方应在_______日内将房屋及附属设施交还给甲方。\r\n## 第七条 违约责任\r\n1. 甲乙双方应严格履行本合同各项条款，如一方违约，应承担相应的违约责任。\r\n2. 甲方未按约定提供租赁房屋或乙方未按约定支付租金，违约方应向守约方支付违约金，违约金为一个月租金。\r\n## 第八条 争议解决\r\n1. 本合同履行过程中，如发生争议，甲乙双方应友好协商解决。\r\n2. 如协商无果，可向租赁房屋所在地人民法院提起诉讼。\r\n## 第九条 其他约定\r\n1. 本合同一式两份，甲乙双方各执一份。\r\n2. 本合同自双方签字（或盖章）之日起生效。\r\n甲方（签字/盖章）：_______      日期：_______年_______月_______日\r\n乙方（签字/盖章）：_______      日期：_______年_______月_______日\r\n', '10086', 'zhanggaobo@qq.com', 'notice1', '2024-07-13 14:09:15', '2024-07-13 14:09:15'),
(2, '房东注意条款', '# 房东出租房子需要注意哪些细节？\r\n\r\n## 一、房东出租房子需要注意以下细节：\r\n\r\n1. 签署合同时候检验对方的身份证件，并且互相留身份证的复印件；\r\n2. 签合同时写清租房日期以及房租到期时间，交租方式和交租日期；\r\n3. 明确装饰装修的处理约定；\r\n4. 注明违约条款和责任；\r\n5. 作为房东，一定要做好消防工作。\r\n\r\n《中华人民共和国民法典》第七百零四条\r\n\r\n租赁合同的内容一般包括租赁物的名称、数量、用途、租赁期限、租金及其支付期限和方式、租赁物维修等条款。\r\n\r\n## 二、房东出租房屋可以收取押金吗？\r\n\r\n本网站提醒您，房屋出租可以有押金，押金是双方协商一致的结果，租房押金的是否收取与收取方式法律未做强制性规定。双方法律关系不存在且无其他纠纷后，押金应予以退还；造成损害的，可以押金据实支付或另行赔偿。\r\n\r\n《中华人民共和国民法典》第三百九十四条\r\n\r\n为担保债务的履行，债务人或者第三人不转移财产的占有，将该财产抵押给债权人的，债务人不履行到期债务或者发生当事人约定的实现抵押权的情形，债权人有权就该财产优先受偿。\r\n\r\n前款规定的债务人或者第三人为抵押人，债权人为抵押权人，提供担保的财产为抵押财产。\r\n\r\n![房屋出租](../../../public/image/notic2.jpg)\r\n\r\n## 三、房东出租房屋的最长期限\r\n\r\n房屋租赁最长期限是二十年。当事人每次签订的租赁合同所约定租赁期限不得超过20年；房屋租赁期间届满，当事人续订租房屋赁合同的租赁期限自续订之日起同样不得超过20年；超过20年部分租赁期限无效。\r\n\r\n《中华人民共和国民法典》第七百零五条\r\n\r\n租赁期限不得超过二十年。超过二十年的，超过部分无效。租赁期限届满，当事人可以续订租赁合同；但是，约定的租赁期限自续订之日起不得超过二十年。\r\n', '111', '11', '11', '2024-07-13 14:09:15', '2024-07-13 14:09:15'),
(3, '租房子要注意什么，要交物业费吗？', '一、租房子要注意什么，要交物业费吗？\r\n\r\n\r\n        根据规定，物业管理服务费由物业管理公司按照物业管理合同的约定向业主收取。房屋出租后，如果业主与承租人在合同中对物业管理服务费的缴纳有具体规定的，以约定为准。因此，如果你和房东在租赁合同中约定了由谁付物业费，那么就按照合同来办。如果合同中没有就此作出约定，则由房东支付物业费。\r\n\r\n\r\n        国务院《物业管理条例》第六十七条。《合同法》第六十条。\r\n\r\n\r\n        如果出租人和承租人在合同中约定，由承租人向物业公司缴纳物业费，遵守物业公司的相关管理规定，并且该合同经过了物业公司的书面确认，那么出租人就将其与物业公司的债权债务转让给了承租人，承租人应当向物业公司履行这部分权利义务。如果承租人没有付物业费，就应向物业公司承担违约责任。\r\n\r\n合同\r\n二、租房的流程\r\n\r\n\r\n        确定需求-寻找房源信息-联系房东（或委托房屋中介）-看房-定房-签合同\r\n\r\n\r\n        租房正规过程\r\n\r\n\r\n        1、双方签订租赁合同。\r\n\r\n\r\n        2、房主查看房客身份证，（可向公安局确认身份证）.并索取复印件做为合同附件。\r\n\r\n\r\n        3、房客查看房主产权证明（可向当地房地产交易所进行确认），房主身份证（可向公安局确认身份证.）及两证的统一（即产权证的产权人与身份证相同）。\r\n\r\n\r\n        4、合同签字（房主方）与产权证的产权人相同.如不相同需有产权人的代理委托书。\r\n\r\n\r\n        5、办理合租合同时，需有房主方的同意出租（或同意转租）证明。\r\n\r\n\r\n        6、定房的时候如果房主要求支付定金，也需要请查看以上证件，一般定金不要超过租房合同总金额的20%。', '10086', 'zhanggaobo@qq.com', 'notice1', '2024-07-13 14:09:15', '2024-07-13 14:09:15'),
(4, 'hh', 'content 啊分色法8彭我们新F899021Q3ASDFAJKNDFCUIOL健身卡，买奶粉撒娇控制了农村罚款，时间内佛。ijkwenLKJF租房子要注意什么，要交物业费吗？\r\n\r\n 2024-07-13T14:09:15.000Z\r\n一、租房子要注意什么，要交物业费吗？ 根据规定，物业管理服务费由物业管理公司按照物业管理合同的约定向业主收取。房屋出租后，如果业主与承租人在合同中对物业管理服务费的缴纳有具体规定的，以约定为准。因此，如果你和房东在租赁合同中约定了由谁付物业费，那么就按照合同来办。如果合同中没有就此作出约定，则由房东支付物业费。 国务院《物业管理条例》第六十七条。《合同法》第六十条。 如果出租人和承租人在合同中约定，由承租人向物业公司缴纳物业费，遵守物业公司的相关管理规定，并且该合同经过了物业公司的书面确认，那么出租人就将其与物业公司的债权债务转让给了承租人，承租人应当向物业公司履行这部分权利义务。如果承租人没有付物业费，就应向物业公司承担违约责任。 合同 二、租房的流程 确定需求-寻找房源信息-联系房东（或委托房屋中介）-看房-定房-签合同 租房正规过程 1、双方签订租赁合同。 2、房主查看房客身份证，（可向公安局确认身份证）.并索取复印件做为合同附件。 3、房客查看房主产权证明（可向当地房地产交易所进行确认），房主身份证（可向公安局确认身份证.）及两证的统一（即产权证的产权人与身份证相同）。 4、合同签字（房主方）与产权证的产权人相同.如不相同需有产权人的代理委托书。 5、办理合租合同时，需有房主方的同意出租（或同意转租）证明。 6、定房的时候如果房主要求支付定金，也需要请查看以上证件，一般定金不要超过租房合同总金额的20%。\r\n\r\n (+86) 13654896654    zhanggaobo@qq.com    http://127.0.0.1:5173/notice1\r\n11\r\n\r\n 2024-07-13T14:09:15.000Z\r\n1111\r\n\r\n (+86) 13654896654    zhanggaobo@qq.com    http://127.0.0.1:5173/notice1\r\n租房子要注意什么，要交物业费吗？\r\n\r\n 2024-07-13T14:09:15.000Z\r\n一、租房子要注意什么，要交物业费吗？ 根据规定，物业管理服务费由物业管理公司按照物业管理合同的约定向业主收取。房屋出租后，如果业主与承租人在合同中对物业管理服务费的缴纳有具体规定的，以约定为准。因此，如果你和房东在租赁合同中约定了由谁付物业费，那么就按照合同来办。如果合同中没有就此作出约定，则由房东支付物业费。 国务院《物业管理条例》第六十七条。《合同法》第六十条。 如果出租人和承租人在合同中约定，由承租人向物业公司缴纳物业费，遵守物业公司的相关管理规定，并且该合同经过了物业公司的书面确认，那么出租人就将其与物业公司的债权债务转让给了承租人，承租人应当向物业公司履行这部分权利义务。如果承租人没有付物业费，就应向物业公司承担违约责任。 合同 二、租房的流程 确定需求-寻找房源信息-联系房东（或委托房屋中介）-看房-定房-签合同 租房正规过程 1、双方签订租赁合同。 2、房主查看房客身份证，（可向公安局确认身份证）.并索取复印件做为合同附件。 3、房客查看房主产权证明（可向当地房地产交易所进行确认），房主身份证（可向公安局确认身份证.）及两证的统一（即产权证的产权人与身份证相同）。 4、合同签字（房主方）与产权证的产权人相同.如不相同需有产权人的代理委托书。 5、办理合租合同时，需有房主方的同意出租（或同意转租）证明。 6、定房的时候如果房主要求支付定金，也需要请查看以上证件，一般定金不要超过租房合同总金额的20%。\r\n\r\n (+86) 13654896654    zhanggaobo@qq.com    http://127.0.0.1:5173/notice1\r\nhh\r\n\r\n 2024-07-13T07:09:42.000Z\r\ncontent 啊分色法8彭我们新F899021Q3ASDFAJKNDFCUIOL健身卡，买奶粉撒娇控制了农村罚款，时间内佛。ijkwenLKJF', '1233', 'jin@163.com', '11321', '2024-07-13 07:09:42', '2024-07-13 07:09:42'),
(5, 'hh', '# 租房时如何辨别虚假房源信息？\r\n\r\n## 一、假房源\r\n\r\n随着互联网的发展，大家可能会通过网站上的租房平台、网站论坛、贴吧等地方获取租房信息，或者是加入各种租房群，这些网络上的消息简略，无法确定房源的真实性和发布信息者的身份。\r\n\r\n除此之外有选择通过中介公司来获取房源信息，这样信息集中便捷。还有的可能偶尔通过朋友或者朋友圈看到了房源信息等。\r\n\r\n![假房源1](../../../public/image/notice3-1.jpg)\r\n\r\n## 二、看价格\r\n\r\n在找房源时，我们可以了解同一小区或附近区域租房的价格，做到心中有数。虽然有时遇到急租的房子，价格可能会低一点。但是看到价格严重偏低的房源，一定要心存警惕，不要因为贪图小便宜而被骗了大钱财。\r\n\r\n## 三、看图片\r\n\r\n有些虚假房源信息，为了吸引租客前来看房，在自身房源质量不过关的情况下，故意使用装修精美环境优美的图片，欺骗租客。但是如果实际看房才发现房屋脏乱差破，和图片严重不符。浪费时间和精力，还容易让人生气。\r\n\r\n![假房源4](../../../public/image/notice3-4.jpg)\r\n\r\n## 四、看文字\r\n\r\n假房源的图片一般是假的，那么就很难对房源进行描述。所以假房源的文字描述都是模糊不清的，一笔带过或者干脆不写。根本没有房屋情况、户型、家装、电器、环境等关键性信息。遇到这种情况的一般不要相信。\r\n\r\n![假房源2](../../../public/image/notice3-2.jpg)\r\n\r\n虚假房源一般来说没有认证，各种平台查不到房屋信息的基本可以确定是假房源了。在租房的时候，也可能遇到房屋信息是真的，但是出租方没有与房屋产权人一致的证件。这是我们就要当心是否遭遇了假房东或者一房多租的骗局。\r\n\r\n网上的信息复杂海量，我们很难区分，从网上找房源信息的，要注意租房平台是否正规合法，从而分辨房源信息的真实性。除了网上的信息，从中介那里得到的信息，也要确认该中介公司是否正规合法。通过朋友获取的信息，要看看朋友是否靠谱可信。\r\n\r\n![假房源3](../../../public/image/notice3-3.jpg)\r\n', '1233', 'jin@163.com', '11321', '2024-07-13 16:47:52', '2024-07-13 16:47:52'),
(23, '7月14的新闻', 'content', '1233', 'jin@163.com', '11321', '2024-07-14 01:14:37', '2024-07-14 01:14:37'),
(24, '7', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 01:51:47', '2024-07-15 01:51:47'),
(25, 'hh', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 01:56:19', '2024-07-15 01:56:19'),
(26, 'hh', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 04:34:05', '2024-07-15 04:34:05'),
(27, 'hh', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 04:34:31', '2024-07-15 04:34:31'),
(28, 'hh', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 06:39:42', '2024-07-15 06:39:42'),
(29, '哈哈哈哈哈哈', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 06:41:07', '2024-07-15 06:41:07'),
(30, '哈哈哈哈哈', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 06:42:05', '2024-07-15 06:42:05'),
(31, 'hh', 'content', '1233', 'jin@163.com', '11321', '2024-07-15 06:43:49', '2024-07-15 06:43:49');

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) NOT NULL,
  `renter_id` bigint(20) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `house_id` bigint(20) NOT NULL COMMENT '房源id',
  `contract_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `problem`
--

CREATE TABLE `problem` (
  `pro_id` bigint(20) NOT NULL,
  `pro_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `problem`
--

INSERT INTO `problem` (`pro_id`, `pro_title`, `type`, `content`, `createdAt`, `updatedAt`) VALUES
(1, '以下是房屋租赁中经常会出现的问题', '常见问题', '1.房东问题\r\n2.登陆问题\r\n3.房源问题\r\n4.订单问题\r\n5.合同问题', '2024-07-14 16:39:22', '2024-07-14 16:39:22'),
(3, '常见登录问题', '登录问题', '忘记登录密码\r\n\r\n，用户忘记了登录密码，尝试多次均失败，需要通过身份验证重置密码。\r\n\r\n\r\n\r\n', '2024-07-15 08:36:56', '2024-07-15 08:36:56'),
(2, '常见房东问题', '房东问题', '1. 房东不履行维修义务\r\n，租户发现房屋内设施损坏并通知房东，但房东长时间未进行维修，导致租户生活受到影响。\r\n2. 房东擅自进入租户房间，房东未经租户同意，擅自进入租户房间，侵犯租户隐私权，导致租户不满。\r\n\r\n3. 房东提高租金，房东在合同未到期时，要求租户增加租金，威胁不涨租金就要驱逐租户。', '2024-07-14 16:39:22', '2024-07-14 16:39:22'),
(7, '常见登录问题', '登录问题', '账号被锁定，用户多次输入错误密码后，账号被系统锁定，需要联系客服解锁。', '2024-07-15 08:36:56', '2024-07-15 08:36:56'),
(4, '常见房源问题', '房源问题', '1. 房源信息不实租户到达房源后发现与网上描述不符，存在虚假宣传问题，要求退租或赔偿。\r\n\r\n2. 房源卫生状况差，租户入住后发现房源卫生状况恶劣，存在垃圾和异味，影响正常居住。\r\n\r\n3. 房源设施损坏，租户入住后发现房屋内设施如空调、热水器等无法正常使用，影响生活质量。\r\n', '2024-07-15 08:39:21', '2024-07-15 08:39:21'),
(5, '常见订单问题', '订单问题', '1. 订单支付失败，用户在支付租房订单时遇到支付失败问题，无法完成订单确认，需要解决支付渠道问题。\r\n\r\n2. 订单取消退款问题，用户因故取消订单后，长时间未收到退款，联系平台客服无果。\r\n\r\n3. 订单信息错误，用户发现订单信息如入住日期、房型等存在错误，需要及时修改以免影响入住。\r\n', '2024-07-15 08:40:21', '2024-07-15 08:40:21'),
(6, '常见合同问题', '合同问题', '1. 合同条款不明\r\n   内容：租户在签订租房合同时，发现合同条款不清晰，存在模糊不明的责任归属问题。\r\n\r\n2. 合同提前终止\r\n   内容：租户或房东因特殊原因希望提前终止合同，但因合同未到期导致赔偿纠纷。\r\n\r\n3. 合同续签问题\r\n   -内容：租期即将到期，租户希望续签合同，但与房东在租金、条款等方面存在分歧。', '2024-07-15 08:41:03', '2024-07-15 08:41:03'),
(8, '常见房东问题', '房东问题', '3. 房东提高租金，房东在合同未到期时，要求租户增加租金，威胁不涨租金就要驱逐租户。', '2024-07-14 16:39:22', '2024-07-14 16:39:22'),
(9, '常见房源问题', '房源问题', '2. 房源卫生状况差，租户入住后发现房源卫生状况恶劣，存在垃圾和异味，影响正常居住。\r\n\r\n', '2024-07-15 08:39:21', '2024-07-15 08:39:21'),
(10, '常见订单问题', '订单问题', '2. 订单取消退款问题，用户因故取消订单后，长时间未收到退款，联系平台客服无果。\r\n\r\n', '2024-07-15 08:40:21', '2024-07-15 08:40:21'),
(11, '常见合同问题', '合同问题', '2. 合同提前终止\r\n   内容：租户或房东因特殊原因希望提前终止合同，但因合同未到期导致赔偿纠纷。\r\n', '2024-07-15 08:41:03', '2024-07-15 08:41:03');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '三级',
  `identity` tinyint(2) NOT NULL COMMENT '0：租客；1：房东；2：管理员 3：超级管理员',
  `age` int(11) DEFAULT NULL COMMENT '年龄段',
  `profession` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户信息';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `token`, `name`, `phone`, `email`, `address`, `identity`, `age`, `profession`, `updatedAt`, `createdAt`) VALUES
(3, 'eriktse3', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NIS0AZSWRUP9RQL96SSU9B2JE3I08X6JHBX8MB29ES5PVY5GAE6TU8OSNIK3DFY2', NULL, '', '1231a@qq.com', 'HZAU', 0, 13, NULL, '2024-07-13 10:32:56', '2024-07-13 10:32:56'),
(2, '1234', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 'OVKR5E2ECADZV3Q6DL25FJZF9QOR5SFGFFKCFQR4H5SSZNECUB00XGNJ1Q8DO01F', NULL, '', '13228481@mm.com', 'HZAUHZAU', 0, NULL, NULL, '2024-07-13 10:39:20', '2024-07-13 10:39:20'),
(14, '1235', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', '9297UEOZXCN6PVVGHMAEU5CKAEHRDHYV6MZAUCQAKKUF6U87HY3Q9F7P8FEOQGL2', NULL, '', '666@112.com', 'HZAU', 0, NULL, NULL, '2024-07-13 10:43:23', '2024-07-13 10:43:23'),
(15, '153854', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', '1GSQ1B1UWS1DLBOAG0EFA9MDLTPW0X5Z1MHFC85RZR6VVOPFNIN7ELWCPE9SZOX3', NULL, '', 'hh@163.com', 'HZAU', 0, NULL, NULL, '2024-07-13 10:52:03', '2024-07-13 10:52:03'),
(16, '12334', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NW8B40FBREITU4B73THIJYI2FLWVCGVFQ8ZQGLMR0ZFY9F9YSU32L8ORAP93BNHG', NULL, '', '1234@163.com', 'HZAU', 0, NULL, NULL, '2024-07-13 10:53:08', '2024-07-13 10:53:08'),
(18, '123456', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '5RRLT7ZEMOYF846FJHKAISTP0XEAZ07FEI0RES5558O3OCX1QZOLMS6S2MBN69HC', '刘亦菲', '', '123243@qq.com', 'HZAU', 2, NULL, NULL, '2024-07-13 16:14:06', '2024-07-13 16:14:06'),
(19, '12345', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'NIS0AZSWRUP9RQL96SSU9B2JE3I08X6JHBX8MB29ES5PVY5GAE6TU8OSNIK3DFYY', '金娇娇2', '12345', '1231a@qq.com', 'HZAU', 2, NULL, NULL, '2024-07-13 20:36:39', '2024-07-13 20:36:39'),
(1, 'debra123', '7aac246a655227afaf339c6b8795844ab852fc9e81e52eda406dbcb15418134b', '618N113NZ1ZN3GJPL8RAVLNCLCRM4PPL1WBFQ4GSQY2FD9GB76FP8RNFL6NE85DN', '金娇娇', '10087', 'debra@qq.com', 'HZAU', 2, NULL, NULL, '2024-07-14 08:17:24', '2024-07-14 08:17:24'),
(21, 'xvbnm,.', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'QBVTGA1IJ4H78AFIWRNBEDPDOJZCNSHVNZUD673QOIYSLWVZ6TJ253SWD4T42H0E', NULL, '123355566', NULL, NULL, 0, NULL, NULL, '2024-07-15 04:31:23', '2024-07-15 04:31:23'),
(22, '1zxdfgh', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'HLF5I86UR0G0OGEMTA8ZYPVJM6EAW3QI3TQNEC5OCEQXWZW8FZRCAR93RHWLTB3S', NULL, '', NULL, NULL, 0, NULL, NULL, '2024-07-15 04:32:25', '2024-07-15 04:32:25'),
(23, '123455', 'fc1f09ab08ebdd072ea6da53a5691abcc18c9163b1be1f0921a5adb50e3f5077', 'AG8MUZRD7D8LO9KRWWLGH02MECSAYZZVYSQKBPXDELTZD17BYK66YX1D5D5DX5M6', NULL, '123455', NULL, NULL, 0, NULL, NULL, '2024-07-15 04:53:32', '2024-07-15 04:53:32'),
(24, '1234561', '45c4771dcd1cbd65babf3dd8cd70fed56d428fe708183ba1d146f0ad153773d7', 'YL09O4DFQ245TEKGWL1F2JQU20X2W8DLTLWAY505COBWSFT0PCX6OWGUCFSOR1HJ', NULL, '1234561', NULL, NULL, 1, NULL, NULL, '2024-07-15 04:59:14', '2024-07-15 04:59:14'),
(26, 'cangling', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'TNAKLZ0Q8HS14XL26Q8E9IZMZUAKD69S3AAV1T0CZ013X3FY8L6MVT7ELTGYXSWS', NULL, '13628659956', NULL, NULL, 0, NULL, NULL, '2024-07-15 06:17:00', '2024-07-15 06:17:00');

--
-- 转储表的索引
--

--
-- 表的索引 `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_id`);

--
-- 表的索引 `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`);

--
-- 表的索引 `liuyan`
--
ALTER TABLE `liuyan`
  ADD PRIMARY KEY (`mb_id`);

--
-- 表的索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 表的索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- 表的索引 `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`pro_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `contract`
--
ALTER TABLE `contract`
  MODIFY `contract_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `house`
--
ALTER TABLE `house`
  MODIFY `house_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `liuyan`
--
ALTER TABLE `liuyan`
  MODIFY `mb_id` bigint(64) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `news_id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT 'id主键', AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `problem`
--
ALTER TABLE `problem`
  MODIFY `pro_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
