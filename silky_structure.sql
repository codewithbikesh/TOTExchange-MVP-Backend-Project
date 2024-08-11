-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: silky_exchange
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_type` char(20) DEFAULT NULL,
  `user_id` int NOT NULL,
  `ip` char(100) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27606 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `airdrop_request`
--

DROP TABLE IF EXISTS `airdrop_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airdrop_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bnb_address` varchar(255) NOT NULL,
  `telegram_id` varchar(55) DEFAULT NULL,
  `twitter_account` varchar(55) DEFAULT NULL,
  `medium_account` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` text,
  `status` int NOT NULL DEFAULT '0' COMMENT '0=Activate 1=deactivate',
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `images` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `article_category_id` int NOT NULL,
  `is_latest_release` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_name` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Registration` varchar(55) DEFAULT NULL COMMENT 'Block number',
  `Buy` varchar(55) DEFAULT NULL COMMENT 'Block number',
  `Deposit` varchar(55) DEFAULT NULL,
  `online_sell` varchar(55) DEFAULT NULL,
  `bnb_price` varchar(255) NOT NULL DEFAULT '0',
  `inr_price` varchar(255) NOT NULL DEFAULT '0',
  `USDT_TXN` varchar(55) DEFAULT NULL COMMENT 'Block number',
  `BUSD_TXN` varchar(55) DEFAULT NULL COMMENT 'Block number',
  `BUSDT_TXN` varchar(55) NOT NULL DEFAULT '0' COMMENT 'Block number',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `slider_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog_type` varchar(255) DEFAULT NULL COMMENT '1- Blog, 2-upcoming events',
  `introduction` text,
  `addslider` int NOT NULL DEFAULT '0' COMMENT '1=yes, 0=no',
  `title_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog1`
--

DROP TABLE IF EXISTS `blog1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_old`
--

DROP TABLE IF EXISTS `blog_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_slider`
--

DROP TABLE IF EXISTS `blog_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Deactive',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `burnings`
--

DROP TABLE IF EXISTS `burnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `burnings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL,
  `burn` varchar(255) NOT NULL,
  `burning_date` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_calculation`
--

DROP TABLE IF EXISTS `business_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_calculation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `direct_referral_id` int DEFAULT NULL,
  `total_business` int DEFAULT NULL,
  `capture_balance` int DEFAULT NULL,
  `remaining_balance` int DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2624 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `caping_plan`
--

DROP TABLE IF EXISTS `caping_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caping_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `maximum` double(30,2) DEFAULT NULL,
  `daily_caping` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cms_about_us`
--

DROP TABLE IF EXISTS `cms_about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_about_us` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cms_cookie_policy`
--

DROP TABLE IF EXISTS `cms_cookie_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_cookie_policy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cms_exchange_platform`
--

DROP TABLE IF EXISTS `cms_exchange_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_exchange_platform` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cms_privacy_policy`
--

DROP TABLE IF EXISTS `cms_privacy_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_privacy_policy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cms_tou`
--

DROP TABLE IF EXISTS `cms_tou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_tou` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmsdata_banner`
--

DROP TABLE IF EXISTS `cmsdata_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmsdata_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmsdata_faq`
--

DROP TABLE IF EXISTS `cmsdata_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmsdata_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coin_pairs`
--

