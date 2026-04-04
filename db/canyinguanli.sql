mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.45, for Linux (aarch64)
--
-- Host: localhost    Database: canyinguanli
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Current Database: `canyinguanli`
--

/*!40000 DROP DATABASE IF EXISTS `canyinguanli`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `canyinguanli` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `canyinguanli`;

--
-- Table structure for table `caipin`
--

DROP TABLE IF EXISTS `caipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caipin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caipin_uuid_number` varchar(200) DEFAULT NULL,
  `caipin_name` varchar(200) DEFAULT NULL,
  `caipin_photo` varchar(200) DEFAULT NULL,
  `caipin_types` int DEFAULT NULL,
  `caipin_price` int DEFAULT NULL,
  `caipin_kucun_number` int DEFAULT NULL,
  `caipin_old_money` double DEFAULT NULL,
  `caipin_new_money` double DEFAULT NULL,
  `caipin_clicknum` int DEFAULT NULL,
  `caipin_content` varchar(200) DEFAULT NULL,
  `shangxia_types` int DEFAULT NULL,
  `caipin_delete` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipin`
--

LOCK TABLES `caipin` WRITE;
/*!40000 ALTER TABLE `caipin` DISABLE KEYS */;
INSERT INTO `caipin` VALUES (1,'CP0001','宫保鸡丁','http://localhost:8080/canyinguanli/upload/caipin1.jpg',1,10,97,38,28,5,'经典川菜宫保鸡丁',1,1,'2026-04-04 10:03:28'),(2,'CP0002','鱼香肉丝','http://localhost:8080/canyinguanli/upload/caipin2.jpg',1,8,96,32,25,6,'传统川菜鱼香肉丝',1,1,'2026-04-04 10:03:28'),(3,'CP0003','红烧排骨','http://localhost:8080/canyinguanli/upload/caipin3.jpg',2,15,46,58,45,6,'红烧排骨色泽红亮',1,1,'2026-04-04 10:03:28'),(4,'CP0004','清蒸鲈鱼','http://localhost:8080/canyinguanli/upload/caipin4.jpg',3,20,29,68,55,2,'新鲜鲈鱼清蒸',1,1,'2026-04-04 10:03:28'),(5,'CP0005','番茄蛋汤','http://localhost:8080/canyinguanli/upload/caipin5.jpg',4,5,200,18,12,0,'<p>家常番茄蛋花汤1</p>',1,1,'2026-04-04 10:03:28');
/*!40000 ALTER TABLE `caipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipin_collection`
--

DROP TABLE IF EXISTS `caipin_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caipin_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caipin_id` int DEFAULT NULL,
  `yonghu_id` int DEFAULT NULL,
  `caipin_collection_types` int DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipin_collection`
--

LOCK TABLES `caipin_collection` WRITE;
/*!40000 ALTER TABLE `caipin_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `caipin_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipin_commentback`
--

DROP TABLE IF EXISTS `caipin_commentback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caipin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caipin_id` int DEFAULT NULL,
  `yonghu_id` int DEFAULT NULL,
  `caipin_commentback_text` varchar(200) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `reply_text` varchar(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipin_commentback`
--

LOCK TABLES `caipin_commentback` WRITE;
/*!40000 ALTER TABLE `caipin_commentback` DISABLE KEYS */;
/*!40000 ALTER TABLE `caipin_commentback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipin_order`
--

DROP TABLE IF EXISTS `caipin_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caipin_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL,
  `caipin_id` int DEFAULT NULL,
  `yonghu_id` int DEFAULT NULL,
  `buy_number` int DEFAULT NULL,
  `caipin_order_time` datetime DEFAULT NULL,
  `caipin_order_true_price` double DEFAULT NULL,
  `caipin_order_types` int DEFAULT NULL,
  `caipin_order_payment_types` int DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipin_order`
--

LOCK TABLES `caipin_order` WRITE;
/*!40000 ALTER TABLE `caipin_order` DISABLE KEYS */;
INSERT INTO `caipin_order` VALUES (1,'1775299600144',3,1,1,NULL,45,1,1,'2026-04-04 18:46:40','2026-04-04 18:46:40'),(2,'1775299611311',3,1,1,NULL,45,1,1,'2026-04-04 18:46:51','2026-04-04 18:46:51'),(3,'1775299735279',3,1,1,NULL,45,1,1,'2026-04-04 18:48:55','2026-04-04 18:48:55'),(4,'1775299738147',3,1,1,NULL,45,1,1,'2026-04-04 18:48:58','2026-04-04 18:48:58'),(5,'1775300474626',2,1,2,NULL,50,1,1,'2026-04-04 19:01:15','2026-04-04 19:01:15'),(6,'1775300477080',2,1,2,NULL,50,1,1,'2026-04-04 19:01:17','2026-04-04 19:01:17'),(7,'1775300626588',1,1,1,'2026-04-04 20:00:00',28,1,1,'2026-04-04 19:03:47','2026-04-04 19:03:47'),(8,'1775301047128',1,1,1,'2026-04-05 12:00:00',28,1,1,'2026-04-04 19:10:47','2026-04-04 19:10:47'),(9,'1775301118096',1,1,1,'2026-04-05 13:00:00',28,1,1,'2026-04-04 19:11:58','2026-04-04 19:11:58'),(10,'1775301158150',4,1,1,NULL,55,1,1,'2026-04-04 19:12:38','2026-04-04 19:12:38'),(11,'1775301165928',2,1,1,NULL,25,2,1,'2026-04-04 19:12:46','2026-04-04 19:12:46'),(12,'1775301286891',2,1,1,NULL,25,2,1,'2026-04-04 19:14:47','2026-04-04 19:14:47');
/*!40000 ALTER TABLE `caipin_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'faceFile','http://localhost:8080/canyinguanli/upload/1775301391001.png'),(2,'轮播图1','http://localhost:8080/canyinguanli/upload/config1.jpg'),(3,'轮播图2','http://localhost:8080/canyinguanli/upload/config2.jpg'),(4,'轮播图3','http://localhost:8080/canyinguanli/upload/config3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dic_code` varchar(200) DEFAULT NULL,
  `dic_name` varchar(200) DEFAULT NULL,
  `code_index` int DEFAULT NULL,
  `index_name` varchar(200) DEFAULT NULL,
  `super_id` int DEFAULT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,'sex_types','性别',1,'男',NULL,NULL,'2026-04-04 10:03:28'),(2,'sex_types','性别',2,'女',NULL,NULL,'2026-04-04 10:03:28'),(3,'caipin_types','菜品类型',1,'川菜',NULL,NULL,'2026-04-04 10:03:28'),(4,'caipin_types','菜品类型',2,'粤菜',NULL,NULL,'2026-04-04 10:03:28'),(5,'caipin_types','菜品类型',3,'鲁菜',NULL,NULL,'2026-04-04 10:03:28'),(6,'caipin_types','菜品类型',4,'汤类',NULL,NULL,'2026-04-04 10:03:28'),(7,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2026-04-04 10:03:28'),(8,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2026-04-04 10:03:28'),(9,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2026-04-04 10:03:28'),(10,'caipin_order_types','订单类型',2,'已取消',NULL,NULL,'2026-04-04 10:03:28'),(11,'caipin_order_types','订单类型',3,'已完成',NULL,NULL,'2026-04-04 10:03:28'),(12,'caipin_order_types','订单类型',4,'已退款',NULL,NULL,'2026-04-04 10:03:28'),(13,'caipin_order_payment_types','支付类型',1,'余额支付',NULL,NULL,'2026-04-04 10:03:28'),(14,'caipin_order_payment_types','支付类型',2,'积分支付',NULL,NULL,'2026-04-04 10:03:28'),(15,'caipin_collection_types','收藏类型',1,'收藏',NULL,NULL,'2026-04-04 10:03:28'),(16,'caipin_collection_types','收藏类型',2,'赞',NULL,NULL,'2026-04-04 10:03:28'),(17,'caipin_collection_types','收藏类型',3,'踩',NULL,NULL,'2026-04-04 10:03:28'),(18,'forum_state_types','帖子状态',1,'正常',NULL,NULL,'2026-04-04 10:03:28'),(19,'forum_state_types','帖子状态',2,'封禁',NULL,NULL,'2026-04-04 10:03:28'),(20,'news_types','公告类型',1,'通知公告',NULL,NULL,'2026-04-04 10:03:28'),(21,'news_types','公告类型',2,'活动公告',NULL,NULL,'2026-04-04 10:03:28'),(22,'gongyingshang_types','供应物品类型',1,'蔬菜',NULL,NULL,'2026-04-04 10:03:28'),(23,'gongyingshang_types','供应物品类型',2,'肉类',NULL,NULL,'2026-04-04 10:03:28'),(24,'gongyingshang_types','供应物品类型',3,'海鲜',NULL,NULL,'2026-04-04 10:03:28'),(25,'gongyingshang_types','供应物品类型',4,'调料',NULL,NULL,'2026-04-04 10:03:28'),(26,'huiyuandengji_types','会员等级',1,'普通会员',NULL,NULL,'2026-04-04 10:03:28'),(27,'huiyuandengji_types','会员等级',2,'银卡会员',NULL,NULL,'2026-04-04 10:03:28'),(28,'huiyuandengji_types','会员等级',3,'金卡会员',NULL,NULL,'2026-04-04 10:03:28'),(29,'single_seach_types','单页数据类型',1,'关于我们',NULL,NULL,'2026-04-04 10:03:28'),(30,'single_seach_types','单页数据类型',2,'联系方式',NULL,NULL,'2026-04-04 10:03:28'),(31,'single_seach_types','单页数据类型',3,'经营理念',NULL,NULL,'2026-04-04 10:03:28'),(32,'isdefault_types','是否',1,'是',NULL,NULL,'2026-04-04 10:03:28'),(33,'isdefault_types','是否',2,'否',NULL,NULL,'2026-04-04 10:03:28'),(34,'caipin_delete_types','逻辑删除',1,'未删除',NULL,NULL,'2026-04-04 10:03:28'),(35,'caipin_delete_types','逻辑删除',2,'已删除',NULL,NULL,'2026-04-04 10:03:28');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(200) DEFAULT NULL,
  `yonghu_id` int DEFAULT NULL,
  `yuangong_id` int DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `forum_content` varchar(200) DEFAULT NULL,
  `super_ids` int DEFAULT NULL,
  `forum_state_types` int DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'有没有适合控糖长者的套餐推荐？',NULL,NULL,1,'<p>最近家里老人需要控制血糖，想了解食堂里哪些套餐更适合日常稳定食用，欢迎管理员或有经验的家属分享。</p>',0,1,'2026-04-04 18:52:21',NULL,'2026-04-04 18:52:21'),(2,'中午高峰期取餐排队建议',NULL,NULL,1,'<p>建议大家尽量提前十分钟到达取餐点，最近中午 11:30 到 12:00 人较多，提前到场会更从容。</p>',0,1,'2026-04-04 18:52:21',NULL,'2026-04-04 18:52:21'),(3,'希望增加软烂一点的家常菜',NULL,NULL,1,'<p>不少长者更喜欢软烂好咀嚼的菜品，比如炖豆腐、蒸蛋和南瓜羹，建议后续每周固定安排几次。</p>',0,1,'2026-04-04 18:52:21',NULL,'2026-04-04 18:52:21'),(4,'欢迎反馈送餐和口味体验',NULL,NULL,1,'<p>如果您对送餐速度、分量搭配或口味有建议，可以直接在论坛回复，我们会按周汇总并持续优化。</p>',0,1,'2026-04-04 18:52:21',NULL,'2026-04-04 18:52:21');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gongyingshang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gongyingshang_name` varchar(200) DEFAULT NULL,
  `gongyingshang_phone` varchar(200) DEFAULT NULL,
  `gongyingshang_email` varchar(200) DEFAULT NULL,
  `gongyingshang_types` int DEFAULT NULL,
  `gongyingshang_money` double DEFAULT NULL,
  `gongyingshang_content` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (1,'测试供应商1','13800138003','蔬菜',1,500,'新鲜蔬菜供应','2026-04-04 10:03:28'),(2,'测试供应商2','13800138004','肉类',2,800,'优质肉类供应','2026-04-04 10:03:28');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `news_name` varchar(200) DEFAULT NULL,
  `news_types` int DEFAULT NULL,
  `news_photo` varchar(200) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `news_content` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'下周长者餐配送时间调整通知',1,'http://localhost:8080/canyinguanli/upload/news1.jpg','2026-04-04 18:52:21','<p>因周一早间后厨设备例行检修，下周一早餐配送时间调整为 8:00 至 9:30，其余时段保持不变。</p><p>请已预约的长者和家属提前关注站内提醒，取餐点位不变。</p>','2026-04-04 18:52:21'),(2,'春季营养菜单上新公告',2,'http://localhost:8080/canyinguanli/upload/news2.jpg','2026-04-04 18:52:21','<p>本周起食堂新增低盐炖汤、杂粮软饭和高蛋白蒸菜组合，方便牙口较弱和控糖需求的长者选择。</p><p>欢迎到菜品页查看每天的推荐餐单。</p>','2026-04-04 18:52:21'),(3,'清明节期间食堂开放安排',1,'http://localhost:8080/canyinguanli/upload/news3.jpg','2026-04-04 18:52:21','<p>清明节假期食堂正常提供午餐和晚餐，早餐窗口暂停一天。</p><p>节日期间线上订餐与线下取餐服务照常开放。</p>','2026-04-04 18:52:21'),(4,'长者健康讲座报名开启',2,'http://localhost:8080/canyinguanli/upload/news4.jpg','2026-04-04 18:52:21','<p>本周五下午将在社区活动室开展“高血压人群日常饮食管理”专题讲座。</p><p>报名后可获得一份适老营养餐搭配手册。</p>','2026-04-04 18:52:21'),(5,'志愿者助餐服务招募公告',1,'http://localhost:8080/canyinguanli/upload/news5.jpg','2026-04-04 18:52:21','<p>食堂正在招募周末助餐志愿者，服务内容包括协助打餐、引导排队和关怀独居长者。</p><p>有意向的居民可在“联系我们”页面查看报名方式。</p>','2026-04-04 18:52:21'),(6,'本月满意度回访问卷发布',2,'http://localhost:8080/canyinguanli/upload/news6.jpg','2026-04-04 18:52:21','<p>为了持续改进菜品口味与配送体验，食堂上线了四月满意度问卷。</p><p>提交问卷后，系统会优先记录您的口味建议和服务需求。</p>','2026-04-04 18:52:21');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single_seach`
--

DROP TABLE IF EXISTS `single_seach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `single_seach_name` varchar(200) DEFAULT NULL,
  `single_seach_types` int DEFAULT NULL,
  `single_seach_content` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single_seach`
--

LOCK TABLES `single_seach` WRITE;
/*!40000 ALTER TABLE `single_seach` DISABLE KEYS */;
INSERT INTO `single_seach` VALUES (1,'食堂介绍',1,'<p>社区老年食堂以“热饭热菜、营养均衡、服务贴心”为目标，为周边长者提供堂食、订餐和送餐服务。</p><p>食堂坚持少油少盐、荤素搭配、软硬适中的适老化烹饪原则，每日根据季节和长者需求调整菜单。</p><p>目前已开通线上订餐、窗口取餐和志愿者协助送餐三种服务方式，方便行动不便或独居长者按需选择。</p>','2026-04-04 18:52:21'),(2,'联系我们',2,'<p>服务电话：400-800-1234</p><p>食堂地址：社区综合服务中心一层长者助餐点</p><p>营业时间：早餐 07:30-09:00，午餐 11:00-13:00，晚餐 17:00-18:30</p><p>如需团体订餐、送餐协助或志愿服务报名，可在工作时间来电咨询。</p>','2026-04-04 18:52:21');
/*!40000 ALTER TABLE `single_seach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `tablename` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `expiratedtime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','m6mi1pw0ebgcyegj43uqp32pwrrsejtb','2026-04-04 20:15:14',NULL),(2,1,'yuangong1','yuangong','员工','ukmbjpvae4o3yucirzc7p1hdnjqprbat','2026-04-04 19:27:57',NULL),(3,1,'yonghu1','yonghu','用户','k1u2f8dnjycuvf65d2vudeq0od8yso14','2026-04-04 20:13:59',NULL);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2026-04-04 10:03:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `yonghu_name` varchar(200) DEFAULT NULL,
  `yonghu_phone` varchar(200) DEFAULT NULL,
  `yonghu_id_number` varchar(200) DEFAULT NULL,
  `yonghu_photo` varchar(200) DEFAULT NULL,
  `sex_types` int DEFAULT NULL,
  `yonghu_email` varchar(200) DEFAULT NULL,
  `new_money` double DEFAULT NULL,
  `yonghu_sum_jifen` double DEFAULT NULL,
  `yonghu_new_jifen` double DEFAULT NULL,
  `huiyuandengji_types` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'yonghu1','123456','测试用户1','13800138001','110101199001011234','http://localhost:8080/canyinguanli/upload/1775301371374.png',1,'yonghu1@qq.com',6081,242,242,1,'2026-04-04 10:03:28');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `yuangong_name` varchar(200) DEFAULT NULL,
  `yuangong_phone` varchar(200) DEFAULT NULL,
  `yuangong_id_number` varchar(200) DEFAULT NULL,
  `yuangong_photo` varchar(200) DEFAULT NULL,
  `sex_types` int DEFAULT NULL,
  `yuangong_email` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (1,'yuangong1','123456','测试员工1','13800138002','110101199002021234','http://localhost:8080/canyinguanli/upload/yuangong1.jpg',1,'yuangong1@qq.com','2026-04-04 10:03:28');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-04 11:18:17
