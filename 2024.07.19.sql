-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_insert_history`
--

DROP TABLE IF EXISTS `data_insert_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_insert_history` (
  `table_name` varchar(100) DEFAULT NULL,
  `inserted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_insert_history`
--

LOCK TABLES `data_insert_history` WRITE;
/*!40000 ALTER TABLE `data_insert_history` DISABLE KEYS */;
INSERT INTO `data_insert_history` VALUES ('example_table','2024-07-11 06:15:14'),('test','2024-07-16 01:49:44');
/*!40000 ALTER TABLE `data_insert_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_school_info`
--

DROP TABLE IF EXISTS `tb_school_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_school_info` (
  `school_idx` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) DEFAULT NULL,
  `school_area` varchar(10) DEFAULT NULL,
  `school_addr` varchar(20) DEFAULT NULL,
  `school_phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`school_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='학교정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_school_info`
--

LOCK TABLES `tb_school_info` WRITE;
/*!40000 ALTER TABLE `tb_school_info` DISABLE KEYS */;
INSERT INTO `tb_school_info` VALUES (1,'대전고등학교','중구','대전 중구 대흥동','042-000-0000'),(2,'대전여자고등학교','중구','대전 중구 은행동','042-111-1111'),(3,'관평고등학교','유성구','대전 유성구 관평동','042-222-2222'),(4,'관평여자고등학교','유성구','대전 유성구 송강동','042-333-3333');
/*!40000 ALTER TABLE `tb_school_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_score` (
  `score_idx` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `score_season` varchar(6) DEFAULT NULL,
  `score_subject` varchar(20) DEFAULT NULL,
  `score_point` int DEFAULT NULL,
  PRIMARY KEY (`score_idx`),
  KEY `fk_student_idx` (`student_id`),
  CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `tb_student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
INSERT INTO `tb_score` VALUES (1,1,'202401','국어',90),(2,1,'202401','영어',100),(3,1,'202401','수학',90),(4,2,'202401','국어',70),(5,2,'202401','수학',70),(6,2,'202401','영어',70),(7,3,'202401','국어',90),(8,3,'202401','수학',90),(9,3,'202401','영어',90),(10,4,'202401','국어',85),(11,4,'202401','수학',100),(12,4,'202401','영어',90),(13,5,'202401','국어',90),(14,5,'202401','수학',70),(15,5,'202401','영어',100),(16,6,'202401','국어',90),(17,6,'202401','수학',90),(18,6,'202401','영어',90),(19,7,'202401','국어',100),(20,7,'202401','수학',100),(21,7,'202401','영어',100),(22,8,'202401','국어',85),(23,8,'202401','수학',85),(24,8,'202401','영어',85),(25,9,'202401','국어',100),(26,9,'202401','수학',100),(27,9,'202401','영어',100),(28,10,'202401','국어',95),(29,10,'202401','수학',95),(30,10,'202401','영어',95),(31,11,'202401','국어',75),(32,11,'202401','수학',75),(33,11,'202401','영어',100),(38,12,'202401','국어',90),(39,12,'202401','수학',90),(40,12,'202401','영어',100),(43,1,'202401','java',45);
/*!40000 ALTER TABLE `tb_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci NOT NULL,
  `student_grade` int DEFAULT '1',
  `student_school_area` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci DEFAULT NULL,
  `student_school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci NOT NULL,
  `student_zipcode` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci DEFAULT NULL,
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (1,'홍길동',1,'중구','대전고등학교','111111','대전광역시 중구'),(2,'홍길순',1,'중구','대전여자고등학교','111111','대전광역시중구'),(3,'김대전',2,'중구','대전고등학교','222222','대전 중구'),(4,'황인범',3,'중구','대전고등학교','333333','대전 중구'),(5,'박세리',2,'중구','대전여자고등학교','444444','대전 중구'),(6,'김희애',3,'중구','대전여자고등학교','555555','대전 중구'),(7,'김관평',1,'서구','관평고등학교','666666','대전 서구'),(8,'장동건',2,'서구','관평고등학교','777777','대전 서구'),(9,'정우성',3,'서구','관평고등학교','888888','대전 서구'),(10,'조보아',1,'서구','관평여자고등학교','999999','대전 서구'),(11,'김영희',2,'서구','관평여자고등학교','101010','대전 서구'),(12,'김희선',3,'서구','관평여자고등학교','111111','대전 서구');
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info_test`
--

DROP TABLE IF EXISTS `tb_student_info_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info_test` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci NOT NULL,
  `student_grade` int DEFAULT '1',
  `school_idx` int NOT NULL,
  `student_zipcode` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci DEFAULT NULL,
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_school_idx` (`school_idx`),
  CONSTRAINT `fk_student_school` FOREIGN KEY (`school_idx`) REFERENCES `tb_school_info` (`school_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info_test`
--

LOCK TABLES `tb_student_info_test` WRITE;
/*!40000 ALTER TABLE `tb_student_info_test` DISABLE KEYS */;
INSERT INTO `tb_student_info_test` VALUES (1,'홍길동',1,1,'111111','대전광역시 중구'),(2,'홍길순',1,2,'111111','대전광역시중구'),(3,'김대전',2,1,'222222','대전 중구'),(4,'황인범',3,1,'333333','대전 중구'),(5,'박세리',2,2,'444444','대전 중구'),(6,'김희애',3,2,'555555','대전 중구'),(7,'김관평',1,3,'666666','대전 서구'),(8,'장동건',2,3,'777777','대전 서구'),(9,'정우성',3,3,'888888','대전 서구'),(10,'조보아',1,4,'999999','대전 서구'),(11,'김영희',2,4,'101010','대전 서구'),(12,'김희선',3,4,'111111','대전 서구');
/*!40000 ALTER TABLE `tb_student_info_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_student_info`
--

DROP TABLE IF EXISTS `v_student_info`;
/*!50001 DROP VIEW IF EXISTS `v_student_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_student_info` AS SELECT 
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `student_grade`,
 1 AS `student_school`,
 1 AS `student_school_area`,
 1 AS `ziocode`,
 1 AS `student_addr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_test`
--

DROP TABLE IF EXISTS `v_test`;
/*!50001 DROP VIEW IF EXISTS `v_test`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_test` AS SELECT 
 1 AS `student_name`,
 1 AS `school_area`,
 1 AS `school_name`,
 1 AS `평균성적`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_student_info`
--

/*!50001 DROP VIEW IF EXISTS `v_student_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_student_info` AS select `si_t`.`student_id` AS `student_id`,`si_t`.`student_name` AS `student_name`,`si_t`.`student_grade` AS `student_grade`,`school`.`school_name` AS `student_school`,`school`.`school_area` AS `student_school_area`,`si_t`.`student_zipcode` AS `ziocode`,`si_t`.`addr` AS `student_addr` from (`tb_student_info_test` `si_t` left join `tb_school_info` `school` on((`si_t`.`school_idx` = `school`.`school_idx`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_test`
--

/*!50001 DROP VIEW IF EXISTS `v_test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_test` AS select `si_t`.`student_name` AS `student_name`,`school`.`school_area` AS `school_area`,`school`.`school_name` AS `school_name`,avg(`sc`.`score_point`) AS `평균성적` from ((`tb_student_info_test` `si_t` join `tb_school_info` `school` on((`si_t`.`school_idx` = `school`.`school_idx`))) join `tb_score` `sc` on((`si_t`.`student_id` = `sc`.`student_id`))) where ((`school`.`school_area` = '유성구') and (`si_t`.`student_grade` = 1)) group by `si_t`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22  9:21:07
