-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema proyecto
--

CREATE DATABASE IF NOT EXISTS proyecto;
USE proyecto;

--
-- Definition of table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idCategorias` int(10) unsigned NOT NULL auto_increment,
  `nombreC` varchar(45) NOT NULL,
  PRIMARY KEY  (`idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`idCategorias`,`nombreC`) VALUES 
 (1,'Vestimenta'),
 (2,'Productos Electronicos'),
 (3,'Material Escolar');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;


--
-- Definition of table `donativos`
--

DROP TABLE IF EXISTS `donativos`;
CREATE TABLE `donativos` (
  `idDonativo` int(10) unsigned NOT NULL auto_increment,
  `idDni` varchar(45) NOT NULL,
  `idSubcategorias` int(10) unsigned NOT NULL,
  `conceptoProducto` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`idDonativo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donativos`
--

/*!40000 ALTER TABLE `donativos` DISABLE KEYS */;
INSERT INTO `donativos` (`idDonativo`,`idDni`,`idSubcategorias`,`conceptoProducto`,`fecha`) VALUES 
 (1,'12345678B',6,'mouse optico','2019-01-23 00:00:00'),
 (2,'12345678B',6,'cables hdmi','2019-01-23 00:00:00'),
 (3,'12345678B',6,'Samsung J3','2019-07-18 12:00:30'),
 (4,'12345678C',8,'Libros de texto 4to ESO','2019-07-18 12:00:39'),
 (5,'12345678B',6,'memoria USB 32G','2019-07-18 12:01:21');
/*!40000 ALTER TABLE `donativos` ENABLE KEYS */;


--
-- Definition of table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE `mensajes` (
  `idMensaje` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(10) unsigned NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  USING BTREE (`idMensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mensajes`
--

/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;


--
-- Definition of table `miembros`
--

DROP TABLE IF EXISTS `miembros`;
CREATE TABLE `miembros` (
  `idDni` varchar(9) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` int(10) unsigned NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(45) NOT NULL,
  `idRol` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`idDni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `miembros`
--

/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
INSERT INTO `miembros` (`idDni`,`nombre`,`telefono`,`direccion`,`email`,`password`,`idRol`) VALUES 
 ('12345678A','Oliver',612345678,'calle de Alcala 300','oliver@hotmail.com','oliver',1),
 ('12345678B','Juan Pablo',612345673,'avenida de la albufera 120 ','juan@hotmail.com','juan',2),
 ('12345678C','Rocio',612343427,'calle de alsacia 45','rocio@hotmail.com','rocio',2),
 ('12345678D','Pilar',643242487,'Avenida de los prunos','pilar@hotmail.com','pilar',3),
 ('12345678V','Joana',654234345,'calle de Guadalajar  23','joana@hotmail.com','joana',3),
 ('12345678W','Marco',654678789,'calle de la Diva 98','marco@hotmail.com','marco',3),
 ('12345678X','Administrador',65434567,'calle Augusto 203','admin@hotmail.com','admin',1),
 ('12345678Y','ana',654345345,'calle de Ezequiel Solana 24','ana@hotmail.com','ana3',2),
 ('12345678Z','Fernando',654345567,'calle de Ezequiel Solana 3','fernando@hotmail.com','fernando',2);
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;


--
-- Definition of table `rols`
--

DROP TABLE IF EXISTS `rols`;
CREATE TABLE `rols` (
  `idRol` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rols`
--

/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` (`idRol`,`nombre`) VALUES 
 (1,'administrador'),
 (2,'donador'),
 (3,'voluntario');
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;


--
-- Definition of table `solicituds`
--

DROP TABLE IF EXISTS `solicituds`;
CREATE TABLE `solicituds` (
  `idDonativo` int(10) unsigned NOT NULL auto_increment,
  `idDni` varchar(45) NOT NULL,
  `idSubcategoria` int(10) unsigned NOT NULL,
  `conceptoProducto` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`idDonativo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solicituds`
--

/*!40000 ALTER TABLE `solicituds` DISABLE KEYS */;
INSERT INTO `solicituds` (`idDonativo`,`idDni`,`idSubcategoria`,`conceptoProducto`,`fecha`) VALUES 
 (3,'12345678C',7,'block de 5000 folios ','2019-03-10 00:00:00'),
 (4,'12345678C',2,'varias blusas talla L','2019-04-12 00:00:00'),
 (5,'12345678B',1,'pantalones talla S','2019-07-16 23:05:31'),
 (6,'12345678B',1,'Abrigo talla L','2019-07-16 23:09:21'),
 (7,'12345678C',7,'Block de papel A4 65g 5000 uds','2019-07-17 18:08:42');
/*!40000 ALTER TABLE `solicituds` ENABLE KEYS */;


--
-- Definition of table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
CREATE TABLE `subcategorias` (
  `idSubcategorias` int(10) unsigned NOT NULL auto_increment,
  `nombreS` varchar(45) NOT NULL,
  `idCategorias` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`idSubcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategorias`
--

/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
INSERT INTO `subcategorias` (`idSubcategorias`,`nombreS`,`idCategorias`) VALUES 
 (1,'Ropa Caballeros',1),
 (2,'Ropa Mujer',1),
 (3,'Ropa Niño',1),
 (4,'Accesorios Moda',1),
 (5,'Pequeño electrodomestico',2),
 (6,'Equipos Informaticos y Telefonia',2),
 (7,'Papeleria',3),
 (8,'Libreria',3),
 (9,'Accesorios escolares',3),
 (10,'Otros',4);
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
