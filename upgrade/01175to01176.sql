-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: domotiga
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5

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

USE domotiga;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `db` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'0.1.166'),(2,'0.1.167'),(3,'0.1.168'),(4,'0.1.169'),(5,'0.1.170'),(6,'0.1.171'),(7,'0.1.172'),(8,'0.1.173'),(9,'0.1.174'),(10,'0.1.175'),(11,'0.1.176');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicetypes`
--

DROP TABLE IF EXISTS `devicetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicetypes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicetypes`
--

LOCK TABLES `devicetypes` WRITE;
/*!40000 ALTER TABLE `devicetypes` DISABLE KEYS */;
INSERT INTO `devicetypes` VALUES (1,'Marmitek DS90','Door/Window Sensor','X10Security'),(2,'Marmitek LW10G','Lamp Module','X10'),(3,'Marmitek LD11','Dimmer Module','X10'),(4,'Marmitek MS13E M','Motion Sensor','X10'),(5,'Marmitek MS13E L','Light Sensor','X10'),(6,'Xanura SAX35','I/O Actor','A10'),(7,'Oregon THGR238N','Temp/Hygro Sensor','Oregon'),(8,'Oregon UV138','UV Light Sensor','Oregon'),(9,'RFXPwr Module','Power Usage Sensor','RFXCom'),(10,'Marmitek TM13','Wireless Tranceiver','X10'),(11,'HDDTemp Item','Temp Monitor','HDDTemp'),(12,'Oregon THR128','Temp Sensor','Oregon'),(13,'Sony AIBO ERS7 ','Robot Dog','AIBO'),(14,'APC SmartUPS1000','Power Supply','UPS'),(15,'Dallas DS18S20','Temp Sensor','1-Wire'),(16,'Dallas Rain Gauge','Rain Gauge','1-Wire'),(17,'Marmitek SD90','Smoke Detector','X10Security'),(18,'Bluetooth Device','Phone','Bluetooth'),(19,'ITHO ECO Fan','Central Ventilation','Weeder'),(20,'RFXPulse Gas','Gas Usage Sensor','RFXCom'),(21,'RFXPulse Water','Water Usage Sensor','RFXCom'),(22,'Oregon BWR102','Digital Bathroom Scale','Oregon'),(23,'Oregon GR101','Digital Bathroom Scale','Oregon'),(24,'Oregon THC138','Temp Sensor','Oregon'),(25,'Oregon THR138','Temp Sensor','Oregon'),(26,'Oregon THGR810','Temp/Hygro Sensor','Oregon'),(27,'Plugwise Circle','Zigbee Appliance Module','Plugwise'),(28,'Plugwise Circle+','Zigbee Appliance Module','Plugwise'),(29,'KAKU Doorbell','Wireless Doorbell','X10'),(30,'Oregon THN132N','Temp Sensor','Oregon'),(31,'Oregon THWR288','Temp Sensor','Oregon'),(32,'Oregon BTHR918N','Baro/Temp/Hygro Sensor','Oregon'),(33,'Oregon BTHR968','Baro/Temp/Hygro Sensor','Oregon'),(34,'Marmitek AD10','Switch Module','X10'),(35,'Marmitek LM12','Lamp Module','X10'),(36,'Marmitek AM12','Appliance Module','X10'),(38,'Oregon PCR800','Rain Gauge','Oregon'),(39,'Oregon RTGR328N','Temp/Hygro/Time Sensor','Oregon'),(40,'DSC PIR','Motion Sensor','DSC'),(41,'DSC Contact','Door/Window Sensor','DSC'),(42,'DSC Smoke','Smoke Detector','DSC'),(43,'KAKU AWST-8802','Wireless Wallswitch Dual','HE'),(44,'KAKU AMST-606','Door/Window Sensor','HE'),(46,'KNX/EIB Dim','EIS 2','KNX/EIB'),(45,'KNX/EIB On/Off','EIS 1','KNX/EIB'),(49,'KNX/EIB Values','EIS 5','KNX/EIB'),(48,'KNX/EIB Date','EIS 4','KNX/EIB'),(47,'KNX/EIB Time','EIS 3','KNX/EIB'),(50,'KNX/EIB Scaling %','EIS 6','KNX/EIB'),(51,'KNX/EIB Motor Drives','EIS 7','KNX/EIB'),(52,'KNX/EIB Forced Control','EIS 8','KNX/EIB'),(53,'KNX/EIB 32bit Float','EIS 9','KNX/EIB'),(54,'KNX/EIB 16bit Int','EIS 10','KNX/EIB'),(55,'KNX/EIB 32bit Int','EIS 11','KNX/EIB'),(56,'KNX/EIB 8bit Int','EIS 14','KNX/EIB'),(57,'KNX/EIB 14byte Text','EIS 15','KNX/EIB'),(58,'Dallas DS2423','4Kbit RAM + Counter','1-Wire'),(59,'KAKU PAR 1000','Appliance Module','ARC'),(60,'KAKU AC-300','Dimmer Module','AC'),(61,'Z-Wave Switch','Binary Switch','Z-Wave'),(62,'Z-Wave Dimmer','Multilevel Switch','Z-Wave'),(63,'Z-Wave D/W Sensor','Door/Window Sensor','Z-Wave'),(64,'Z-Wave PIR Sensor','Motion Sensor','Z-Wave'),(65,'Dallas DS2438','Smart Battery Monitor ','1-Wire'),(66,'Cent-a-meter/OWL','Power Usage Sensor','Oregon'),(67,'Visonic DS10/90/SD90','Door/Window Sensor','X10Security'),(68,'Visonic MCT302/425','Door/Window Sensor','X10Security'),(69,'Visonic MS10/20/90/MCW','Motion Sensor','X10Security'),(70,'Visonic KR10/21/SH624','Security Remote','X10Security'),(71,'Visonic MCT234/HP564','Security Remote','X10Security');
/*!40000 ALTER TABLE `devicetypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-12-08 20:17:52