DROP TABLE IF EXISTS `coin_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coin_pairs` (
  `id` int NOT NULL,
  `left_coin_id` int NOT NULL,
  `right_coin_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1' COMMENT '1:Active piars,0:deactive pairs',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(55) DEFAULT NULL,
  `symbol` char(20) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `user_ids` text,
  `contract` varchar(100) DEFAULT NULL,
  `Bnb_contract` varchar(100) DEFAULT NULL,
  `Trc_contract` varchar(100) DEFAULT NULL,
  `test_contract` varchar(100) DEFAULT NULL,
  `is_tradable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=deactivated, 1=actiivated',
  `is_visible` tinyint NOT NULL DEFAULT '0' COMMENT '0=deactivated, 1=actiivated',
  `withdrawLimitNonKYC` float(11,6) NOT NULL,
  `is_withdraw` int NOT NULL COMMENT '0=DeActivate 1=Activate',
  `is_deposit` int NOT NULL COMMENT '0=deActivate 1=Activate',
  `withdraw_fee` double(18,6) NOT NULL DEFAULT '0.000000',
  `deposit_fee` double(18,6) NOT NULL DEFAULT '0.000000',
  `trade_fee` double(18,6) NOT NULL DEFAULT '0.000000',
  `ip` char(30) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `opening_date` datetime NOT NULL,
  `starting_price` double(18,6) NOT NULL DEFAULT '0.000000',
  `minimum_trade_limit` double(18,6) NOT NULL,
  `maximum_trade_limit` double(18,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` char(100) NOT NULL,
  `phone` char(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bnb_address` varchar(255) DEFAULT NULL,
  `amount` varchar(55) NOT NULL DEFAULT '0',
  `transactionHash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deposit_Inr`
--

DROP TABLE IF EXISTS `deposit_Inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_Inr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coin_id` int NOT NULL,
  `bank_id` int NOT NULL,
  `admin_bank_id` int NOT NULL,
  `amount` double(11,6) NOT NULL,
  `fee` double(11,6) NOT NULL,
  `usdt_amount` double(11,6) NOT NULL,
  `transaction_date` date NOT NULL,
  `trx_number` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_image` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0=Pending,1=approve,2=Rejected.',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deposit_Inr_old`
--

DROP TABLE IF EXISTS `deposit_Inr_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_Inr_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coin_id` int NOT NULL,
  `bank_id` int NOT NULL,
  `admin_bank_id` int NOT NULL,
  `amount` double(11,6) NOT NULL,
  `fee` double(11,6) NOT NULL,
  `usdt_amount` double(11,6) NOT NULL,
  `transaction_date` date NOT NULL,
  `trx_number` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_image` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0=Pending,1=approve,2=Rejected.',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `device_management`
--

DROP TABLE IF EXISTS `device_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_management` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `browsername` varchar(255) NOT NULL,
  `browserversion` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `latitute` varchar(255) DEFAULT NULL,
  `longtitute` varchar(255) DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6916 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dummybalanceBeforeAirdrop`
--

DROP TABLE IF EXISTS `dummybalanceBeforeAirdrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dummybalanceBeforeAirdrop` (
  `id` int NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `balance` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_price`
--

DROP TABLE IF EXISTS `dynamic_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `one` varchar(55) NOT NULL DEFAULT '0',
  `two` varchar(55) NOT NULL DEFAULT '0',
  `three` varchar(55) NOT NULL DEFAULT '0',
  `four` varchar(55) NOT NULL DEFAULT '0',
  `five` varchar(55) NOT NULL DEFAULT '0',
  `six` varchar(55) NOT NULL DEFAULT '0',
  `seven` varchar(55) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `earning_projections`
--

DROP TABLE IF EXISTS `earning_projections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earning_projections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `block` int NOT NULL,
  `referral_percentage` int NOT NULL,
  `matching` int NOT NULL COMMENT 'In USD',
  `rewards` int NOT NULL COMMENT 'In USD',
  `allocations` int NOT NULL COMMENT 'In Token',
  `total_earning` int NOT NULL COMMENT 'In USD',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exchange_transaction`
--

DROP TABLE IF EXISTS `exchange_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange_transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coin_id` int NOT NULL,
  `trx_number` varchar(200) DEFAULT NULL,
  `trx_type` int NOT NULL,
  `amount` double(18,12) NOT NULL,
  `usd_amount` double(18,6) NOT NULL DEFAULT '0.000000',
  `trx_fee` float(11,6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:pending,1:completed,2:failed',
  `from_address` varchar(100) DEFAULT NULL,
  `to_address` varchar(100) DEFAULT NULL,
  `hash` varchar(200) DEFAULT NULL,
  `block` int DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exchange_transaction_old`
--

DROP TABLE IF EXISTS `exchange_transaction_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange_transaction_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coin_id` int NOT NULL,
  `trx_number` varchar(200) DEFAULT NULL,
  `trx_type` int NOT NULL,
  `amount` double(18,12) NOT NULL,
  `usd_amount` double(18,6) NOT NULL DEFAULT '0.000000',
  `trx_fee` float(11,6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:pending,1:completed,2:failed',
  `from_address` varchar(100) DEFAULT NULL,
  `to_address` varchar(100) DEFAULT NULL,
  `hash` varchar(200) DEFAULT NULL,
  `block` int DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pair_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unpair 1=pair',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fee_type`
--

DROP TABLE IF EXISTS `fee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `fee_percentage` float(11,6) NOT NULL,
  `minimum_limit` varchar(255) NOT NULL,
  `maximum_limit` varchar(255) NOT NULL,
  `ip` char(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gallary`
--

DROP TABLE IF EXISTS `gallary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `images` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stacking_id` int NOT NULL DEFAULT '0',
  `bnb_address` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '1-ROI Token Credited, 2- Referral Token Credited, 3-Airdrop, 4-Level Complete, 5-Allocations, 6 - Rewards\r\n',
  `amount` decimal(11,2) DEFAULT NULL,
  `history` text,
  `_from` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `staking_id` int DEFAULT NULL,
  `referral_percent` decimal(11,2) DEFAULT NULL,
  `stage` int DEFAULT '0',
  `block` int DEFAULT '0',
  `usd_amount` float(11,2) DEFAULT '0.00',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `history_userid` (`user_id`),
  KEY `history__from` (`_from`),
  KEY `history_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=109816 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `latest_release`
--

DROP TABLE IF EXISTS `latest_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `latest_release` (
  `id` int NOT NULL AUTO_INCREMENT,
  `images` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `level_system`
--

DROP TABLE IF EXISTS `level_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level_system` (
  `id` int NOT NULL AUTO_INCREMENT,
  `percentage` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matching_bonus`
--

DROP TABLE IF EXISTS `matching_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_bonus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage` char(50) DEFAULT NULL,
  `business` decimal(11,2) DEFAULT NULL,
  `percent` decimal(11,2) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `ip` char(100) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mnm_cp`
--

DROP TABLE IF EXISTS `mnm_cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnm_cp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int NOT NULL DEFAULT '1' COMMENT '1=SuperAdmin, 2=SubAdmin1, 3=SubAdmin2, 4=SubAdmin3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `online_sell`
--

DROP TABLE IF EXISTS `online_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_sell` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bnb_address` varchar(255) DEFAULT NULL,
  `token_amount` varchar(155) NOT NULL DEFAULT '0',
  `transactionHash` varchar(255) DEFAULT NULL,
  `bnb_amount` varchar(155) NOT NULL DEFAULT '0',
  `transferHash` varchar(255) DEFAULT NULL,
  `process_reason` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_type` char(10) DEFAULT NULL COMMENT 'BUY or SELL',
  `isMarket` tinyint(1) NOT NULL DEFAULT '0',
  `pair_id` int DEFAULT NULL,
  `amount` double(18,10) DEFAULT NULL,
  `remaining_amount` float(11,6) NOT NULL,
  `price` double(18,6) NOT NULL,
  `fee_type_id` int DEFAULT NULL,
  `fee_amount` float(11,6) DEFAULT NULL,
  `trx_reference` char(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:Open,1:completed,2: Cancelled',
  `completed_date` date DEFAULT NULL,
  `completed_by` int NOT NULL DEFAULT '0' COMMENT 'ID of completed by orderID',
  `ip` char(30) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cancelled_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `fee_type_id` (`fee_type_id`),
  KEY `orders_ibfk_4` (`pair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders_old`
--

DROP TABLE IF EXISTS `orders_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_old` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_type` char(10) DEFAULT NULL COMMENT 'BUY or SELL',
  `isMarket` tinyint(1) NOT NULL DEFAULT '0',
  `pair_id` int DEFAULT NULL,
  `amount` double(18,10) DEFAULT NULL,
  `remaining_amount` float(11,6) NOT NULL,
  `price` double(18,6) NOT NULL,
  `fee_type_id` int DEFAULT NULL,
  `fee_amount` float(11,6) DEFAULT NULL,
  `trx_reference` char(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:Open,1:completed,2: Cancelled',
  `completed_date` date DEFAULT NULL,
  `completed_by` int NOT NULL DEFAULT '0' COMMENT 'ID of completed by orderID',
  `ip` char(30) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cancelled_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `fee_type_id` (`fee_type_id`),
  KEY `orders_ibfk_4` (`pair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phase` varchar(55) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referrals` (
  `id` int NOT NULL DEFAULT '0',
  `referral_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` char(20) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `bio` char(255) DEFAULT NULL,
  `bnb_address` varchar(255) NOT NULL,
  `referral_code` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `stacking_balance` varchar(55) NOT NULL DEFAULT '0',
  `points` varchar(55) NOT NULL DEFAULT '0',
  `balance` varchar(55) NOT NULL DEFAULT '0',
  `vesting_balance` varchar(55) NOT NULL DEFAULT '0',
  `refer_by` varchar(255) DEFAULT NULL,
  `directc_refer` varchar(55) NOT NULL DEFAULT '0',
  `buying_amount` varchar(55) NOT NULL DEFAULT '0',
  `total_deposit` float NOT NULL DEFAULT '0',
  `transactionHash` varchar(255) DEFAULT NULL,
  `blocked` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `googleAuthCode` char(255) DEFAULT NULL,
  `QR_code` longtext,
  `is_email_verify` int DEFAULT '0',
  `referred_by_id` int DEFAULT NULL,
  `password_org` char(100) DEFAULT NULL,
  `profile_pic` char(255) DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `ip` char(100) DEFAULT NULL,
  `stage` int DEFAULT '0',
  `block` int DEFAULT '0',
  `reward_wallet` float(11,2) DEFAULT '0.00',
  `kyc_document` varchar(255) NOT NULL,
  `kyc_proof_of_address` varchar(255) NOT NULL,
  `kyc_document_image` varchar(255) NOT NULL,
  `kyc_document_type` int NOT NULL COMMENT '0- aadhar 1-pancard 2-voterid',
  `kyc_approval` int NOT NULL DEFAULT '0' COMMENT '0 - Pending 1 - Approved 2 - Rejected',
  `is_kyc` int NOT NULL DEFAULT '0',
  `mobile_number` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `kyc_document_type2` varchar(255) NOT NULL,
  `kyc_document_image2` varchar(255) NOT NULL,
  `kyc_document2` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `email_otp` int NOT NULL,
  `email_auth` int NOT NULL COMMENT '	0=pending 1=Verified',
  `is_enable_google_auth_code` int NOT NULL COMMENT '0=false 1=true',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2624 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` char(25) NOT NULL,
  `blocks` int NOT NULL,
  `reward` int NOT NULL COMMENT 'In USD',
  `allocation` int NOT NULL COMMENT 'In MNT',
  `badge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sell_data`
--

DROP TABLE IF EXISTS `sell_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bnb_address` varchar(255) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `sell_price` varchar(55) NOT NULL DEFAULT '0',
  `transactionHash` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `withdraw_fee` int NOT NULL DEFAULT '0',
  `direct_refer_point` int NOT NULL DEFAULT '0',
  `point_price` int NOT NULL DEFAULT '0',
  `social_media_points` int NOT NULL DEFAULT '0',
  `monthly_withdraw` float NOT NULL DEFAULT '0',
  `deposit_fee` float NOT NULL DEFAULT '0',
  `trade_fee` int NOT NULL DEFAULT '0',
  `locking_duration` int DEFAULT NULL COMMENT 'In Month',
  `referral_percent` int DEFAULT NULL,
  `referral_percent1` double(11,2) DEFAULT '0.00',
  `min_withdraw` int NOT NULL,
  `daily_max_withdraw` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stacking`
--

DROP TABLE IF EXISTS `stacking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stacking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` varchar(55) DEFAULT NULL,
  `fee` float(11,6) DEFAULT '0.000000',
  `period` varchar(10) DEFAULT NULL,
  `remaining` int NOT NULL DEFAULT '0',
  `bnb_address` varchar(255) DEFAULT NULL,
  `wallet` varchar(55) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `phase_id` int DEFAULT NULL,
  `apy` float(11,2) DEFAULT '0.00',
  `usd_amount` float(11,2) DEFAULT '0.00',
  `is_withdraw` int NOT NULL DEFAULT '0',
  `ip` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=958 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stacking_price`
--

DROP TABLE IF EXISTS `stacking_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stacking_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `minimum` float NOT NULL,
  `six` float NOT NULL,
  `nine` float NOT NULL,
  `twelve` float NOT NULL,
  `eighteen` float NOT NULL,
  `twentyfour` float NOT NULL,
  `hundered` float(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staking_period`
--

DROP TABLE IF EXISTS `staking_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staking_period` (
  `id` int NOT NULL AUTO_INCREMENT,
  `duration` int NOT NULL COMMENT 'In Days',
  `percentage` float NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_withdraw` int NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `swap_transaction`
--

DROP TABLE IF EXISTS `swap_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `swap_transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bnb_address` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `bnb_amount` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL DEFAULT '0',
  `bnb_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `ticket_number` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=pending 1=Resolve 2=Reject',
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticket_message`
--

DROP TABLE IF EXISTS `ticket_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bnb_address` varchar(255) DEFAULT NULL,
  `amount` varchar(55) NOT NULL DEFAULT '0' COMMENT 'In BNB',
  `token` float NOT NULL DEFAULT '0',
  `fee` float(20,6) NOT NULL,
  `withdrable` varchar(55) NOT NULL DEFAULT '0',
  `phase` int NOT NULL DEFAULT '1',
  `transactionHash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `locking_duration` int DEFAULT NULL,
  `user_transaction_id` varchar(255) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0' COMMENT '1-Locking duration completed 0-Pending 2-Reject',
  `business_added` int DEFAULT '0',
  `usd_amount` float(11,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `transaction_user_id` (`user_id`),
  KEY `transaction_datetime` (`created_at`)
) ENGINE=MyISAM AUTO_INCREMENT=1774 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trx_type`
--

DROP TABLE IF EXISTS `trx_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trx_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trx_type_name` varchar(30) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_balance_before_mlm`
--

DROP TABLE IF EXISTS `user_balance_before_mlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_balance_before_mlm` (
  `id` int NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `bnb_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stacking_balance` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `vesting_balance` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `balance` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_bank_detail`
--

DROP TABLE IF EXISTS `user_bank_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_bank_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `dashboard_access` varchar(255) NOT NULL,
  `customer_refunds` int NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `holder_name` varchar(255) NOT NULL,
  `beneficiary_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pancard_number` varchar(255) NOT NULL,
  `pancard_image` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_wallet`
--

DROP TABLE IF EXISTS `user_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `coin_id` int DEFAULT NULL,
  `Balance` double(18,6) NOT NULL,
  `balanceInOrder` double(18,6) NOT NULL DEFAULT '0.000000',
  `public_key` char(255) DEFAULT NULL,
  `private_key` char(255) DEFAULT NULL,
  `bnb_publickey` char(255) DEFAULT NULL,
  `bnb_privatekey` char(255) DEFAULT NULL,
  `trc_publickey` char(255) DEFAULT NULL,
  `trc_privatekey` char(255) DEFAULT NULL,
  `ip` char(30) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_coinId_unique` (`user_id`,`coin_id`),
  KEY `user_id` (`user_id`),
  KEY `coin_id` (`coin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_wallet20230210_before_duplicate_wallet_remove`
--

DROP TABLE IF EXISTS `user_wallet20230210_before_duplicate_wallet_remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_wallet20230210_before_duplicate_wallet_remove` (
  `id` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `coin_id` int DEFAULT NULL,
  `Balance` double(18,6) NOT NULL,
  `balanceInOrder` double(18,6) NOT NULL DEFAULT '0.000000',
  `public_key` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `private_key` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `bnb_publickey` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `bnb_privatekey` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `trc_publickey` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `trc_privatekey` char(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `ip` char(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vedios`
--

DROP TABLE IF EXISTS `vedios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vedios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `vedio_link` varchar(255) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `withdraw`
--

DROP TABLE IF EXISTS `withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `bnb_address` varchar(255) NOT NULL,
  `amount` varchar(55) NOT NULL,
  `bnb_amount` double(20,6) NOT NULL,
  `fee` double(11,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-Pending, 1-Approved, 2-Rejected',
  `txn_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approveDate` timestamp NULL DEFAULT NULL,
  `ip` char(50) DEFAULT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 -bank, 2- crypto,3-exchange transfer,4-ICO transfer',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3045 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-16  2:34:16
