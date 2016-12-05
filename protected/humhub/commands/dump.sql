-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: humhub
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'humhub\\modules\\space\\activities\\Created','space','humhub\\modules\\space\\models\\Space',1),(2,'humhub\\modules\\content\\activities\\ContentCreated','content','humhub\\modules\\post\\models\\Post',1),(3,'humhub\\modules\\space\\activities\\MemberAdded','space','humhub\\modules\\space\\models\\Space',1),(4,'humhub\\modules\\space\\activities\\MemberAdded','space','humhub\\modules\\space\\models\\Space',1),(5,'humhub\\modules\\content\\activities\\ContentCreated','content','humhub\\modules\\post\\models\\Post',2),(6,'humhub\\modules\\comment\\activities\\NewComment','comment','humhub\\modules\\comment\\models\\Comment',1),(7,'humhub\\modules\\comment\\activities\\NewComment','comment','humhub\\modules\\comment\\models\\Comment',2),(8,'humhub\\modules\\like\\activities\\Liked','like','humhub\\modules\\like\\models\\Like',1),(9,'humhub\\modules\\like\\activities\\Liked','like','humhub\\modules\\like\\models\\Like',2),(10,'humhub\\modules\\content\\activities\\ContentCreated','content','humhub\\modules\\polls\\models\\Poll',1),(11,'humhub\\modules\\polls\\activities\\NewVote','polls','humhub\\modules\\polls\\models\\Poll',1),(12,'humhub\\modules\\comment\\activities\\NewComment','comment','humhub\\modules\\comment\\models\\Comment',3),(13,'humhub\\modules\\polls\\activities\\NewVote','polls','humhub\\modules\\polls\\models\\Poll',1),(14,'humhub\\modules\\comment\\activities\\NewComment','comment','humhub\\modules\\comment\\models\\Comment',4);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfiles_file`
--

DROP TABLE IF EXISTS `cfiles_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfiles_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_folder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfiles_file`
--

LOCK TABLES `cfiles_file` WRITE;
/*!40000 ALTER TABLE `cfiles_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfiles_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfiles_folder`
--

DROP TABLE IF EXISTS `cfiles_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfiles_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_folder_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfiles_folder`
--

LOCK TABLES `cfiles_folder` WRITE;
/*!40000 ALTER TABLE `cfiles_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfiles_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Nike – Just buy it. ;Wink;','humhub\\modules\\post\\models\\Post',2,'2016-12-05 04:45:27',2,'2016-12-05 04:45:27',2),(2,'Calvin Klein – Between love and madness lies obsession.','humhub\\modules\\post\\models\\Post',2,'2016-12-05 04:45:27',3,'2016-12-05 04:45:27',3),(3,'Why don\'t we go to Bemelmans Bar?','humhub\\modules\\polls\\models\\Poll',1,'2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2),(4,'Again? ;Weary;','humhub\\modules\\polls\\models\\Poll',1,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sticked` tinyint(4) DEFAULT NULL,
  `archived` tinytext,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_object_model` (`object_model`,`object_id`),
  UNIQUE KEY `index_guid` (`guid`),
  KEY `fk-contentcontainer` (`contentcontainer_id`),
  KEY `fk-create-user` (`created_by`),
  KEY `fk-update-user` (`updated_by`),
  CONSTRAINT `fk-contentcontainer` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk-create-user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk-update-user` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'766670c8-ff65-4db1-b05c-9cf21e209ced','humhub\\modules\\activity\\models\\Activity',1,1,0,'0','2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1,2),(2,'2a90b9f1-9ab6-4e19-8488-38836895b1a1','humhub\\modules\\post\\models\\Post',1,1,0,'0','2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1,2),(3,'9679e07a-1ede-4ba2-b260-39fd0e84a806','humhub\\modules\\activity\\models\\Activity',2,1,0,'0','2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1,2),(4,'c98c6562-54fe-4ff3-8df7-6d210361367b','humhub\\modules\\activity\\models\\Activity',3,0,0,'0','2016-12-05 04:45:26',2,'2016-12-05 04:45:26',1,2),(5,'558c76d4-49c4-4625-8ec6-308092c0e182','humhub\\modules\\activity\\models\\Activity',4,0,0,'0','2016-12-05 04:45:27',3,'2016-12-05 04:45:27',1,2),(6,'d8af7ea4-a07e-430c-bd9c-14220a32ba39','humhub\\modules\\post\\models\\Post',2,0,0,'0','2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1,2),(7,'48af7f21-0b34-47b5-bc16-618df8f9bb27','humhub\\modules\\activity\\models\\Activity',5,0,0,'0','2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1,2),(8,'7c858050-7053-4e83-9186-d639193b5e99','humhub\\modules\\activity\\models\\Activity',6,0,0,'0','2016-12-05 04:45:27',2,'2016-12-05 04:45:27',2,2),(9,'6cff7bd7-862a-41bc-91a5-a3f43f6d7cf7','humhub\\modules\\activity\\models\\Activity',7,0,0,'0','2016-12-05 04:45:27',3,'2016-12-05 04:45:27',3,2),(10,'953556f8-b58b-413b-abad-db038b9aaeb8','humhub\\modules\\activity\\models\\Activity',8,0,0,'0','2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3,2),(11,'33c2f835-04d4-4219-985e-a8109f176f85','humhub\\modules\\activity\\models\\Activity',9,0,0,'0','2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3,2),(12,'f7c05fac-632a-4144-85dd-3be996aec1d1','humhub\\modules\\polls\\models\\Poll',1,0,0,'0','2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1,2),(13,'df38f99b-5a65-4521-8fea-236e7f9519ce','humhub\\modules\\activity\\models\\Activity',10,0,0,'0','2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1,2),(14,'a062ebab-6383-4796-ae1c-cdf050d2f9a3','humhub\\modules\\activity\\models\\Activity',11,0,0,'0','2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2,2),(15,'b0a5ce99-beb2-4291-8c38-f35fa5aaab9e','humhub\\modules\\activity\\models\\Activity',12,0,0,'0','2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2,2),(16,'2b01554b-0cff-4658-a75c-f724ab30aeff','humhub\\modules\\activity\\models\\Activity',13,0,0,'0','2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3,2),(17,'f3c90d46-9476-40ee-a515-0840b41bbd47','humhub\\modules\\activity\\models\\Activity',14,0,0,'0','2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3,2);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentcontainer`
--

DROP TABLE IF EXISTS `contentcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentcontainer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_target` (`class`,`pk`),
  UNIQUE KEY `unique_guid` (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentcontainer`
--

LOCK TABLES `contentcontainer` WRITE;
/*!40000 ALTER TABLE `contentcontainer` DISABLE KEYS */;
INSERT INTO `contentcontainer` VALUES (1,'65ae112e-80d0-4377-a6e1-2662bf529e5e','humhub\\modules\\user\\models\\User',1,1,1),(2,'5af60c97-f4fe-4b98-b558-19ef31bdf2d2','humhub\\modules\\space\\models\\Space',1,1,2),(3,'c4e717fd-32ac-41a7-8136-5901e6f7c9fc','humhub\\modules\\user\\models\\User',2,2,3),(4,'215305cc-86ef-49d2-982d-5170ef1a76a7','humhub\\modules\\user\\models\\User',3,3,4);
/*!40000 ALTER TABLE `contentcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentcontainer_permission`
--

DROP TABLE IF EXISTS `contentcontainer_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentcontainer_permission` (
  `permission_id` varchar(150) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`group_id`,`module_id`,`contentcontainer_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentcontainer_permission`
--

LOCK TABLES `contentcontainer_permission` WRITE;
/*!40000 ALTER TABLE `contentcontainer_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `contentcontainer_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentcontainer_setting`
--

DROP TABLE IF EXISTS `contentcontainer_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentcontainer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(50) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings-unique` (`module_id`,`contentcontainer_id`,`name`),
  KEY `fk-contentcontainerx` (`contentcontainer_id`),
  CONSTRAINT `fk-contentcontainerx` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentcontainer_setting`
--

LOCK TABLES `contentcontainer_setting` WRITE;
/*!40000 ALTER TABLE `contentcontainer_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `contentcontainer_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `space_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `is_admin_group` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_registration` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_directory` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,NULL,'Administrator','Administrator Group','2016-12-05 04:39:18',NULL,NULL,NULL,NULL,1,0,0),(2,NULL,'Users','Example Group by Installer',NULL,NULL,NULL,NULL,NULL,0,1,1);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permission` (
  `permission_id` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`group_id`,`module_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx-group_user` (`user_id`,`group_id`),
  KEY `fk-group-group` (`group_id`),
  CONSTRAINT `fk-group-group` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user-group` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1,1,0,'2016-12-05 04:45:21',NULL,'2016-12-05 04:45:21',NULL);
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (1,NULL,'humhub\\modules\\comment\\models\\Comment',1,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3),(2,NULL,'humhub\\modules\\post\\models\\Post',2,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3);
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,1,'yii\\db\\Exception',1480913139.3513,'[172.17.0.1][1][1ic730i7nqjla32627k1dlugf2]','exception \'PDOException\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'humhub.notification.id\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\' in /var/www/html/protected/vendor/yiisoft/yii2/db/Command.php:900\nStack trace:\n#0 /var/www/html/protected/vendor/yiisoft/yii2/db/Command.php(900): PDOStatement->execute()\n#1 /var/www/html/protected/vendor/yiisoft/yii2/db/Command.php(388): yii\\db\\Command->queryInternal(\'<span class=\"st...\', \'<span class=\"nu...\')\n#2 /var/www/html/protected/vendor/yiisoft/yii2/db/Query.php(401): yii\\db\\Command->queryScalar()\n#3 /var/www/html/protected/vendor/yiisoft/yii2/db/ActiveQuery.php(334): yii\\db\\Query->queryScalar(\'<span class=\"st...\', \'<span class=\"ke...\')\n#4 /var/www/html/protected/vendor/yiisoft/yii2/db/Query.php(303): yii\\db\\ActiveQuery->queryScalar(\'<span class=\"st...\', \'<span class=\"ke...\')\n#5 /var/www/html/protected/humhub/modules/notification/controllers/ListController.php(108): yii\\db\\Query->count()\n#6 /var/www/html/protected/humhub/modules/notification/widgets/Overview.php(31): humhub\\modules\\notification\\controllers\\ListController::getUpdates()\n#7 /var/www/html/protected/vendor/yiisoft/yii2/base/Widget.php(102): humhub\\modules\\notification\\widgets\\Overview->run()\n#8 /var/www/html/protected/humhub/widgets/BaseStack.php(90): yii\\base\\Widget::widget(\'[]\')\n#9 /var/www/html/protected/vendor/yiisoft/yii2/base/Widget.php(102): humhub\\widgets\\BaseStack->run()\n#10 /var/www/html/protected/humhub/views/layouts/main.php(101): yii\\base\\Widget::widget(\'[<span class=\"s...\')\n#11 /var/www/html/protected/vendor/yiisoft/yii2/base/View.php(326): require(\'/var/www/html/p...\')\n#12 /var/www/html/protected/vendor/yiisoft/yii2/base/View.php(248): yii\\base\\View->renderPhpFile(\'<span class=\"st...\', \'[<span class=\"s...\')\n#13 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(393): yii\\base\\View->renderFile(\'<span class=\"st...\', \'[<span class=\"s...\', Object(humhub\\modules\\dashboard\\controllers\\DashboardController))\n#14 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(379): yii\\base\\Controller->renderContent(\'<span class=\"st...\')\n#15 /var/www/html/protected/humhub/modules/dashboard/controllers/DashboardController.php(64): yii\\base\\Controller->render(\'<span class=\"st...\', \'[<span class=\"s...\')\n#16 [internal function]: humhub\\modules\\dashboard\\controllers\\DashboardController->actionIndex()\n#17 /var/www/html/protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(\'[<span class=\"t...\', \'[]\')\n#18 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(154): yii\\base\\InlineAction->runWithParams(\'[]\')\n#19 /var/www/html/protected/vendor/yiisoft/yii2/base/Module.php(454): yii\\base\\Controller->runAction(\'<span class=\"st...\', \'[]\')\n#20 /var/www/html/protected/vendor/yiisoft/yii2/web/Application.php(100): yii\\base\\Module->runAction(\'<span class=\"st...\', \'[]\')\n#21 /var/www/html/protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#22 /var/www/html/index.php(25): yii\\base\\Application->run()\n#23 {main}\n\nNext exception \'yii\\db\\Exception\' with message \'SQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'humhub.notification.id\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\nThe SQL being executed was: SELECT COUNT(*) FROM (SELECT `notification`.*, count(distinct(originator_user_id)) as group_count, max(created_at) as group_created_at, min(seen) as group_seen FROM `notification` WHERE ((`seen`=0) OR (`seen` IS NULL)) AND (`user_id`=1) GROUP BY COALESCE(group_key, id), `class` ORDER BY `group_seen`, `group_created_at` DESC) `c`\' in /var/www/html/protected/vendor/yiisoft/yii2/db/Schema.php:631\nStack trace:\n#0 /var/www/html/protected/vendor/yiisoft/yii2/db/Command.php(915): yii\\db\\Schema->convertException(Object(PDOException), \'SELECT COUNT(*)...\')\n#1 /var/www/html/protected/vendor/yiisoft/yii2/db/Command.php(388): yii\\db\\Command->queryInternal(\'<span class=\"st...\', \'<span class=\"nu...\')\n#2 /var/www/html/protected/vendor/yiisoft/yii2/db/Query.php(401): yii\\db\\Command->queryScalar()\n#3 /var/www/html/protected/vendor/yiisoft/yii2/db/ActiveQuery.php(334): yii\\db\\Query->queryScalar(\'<span class=\"st...\', \'<span class=\"ke...\')\n#4 /var/www/html/protected/vendor/yiisoft/yii2/db/Query.php(303): yii\\db\\ActiveQuery->queryScalar(\'<span class=\"st...\', \'<span class=\"ke...\')\n#5 /var/www/html/protected/humhub/modules/notification/controllers/ListController.php(108): yii\\db\\Query->count()\n#6 /var/www/html/protected/humhub/modules/notification/widgets/Overview.php(31): humhub\\modules\\notification\\controllers\\ListController::getUpdates()\n#7 /var/www/html/protected/vendor/yiisoft/yii2/base/Widget.php(102): humhub\\modules\\notification\\widgets\\Overview->run()\n#8 /var/www/html/protected/humhub/widgets/BaseStack.php(90): yii\\base\\Widget::widget(\'[]\')\n#9 /var/www/html/protected/vendor/yiisoft/yii2/base/Widget.php(102): humhub\\widgets\\BaseStack->run()\n#10 /var/www/html/protected/humhub/views/layouts/main.php(101): yii\\base\\Widget::widget(\'[<span class=\"s...\')\n#11 /var/www/html/protected/vendor/yiisoft/yii2/base/View.php(326): require(\'/var/www/html/p...\')\n#12 /var/www/html/protected/vendor/yiisoft/yii2/base/View.php(248): yii\\base\\View->renderPhpFile(\'<span class=\"st...\', \'[<span class=\"s...\')\n#13 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(393): yii\\base\\View->renderFile(\'<span class=\"st...\', \'[<span class=\"s...\', Object(humhub\\modules\\dashboard\\controllers\\DashboardController))\n#14 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(379): yii\\base\\Controller->renderContent(\'<span class=\"st...\')\n#15 /var/www/html/protected/humhub/modules/dashboard/controllers/DashboardController.php(64): yii\\base\\Controller->render(\'<span class=\"st...\', \'[<span class=\"s...\')\n#16 [internal function]: humhub\\modules\\dashboard\\controllers\\DashboardController->actionIndex()\n#17 /var/www/html/protected/vendor/yiisoft/yii2/base/InlineAction.php(55): call_user_func_array(\'[<span class=\"t...\', \'[]\')\n#18 /var/www/html/protected/vendor/yiisoft/yii2/base/Controller.php(154): yii\\base\\InlineAction->runWithParams(\'[]\')\n#19 /var/www/html/protected/vendor/yiisoft/yii2/base/Module.php(454): yii\\base\\Controller->runAction(\'<span class=\"st...\', \'[]\')\n#20 /var/www/html/protected/vendor/yiisoft/yii2/web/Application.php(100): yii\\base\\Module->runAction(\'<span class=\"st...\', \'[]\')\n#21 /var/www/html/protected/vendor/yiisoft/yii2/base/Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#22 /var/www/html/index.php(25): yii\\base\\Application->run()\n#23 {main}\nAdditional Information:\nArray\n(\n    [0] => 42000\n    [1] => 1055\n    [2] => Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'humhub.notification.id\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by\n)\n'),(2,4,'application',1480913139.1981,'[172.17.0.1][1][1ic730i7nqjla32627k1dlugf2]','$_SERVER = [\n    \'HTTP_HOST\' => \'humhub.local:8010\'\n    \'HTTP_CONNECTION\' => \'keep-alive\'\n    \'HTTP_CACHE_CONTROL\' => \'max-age=0\'\n    \'HTTP_UPGRADE_INSECURE_REQUESTS\' => \'1\'\n    \'HTTP_USER_AGENT\' => \'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.100 Safari/537.36\'\n    \'HTTP_ACCEPT\' => \'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\'\n    \'HTTP_REFERER\' => \'http://humhub.local:8010/index.php?r=user%2Fauth%2Flogin\'\n    \'HTTP_ACCEPT_ENCODING\' => \'gzip, deflate, sdch\'\n    \'HTTP_ACCEPT_LANGUAGE\' => \'en-US,en;q=0.8,ru;q=0.6\'\n    \'HTTP_COOKIE\' => \'_csrf=7b8157ec067d1e3f32b8a5197ce8083f3fd619252e0b75dd0cf17365220c4c25a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KlpVAzEr4rvxMnt_ugqW5XwJP7axI_0D%22%3B%7D; PHPSESSID=1ic730i7nqjla32627k1dlugf2; _identity=2b93e150e25409de084c4afbcfd6172f0a17070dc5c2ba4398357c0780bd571aa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%2265ae112e-80d0-4377-a6e1-2662bf529e5e%22%2C2592000%5D%22%3B%7D\'\n    \'PATH\' => \'/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\'\n    \'SERVER_SIGNATURE\' => \'<address>Apache/2.4.10 (Debian) Server at humhub.local Port 8010</address>\n\'\n    \'SERVER_SOFTWARE\' => \'Apache/2.4.10 (Debian)\'\n    \'SERVER_NAME\' => \'humhub.local\'\n    \'SERVER_ADDR\' => \'172.17.0.3\'\n    \'SERVER_PORT\' => \'8010\'\n    \'REMOTE_ADDR\' => \'172.17.0.1\'\n    \'DOCUMENT_ROOT\' => \'/var/www/html\'\n    \'REQUEST_SCHEME\' => \'http\'\n    \'CONTEXT_PREFIX\' => \'\'\n    \'CONTEXT_DOCUMENT_ROOT\' => \'/var/www/html\'\n    \'SERVER_ADMIN\' => \'[no address given]\'\n    \'SCRIPT_FILENAME\' => \'/var/www/html/index.php\'\n    \'REMOTE_PORT\' => \'56020\'\n    \'GATEWAY_INTERFACE\' => \'CGI/1.1\'\n    \'SERVER_PROTOCOL\' => \'HTTP/1.1\'\n    \'REQUEST_METHOD\' => \'GET\'\n    \'QUERY_STRING\' => \'\'\n    \'REQUEST_URI\' => \'/index.php\'\n    \'SCRIPT_NAME\' => \'/index.php\'\n    \'PHP_SELF\' => \'/index.php\'\n    \'REQUEST_TIME_FLOAT\' => 1480913139.197\n    \'REQUEST_TIME\' => 1480913139\n]');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_updated` (`updated_at`),
  KEY `index_updated_by` (`updated_by`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_entry`
