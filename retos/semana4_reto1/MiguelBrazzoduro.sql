CREATE DATABASE  IF NOT EXISTS `db_hack` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_hack`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: db_hack
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `equipo_oficina`
--

DROP TABLE IF EXISTS `equipo_oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo_oficina` (
  `id_equipo_oficina` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `costo` int(11) NOT NULL,
  PRIMARY KEY (`id_equipo_oficina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo_oficina`
--

LOCK TABLES `equipo_oficina` WRITE;
/*!40000 ALTER TABLE `equipo_oficina` DISABLE KEYS */;
INSERT INTO `equipo_oficina` VALUES (1,'laptop','1',150000),(2,'VideoBeam','1',60000);
/*!40000 ALTER TABLE `equipo_oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `fecha_insc` date NOT NULL,
  `id_promocion` int(11) NOT NULL,
  `id_sponsor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `fk_cliente_3_idx` (`id_promocion`),
  KEY `fk_cliente_2_idx` (`id_sponsor`),
  CONSTRAINT `fk_estudiante_1` FOREIGN KEY (`id_sponsor`) REFERENCES `sponsor` (`id_sponsor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_2` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (10,'16543115','Miguel Brazzoduro',2147483647,'Ccs','brazzoduro26@gmail.com','2015-10-01',4,NULL),(11,'23045365','Jose Rodriguez',2147483647,'Ccs','JoseR@gmial.com','2015-10-01',4,2),(12,'19678456','Jose Martinez',2147483647,'Mcay','joseM@gmail.com','2015-10-01',4,1);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) NOT NULL,
  `correlativo` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `id_factura_iva` int(11) NOT NULL,
  `id_factura_tipo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `fk_factura_1_idx` (`id_factura_iva`),
  KEY `fk_factura_2_idx` (`id_factura_tipo`),
  KEY `fk_factura_3_idx` (`id_orden`),
  CONSTRAINT `fk_factura_1` FOREIGN KEY (`id_factura_iva`) REFERENCES `factura_iva` (`id_factura_iva`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_factura_2` FOREIGN KEY (`id_factura_tipo`) REFERENCES `factura_tipo` (`id_factura_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_factura_3` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id_orden`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,5,3443,80000,10,1,2,'2015-11-10'),(4,4,234456,150000,0,1,1,'2015-09-11');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_iva`
--

DROP TABLE IF EXISTS `factura_iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_iva` (
  `id_factura_iva` int(11) NOT NULL AUTO_INCREMENT,
  `monto` varchar(10) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_factura_iva`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_iva`
--

LOCK TABLES `factura_iva` WRITE;
/*!40000 ALTER TABLE `factura_iva` DISABLE KEYS */;
INSERT INTO `factura_iva` VALUES (1,'12','impuesto sin retenciones'),(2,'0','cliente excento de impuesto');
/*!40000 ALTER TABLE `factura_iva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_tipo`
--

DROP TABLE IF EXISTS `factura_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_tipo` (
  `id_factura_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_factura_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_tipo`
--

LOCK TABLES `factura_tipo` WRITE;
/*!40000 ALTER TABLE `factura_tipo` DISABLE KEYS */;
INSERT INTO `factura_tipo` VALUES (1,'compra'),(2,'venta');
/*!40000 ALTER TABLE `factura_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_sponsor` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `fk_orden_1_idx` (`id_estudiante`),
  KEY `fk_orden_2_idx` (`id_sponsor`),
  KEY `fk_orden_3_idx` (`id_proveedor`),
  CONSTRAINT `fk_orden_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orden_2` FOREIGN KEY (`id_sponsor`) REFERENCES `sponsor` (`id_sponsor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orden_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,10,NULL,NULL,'por pagar'),(2,11,NULL,NULL,'por pagar'),(3,NULL,1,NULL,'por pagar'),(4,NULL,NULL,1,'cancelado'),(5,12,NULL,NULL,'cancelado');
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_detalle`
--

DROP TABLE IF EXISTS `orden_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_detalle` (
  `id_orden_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_orden` int(11) NOT NULL,
  `id_equipo_oficina` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_orden_detalle`),
  KEY `fk_orden_detalle_1_idx` (`id_producto`),
  KEY `fk_orden_detalle_2_idx` (`id_orden`),
  KEY `fk_orden_detalle_3_idx` (`id_equipo_oficina`),
  CONSTRAINT `fk_orden_detalle_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orden_detalle_3` FOREIGN KEY (`id_equipo_oficina`) REFERENCES `equipo_oficina` (`id_equipo_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_detalle`
--

LOCK TABLES `orden_detalle` WRITE;
/*!40000 ALTER TABLE `orden_detalle` DISABLE KEYS */;
INSERT INTO `orden_detalle` VALUES (3,1,1,NULL),(4,2,1,NULL),(5,2,2,NULL),(6,1,3,NULL),(7,NULL,4,1),(8,1,5,NULL);
/*!40000 ALTER TABLE `orden_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_pago_forma` int(11) NOT NULL,
  `id_pago_metodo` int(11) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_pago_1_idx` (`id_pago_forma`),
  KEY `fk_pago_3_idx` (`id_pago_metodo`),
  KEY `fk_pago_2_idx` (`id_orden`),
  CONSTRAINT `fk_pago_1` FOREIGN KEY (`id_pago_forma`) REFERENCES `pago_forma` (`id_pago_forma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pago_2` FOREIGN KEY (`id_orden`) REFERENCES `orden` (`id_orden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pago_3` FOREIGN KEY (`id_pago_metodo`) REFERENCES `pago_metodo` (`id_pago_metodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,2,1,1,10000,'2015-10-02'),(2,2,1,1,5000,'2015-10-03'),(3,2,1,1,15000,'2015-10-04'),(5,1,2,2,12000,'2015-10-20'),(6,1,2,3,80000,'2015-11-20'),(7,2,1,4,150000,'2015-10-10'),(8,2,1,5,80000,'2015-11-12');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_forma`
--

DROP TABLE IF EXISTS `pago_forma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_forma` (
  `id_pago_forma` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `descuento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pago_forma`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_forma`
--

LOCK TABLES `pago_forma` WRITE;
/*!40000 ALTER TABLE `pago_forma` DISABLE KEYS */;
INSERT INTO `pago_forma` VALUES (1,'credito',0),(2,'contado',10);
/*!40000 ALTER TABLE `pago_forma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_metodo`
--

DROP TABLE IF EXISTS `pago_metodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_metodo` (
  `id_pago_metodo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pago_metodo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_metodo`
--

LOCK TABLES `pago_metodo` WRITE;
/*!40000 ALTER TABLE `pago_metodo` DISABLE KEYS */;
INSERT INTO `pago_metodo` VALUES (1,'transferencia'),(2,'deposito'),(3,'cheque'),(4,'efectivo');
/*!40000 ALTER TABLE `pago_metodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `cant` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'curso',30,80000,'2015-12-01'),(2,'propedeutico',30,5000,'2015-11-01');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocion` (
  `id_promocion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES (1,'promocion 1','2015-01-01'),(2,'promocion 2','2015-02-01'),(3,'promocion 3','2015-03-01'),(4,'promocion 4','2014-11-01');
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idproveedores` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(45) NOT NULL,
  `rif` varchar(15) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `telefono_contacto` int(11) NOT NULL,
  PRIMARY KEY (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'COMPUMALL C.A.','J32955932',2127594595,'Chacao, Ccs','contacto@compumall.com','Pedro Ramirez',2147483647);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id_sponsor` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(45) NOT NULL,
  `rif` varchar(15) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `telefono_contacto` int(11) NOT NULL,
  PRIMARY KEY (`id_sponsor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'EPA C.A.','J401984164',2122345443,'Los Ruices, Ccs','epa@gmail.com','Carlos Perez',2147483647),(2,' HACK C.A.','J306983453',2124563298,'CCS','contacto@hack.com','Abraham Gonzalez',2147483647),(3,'INTER C.A.','J302242299',2124345989,'CCS','contacto@inter.com','Jose Martinez',2147483647);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-03 16:44:34
