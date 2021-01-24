-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        10.5.6-MariaDB - mariadb.org binary distribution
-- 伺服器作業系統:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 傾印 lms 的資料庫結構
CREATE DATABASE IF NOT EXISTS `lms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lms`;

-- 傾印  資料表 lms.header 結構
CREATE TABLE IF NOT EXISTS `header` (
  `HEADER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'HEADER唯一值',
  `NAME` varchar(50) NOT NULL DEFAULT '無欄位名' COMMENT '欄位名',
  `SORT` int(11) NOT NULL DEFAULT 0 COMMENT '層數',
  `PARENT_ID` int(11) NOT NULL DEFAULT 0 COMMENT '父層ID',
  `STATUS` int(11) NOT NULL DEFAULT 0 COMMENT '狀態(0:未啟用,1:啟用)',
  `URL` varchar(50) NOT NULL DEFAULT '0' COMMENT '轉向網址',
  `CREATE_BY` varchar(50) NOT NULL DEFAULT '系統建立' COMMENT '創建者',
  `CREATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '創建時間(系統自動產生)',
  `UPDATE_BY` varchar(50) NOT NULL DEFAULT '系統建立' COMMENT '更新者',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間(系統自動產生)',
  `USE_AUTHORITY` int(11) NOT NULL DEFAULT 0 COMMENT '使用權限',
  PRIMARY KEY (`HEADER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Header的欄位資料';

-- 取消選取資料匯出。

-- 傾印  資料表 lms.left_menu 結構
CREATE TABLE IF NOT EXISTS `left_menu` (
  `LEFT_MENU_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LEFT_MENU唯一識別碼',
  `NAME` varchar(50) NOT NULL DEFAULT '無欄位名' COMMENT '欄位名',
  `SORT` int(11) NOT NULL DEFAULT 0 COMMENT '層數',
  `PARENT_ID` int(11) NOT NULL DEFAULT 0 COMMENT '父層ID',
  `STATUS` int(11) NOT NULL DEFAULT 0 COMMENT '狀態',
  `URL` varchar(50) NOT NULL DEFAULT '0' COMMENT '轉向網址',
  `CREATE_BY` varchar(50) NOT NULL DEFAULT '系統建立' COMMENT '創建者',
  `CREATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '創建時間',
  `UPDATE_BY` varchar(50) NOT NULL DEFAULT '系統建立' COMMENT '更新者',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新時間',
  PRIMARY KEY (`LEFT_MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='後臺使用的左側表單';

-- 取消選取資料匯出。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
