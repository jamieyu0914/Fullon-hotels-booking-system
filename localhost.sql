-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 06 月 21 日 23:10
-- 伺服器版本: 5.1.73
-- PHP 版本： 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `106dba11`
--

-- --------------------------------------------------------

--
-- 資料表結構 `房間`
--

CREATE TABLE IF NOT EXISTS `房間` (
  `房間編號` int(100) NOT NULL AUTO_INCREMENT,
  `房型` varchar(100) NOT NULL,
  `每晚定價` varchar(100) NOT NULL,
  `坪數` varchar(100) NOT NULL,
  `床型` varchar(100) NOT NULL,
  `分館` varchar(100) NOT NULL,
  PRIMARY KEY (`房間編號`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 資料表的匯出資料 `房間`
--

INSERT INTO `房間` (`房間編號`, `房型`, `每晚定價`, `坪數`, `床型`, `分館`) VALUES
(20, '和洋家庭房', '$10,800 ', '14', '二大床 (180*200*2)', '三館'),
(19, '精緻家庭房', '$9,800 ', '14', '二大床 (180*200*2)', '三館'),
(18, '海景蜜月套房', '$21,800 ', '27', '一大床 (200*200*1)', '二館'),
(17, '海景豪華家庭客房', '$15,800 ', '13.5', '二大床 (180*200*2)', '二館'),
(16, '海景和室雙人房', '$15,800 ', '13.5', '二小床 (120*200*2)', '二館'),
(15, '精緻雙人房', '$12,800 ', '13.5', '二小床 (120*200*2)', '二館'),
(14, '家庭客房', '$12,800 ', '13.5', '二大床 (180*200*2)', '二館'),
(13, '行政客房', '$11,000 ', '14', '一大床 (180*200*1)', '一館'),
(12, '豪景客房B', '$16,800 ', '16', '一大床 (180*200*1)', '一館'),
(11, '豪景客房A', '$18,800 ', '22', '一大床 (180*200*1)', '一館'),
(10, '經典套房B', '$22,800 ', '28', '一大床 (200cm*200cm*1)', '三館'),
(9, '經典套房A', '$20,800 ', '23', ' 二大床 (180*200*2)', '二館'),
(8, '福容套房C', '$55,800 ', '42', '一大床 (200*200*1)', '三館'),
(7, '福容套房B', '$75,800 ', '42', '一大床 (200*200*1)', '二館'),
(6, '福容套房A', '$32,800 ', '16', '一大床 (200*200*1)', '一館'),
(5, '豪華套房C', '$20,800 ', '28', '一大床 (200*200*1)', '三館'),
(4, '豪華套房B', '$28,800 ', '27', '一大床+二小床\n(200*200*1 + 120*200*2)', '二館'),
(3, '豪華套房A', '$10,000 ', '12', '一大床 (180*200*1)', '一館'),
(2, '精緻客房B', '$10,800 ', '10.5', '一大床 (180*200*1)', '二館'),
(1, '精緻客房A', '$8,000 ', '10', '一大床 (180*200*1)', '一館'),
(21, '花園家庭房', '$10,800 ', '14', '二大床 (180*200*2)', '三館'),
(22, '豪華家庭房', '$11,800 ', '14', '二大床 (180*200*2)', '三館'),
(23, '經典和洋套房', '$11,800 ', '14', '一大床 (200*200*1)', '三館'),
(24, '豪華和洋套房', '$11,800 ', '14', '二大床 (180*200*2)', '三館');

-- --------------------------------------------------------

--
-- 資料表結構 `訂單`
--

CREATE TABLE IF NOT EXISTS `訂單` (
  `訂單編號` int(100) NOT NULL AUTO_INCREMENT,
  `顧客姓名` varchar(100) NOT NULL,
  `房型` varchar(100) NOT NULL,
  `分館` varchar(100) NOT NULL,
  `日期` varchar(100) NOT NULL,
  `人數` int(100) NOT NULL,
  `天數` int(100) NOT NULL,
  `總金額` varchar(100) NOT NULL,
  PRIMARY KEY (`訂單編號`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 資料表的匯出資料 `訂單`
--

INSERT INTO `訂單` (`訂單編號`, `顧客姓名`, `房型`, `分館`, `日期`, `人數`, `天數`, `總金額`) VALUES
(2, '馬英九', '福容套房B', '二館', '2017/01/01~2017/01/30', 2, 30, '75800*30'),
(61, '林信成', '福容套房A', '一館', '2020/02/02-2020/02/03', 1, 2, '$33800*2'),
(3, '蔡英文', '福容套房C', '三館', '2017/08/03-2017/08/05', 2, 3, '$55,800*3'),
(4, '朱立倫', '海景蜜月套房', '二館', '2017/12/03-2017/12/05', 2, 2, '$21,800*2'),
(5, '賴清德', '豪華家庭房', '三館', '2017/04/09-2017/04/13', 4, 5, '$11,800*5'),
(6, '陳菊', '花園家庭房', '三館', '2017/10/23-2017/10/24', 4, 1, '$10,800*1'),
(7, '方文光', '精緻家庭房', '三館', '2017/10/22-2017/10/24', 4, 2, '$9,800*2'),
(8, '賴晴君', '豪華套房A', '一館', '2017/07/22-2017/07/24', 2, 2, '$10,000*2'),
(9, '林依士', '經典和洋套房', '三館', '2017/09/11-2017/09/15', 2, 5, '$11,800*5'),
(10, '楊家美', '精緻雙人房', '二館', '2018/01/06-2018/01/09', 2, 4, '$12,800*4'),
(11, '沈政翰', '和洋家庭房', '三館', '2017/12/11-2017/12/15', 4, 5, '$10,800*5'),
(12, '袁嘉勇', '行政客房', '一館', '2017/08/14-2017/08/17', 1, 4, '$11,000*4'),
(13, '蔡子翔', '花園家庭房', '三館', '2017/07/25-2017/07/27', 4, 3, '$10,800*3'),
(14, '龔志穎', '精緻客房A', '一館', '2017/07/31-2017/08/03', 2, 5, '$8,000*5'),
(15, '黃聖恩', '精緻客房B', '二館', '2018/02/09-2018/02/12', 3, 4, '$10,800*4'),
(16, '陸芳瑜', '豪景客房A', '一館', '2017/04/01-2017/04/02', 2, 1, '$18,800*1'),
(17, '鄭敬萍', '家庭客房', '二館', '2017/02/01-2017/02/05', 4, 5, '$12,800*5'),
(18, '吳姿順', '精緻雙人房', '二館', '2017/03/02-2017/03/04', 2, 2, '$12,800*2'),
(19, '林宜育', '精緻客房B', '二館', '2017/01/11-2017/01/13', 2, 2, '$10,800*2'),
(20, '張家任', '海景豪華家庭客房', '二館', '2018/01/02-2018/01/03', 4, 2, '$15,800*2'),
(21, '涂珮瑜', '家庭客房', '二館', '2017/01/11-2017/01/15', 4, 5, '$12,800*5'),
(22, '黃尚廷', '經典套房A', '二館', '2017/10/24-2017/10/28', 4, 5, '$20,800*5'),
(23, '程良月', '家庭客房', '二館', '2017/03/22-2017/03/26', 4, 5, '$12,800*5'),
(24, '溫緯明', '福容套房B', '二館', '2017/09/15-2017/09/16', 2, 1, '$75,800*1'),
(25, '林佳昇', '豪華套房C', '三館', '2017/11/28-2017/11/30', 2, 3, '$20,800*3'),
(26, '許逸雲', '經典和洋套房', '三館', '2018/01/02-2018/01/02', 2, 1, '$11,800*1'),
(27, '楊鈺婷', '經典套房A', '二館', '2018/01/07-2018/01/10', 4, 4, '$20,800*4'),
(28, '黃銘雅', '經典套房B', '三館', '2017/04/22-2017/04/24', 2, 2, '$22,800*2'),
(29, '黃佳慧', '豪華和洋套房', '三館', '2017/06/12-2017/06/14', 4, 3, '$11,800*3'),
(30, '楊淑君', '家庭客房', '二館', '2017/03/22-2017/03/24', 4, 2, '$12,800*2'),
(31, '陳晏蕙', '和洋家庭房', '三館', '2017/04/02-2017/04/04', 4, 3, '$10,800*3'),
(32, '王怡樺', '豪華套房B', '二館', '2017/05/12-2017/05/13', 4, 1, '$28,800*1'),
(33, '蕭倩夢', '海景蜜月套房', '二館', '2017/04/04-2017/04/08', 2, 5, '$21,800*5'),
(34, '許若玟', '海景和室雙人房', '二館', '2018/01/02-2018/01/05', 2, 4, '$15,800*4'),
(35, '王學均', '豪景客房A', '一館', '2017/03/12-2017/03/13', 2, 2, '$18,800*2'),
(36, '劉一倩', '精緻家庭房', '三館', '2017/10/02-2017/10/05', 4, 4, '$9,800*4'),
(37, '陳宜蓁', '和洋家庭房', '三館', '2017/05/02-2017/05/03', 4, 1, '$10,800*1'),
(38, '黃于全', '精緻客房A', '一館', '2018/01/05-2018/01/08', 2, 4, '$8,000*4'),
(39, '楊怡婷', '豪華套房A', '一館', '2017/03/12-2017/03/14', 2, 1, '$10,000*1'),
(40, '倪方恒', '海景和室雙人房', '二館', '2017/11/10-2017/11/13', 2, 4, '$15,800*4'),
(41, '林義書', '豪華和洋套房', '二館', '2017/01/31-2017/02/01', 4, 1, '$11,800*1'),
(42, '林昱秀', '精緻客房B', '二館', '2017/12/31-2018/01/03', 2, 4, '$10,800*4'),
(43, '王麗珠', '精緻家庭房', '三館', '2018/01/01-2018/01/04', 4, 4, '$9,800*4'),
(44, '張嘉瑜', '豪華家庭房', '三館', '2017/11/22-2017/11/26', 4, 5, '$11,800*5'),
(45, '方哲嘉', '豪華套房B', '二館', '2018/02/01-2017/02/04', 4, 4, '$28,800*4'),
(46, '林建緯', '海景豪華家庭客房', '二館', '2017/03/22-2017/03/23', 4, 1, '$15,800*1'),
(47, '陳威幸', '行政客房', '一館', '2017/12/14-2017/12/16', 2, 3, '$11,000*3'),
(48, '林國茵', '豪景客房B', '一館', '2018/01/22-2018/01/25', 2, 4, '$16,800*4'),
(49, '劉禎萍', '豪華家庭房', '三館', '2018/02/01-2018/02/03', 4, 3, '$11,800*3'),
(50, '段薇旺', '精緻客房A', '一館', '2017/03/29-2017/04/01', 2, 4, '$8,000*4'),
(75, '郭邦任', '邦任', '大大', '2020/02/02-2020/02/04', 2, 2, '200,000,000'),
(62, '賴玲玲', '和洋家庭房', '三館', '2020/02/20-2020/02/22', 4, 2, '$10,800*2'),
(63, '古小姐', '經典套房A	', '二館', '2030/03/03-2030/03/13', 4, 9, '$20,800*9'),
(64, '郭邦任', '福容套房B	', '二館', '2018/02/06-2018/02/08', 2, 2, '$75,800*2'),
(67, '林素甘', '福容套房A', '二館', '2020/02/20-2020/02/22', 2, 2, '$33,800*2'),
(68, '郭邦任', '福容套房A', '二館', '2020/02/20-2020/02/22', 2, 2, '$33,800*2'),
(69, '郭邦任', '總統套房', '資料庫概論', '2018/01/10', 1, 1, '10000000'),
(70, '邦哥', '閒著無聊', '一館', '2018/01/06-2018/01/07', 1, 1, '$33,000'),
(71, '宋雪芳', '福容套房A', '二館', '2020/02/20-2020/02/22', 1, 2, '$33,800*2'),
(72, '邦任', '總統套房', '大神', '2018/01/07-2018/01/08', 1, 1, '100,000,000'),
(73, '宇', '精緻客房A', '一館', '106/02/22~02/28', 1, 7, '500000'),
(1, '歐陽', ' 精緻客房A', '一館', '2019/01/01', 2, 5, '40000');

-- --------------------------------------------------------

--
-- 資料表結構 `顧客`
--

CREATE TABLE IF NOT EXISTS `顧客` (
  `顧客編號` int(100) NOT NULL AUTO_INCREMENT,
  `顧客姓名` varchar(100) NOT NULL,
  `顧客電話` varchar(100) NOT NULL,
  `身分證` varchar(100) NOT NULL,
  PRIMARY KEY (`顧客編號`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 資料表的匯出資料 `顧客`
--

INSERT INTO `顧客` (`顧客編號`, `顧客姓名`, `顧客電話`, `身分證`) VALUES
(19, '龔志穎', '0946-318482', 'A237748489'),
(27, '蕭倩夢', '0977-791116', 'H270768491'),
(17, '林佳昇', '0953-305531', 'E197561115'),
(18, '朱立倫', '0939-311509', 'O118267308'),
(24, '林依士', '0909-949245', 'F240349959'),
(25, '陸芳瑜', '0946-962326', 'L296321954'),
(26, '涂珮瑜', '0985-620497', 'O284280399'),
(16, '張家任', '0911-063470', 'A148146926'),
(28, '劉禎萍', '0958-004261', 'A259441532'),
(20, '蔡英文', '0916-371862', 'A256919417'),
(22, '溫緯明', '0914-354645', 'G187292418'),
(23, '柯文哲', '0967-057110', 'A121895966'),
(21, '袁嘉勇', '0973-542912', 'L136817642'),
(1, '林昱秀', '0913-540338', 'L285857354'),
(2, '劉一倩', '0915-872493', 'H216636972'),
(3, '黃佳慧', '0974-265296', 'A230921524'),
(4, '吳姿順', '0944-089011', 'D250432414'),
(5, '段薇旺', '0958-191744', 'E290612415'),
(6, '馬英九', '0906-411096', 'L166888453'),
(7, '陳晏蕙', '0936-872117', 'E245564811'),
(8, '林建緯', '0962-031974', 'A127374939'),
(9, '黃尚廷', '0980-227348', 'G189277035'),
(10, '陳菊', '0936-783452', 'F123456789'),
(11, '楊怡婷', '0989-550303', 'H257371481'),
(12, '許若玟', '0920-614925', 'O278836705'),
(13, '楊鈺婷', '0953-189082', 'H296135983'),
(14, '倪方恒', '0954-311264', 'G123849593'),
(15, '賴清德', '0972-005064', 'A149754155'),
(29, '張嘉瑜', '0964-357138', 'F285647443'),
(30, '陳宜蓁', '0980-874548', 'H214671455'),
(31, '林國茵', '0967-142467', 'H219542717'),
(32, '黃聖恩', '0972-956979', 'A123456789'),
(33, '楊家美', '0931-462872', 'L235911367'),
(34, '林宜育', '0950-879243', 'B142574730'),
(35, '陳威幸', '0917-803084', 'A195380501'),
(36, '黃于全', '0916-669208', 'O112737543'),
(37, '蔡子翔', '0926-640491', 'A137248062'),
(38, '方文光', '0929-255571', 'F116174464'),
(39, '賴晴君', '0902-098405', 'A243664378'),
(40, '許逸雲', '0977-295471', 'F213745016'),
(41, '王怡樺', '0925-345417', 'A219666564'),
(42, '方哲嘉', '0964-238497', 'G142656287'),
(43, '王學均', '0957-840479', 'G101900211'),
(44, '林義書', '0972-128117', 'F188430724'),
(45, '黃銘雅', '0914-041210', 'H239861820'),
(46, '王麗珠', '0967-711630', 'L260015378'),
(47, '沈政翰', '0903-080242', 'A197930590'),
(48, '鄭敬萍', '0939-236000', 'F297472956'),
(49, '程良月', '0929-252090', 'A223327963'),
(50, '楊淑君', '0911-787035', 'L256403815');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;