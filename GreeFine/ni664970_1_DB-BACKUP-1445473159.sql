-- MySQL dump 10.13  Distrib 5.6.27, for Linux (x86_64)
--
-- Host: localhost    Database: ni664970_1_DB
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `economy`
--

DROP TABLE IF EXISTS `economy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `economy` (
  `numero` int(12) NOT NULL,
  `ressource` varchar(32) NOT NULL,
  `sellprice` int(100) NOT NULL DEFAULT '0',
  `buyprice` int(100) NOT NULL DEFAULT '0',
  `varprice` int(100) NOT NULL,
  `minprice` int(100) NOT NULL,
  `maxprice` int(100) NOT NULL,
  `factor` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `shoptype` text NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economy`
--

LOCK TABLES `economy` WRITE;
/*!40000 ALTER TABLE `economy` DISABLE KEYS */;
INSERT INTO `economy` VALUES (1,'apple',50,65,1,1,60,'1','market'),(2,'heroinu',2250,0,5,1,4000,'0','heroin'),(3,'heroinp',4500,0,10,1,5000,'2','heroin'),(4,'salema',45,55,1,1,100,'4','fishmarket'),(5,'ornate',40,50,1,1,100,'4','fishmarket'),(6,'mackerel',175,200,1,1,1000,'4','fishmarket'),(7,'tuna',700,900,1,1,2000,'4','fishmarket'),(8,'mullet',250,300,1,1,1000,'4','fishmarket'),(9,'catshark',300,350,1,1,1000,'4','fishmarket'),(10,'rabbit',65,75,1,1,500,'0','market'),(11,'oilp',2250,0,2,1,3500,'3','oil'),(12,'turtle',5750,15000,10,1,8000,'0','wongs'),(13,'water',0,10,0,1,25,'0','market'),(14,'coffee',0,10,0,1,75,'0','cop'),(15,'turtlesoup',4500,15000,0,1,5000,'0','wongs'),(16,'donuts',0,10,0,1,200,'0','cop'),(17,'marijuana',3000,0,10,1,6000,'2','heroin'),(18,'tbacon',25,75,0,1,75,'0','market'),(19,'lockpick',750,4000,0,1,4100,'0','market'),(20,'redgull',750,1000,0,1,1200,'0','market'),(21,'peach',65,70,1,1,100,'1','market'),(22,'cocaine',2500,0,5,1,4500,'0','heroin'),(23,'cocainep',5000,0,10,1,8000,'2','heroin'),(24,'diamond',1500,0,3,1,2000,'3','diamond'),(25,'diamondc',3000,0,3,1,6000,'3','diamond'),(26,'iron_r',1500,0,3,1,3000,'3','iron'),(27,'copper_r',1000,0,3,1,1500,'3','iron'),(28,'salt_r',2500,0,3,1,5000,'3','salt'),(29,'glass',1500,0,3,1,3000,'3','glass'),(30,'fuelF',10,500,0,1,1500,'0','market'),(31,'spikeStrip',0,10,0,1,2000,'0','cop'),(32,'cement',1000,0,3,1,8000,'3','cement'),(33,'goldbar',90000,0,0,1,180000,'0','goldbar'),(34,'blastingcharge',10000,50000,0,1,50000,'0','market'),(35,'boltcutter',5000,8000,0,1,5000,'0','market'),(36,'defusekit',0,10,0,1,2500,'0','cop'),(37,'storagesmall',10,125000,0,1,10,'0','market'),(38,'storagebig',10,250000,0,1,10,'0','market'),(39,'pickaxe',700,1200,0,1,750,'0','market'),(40,'methu',1875,3750,5,1,3600,'2','heroin'),(41,'methp',3750,0,10,1,6500,'2','heroin'),(42,'bottledwhiskey',5500,3750,5,1,6000,'2','speakeasy'),(43,'bottledbeer',750,1250,5,1,1450,'2','speakeasy'),(44,'whiskey',1250,5500,4,1,2500,'2','speakeasy'),(45,'wine',1000,4000,2,1,4500,'2','beer'),(46,'grapes',70,95,2,1,140,'2','market'),(47,'battery',50,100,0,1,100,'2','market'),(48,'painkillers',250,500,0,1,500,'2','pharmacy'),(49,'mash',500,2500,1,1,1500,'2','bar'),(50,'rye',2000,0,2,1,3500,'2','bar'),(51,'morphium',100,1500,0,1,1500,'2','pharmacy'),(52,'yeast',2000,0,2,1,3500,'2','pharmacy'),(53,'cornmeal',200,500,2,1,750,'2','bar'),(54,'bottles',50,100,1,1,100,'2','bar'),(55,'uranium',10000,0,8,1,12500,'2','uranium'),(56,'kidney',9000,15000,0,1,16750,'2','pharmacy'),(57,'scalpel',1000,7500,0,1,7500,'2','pharmacy'),(58,'beerp',550,3750,3,1,1500,'2','speakeasy'),(59,'mauer',5,10,0,1,10,'2','cop'),(60,'zipties',5,500,0,1,500,'2','market'),(61,'puranium',250,1000,0,1,1000,'2','uranium'),(62,'ipuranium',3500,9000,0,1,9000,'2','uranium');
/*!40000 ALTER TABLE `economy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangs`
--

DROP TABLE IF EXISTS `gangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangs`
--

LOCK TABLES `gangs` WRITE;
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `jail_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (12,'No Nitro','76561198248482320',0,9963186,'6','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,1],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','0',0,'\"[`No Nitro`]\"','3','0','\"[`U_C_Poor_2`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,15),(13,'Olegan Initnel','76561198120555085',209250,7608251,'6','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]\"','\"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,1],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,1],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,1],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,1],[`license_civ_liquor`,1],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[[`license_med_air`,0],[`license_med_adac`,0]]\"','\"[`U_B_CombatUniform_mcam_worn`,`V_PlateCarrier1_blk`,`B_Bergen_blk`,`G_Balaclava_blk`,`H_HelmetB_black`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemRadio`,`NVGoggles`],``,`hgun_P07_F`,[`FirstAidKit`],[`Chemlight_green`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`],[],[],[],[`30Rnd_65x39_caseless_mag`,`SmokeShell`,`SmokeShellGreen`,`30Rnd_65x39_caseless_mag`,`SmokeShellBlue`,`Chemlight_green`,`SmokeShellOrange`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`30Rnd_65x39_caseless_mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[``,``,``,``],[``,``,``,``],[]]\"','\"[``,``,``,`G_Aviator`,``,[`Binocular`],[],[],[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','0',0,'\"[`Olegan Initnel`]\"','3','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(14,'clement nitro','76561198178857459',0,9474607,'6','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]\"','\"[[`license_civ_driver`,1],[`license_civ_air`,1],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,1],[`license_civ_oil`,0],[`license_civ_dive`,1],[`license_civ_truck`,1],[`license_civ_gun`,0],[`license_civ_rebel`,1],[`license_civ_coke`,1],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','0',0,'\"[`clement nitro`]\"','3','0','\"[`U_O_SpecopsUniform_ocamo`,`V_TacVest_khk`,`B_Carryall_khk`,`G_Combat`,`H_ShemagOpen_tan`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`srifle_EBR_F`,``,[`optic_NVS`],[],[`ToolKit`],[],[],[`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`,`20Rnd_762x51_Mag`],[``,``,`optic_DMS`,``],[``,``,``,``],[`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_rabbit`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_redgull`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`,`life_inv_peach`]]\"',0,0),(15,'Kaze Alucard','76561198169552876',36430,755773,'6','\"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,1]]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,1],[`license_civ_rebel`,1],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,1],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,1],[`license_civ_liquor`,1],[`license_civ_bottler`,1],[`license_civ_uranium`,0]]\"','\"[[`license_med_air`,1],[`license_med_adac`,1]]\"','\"[`U_Rangemaster`,`V_PlateCarrier1_blk`,``,``,`H_Beret_Colonel`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`Rangefinder`],`srifle_LRR_F`,`hgun_Rook40_snds_F`,[],[`20Rnd_556x45_UW_mag`,`20Rnd_556x45_UW_mag`,`20Rnd_556x45_UW_mag`],[],[],[],[`100Rnd_65x39_caseless_mag`,`100Rnd_65x39_caseless_mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`16Rnd_9x21_Mag`],[``,``,`optic_LRPS`,``],[`muzzle_snds_L`,``,``,``],[]]\"','\"[`U_B_HeliPilotCoveralls`,``,`B_Kitbag_cbr`,`G_Aviator`,`H_Cap_marshal`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles`,`Binocular`],[],[],[],[`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`],[`Medikit`,`ToolKit`],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','2',0,'\"[`Kaze Alucard`]\"','3','0','\"[`U_B_CTRG_1`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`arifle_TRG20_F`,`hgun_Pistol_heavy_01_MRD_F`,[],[`30Rnd_65x39_caseless_green`,`30Rnd_65x39_caseless_green`,`30Rnd_65x39_caseless_green`,`30Rnd_45ACP_Mag_SMG_01`],[],[`30Rnd_65x39_caseless_green`,`30Rnd_65x39_caseless_green`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`30Rnd_556x45_Stanag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_45ACP_Mag_SMG_01`,`30Rnd_556x45_Stanag`,`11Rnd_45ACP_Mag`],[],[],[`muzzle_snds_M`,``,`optic_Hamr`,``],[``,``,`optic_MRD`,``],[]]\"',0,0),(16,'NIGAX RHAA','76561198106923708',0,5947700,'0','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,1]]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,1],[`license_civ_stiller`,0],[`license_civ_liquor`,1],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','0',0,'\"[`NIGAX RHAA`]\"','3','0','\"[`U_C_Poloshirt_stripped`,``,``,`G_Aviator`,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(17,'Jack Poutine','76561198131072307',0,7994630,'6','\"[[`license_cop_air`,1],[`license_cop_swat`,0],[`license_cop_cg`,1]]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[`U_B_CombatUniform_mcam_worn`,`V_TacVest_blk_POLICE`,`B_Bergen_blk`,`G_Balaclava_blk`,`H_Watchcap_blk`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemRadio`,`ItemGPS`,`NVGoggles_OPFOR`,`Rangefinder`],`srifle_LRR_F`,`hgun_Rook40_snds_F`,[],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`7Rnd_408_Mag`,`16Rnd_9x21_Mag`],[`muzzle_snds_L`],[`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`,`16Rnd_9x21_Mag`],[],[`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`7Rnd_408_Mag`,`HandGrenade_Stone`,`HandGrenade_Stone`,`HandGrenade_Stone`,`HandGrenade_Stone`],[``,``,`optic_MRCO`,``],[``,``,``,``],[]]\"','\"[]\"','0',0,'\"[`Jack Poutine`]\"','3','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(18,'rapho','76561198133135339',0,13400,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`rapho`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],`arifle_MXM_F`,``,[],[`30Rnd_65x39_caseless_mag`],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(19,'Cyril Hanouna','76561198209776716',167250,12095,'0','\"[]\"','\"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`Cyril Hanouna`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,`B_Carryall_khk`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(20,'al capone','76561198154592539',9115,9880000,'6','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]\"','\"[]\"','\"[[`license_med_air`,1],[`license_med_adac`,1]]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[`U_Rangemaster`,``,`B_Kitbag_sgg`,`G_Aviator`,`H_Cap_marshal`,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`,`NVGoggles`,`Binocular`],[],[],[],[`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`,`Chemlight_yellow`],[`ToolKit`,`Medikit`],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','2',0,'\"[`al capone`]\"','3','0','\"[]\"',0,0),(21,'Jakob','76561198201493405',0,10000,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`Jakob`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(22,'Heingesty','76561198164035816',0,10000,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`Heingesty`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(23,'Alban DD','76561198108622617',237000,1579399,'0','\"[[`license_cop_air`,0],[`license_cop_swat`,0],[`license_cop_cg`,0]]\"','\"[[`license_civ_driver`,1],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,1],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,1],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,1]]\"','\"[]\"','\"[`U_Rangemaster`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"','\"[]\"','0',0,'\"[`Alban `]\"','3','0','\"[``,``,`B_Kitbag_mcamo`,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`],``,``,[],[],[`U_C_Poloshirt_stripped`,`ToolKit`],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(24,'joshua elias','76561198104184513',0,10000,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`joshua elias`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(25,'David Lougan','76561198059024929',0,10000,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`David Lougan`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(26,'herr Sean','76561198034246902',0,10000,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`herr Sean`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(27,'CptClown','76561198199658447',0,13400,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`CptClown`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0),(28,'[BL] DatBuschi','76561198067496726',0,11700,'0','\"[]\"','\"[[`license_civ_driver`,0],[`license_civ_air`,0],[`license_civ_heroin`,0],[`license_civ_marijuana`,0],[`license_civ_gang`,0],[`license_civ_boat`,0],[`license_civ_oil`,0],[`license_civ_dive`,0],[`license_civ_truck`,0],[`license_civ_gun`,0],[`license_civ_rebel`,0],[`license_civ_coke`,0],[`license_civ_diamond`,0],[`license_civ_copper`,0],[`license_civ_iron`,0],[`license_civ_sand`,0],[`license_civ_salt`,0],[`license_civ_cement`,0],[`license_civ_grapes`,0],[`license_civ_moonshine`,0],[`license_civ_meth`,0],[`license_civ_home`,0],[`license_civ_stiller`,0],[`license_civ_liquor`,0],[`license_civ_bottler`,0],[`license_civ_uranium`,0]]\"','\"[]\"','\"[]\"','\"[]\"','0',0,'\"[`[BL] DatBuschi`]\"','0','0','\"[`U_C_Poloshirt_stripped`,``,``,``,``,[`ItemMap`,`ItemCompass`,`ItemWatch`,`ItemGPS`],``,``,[],[],[],[],[],[],[``,``,``,``],[``,``,``,``],[]]\"',0,0);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (2,'civ','B_Quadbike_01_F','Car','76561198178857459',1,0,821708,1,'\"[]\"'),(3,'civ','C_Hatchback_01_F','Car','76561198120555085',1,0,379121,0,'\"[]\"'),(4,'civ','C_Hatchback_01_F','Car','76561198178857459',1,0,86207,7,'\"[]\"'),(5,'civ','C_Offroad_01_F','Car','76561198169552876',1,0,192168,0,'\"[]\"'),(6,'civ','B_Quadbike_01_F','Car','76561198169552876',1,0,106710,1,'\"[]\"'),(7,'med','C_Offroad_01_repair_F','Car','76561198169552876',1,0,848046,0,'\"[]\"'),(8,'med','B_Heli_Light_01_F','Air','76561198169552876',1,0,458290,14,'\"[]\"'),(9,'cop','I_MRAP_03_F','Car','76561198169552876',1,0,614398,1,'\"[]\"'),(10,'cop','C_Hatchback_01_sport_F','Car','76561198169552876',1,0,504614,6,'\"[]\"'),(11,'cop','C_Offroad_01_F','Car','76561198169552876',1,0,465226,7,'\"[]\"'),(12,'cop','C_Hatchback_01_sport_F','Car','76561198131072307',1,0,75622,7,'\"[]\"'),(14,'civ','C_SUV_01_F','Car','76561198106923708',1,0,6333,11,'\"[]\"'),(16,'civ','B_Heli_Light_01_F','Air','76561198178857459',1,0,864642,1,'\"[]\"'),(17,'cop','C_Boat_Civil_01_police_F','Ship','76561198106923708',1,0,637963,0,'\"[]\"'),(18,'cop','C_Hatchback_01_sport_F','Car','76561198154592539',1,0,811736,6,'\"[]\"'),(19,'cop','C_Hatchback_01_sport_F','Car','76561198154592539',1,0,191491,7,'\"[]\"'),(20,'civ','C_SUV_01_F','Car','76561198178857459',1,0,176058,12,'\"[]\"'),(21,'civ','O_SDV_01_F','Ship','76561198178857459',1,0,696441,0,'\"[]\"'),(22,'cop','B_Heli_Light_01_F','Air','76561198169552876',1,0,42378,0,'\"[]\"'),(23,'civ','B_Truck_01_box_F','Car','76561198169552876',1,0,773936,0,'\"[]\"'),(25,'civ','O_MRAP_02_F','Car','76561198178857459',1,0,749817,0,'\"[]\"'),(26,'cop','I_MRAP_03_F','Car','76561198131072307',1,0,23904,1,'\"[]\"'),(28,'civ','O_Truck_03_device_F','Car','76561198178857459',1,0,532269,0,'\"[]\"'),(29,'civ','B_Quadbike_01_F','Car','76561198108622617',1,0,740098,4,'\"[]\"'),(30,'cop','I_MRAP_03_F','Car','76561198131072307',1,0,667334,1,'\"[]\"'),(31,'civ','C_Van_01_transport_F','Car','76561198108622617',1,0,482525,1,'\"[]\"'),(32,'cop','I_MRAP_03_F','Car','76561198178857459',1,0,717961,1,'\"[]\"'),(33,'cop','B_MRAP_01_F','Car','76561198178857459',1,0,555042,0,'\"[]\"'),(34,'cop','C_SUV_01_F','Car','76561198178857459',1,0,674940,1,'\"[]\"'),(35,'med','I_Truck_02_medical_F','Car','76561198154592539',1,0,965135,0,'\"[]\"'),(36,'med','C_Offroad_01_F','Car','76561198154592539',1,0,300930,0,'\"[]\"'),(37,'med','C_Offroad_01_repair_F','Car','76561198154592539',1,0,791007,0,'\"[]\"'),(38,'med','C_Offroad_01_F','Car','76561198154592539',1,0,832395,9,'\"[]\"'),(39,'med','I_Truck_02_medical_F','Car','76561198154592539',1,0,364935,0,'\"[]\"'),(40,'med','I_Truck_02_ammo_F','Car','76561198154592539',1,0,658709,0,'\"[]\"'),(41,'med','C_Offroad_01_repair_F','Car','76561198154592539',1,0,34689,0,'\"[]\"'),(42,'med','C_Offroad_01_F','Car','76561198154592539',1,0,953150,9,'\"[]\"'),(43,'med','I_Truck_02_covered_F','Car','76561198154592539',1,0,398999,0,'\"[]\"'),(45,'cop','C_SUV_01_F','Car','76561198120555085',1,0,754908,1,'\"[]\"'),(46,'cop','C_SUV_01_F','Car','76561198120555085',1,0,517219,0,'\"[]\"'),(47,'cop','C_Hatchback_01_F','Car','76561198120555085',1,0,355203,0,'\"[]\"'),(48,'cop','C_Hatchback_01_F','Car','76561198120555085',1,0,854169,0,'\"[]\"'),(49,'cop','C_Hatchback_01_F','Car','76561198120555085',1,0,198212,8,'\"[]\"'),(50,'cop','C_SUV_01_F','Car','76561198120555085',1,0,686968,1,'\"[]\"'),(51,'cop','C_SUV_01_F','Car','76561198120555085',1,0,521541,4,'\"[]\"'),(52,'cop','C_Offroad_01_F','Car','76561198120555085',1,0,797836,15,'\"[]\"'),(53,'cop','C_Hatchback_01_F','Car','76561198120555085',1,0,950683,8,'\"[]\"'),(54,'cop','C_Hatchback_01_sport_F','Car','76561198120555085',1,0,257244,8,'\"[]\"'),(55,'cop','B_MRAP_01_F','Car','76561198120555085',1,0,222383,2,'\"[]\"'),(56,'cop','I_MRAP_03_F','Car','76561198120555085',1,0,471054,1,'\"[]\"'),(57,'cop','C_SUV_01_F','Car','76561198131072307',1,0,481350,1,'\"[]\"'),(58,'cop','B_MRAP_01_F','Car','76561198131072307',1,0,806873,1,'\"[]\"'),(59,'cop','B_MRAP_01_F','Car','76561198131072307',1,0,755802,2,'\"[]\"'),(60,'cop','C_Hatchback_01_sport_F','Car','76561198131072307',1,0,545026,8,'\"[]\"'),(61,'cop','C_Hatchback_01_F','Car','76561198131072307',1,0,882675,8,'\"[]\"'),(62,'cop','C_Offroad_01_F','Car','76561198131072307',1,0,711795,15,'\"[]\"'),(63,'cop','B_Heli_Transport_03_F','Air','76561198131072307',1,0,776594,0,'\"[]\"'),(64,'cop','B_Heli_Transport_01_F','Air','76561198131072307',1,0,384938,0,'\"[]\"'),(65,'cop','I_Heli_Transport_02_F','Air','76561198131072307',1,0,524209,3,'\"[]\"'),(66,'cop','I_Heli_light_03_unarmed_F','Air','76561198131072307',1,0,677688,0,'\"[]\"'),(67,'cop','B_Heli_Light_01_F','Air','76561198131072307',1,0,586833,0,'\"[]\"'),(68,'cop','B_Boat_Transport_01_F','Ship','76561198131072307',1,0,970024,0,'\"[]\"'),(69,'cop','C_Boat_Civil_01_police_F','Ship','76561198131072307',1,0,343308,0,'\"[]\"'),(70,'cop','B_SDV_01_F','Ship','76561198131072307',1,0,992412,0,'\"[]\"'),(71,'cop','C_SUV_01_F','Car','76561198120555085',1,0,907992,1,'\"[]\"'),(72,'cop','C_SUV_01_F','Car','76561198120555085',1,0,111140,4,'\"[]\"'),(73,'cop','C_SUV_01_F','Car','76561198120555085',1,0,705325,9,'\"[]\"'),(74,'cop','C_SUV_01_F','Car','76561198120555085',1,0,912442,10,'\"[]\"'),(75,'cop','C_Offroad_01_F','Car','76561198120555085',1,0,318700,15,'\"[]\"'),(76,'cop','C_Hatchback_01_F','Car','76561198120555085',1,0,125241,8,'\"[]\"'),(77,'cop','C_Hatchback_01_sport_F','Car','76561198131072307',1,0,491949,0,'\"[]\"'),(78,'cop','B_MRAP_01_F','Car','76561198131072307',1,0,851197,0,'\"[]\"'),(79,'cop','C_Offroad_01_F','Car','76561198131072307',1,0,104438,0,'\"[]\"'),(80,'cop','C_SUV_01_F','Car','76561198120555085',1,0,579973,1,'\"[]\"'),(81,'cop','C_SUV_01_F','Car','76561198120555085',1,0,979857,4,'\"[]\"'),(82,'cop','C_SUV_01_F','Car','76561198120555085',1,0,725269,10,'\"[]\"'),(83,'cop','B_MRAP_01_F','Car','76561198120555085',1,0,778014,1,'\"[]\"'),(84,'cop','B_MRAP_01_F','Car','76561198120555085',1,0,938324,2,'\"[]\"'),(85,'cop','C_SUV_01_F','Car','76561198120555085',1,0,430927,4,'\"[]\"'),(86,'cop','C_SUV_01_F','Car','76561198120555085',1,0,374874,1,'\"[]\"'),(87,'cop','C_SUV_01_F','Car','76561198120555085',1,0,199531,9,'\"[]\"'),(88,'cop','C_SUV_01_F','Car','76561198120555085',1,0,896790,10,'\"[]\"'),(89,'med','I_Truck_02_ammo_F','Car','76561198154592539',1,0,193336,0,'\"[]\"'),(90,'med','I_Truck_02_ammo_F','Car','76561198154592539',1,0,367321,0,'\"[]\"'),(91,'med','O_Truck_02_box_F','Car','76561198154592539',1,0,311993,0,'\"[]\"'),(92,'med','O_Truck_02_covered_F','Car','76561198154592539',1,0,438403,0,'\"[]\"'),(93,'med','O_Truck_02_covered_F','Car','76561198154592539',1,0,408178,0,'\"[]\"'),(94,'med','B_Truck_01_transport_F','Car','76561198154592539',1,0,291379,0,'\"[]\"'),(95,'med','C_Offroad_01_F','Car','76561198154592539',0,0,282192,0,'\"[]\"');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-22  2:19:19
