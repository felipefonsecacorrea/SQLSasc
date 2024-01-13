CREATE DATABASE  IF NOT EXISTS `bd_sasc_react` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_sasc_react`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_sasc_react
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tb_consumo_equipamento`
--

DROP TABLE IF EXISTS `tb_consumo_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_consumo_equipamento` (
  `id` binary(16) NOT NULL,
  `consumo` decimal(12,2) NOT NULL,
  `dataConsumo` datetime NOT NULL,
  `idEquipamento` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEquipamento` (`idEquipamento`),
  CONSTRAINT `tb_consumo_equipamento_ibfk_1` FOREIGN KEY (`idEquipamento`) REFERENCES `tb_equipamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_consumo_equipamento`
--

LOCK TABLES `tb_consumo_equipamento` WRITE;
/*!40000 ALTER TABLE `tb_consumo_equipamento` DISABLE KEYS */;
INSERT INTO `tb_consumo_equipamento` VALUES (_binary '&ÃF)îJ´',750.00,'2023-11-01 11:59:48',_binary '0pîJ´E'),(_binary '\'-)îJ´',748.03,'2023-11-01 23:59:45',_binary '0pîJ´E'),(_binary '\'½)îJ´',749.57,'2023-11-02 11:59:50',_binary '0pîJ´E'),(_binary '\'Ñ)îJ´',750.07,'2023-11-02 23:59:00',_binary '0pîJ´E'),(_binary '( )îJ´E',780.17,'2023-11-03 11:59:13',_binary '0pîJ´E'),(_binary '(Q)îJ´E',778.43,'2023-11-03 23:59:07',_binary '0pîJ´E'),(_binary '(æ)îJ\�',772.33,'2023-11-04 11:59:37',_binary '0pîJ´E'),(_binary '(Ñ¶)îJ\�',702.08,'2023-11-04 23:59:37',_binary '0pîJ´E'),(_binary 'A\���\�\�\0��[��Z',180.05,'2023-11-01 11:59:48',_binary '«nîJ´'),(_binary 'A��q�\�\�\0��[��Z',174.01,'2023-11-01 23:59:48',_binary '«nîJ´'),(_binary 'Bw��\�\�\0��[��Z',169.41,'2023-11-02 11:59:18',_binary '«nîJ´'),(_binary 'Bĵ�\�\�\0��[��Z',163.35,'2023-11-02 23:59:55',_binary '«nîJ´'),(_binary 'B$��\�\�\0��[��Z',192.22,'2023-11-03 11:59:08',_binary '«nîJ´'),(_binary 'B0ҋ\�\�\0��[��Z',190.04,'2023-11-03 23:59:18',_binary '«nîJ´'),(_binary 'BFЋ\�\�\0��[��Z',180.56,'2023-11-04 11:59:09',_binary '«nîJ´'),(_binary 'BR\��\�\�\0��[��Z',192.22,'2023-11-04 23:59:08',_binary '«nîJ´'),(_binary 'Bo]&�\�\�\0��[��Z',169.41,'2023-11-05 11:59:18',_binary '«nîJ´'),(_binary 'B����\�\�\0��[��Z',167.32,'2023-11-05 23:59:18',_binary '«nîJ´'),(_binary 'B��\�\�\0��[��Z',170.05,'2023-11-06 11:59:18',_binary '«nîJ´'),(_binary 'B�2�\�\�\0��[��Z',171.45,'2023-11-06 23:59:19',_binary '«nîJ´'),(_binary 'ø}à)îJ\�',772.33,'2023-11-05 11:59:37',_binary '0pîJ´E'),(_binary 'ø~JÉ)îJ\�',702.08,'2023-11-05 23:59:37',_binary '0pîJ´E'),(_binary 'ø~,)îJ\�',750.00,'2023-11-06 11:59:48',_binary '0pîJ´E'),(_binary 'ø~ÒÝ)îJ',748.03,'2023-11-06 23:59:45',_binary '0pîJ´E');
/*!40000 ALTER TABLE `tb_consumo_equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco`
--

DROP TABLE IF EXISTS `tb_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco` (
  `id` binary(16) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco`
--

LOCK TABLES `tb_endereco` WRITE;
/*!40000 ALTER TABLE `tb_endereco` DISABLE KEYS */;
INSERT INTO `tb_endereco` VALUES (_binary 'ÂÃ³Â²Â\�','00000001','R. CentenÃÂ¡rio do Sul',' 2-90','Demarchi','SÃÂ£o Bernardo do Campo','SP'),(_binary 'Â,Ã\"ÂÃ','00000002','Rodovia Luis Augusto de Oliveira','Km 148.8 S/n','Zona Rural','SÃÂ£o Carlos','SP'),(_binary 'ÂBÃªÃÂ\�','00000004','R. Antonio Singer','6751','Campo Largo da Roseira','SÃÂ£o JosÃÂ© dos Pinhais','SP'),(_binary 'ÂTÃÂÃ','00000003','Av. Carlos Pedroso da Silveira','10000','Jardim Santa Tereza','TaubatÃÂ©','SP');
/*!40000 ALTER TABLE `tb_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_equipamento`
--

DROP TABLE IF EXISTS `tb_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_equipamento` (
  `id` binary(16) NOT NULL,
  `id_modelo` binary(16) NOT NULL,
  `dataCompra` date NOT NULL,
  `id_setor` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_modelo` (`id_modelo`),
  KEY `id_setor` (`id_setor`),
  CONSTRAINT `tb_equipamento_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `tb_modelo` (`id`),
  CONSTRAINT `tb_equipamento_ibfk_2` FOREIGN KEY (`id_setor`) REFERENCES `tb_setor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipamento`
--

LOCK TABLES `tb_equipamento` WRITE;
/*!40000 ALTER TABLE `tb_equipamento` DISABLE KEYS */;
INSERT INTO `tb_equipamento` VALUES (_binary '½]îJ´',_binary 'Â¦Ã\'ÂÃ','2021-08-25',_binary 'ÃÂ¾ÂÂ'),(_binary ',èîJ´',_binary 'Â¦Ã\'ÂÃ','2022-08-30',_binary 'ÃÃqÂÃ'),(_binary 'q#îJ´E',_binary 'Â¦Ã\'ÂÃ','2021-08-25',_binary 'ÃÃ¬Ã®_Â\�'),(_binary '²²îJ\�',_binary 'Â¦Ã\'ÂÃ','2021-08-25',_binary 'Ã*Â¡ÂÃ'),(_binary 'ô¸îJ\�',_binary 'Â¦Ã\'ÂÃ','2021-06-15',_binary 'Ã0ÃÃ»Â\�'),(_binary '0pîJ´E',_binary 'Â¦Ã\'ÂÃ','2021-06-15',_binary 'Ã?.ÂÃ±'),(_binary 'm½îJ´',_binary 'Â¦Ã\'ÂÃ','2021-06-15',_binary 'ÃyÃ9ÂÃ'),(_binary '«nîJ´',_binary 'Ã3ÂªoÂÃ','2021-06-15',_binary 'ÃÃ¬Ã®_Â\�'),(_binary 'ôpîJ´',_binary 'Ã3ÂªoÂÃ','2021-06-15',_binary 'Ã\"Â=ÂÃ'),(_binary '7GîJ´E',_binary 'Ã3ÂªoÂÃ','2021-06-15',_binary 'Ã?.ÂÃ±'),(_binary 'seîJ´E',_binary 'Ã3ÂªoÂÃ','2021-06-15',_binary 'ÃhrdÂÃ±'),(_binary '®õîJ\�',_binary 'Ã3ÂªoÂÃ','2021-06-15',_binary 'ÃyÃ9ÂÃ');
/*!40000 ALTER TABLE `tb_equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fabricante`
--

DROP TABLE IF EXISTS `tb_fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_fabricante` (
  `id` binary(16) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fabricante`
--

LOCK TABLES `tb_fabricante` WRITE;
/*!40000 ALTER TABLE `tb_fabricante` DISABLE KEYS */;
INSERT INTO `tb_fabricante` VALUES (_binary 'tÃzÂºÂÃ','DELL','72381189001001'),(_binary 'tÃN=ÂÃ°','VAIO','23456789012341'),(_binary 'tÃU#ÂÃ°','APPLE','00623904000174'),(_binary 'tÃWÂ®ÂÃ','SAMSUNG','00280273000218'),(_binary 'tÃYÂÃ°','ACER','01575428000125'),(_binary 'tÃZ,ÂÃ°','Lenovo','98745428000125');
/*!40000 ALTER TABLE `tb_fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modelo`
--

DROP TABLE IF EXISTS `tb_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_modelo` (
  `id` binary(16) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `consumoNominal` decimal(12,2) NOT NULL,
  `id_fabricante` binary(16) NOT NULL,
  `id_tipoequipamento` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fabricante` (`id_fabricante`),
  KEY `id_tipoequipamento` (`id_tipoequipamento`),
  CONSTRAINT `tb_modelo_ibfk_1` FOREIGN KEY (`id_fabricante`) REFERENCES `tb_fabricante` (`id`),
  CONSTRAINT `tb_modelo_ibfk_2` FOREIGN KEY (`id_tipoequipamento`) REFERENCES `tb_tipoequipamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modelo`
--

LOCK TABLES `tb_modelo` WRITE;
/*!40000 ALTER TABLE `tb_modelo` DISABLE KEYS */;
INSERT INTO `tb_modelo` VALUES (_binary 'Â¦Ã\'ÂÃ','R750 Xeon 6330',14000.00,_binary 'tÃzÂºÂÃ',_binary 'aQÃ±NÂÃ°'),(_binary 'Ã3ÂªoÂÃ','Dgc St50',250.00,_binary 'tÃZ,ÂÃ°',_binary 'aQÃ±NÂÃ°');
/*!40000 ALTER TABLE `tb_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setor`
--

DROP TABLE IF EXISTS `tb_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_setor` (
  `id` binary(16) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `id_unidade` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `tb_setor_ibfk_1` FOREIGN KEY (`id_unidade`) REFERENCES `tb_unidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setor`
--

LOCK TABLES `tb_setor` WRITE;
/*!40000 ALTER TABLE `tb_setor` DISABLE KEYS */;
INSERT INTO `tb_setor` VALUES (_binary 'ÃÂ¾ÂÂ','SBC - 03/20',_binary '.Ã²ÂAÂÃ'),(_binary 'ÃÃqÂÃ','SBC - 04/21',_binary '.Ã²ÂAÂÃ'),(_binary 'ÃÃ¬Ã®_Â\�','SBC - 05/22',_binary '.Ã²ÂAÂÃ'),(_binary 'Ã)Â³ÂÃ','SC - 17/02',_binary '/Â¹Â±ÂÃ'),(_binary 'Ã*Â¡ÂÃ','SC - 18/03',_binary '/Â¹Â±ÂÃ'),(_binary 'Ã\"Â=ÂÃ','SC - 19/04',_binary '/Â¹Â±ÂÃ'),(_binary 'Ã0ÃÃ»Â\�','T - 07/14',_binary '/\Z4_ÂÃ±Ã\�'),(_binary 'Ã?.ÂÃ±','T - 08/15',_binary '/\Z4_ÂÃ±Ã\�'),(_binary 'ÃJÃÂÃ','T - 09/16',_binary '/\Z4_ÂÃ±Ã\�'),(_binary 'ÃXÂÃÂ\�','SJP - 10/01',_binary '\\ÃÃÂÃ'),(_binary 'ÃhrdÂÃ±','SJP - 11/09',_binary '\\ÃÃÂÃ'),(_binary 'ÃyÃ9ÂÃ','SJP - 12/13',_binary '\\ÃÃÂÃ');
/*!40000 ALTER TABLE `tb_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipoequipamento`
--

DROP TABLE IF EXISTS `tb_tipoequipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipoequipamento` (
  `id` binary(16) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipoequipamento`
--

LOCK TABLES `tb_tipoequipamento` WRITE;
/*!40000 ALTER TABLE `tb_tipoequipamento` DISABLE KEYS */;
INSERT INTO `tb_tipoequipamento` VALUES (_binary 'aÃ¡Â&ÂÃ','Bridge'),(_binary 'ae]MÂÃ°Ã\�','OLT'),(_binary 'aÂ^Ã¢ÂÃ','Repetidor'),(_binary 'aÃ·p`ÂÃ°','Roteador'),(_binary 'aQÃ±NÂÃ°','Servidor'),(_binary 'aÂ·B ÂÃ°','Splitter'),(_binary 'aÃ°Â³ÃÂ\�','Switch'),(_binary 'awÂ.ÂÃ°','Unidade de Rede ÃÂptica');
/*!40000 ALTER TABLE `tb_tipoequipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unidade`
--

DROP TABLE IF EXISTS `tb_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_unidade` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `id_endereco` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `id_endereco` (`id_endereco`),
  CONSTRAINT `tb_unidade_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unidade`
--

LOCK TABLES `tb_unidade` WRITE;
/*!40000 ALTER TABLE `tb_unidade` DISABLE KEYS */;
INSERT INTO `tb_unidade` VALUES (_binary '\\ÃÃÂÃ','Unidade SÃÂ£o JosÃÂ© dos Pinhais',_binary 'ÂBÃªÃÂ\�'),(_binary '.Ã²ÂAÂÃ','Unidade Anchieta - SÃÂ£o Bernardo do Campo',_binary 'ÂÃ³Â²Â\�'),(_binary '/Â¹Â±ÂÃ','Unidade SÃÂ£o Carlos',_binary 'Â,Ã\"ÂÃ'),(_binary '/\Z4_ÂÃ±Ã\�','Unidade TaubatÃÂ©',_binary 'ÂTÃÂÃ');
/*!40000 ALTER TABLE `tb_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_sasc_react'
--

--
-- Dumping routines for database 'bd_sasc_react'
--
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_consumo_invidual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_consumo_invidual`(var_id_equipamento varchar(30))
select consumo as "Consumo", dataConsumo as "Data" from tb_consumo_equipamento
	where tb_consumo_equipamento.idEquipamento = var_id_equipamento order by dataConsumo ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_equipamentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_equipamentos`()
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	order by tb_equipamento.dataCompra desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_equipamentos_fabricante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_equipamentos_fabricante`(var_fabricante varchar(20) )
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
    where tb_fabricante.titulo = var_fabricante
	order by tb_equipamento.dataCompra desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_equipamentos_tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_equipamentos_tipo`(var_tipo_equipamento varchar(20))
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	where tb_tipoequipamento.tipo = var_tipo_equipamento
	order by tb_equipamento.dataCompra desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_equipamentos_unidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_equipamentos_unidade`(var_id_unidade varchar(30) )
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	inner join tb_unidade on tb_setor.id_unidade = tb_unidade.id
	where tb_unidade.id = var_id_unidade
	order by tb_equipamento.dataCompra desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_equipamento_modelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_equipamento_modelo`(var_modelo varchar(30))
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	where tb_modelo.modelo like var_modelo
	order by tb_equipamento.dataCompra desc ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29 19:41:41