--

DROP TABLE IF EXISTS `message_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_message_id` (`message_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_entry`
--

LOCK TABLES `message_entry` WRITE;
/*!40000 ALTER TABLE `message_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1480912737),('m131023_164513_initial',1480912739),('m131023_165411_initial',1480912739),('m131023_165507_initial',1480913044),('m131023_165625_initial',1480912739),('m131023_165755_initial',1480912739),('m131023_165835_initial',1480912740),('m131023_165921_initial',1480913048),('m131023_170033_initial',1480912740),('m131023_170135_initial',1480912740),('m131023_170159_initial',1480912740),('m131023_170253_initial',1480912740),('m131023_170339_initial',1480912740),('m131030_122743_longer_questions',1480913048),('m131203_110444_oembed',1480912740),('m131213_165552_user_optimize',1480912741),('m140226_111945_ldap',1480912741),('m140303_125031_password',1480912741),('m140304_142711_memberautoadd',1480912742),('m140321_000917_content',1480912742),('m140324_170617_membership',1480912742),('m140507_150421_create_settings_table',1480912742),('m140507_171527_create_settings_table',1480912742),('m140512_141414_i18n_profilefields',1480912742),('m140513_180317_createlogging',1480912743),('m140701_000611_profile_genderfield',1480912743),('m140701_074404_protect_default_profilefields',1480912743),('m140702_143912_notify_notification_unify',1480912743),('m140703_104527_profile_birthdayfield',1480912743),('m140704_080659_installationid',1480912743),('m140705_065525_emailing_settings',1480912743),('m140706_135210_lastlogin',1480912743),('m140829_122906_delete',1480912744),('m140830_145504_following',1480912744),('m140901_080147_indizies',1480912744),('m140901_080432_indices',1480912744),('m140901_112246_addState',1480912744),('m140901_153403_addState',1480912745),('m140901_170329_group_create_space',1480912745),('m140902_091234_session_key_length',1480912745),('m140907_140822_zip_field_to_text',1480912745),('m140930_205511_fix_default',1480912746),('m140930_205859_fix_default',1480912746),('m140930_210142_fix_default',1480912746),('m140930_210635_fix_default',1480912747),('m140930_212528_fix_default',1480912747),('m141002_093710_fix_default',1480913048),('m141004_022835_initial',1480913053),('m141015_173305_follow_notifications',1480912747),('m141019_093319_mentioning',1480912747),('m141020_162639_fix_default',1480912748),('m141020_193920_rm_alsocreated',1480912748),('m141020_193931_rm_alsoliked',1480912748),('m141021_162639_oembed_setting',1480912748),('m141022_094635_addDefaults',1480912748),('m141106_185632_log_init',1480912748),('m150204_103433_html5_notified',1480912748),('m150210_190006_user_invite_lang',1480912749),('m150302_114347_add_visibility',1480912749),('m150322_194403_remove_type_field',1480912749),('m150322_195619_allowedExt2Text',1480912749),('m150429_190600_indexes',1480913045),('m150429_223856_optimize',1480912749),('m150510_102900_update',1480912749),('m150629_220311_change',1480912749),('m150703_012735_typelength',1480912750),('m150703_024635_activityTypes',1480912750),('m150703_033650_namespace',1480912750),('m150703_130157_migrate',1480912750),('m150704_005338_namespace',1480912750),('m150704_005418_namespace',1480912750),('m150704_005434_namespace',1480912750),('m150704_005452_namespace',1480912750),('m150704_005504_namespace',1480912750),('m150705_081309_namespace',1480913053),('m150709_050451_namespace',1480913045),('m150709_151858_namespace',1480913048),('m150713_054441_timezone',1480912750),('m150714_093525_activity',1480912751),('m150714_100355_cleanup',1480912752),('m150720_174011_initial',1480913028),('m150831_061628_notifications',1480912752),('m150910_223305_fix_user_follow',1480912752),('m150924_133344_update_notification_fix',1480912752),('m150924_154635_user_invite_add_first_lastname',1480912752),('m150927_190830_create_contentcontainer',1480912752),('m150928_103711_permissions',1480912753),('m150928_134934_groups',1480912753),('m150928_140718_setColorVariables',1480912754),('m151010_124437_group_permissions',1480912754),('m151010_175000_default_visibility',1480912754),('m151013_223814_include_dashboard',1480912754),('m151022_131128_module_fix',1480912755),('m151106_090948_addColor',1480912755),('m151223_171310_fix_notifications',1480912755),('m151226_164234_authclient',1480912755),('m160125_053702_stored_filename',1480912755),('m160216_160119_initial',1480912755),('m160217_161220_addCanLeaveFlag',1480912756),('m160218_132531_close_and_anonymous_poll',1480913049),('m160220_013525_contentcontainer_id',1480912757),('m160221_222312_public_permission_change',1480912757),('m160225_180229_remove_website',1480912757),('m160227_073020_birthday_date',1480912757),('m160229_162959_multiusergroups',1480912758),('m160309_141222_longerUserName',1480912758),('m160408_100725_rename_groupadmin_to_manager',1480912758),('m160501_220850_activity_pk_int',1480912758),('m160507_202611_settings',1480912758),('m160508_005740_settings_cleanup',1480912760),('m160509_214811_spaceurl',1480912760),('m160517_132535_group',1480912760),('m160523_105732_profile_searchable',1480912760),('m160714_142827_remove_space_id',1480912760);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_enabled`
--

DROP TABLE IF EXISTS `module_enabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_enabled` (
  `module_id` varchar(100) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_enabled`
--

LOCK TABLES `module_enabled` WRITE;
/*!40000 ALTER TABLE `module_enabled` DISABLE KEYS */;
INSERT INTO `module_enabled` VALUES ('birthday'),('cfiles'),('mail'),('polls'),('wiki');
/*!40000 ALTER TABLE `module_enabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `source_class` varchar(100) DEFAULT NULL,
  `source_pk` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `emailed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `desktop_notified` tinyint(1) DEFAULT '0',
  `originator_user_id` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT '',
  `group_key` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_seen` (`seen`),
  KEY `index_desktop_notified` (`desktop_notified`),
  KEY `index_desktop_emailed` (`emailed`),
  KEY `index_groupuser` (`user_id`,`class`,`group_key`)
) ENGINE=InnoDB AUTO_INCREMENT=7;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'humhub\\modules\\comment\\notifications\\NewComment',1,0,'humhub\\modules\\comment\\models\\Comment',1,1,0,'2016-12-05 04:45:27',1,2,'comment','humhub\\modules\\post\\models\\Post-2'),(2,'humhub\\modules\\comment\\notifications\\NewComment',1,0,'humhub\\modules\\comment\\models\\Comment',2,1,0,'2016-12-05 04:45:27',1,3,'comment','humhub\\modules\\post\\models\\Post-2'),(3,'humhub\\modules\\comment\\notifications\\NewComment',2,0,'humhub\\modules\\comment\\models\\Comment',2,1,0,'2016-12-05 04:45:27',0,3,'comment','humhub\\modules\\post\\models\\Post-2'),(4,'humhub\\modules\\comment\\notifications\\NewComment',1,0,'humhub\\modules\\comment\\models\\Comment',3,1,0,'2016-12-05 04:45:28',1,2,'comment','humhub\\modules\\polls\\models\\Poll-1'),(5,'humhub\\modules\\comment\\notifications\\NewComment',1,0,'humhub\\modules\\comment\\models\\Comment',4,1,0,'2016-12-05 04:45:28',1,3,'comment','humhub\\modules\\polls\\models\\Poll-1'),(6,'humhub\\modules\\comment\\notifications\\NewComment',2,0,'humhub\\modules\\comment\\models\\Comment',4,1,0,'2016-12-05 04:45:28',0,3,'comment','humhub\\modules\\polls\\models\\Poll-1');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `allow_multiple` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_random` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `anonymous` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
INSERT INTO `poll` VALUES (1,'Right now, we are in the planning stages for our next meetup and we would like to know from you, where you would like to go?',0,'2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1,0,0,0);
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_answer`
--

DROP TABLE IF EXISTS `poll_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_answer`
--

LOCK TABLES `poll_answer` WRITE;
/*!40000 ALTER TABLE `poll_answer` DISABLE KEYS */;
INSERT INTO `poll_answer` VALUES (1,1,'To Daniel','2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1),(2,1,'Club A Steakhouse','2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1),(3,1,'Pisillo Italian Panini','2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1);
/*!40000 ALTER TABLE `poll_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_answer_user`
--

DROP TABLE IF EXISTS `poll_answer_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_answer_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `poll_answer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_answer_user`
--

LOCK TABLES `poll_answer_user` WRITE;
/*!40000 ALTER TABLE `poll_answer_user` DISABLE KEYS */;
INSERT INTO `poll_answer_user` VALUES (1,1,2,'2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2),(2,1,3,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3);
/*!40000 ALTER TABLE `poll_answer_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,NULL,'Yay! I\'ve just installed HumHub ;Cool;',NULL,'2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1),(2,NULL,'We\'re looking for great slogans of famous brands. Maybe you can come up with some samples?',NULL,'2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `birthday_hide_year` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `about` text,
  `phone_private` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `im_skype` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_xmpp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_facebook` varchar(255) DEFAULT NULL,
  `url_linkedin` varchar(255) DEFAULT NULL,
  `url_xing` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `url_vimeo` varchar(255) DEFAULT NULL,
  `url_flickr` varchar(255) DEFAULT NULL,
  `url_myspace` varchar(255) DEFAULT NULL,
  `url_googleplus` varchar(255) DEFAULT NULL,
  `url_twitter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'AdminFirstName','AdminLastName','System Administration',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'David','Roberts','Late riser',NULL,'2443 Queens Lane','24574','Allwood','Virginia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sara','Schuster','Do-gooder',NULL,'Schmarjestrasse 51','17095','Friedland','Niedersachsen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field`
--

DROP TABLE IF EXISTS `profile_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_field_category_id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `field_type_class` varchar(255) NOT NULL,
  `field_type_config` text,
  `internal_name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `required` tinyint(4) DEFAULT NULL,
  `show_at_registration` tinyint(4) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_attribute` varchar(255) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_profile_field_category` (`profile_field_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field`
--

LOCK TABLES `profile_field` WRITE;
/*!40000 ALTER TABLE `profile_field` DISABLE KEYS */;
INSERT INTO `profile_field` VALUES (1,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":20,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','firstname','First name',NULL,100,1,1,1,1,NULL,NULL,NULL,NULL,'givenName',NULL,1,1),(2,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":30,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','lastname','Last name',NULL,200,1,1,1,1,NULL,NULL,NULL,NULL,'sn',NULL,1,1),(3,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":50,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','title','Title',NULL,300,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'title',NULL,1,1),(4,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Select','{\"options\":\"male=>Male\\nfemale=>Female\\ncustom=>Custom\",\"fieldTypes\":[]}','gender','Gender',NULL,300,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(5,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":150,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','street','Street',NULL,400,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(6,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":10,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','zip','Zip',NULL,500,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(7,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','city','City',NULL,600,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(8,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\CountrySelect','{\"options\":null,\"fieldTypes\":[]}','country','Country',NULL,700,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(9,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','state','State',NULL,800,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(10,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\Birthday','{\"defaultHideAge\":false,\"fieldTypes\":[]}','birthday','Birthday',NULL,900,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(11,1,NULL,'humhub\\modules\\user\\models\\fieldtype\\TextArea','{\"fieldTypes\":[]}','about','About',NULL,900,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(12,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','phone_private','Phone Private',NULL,100,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(13,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','phone_work','Phone Work',NULL,200,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(14,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','mobile','Mobile',NULL,300,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(15,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','fax','Fax',NULL,400,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(16,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','im_skype','Skype Nickname',NULL,500,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(17,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":100,\"validator\":null,\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','im_msn','MSN',NULL,600,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(18,2,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"email\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','im_xmpp','XMPP Jabber Address',NULL,800,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(19,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url','Url',NULL,100,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(20,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_facebook','Facebook URL',NULL,200,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(21,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_linkedin','LinkedIn URL',NULL,300,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(22,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_xing','Xing URL',NULL,400,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(23,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_youtube','Youtube URL',NULL,500,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(24,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_vimeo','Vimeo URL',NULL,600,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(25,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_flickr','Flickr URL',NULL,700,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(26,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_myspace','MySpace URL',NULL,800,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(27,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_googleplus','Google+ URL',NULL,900,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1),(28,3,NULL,'humhub\\modules\\user\\models\\fieldtype\\Text','{\"minLength\":null,\"maxLength\":255,\"validator\":\"url\",\"default\":null,\"regexp\":null,\"regexpErrorMessage\":null,\"fieldTypes\":[]}','url_twitter','Twitter URL',NULL,1000,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `profile_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field_category`
--

DROP TABLE IF EXISTS `profile_field_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `module_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field_category`
--

LOCK TABLES `profile_field_category` WRITE;
/*!40000 ALTER TABLE `profile_field_category` DISABLE KEYS */;
INSERT INTO `profile_field_category` VALUES (1,'General','',100,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(2,'Communication','',200,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(3,'Social bookmarks','',300,NULL,1,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `profile_field_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `module_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unique-setting` (`name`,`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'oembedProviders','{\"vimeo.com\":\"http:\\/\\/vimeo.com\\/api\\/oembed.json?scheme=https&url=%url%&format=json&maxwidth=450\",\"youtube.com\":\"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450\",\"youtu.be\":\"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450\",\"soundcloud.com\":\"https:\\/\\/soundcloud.com\\/oembed?url=%url%&format=json&maxwidth=450\",\"slideshare.net\":\"https:\\/\\/www.slideshare.net\\/api\\/oembed\\/2?url=%url%&format=json&maxwidth=450\"}','base'),(2,'defaultVisibility','1','space'),(3,'defaultJoinPolicy','1','space'),(4,'colorDefault','#ededed','base'),(5,'colorPrimary','#708fa0','base'),(6,'colorInfo','#6fdbe8','base'),(7,'colorSuccess','#97d271','base'),(8,'colorWarning','#fdd198','base'),(9,'colorDanger','#ff8989','base'),(10,'name','MySimaLand','base'),(11,'baseUrl','http://humhub.local:8010','base'),(12,'paginationSize','10','base'),(13,'displayNameFormat','{profile.firstname} {profile.lastname}','base'),(14,'horImageScrollOnMobile','1','base'),(15,'auth.ldap.refreshUsers','1','user'),(16,'auth.needApproval','0','user'),(17,'auth.anonymousRegistration','1','user'),(18,'auth.internalUsersCanInvite','0','user'),(19,'mailer.transportType','php','base'),(20,'mailer.systemEmailAddress','social@example.com','base'),(21,'mailer.systemEmailName','MySimaLand','base'),(22,'receive_email_activities','1','activity'),(23,'receive_email_notifications','2','notification'),(24,'maxFileSize','5242880','file'),(25,'maxPreviewImageWidth','200','file'),(26,'maxPreviewImageHeight','200','file'),(27,'hideImageFileInfo','0','file'),(28,'cache.class','yii\\caching\\FileCache','base'),(29,'cache.expireTime','3600','base'),(30,'installationId','00af432af5be02b5ec631e647ecc491e','admin'),(31,'theme','HumHub','base'),(32,'spaceOrder','0','space'),(33,'enable','1','tour'),(34,'defaultLanguage','en-US','base'),(35,'enable_html5_desktop_notifications','0','notification'),(36,'useCase','intranet','base'),(37,'auth.allowGuestAccess','0','user'),(38,'enable','0','friendship'),(39,'shownDays','2','birthday'),(40,'sampleData','1','installer'),(41,'secret','e8664360-cfb1-487a-b60e-c3d8d429edf9','base'),(42,'timeZone','Asia/Yekaterinburg','base');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space`
--

DROP TABLE IF EXISTS `space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `join_policy` tinyint(4) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `auto_add_new_members` int(4) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  `default_content_visibility` tinyint(1) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `members_can_leave` int(11) DEFAULT '1',
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url-unique` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space`
--

LOCK TABLES `space` WRITE;
/*!40000 ALTER TABLE `space` DISABLE KEYS */;
INSERT INTO `space` VALUES (1,'5af60c97-f4fe-4b98-b558-19ef31bdf2d2',2,'Welcome Space','Your first sample space to discover the platform.',2,2,1,NULL,'2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1,NULL,1,2,NULL,'#6fdbe8',1,'welcome-space');
/*!40000 ALTER TABLE `space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space_membership`
--

DROP TABLE IF EXISTS `space_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space_membership` (
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `originator_user_id` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `request_message` text,
  `last_visit` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT 'member',
  `show_at_dashboard` tinyint(1) DEFAULT '1',
  `can_cancel_membership` int(11) DEFAULT '1',
  PRIMARY KEY (`space_id`,`user_id`),
  KEY `index_status` (`status`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_membership`
--

LOCK TABLES `space_membership` WRITE;
/*!40000 ALTER TABLE `space_membership` DISABLE KEYS */;
INSERT INTO `space_membership` VALUES (1,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'admin',1,1),(1,2,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'member',1,1),(1,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'member',1,1);
/*!40000 ALTER TABLE `space_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `space_module`
--

DROP TABLE IF EXISTS `space_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `space_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space_module`
--

LOCK TABLES `space_module` WRITE;
/*!40000 ALTER TABLE `space_module` DISABLE KEYS */;
INSERT INTO `space_module` VALUES (1,'cfiles',1,1),(3,'polls',1,1),(4,'wiki',1,1);
/*!40000 ALTER TABLE `space_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_oembed`
--

DROP TABLE IF EXISTS `url_oembed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_oembed`
--

LOCK TABLES `url_oembed` WRITE;
/*!40000 ALTER TABLE `url_oembed` DISABLE KEYS */;
/*!40000 ALTER TABLE `url_oembed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `auth_mode` varchar(10) NOT NULL,
  `tags` text,
  `language` varchar(5) DEFAULT NULL,
  `last_activity_email` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `visibility` int(1) DEFAULT '1',
  `time_zone` varchar(100) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_guid` (`guid`),
  UNIQUE KEY `unique_wall_id` (`wall_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'65ae112e-80d0-4377-a6e1-2662bf529e5e',1,1,'admin','admin@sima-land.ru','local','Administration, Support, HumHub','','2016-12-05 04:45:21','2016-12-05 04:45:21',NULL,'2016-12-05 04:45:21',NULL,'2016-12-05 04:45:39',1,NULL,1),(2,'c4e717fd-32ac-41a7-8136-5901e6f7c9fc',3,1,'david1986','david.roberts@example.com','local','Microsoft Office, Marketing, SEM, Digital Native','','2016-12-05 04:45:26','2016-12-05 04:45:26',1,'2016-12-05 04:45:26',1,NULL,1,NULL,3),(3,'215305cc-86ef-49d2-982d-5170ef1a76a7',4,1,'sara1989','sara.schuster@example.com','local','Yoga, Travel, English, German, French','','2016-12-05 04:45:27','2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1,NULL,1,NULL,4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follow`
--

DROP TABLE IF EXISTS `user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_user` (`user_id`),
  KEY `index_object` (`object_model`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follow`
--

LOCK TABLES `user_follow` WRITE;
/*!40000 ALTER TABLE `user_follow` DISABLE KEYS */;
INSERT INTO `user_follow` VALUES (1,'humhub\\modules\\post\\models\\Post',1,1,1),(2,'humhub\\modules\\post\\models\\Post',2,1,1),(3,'humhub\\modules\\post\\models\\Post',2,2,1),(4,'humhub\\modules\\post\\models\\Post',2,3,1),(5,'humhub\\modules\\polls\\models\\Poll',1,1,1),(6,'humhub\\modules\\polls\\models\\Poll',1,2,1),(7,'humhub\\modules\\polls\\models\\Poll',1,3,1);
/*!40000 ALTER TABLE `user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_friendship`
--

DROP TABLE IF EXISTS `user_friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_friendship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx-friends` (`user_id`,`friend_user_id`),
  KEY `fk-friend` (`friend_user_id`),
  CONSTRAINT `fk-friend` FOREIGN KEY (`friend_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_friendship`
--

LOCK TABLES `user_friendship` WRITE;
/*!40000 ALTER TABLE `user_friendship` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_http_session`
--

DROP TABLE IF EXISTS `user_http_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_http_session`
--

LOCK TABLES `user_http_session` WRITE;
/*!40000 ALTER TABLE `user_http_session` DISABLE KEYS */;
INSERT INTO `user_http_session` VALUES ('1ic730i7nqjla32627k1dlugf2',1480918317,1,'__flash|a:0:{}__returnUrl|s:10:\"/index.php\";__id|i:1;__expire|i:1480918277;currentAuthClientId|s:5:\"local\";');
/*!40000 ALTER TABLE `user_http_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invite`
--

DROP TABLE IF EXISTS `user_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_originator_id` int(11) DEFAULT NULL,
  `space_invite_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invite`
--

LOCK TABLES `user_invite` WRITE;
/*!40000 ALTER TABLE `user_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mentioning`
--

DROP TABLE IF EXISTS `user_mentioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_mentioning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i_user` (`user_id`),
  KEY `i_object` (`object_model`,`object_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mentioning`
--

LOCK TABLES `user_mentioning` WRITE;
/*!40000 ALTER TABLE `user_mentioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mentioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_originator` tinyint(4) DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`,`user_id`),
  KEY `index_last_viewed` (`last_viewed`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module`
--

DROP TABLE IF EXISTS `user_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_module` (`user_id`,`module_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module`
--

LOCK TABLES `user_module` WRITE;
/*!40000 ALTER TABLE `user_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_password`
--

DROP TABLE IF EXISTS `user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_password`
--

LOCK TABLES `user_password` WRITE;
/*!40000 ALTER TABLE `user_password` DISABLE KEYS */;
INSERT INTO `user_password` VALUES (1,1,'sha512whirlpool','abd44df609d09870e6e7463b8980ba1b66e21d7001d63873a812fe9f5ef16d61ae2e78854860706981945f97cfa30dee3848f683a9b5a2fac886ca05805242ec','fb5db6cc-d78c-411c-abec-895b2445418d','2016-12-05 04:45:21');
/*!40000 ALTER TABLE `user_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wall`
--

DROP TABLE IF EXISTS `wall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wall`
--

LOCK TABLES `wall` WRITE;
/*!40000 ALTER TABLE `wall` DISABLE KEYS */;
INSERT INTO `wall` VALUES (1,'humhub\\modules\\user\\models\\User',1,NULL,NULL,NULL,NULL),(2,'humhub\\modules\\space\\models\\Space',1,NULL,NULL,NULL,NULL),(3,'humhub\\modules\\user\\models\\User',2,NULL,NULL,NULL,NULL),(4,'humhub\\modules\\user\\models\\User',3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wall_entry`
--

DROP TABLE IF EXISTS `wall_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wall_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wall_entry`
--

LOCK TABLES `wall_entry` WRITE;
/*!40000 ALTER TABLE `wall_entry` DISABLE KEYS */;
INSERT INTO `wall_entry` VALUES (1,2,1,'2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1),(2,2,3,'2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1),(3,2,2,'2016-12-05 04:45:21',1,'2016-12-05 04:45:21',1),(4,2,4,'2016-12-05 04:45:26',1,'2016-12-05 04:45:26',1),(5,2,5,'2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1),(6,2,7,'2016-12-05 04:45:27',1,'2016-12-05 04:45:27',1),(7,2,6,'2016-12-05 04:45:27',1,'2016-12-05 04:45:28',3),(8,2,8,'2016-12-05 04:45:27',2,'2016-12-05 04:45:27',2),(9,2,9,'2016-12-05 04:45:27',3,'2016-12-05 04:45:27',3),(10,2,10,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3),(11,2,11,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3),(12,2,13,'2016-12-05 04:45:28',1,'2016-12-05 04:45:28',1),(13,2,12,'2016-12-05 04:45:28',1,'2016-12-05 04:45:28',3),(14,2,14,'2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2),(15,2,15,'2016-12-05 04:45:28',2,'2016-12-05 04:45:28',2),(16,2,16,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3),(17,2,17,'2016-12-05 04:45:28',3,'2016-12-05 04:45:28',3);
/*!40000 ALTER TABLE `wall_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page`
--

DROP TABLE IF EXISTS `wiki_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `is_home` tinyint(4) NOT NULL DEFAULT '0',
  `admin_only` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page`
--

LOCK TABLES `wiki_page` WRITE;
/*!40000 ALTER TABLE `wiki_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page_revision`
--

DROP TABLE IF EXISTS `wiki_page_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` int(11) NOT NULL,
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `wiki_page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page_revision`
--

LOCK TABLES `wiki_page_revision` WRITE;
/*!40000 ALTER TABLE `wiki_page_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_page_revision` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-05 10:48:09
