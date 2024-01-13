CREATE DATABASE  IF NOT EXISTS `bd_sasc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_sasc`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_sasc
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
INSERT INTO `tb_consumo_equipamento` VALUES (_binary '\0�Te��\�ʀ�[��Z',725.01,'2023-11-02 11:59:08',_binary 'ID7ØÑîJ\�'),(_binary '\0�f��\�ʀ�[��Z',700.00,'2023-11-02 23:59:33',_binary 'ID7ØÑîJ\�'),(_binary '\0�h���\�ʀ�[��Z',680.50,'2023-11-03 11:59:21',_binary 'ID7ØÑîJ\�'),(_binary '\0�j@��\�ʀ�[��Z',710.45,'2023-11-03 23:58:47',_binary 'ID7ØÑîJ\�'),(_binary '\0�kƈ�\�ʀ�[��Z',700.79,'2023-11-04 11:59:13',_binary 'ID7ØÑîJ\�'),(_binary '\0�m4��\�ʀ�[��Z',707.05,'2023-11-04 23:59:59',_binary 'ID7ØÑîJ\�'),(_binary '`stȈ�\�ʀ�[��Z',730.80,'2023-11-01 11:59:15',_binary 'GbÑîJ'),(_binary 'i\�yi��\�ʀ�[��Z',728.50,'2023-11-01 23:59:15',_binary 'GbÑîJ'),(_binary '�*��\�ʀ�[��Z',755.21,'2023-11-02 11:59:08',_binary 'GbÑîJ'),(_binary '�*ň�\�ʀ�[��Z',770.00,'2023-11-02 23:59:33',_binary 'GbÑîJ'),(_binary '�*S��\�ʀ�[��Z',830.50,'2023-11-03 11:59:21',_binary 'GbÑîJ'),(_binary '�*���\�ʀ�[��Z',810.35,'2023-11-03 23:58:47',_binary 'GbÑîJ'),(_binary '�*j��\�ʀ�[��Z',790.09,'2023-11-04 11:59:13',_binary 'GbÑîJ'),(_binary '�*g��\�ʀ�[��Z',797.45,'2023-11-04 23:59:59',_binary 'GbÑîJ'),(_binary '�V7���\�ʀ�[��Z',728.50,'2023-11-01 23:59:15',_binary 'Jó^¸ÑîJ'),(_binary '�VC��\�ʀ�[��Z',730.80,'2023-11-01 11:59:15',_binary 'Jó^¸ÑîJ'),(_binary '�VE:��\�ʀ�[��Z',755.21,'2023-11-02 11:59:08',_binary 'Jó^¸ÑîJ'),(_binary '�VFǈ�\�ʀ�[��Z',770.00,'2023-11-02 23:59:33',_binary 'Jó^¸ÑîJ'),(_binary '�VH7��\�ʀ�[��Z',830.50,'2023-11-03 11:59:21',_binary 'Jó^¸ÑîJ'),(_binary '�VJ���\�ʀ�[��Z',810.35,'2023-11-03 23:58:47',_binary 'Jó^¸ÑîJ'),(_binary '�VM ��\�ʀ�[��Z',790.09,'2023-11-04 11:59:13',_binary 'Jó^¸ÑîJ'),(_binary '�VO9��\�ʀ�[��Z',797.45,'2023-11-04 23:59:59',_binary 'Jó^¸ÑîJ');
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
  `logadouro` varchar(255) NOT NULL,
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
INSERT INTO `tb_endereco` VALUES (_binary 'KÝÔÏîJ','00000001','R. CentenÃ¡rio do Sul',' 2-90','Demarchi','SÃ£o Bernardo do Campo','SP'),(_binary '6ÚbÏîJ\�','00000002','Rodovia Luis Augusto de Oliveira','Km 148.8 S/n','Zona Rural','SÃ£o Carlos','SP'),(_binary '8ÄÏîJ\�','00000004','R. Antonio Singer','6751','Campo Largo da Roseira','SÃ£o JosÃ© dos Pinhais','SP'),(_binary '8æô¸Ïî','00000003','Av. Carlos Pedroso da Silveira','10000','Jardim Santa Tereza','TaubatÃ©','SP');
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
  `modelo` varchar(255) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `consumoNominal` decimal(12,2) NOT NULL,
  `dataCompra` date NOT NULL,
  `id_setor` binary(16) NOT NULL,
  `id_fabricante` binary(16) NOT NULL,
  `id_tipoequipamento` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_setor` (`id_setor`),
  KEY `id_fabricante` (`id_fabricante`),
  KEY `id_tipoequipamento` (`id_tipoequipamento`),
  CONSTRAINT `tb_equipamento_ibfk_1` FOREIGN KEY (`id_setor`) REFERENCES `tb_setor` (`id`),
  CONSTRAINT `tb_equipamento_ibfk_2` FOREIGN KEY (`id_fabricante`) REFERENCES `tb_fabricante` (`id`),
  CONSTRAINT `tb_equipamento_ibfk_3` FOREIGN KEY (`id_tipoequipamento`) REFERENCES `tb_tipoequipamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipamento`
--

LOCK TABLES `tb_equipamento` WRITE;
/*!40000 ALTER TABLE `tb_equipamento` DISABLE KEYS */;
INSERT INTO `tb_equipamento` VALUES (_binary 'GbÑîJ','R750 Xeon 6330',45121.00,14000.00,'2021-08-25',_binary '·!PÏîJ\�',_binary 'ßJ]ÏîJ\�',_binary 'ö9eÎîJ'),(_binary 'ID7ØÑîJ\�','R750 Xeon 6330',45121.00,14000.00,'2022-08-30',_binary '½ýOÏî',_binary 'ßJ]ÏîJ\�',_binary 'ö9eÎîJ'),(_binary 'Jó^¸ÑîJ','R750 Xeon 6330',45121.00,14000.00,'2021-08-25',_binary 'ÄY_NÏîJ\�',_binary 'ßJ]ÏîJ\�',_binary 'ö9eÎîJ'),(_binary 'Le$MÑîJ´','R750 Xeon 6330',45121.00,14000.00,'2023-04-05',_binary 'ÉÜX6ÏîJ',_binary 'ßJ]ÏîJ\�',_binary 'ö9eÎîJ'),(_binary 'N-ÍÑîJ\�','Dgc St50',5646.51,250.00,'2023-03-08',_binary '¹°¥Ïî\�',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'P®;ÑîJ\�','Dgc St50 ',5646.51,250.00,'2023-03-08',_binary '»îÏîJ',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'RDôÑîJ','Dgc St50 ',5646.51,250.00,'2023-03-08',_binary 'ÀÐÏÏî\�',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'SèCÑîJ\�','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'Â¨²êÏî\�',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'UÙÐÑî','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'Æ³Ïî',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'WS®ÑîJ\�','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'È*½Ïî',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'XæeÑîJ','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'ËÔÓÏî\�',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary '^ÎõÑî','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'ËÔÓÏî\�',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ'),(_binary 'n£ÀÑîJ','Dgc St50 ',5646.51,250.00,'2022-07-10',_binary 'ÍêÏî',_binary 'KfyÏîJ´',_binary 'ö9eÎîJ');
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
INSERT INTO `tb_fabricante` VALUES (_binary 'ßJ]ÏîJ\�','DELL','72381189001001'),(_binary 'K`.ÏîJ´','VAIO','23456789012341'),(_binary 'KeÏîJ´','APPLE','00623904000174'),(_binary 'KevÏîJ´','SAMSUNG','00280273000218'),(_binary 'KeÒÏîJ\�','ACER','01575428000125'),(_binary 'KfyÏîJ´','Lenovo','98745428000125');
/*!40000 ALTER TABLE `tb_fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `id_setor` binary(16) NOT NULL,
  `id_tipofuncionario` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id_setor` (`id_setor`),
  KEY `id_tipofuncionario` (`id_tipofuncionario`),
  CONSTRAINT `tb_funcionario_ibfk_1` FOREIGN KEY (`id_setor`) REFERENCES `tb_setor` (`id`),
  CONSTRAINT `tb_funcionario_ibfk_2` FOREIGN KEY (`id_tipofuncionario`) REFERENCES `tb_tipofuncionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES (_binary '=EBÐîJ´','Gabriela Ramos','gabi@email.com','chihuahua',_binary '·!PÏîJ\�',_binary '¡êÏîJ'),(_binary '?3qÐîJ\�','Gabriel Trindade','gabriel@email.com','marlborodemelancia',_binary '½ýOÏî',_binary '¡êÏîJ'),(_binary 'AKÐîJ','Felipe Fonseca','felipe@email.com','poddebanana',_binary 'ÄY_NÏîJ\�',_binary '¡êÏîJ'),(_binary 'C¡E£ÐîJ','Denis Santana','denis@email.com','bolodeprestigio',_binary 'ÉÜX6ÏîJ',_binary '¡êÏîJ'),(_binary 'E²<ÐîJ','Janaina Mota','jana@email.com','janaamaofelipe',_binary '¹°¥Ïî\�',_binary '¡ðÔÏî'),(_binary 'G¬Ðî','Liandra Morais','lili@email.com','serramaltegeladinha',_binary 'ÀÐÏÏî\�',_binary '¡ðÔÏî');
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
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
INSERT INTO `tb_setor` VALUES (_binary '·!PÏîJ\�','SBC - 03/20',_binary ']­ÞÏî'),(_binary '¹°¥Ïî\�','SBC - 04/21',_binary ']­ÞÏî'),(_binary '»îÏîJ','SBC - 05/22',_binary ']­ÞÏî'),(_binary '½ýOÏî','SC - 17/02',_binary '`38ÏîJ\�'),(_binary 'ÀÐÏÏî\�','SC - 18/03',_binary '`38ÏîJ\�'),(_binary 'Â¨²êÏî\�','SC - 19/04',_binary '`38ÏîJ\�'),(_binary 'ÄY_NÏîJ\�','T - 07/14',_binary 'bÞ2ÏîJ'),(_binary 'Æ³Ïî','T - 08/15',_binary 'bÞ2ÏîJ'),(_binary 'È*½Ïî','T - 09/16',_binary 'bÞ2ÏîJ'),(_binary 'ÉÜX6ÏîJ','SJP - 10/01',_binary 'eR5ÏîJ´'),(_binary 'ËÔÓÏî\�','SJP - 11/09',_binary 'eR5ÏîJ´'),(_binary 'ÍêÏî','SJP - 12/13',_binary 'eR5ÏîJ´');
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
INSERT INTO `tb_tipoequipamento` VALUES (_binary 'ÿ÷ûÎî','Bridge'),(_binary 'øËçÎî','OLT'),(_binary 'üÆÒÎî\�','Repetidor'),(_binary '&ÏîJ´','Roteador'),(_binary 'ö9eÎîJ','Servidor'),(_binary 'ýîTÎî','Splitter'),(_binary '\0ÏîJ\�','Switch'),(_binary 'ù½¡nÎî','Unidade de Rede Ãptica');
/*!40000 ALTER TABLE `tb_tipoequipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipofuncionario`
--

DROP TABLE IF EXISTS `tb_tipofuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipofuncionario` (
  `id` binary(16) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipofuncionario`
--

LOCK TABLES `tb_tipofuncionario` WRITE;
/*!40000 ALTER TABLE `tb_tipofuncionario` DISABLE KEYS */;
INSERT INTO `tb_tipofuncionario` VALUES (_binary '¡êÏîJ','Adm'),(_binary '¡ðÔÏî','PadrÃ£o');
/*!40000 ALTER TABLE `tb_tipofuncionario` ENABLE KEYS */;
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
INSERT INTO `tb_unidade` VALUES (_binary ']­ÞÏî','Unidade Anchieta - SÃ£o Bernardo do Campo',_binary 'KÝÔÏîJ'),(_binary '`38ÏîJ\�','Unidade SÃ£o Carlos',_binary '6ÚbÏîJ\�'),(_binary 'bÞ2ÏîJ','Unidade TaubatÃ©',_binary '8æô¸Ïî'),(_binary 'eR5ÏîJ´','Unidade SÃ£o JosÃ© dos Pinhais',_binary '8ÄÏîJ\�');
/*!40000 ALTER TABLE `tb_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_sasc'
--

--
-- Dumping routines for database 'bd_sasc'
--
/*!50003 DROP PROCEDURE IF EXISTS `linha_tempo_equipamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `linha_tempo_equipamento`(varId varchar(30))
select tb_consumo_equipamento.consumo as "Consumo" , tb_consumo_equipamento.dataConsumo as "Data" 
from tb_consumo_equipamento where tb_consumo_equipamento.idEquipamento = varId
order by tb_consumo_equipamento.dataConsumo ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `linha_tempo_equipamento_entre_datas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `linha_tempo_equipamento_entre_datas`(varId varchar(30), varData1 varchar(10), varData2 Varchar(10))
select tb_consumo_equipamento.consumo as "Consumo" , tb_consumo_equipamento.dataConsumo as "Data" 
	from tb_consumo_equipamento where tb_consumo_equipamento.idEquipamento = varId and
    tb_consumo_equipamento.dataConsumo between varData1 and varData2 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pesquisa_completa_equipamento_por_fabricante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pesquisa_completa_equipamento_por_fabricante`(varTitulo varchar(30))
select tb_equipamento.modelo as "Equipamento", tb_tipoequipamento.tipo as "Tipo",
	tb_fabricante.titulo as "Fabricante", tb_equipamento.consumoNominal as "Consumo nominal",
    tb_setor.titulo as "Setor" , tb_unidade.nome as "Unidade" from tb_equipamento
	inner join tb_tipoequipamento on tb_equipamento.id_tipoequipamento = tb_tipoequipamento.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_unidade on tb_setor.id_unidade = tb_unidade.id
	inner join tb_fabricante on tb_equipamento.id_fabricante = tb_fabricante.id
	where tb_fabricante.titulo = varTitulo ;;
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

-- Dump completed on 2023-11-23 16:21:54
