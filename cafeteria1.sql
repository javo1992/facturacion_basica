/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : cafeteria1

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-10-06 09:39:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesos_empresa
-- ----------------------------
DROP TABLE IF EXISTS `accesos_empresa`;
CREATE TABLE `accesos_empresa` (
  `id_accesos_empresa` int(255) NOT NULL AUTO_INCREMENT,
  `paginas` int(255) DEFAULT NULL,
  `empresa` int(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_accesos_empresa`),
  KEY `FK_EMPRESA_ACCESOS` (`empresa`),
  KEY `FK_PAGINAS_ACCESOS` (`paginas`),
  KEY `FK_USUARIO_ACCESOS` (`usuario`),
  CONSTRAINT `accesos_empresa_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `accesos_empresa_ibfk_2` FOREIGN KEY (`paginas`) REFERENCES `menu` (`id_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `accesos_empresa_ibfk_3` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of accesos_empresa
-- ----------------------------
INSERT INTO `accesos_empresa` VALUES ('47', '3', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('48', '4', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('49', '13', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('50', '36', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('51', '26', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('52', '37', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('53', '8', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('54', '39', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('55', '45', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('56', '13', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('57', '26', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('58', '8', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('59', '3', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('60', '13', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('61', '45', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('62', '37', '7', '22');
INSERT INTO `accesos_empresa` VALUES ('63', '46', '6', '21');
INSERT INTO `accesos_empresa` VALUES ('65', '51', '6', '18');
INSERT INTO `accesos_empresa` VALUES ('66', '52', '6', '18');
INSERT INTO `accesos_empresa` VALUES ('103', '1', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('104', '2', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('105', '3', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('106', '26', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('107', '37', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('108', '46', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('109', '47', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('110', '48', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('111', '49', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('112', '51', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('113', '52', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('114', '55', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('115', '45', '30', '36');
INSERT INTO `accesos_empresa` VALUES ('129', '1', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('130', '2', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('131', '3', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('132', '26', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('133', '37', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('134', '45', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('135', '46', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('136', '47', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('137', '48', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('138', '49', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('139', '51', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('140', '52', '7', '38');
INSERT INTO `accesos_empresa` VALUES ('141', '55', '7', '38');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id_categoria` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT 'A',
  `empresa` int(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT '../img/sistema/sin_imagen.jpg',
  PRIMARY KEY (`id_categoria`),
  KEY `FK_EMPRESA` (`empresa`) USING BTREE,
  CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Sambwich', 'A', '5', '../img/articulos/product-10.jpg');
INSERT INTO `categoria` VALUES ('2', 'Yaroa', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('3', 'Servicios De Papas', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('4', 'Burritos        ', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('5', 'Hamburguesa ', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('6', 'Quesadillas', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('7', 'Plato', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('8', 'Batida', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('9', 'Jugos naturales ', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('10', 'Pasta ', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('11', 'Pasta', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('12', 'Guarniciones', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('13', 'nueva categoria', 'A', '5', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('14', 'servicios', 'A', '6', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('15', 'Hamburguesa ', 'A', '6', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('16', 'SERVICIOS', 'A', '7', '../img/sistema/sin_imagen.jpg');
INSERT INTO `categoria` VALUES ('17', 'producto 1', 'A', '30', '../img/sistema/sin_imagen.jpg');

-- ----------------------------
-- Table structure for cierre_caja
-- ----------------------------
DROP TABLE IF EXISTS `cierre_caja`;
CREATE TABLE `cierre_caja` (
  `id_cierre_caja` int(255) NOT NULL AUTO_INCREMENT,
  `billetes_100` varchar(255) DEFAULT '0',
  `billetes_50` varchar(255) DEFAULT '0',
  `billetes_20` varchar(255) DEFAULT '0',
  `billetes_10` varchar(255) DEFAULT '0',
  `billetes_5` varchar(255) DEFAULT '0',
  `billetes_1` varchar(255) DEFAULT '0',
  `centavos_50` varchar(255) DEFAULT '0',
  `centavos_25` varchar(255) DEFAULT '0',
  `centavos_10` varchar(255) DEFAULT '0',
  `centavos_5` varchar(255) DEFAULT '0',
  `centavos_1` varchar(255) DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `responsable` int(11) DEFAULT NULL,
  `faltante` varchar(255) DEFAULT '0',
  `sobrante` varchar(255) DEFAULT '0',
  `total_dia` varchar(255) DEFAULT '0',
  `total_retiros` varchar(255) DEFAULT '0',
  `total_caja` varchar(255) DEFAULT '0',
  `total_ingresos` varchar(255) DEFAULT '0',
  `tarjetas` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_cierre_caja`),
  KEY `FK_USUARIO_CIERECAJA` (`responsable`),
  CONSTRAINT `cierre_caja_ibfk_1` FOREIGN KEY (`responsable`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of cierre_caja
-- ----------------------------

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id_cliente` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT '',
  `mail` varchar(255) DEFAULT NULL,
  `direccion` varchar(110) DEFAULT '',
  `id_empresa` int(11) DEFAULT NULL,
  `ci_ruc` varchar(13) DEFAULT '',
  `Razon_Social` varchar(100) DEFAULT NULL,
  `tipo` char(1) DEFAULT 'C',
  `password` varchar(255) DEFAULT NULL,
  `TD` varchar(10) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `estado` char(1) DEFAULT 'A',
  PRIMARY KEY (`id_cliente`),
  KEY `fk_cliente_empresa` (`id_empresa`) USING BTREE,
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES ('22', 'CONSUMIDO FINAL', '9999999999', 'EXAMPLE@EXAMPLE.COM', 'SIN DIRECCION', '5', '9999999999', 'CONSUMIDO FINAL', 'C', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('27', 'Javier Farinango', '987242579', 'example@example.com', 'av. el inca', '5', '1722214507', 'Javier Farinango', 'C', '1234', 'C', null, 'A');
INSERT INTO `cliente` VALUES ('28', 'proveedor 1', '', 'example@example.com', 'el calsado', '5', '12365479', 'Corporacion s.a', 'P', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('29', 'proveedor 2', '', 'example@example.com', 'el dorado', '5', '852369741', 'favorita cia ltda', 'P', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('32', 'DISTRIBUIDORA DE CARNES CIA LTDA', '987463251', 'EXAMPLE@EXAMPLE.COM', 'KILOMETRO 14 Y MEDIO VIA CONOPCOTO', '5', '9999999999999', '', 'P', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('33', 'INDUSTRIA DE LACTEOS', '12542541251', 'example@lacteos.com', 'kilometro 6', '5', '1478523691001', 'LACTESO SA', 'P', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('38', 'CONSUMIDO FINAL', '9999999999', 'javier.farianngo92@example.com', 'consumidor final', '6', '9999999999', 'CONSUMIDO FINAL', 'C', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('40', 'proveedor 1', '', 'example@example.com', 'el calsado', '6', '12365479', 'Corporacion s.a', 'P', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('41', 'proveedor 2', '', 'example@example.com', 'el dorado', '6', '1722214507001', 'favorita cia ltda', 'P', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('42', 'DISTRIBUIDORA DE CARNES CIA LTDA', '987463251', 'EXAMPLE@EXAMPLE.COM', 'KILOMETRO 14 Y MEDIO VIA CONOPCOTO', '6', '1522214507001', '', 'P', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('43', 'INDUSTRIA DE LACTEOS', '12542541251', 'example@lacteos.com', 'kilometro 6', '6', '1478523691001', 'LACTESO SA', 'P', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('44', 'Javier Farinango', '987242579', 'example@example.com', 'av. la prensa', '6', '1722214507', 'Javier Farinango', 'P', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('51', 'Mayra Guaraca', '0987242589', 'mayra.guaraca@gmail.com', 'av. la prensa', '6', '1750188326', 'mayra guaraca', 'P', null, 'C', 'cliente_51_6.png', 'A');
INSERT INTO `cliente` VALUES ('62', 'Javier Farinango', '0987456321', 'javier.farinango92@gmail.com', 'av  la prensa y carbajar', '6', '1722214507', 'MICROCLICK', 'P', null, 'C', 'cliente_62_6.png', 'A');
INSERT INTO `cliente` VALUES ('63', 'CORRALROSALES.LTDA', '2544144', 'pilar@corralrosales.com', 'ROBLES Y AMAZONAS', '7', '1792719402001', 'CORRALROSALES.LTDA', 'C', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('64', 'CONSUMIDOR FINAL', '987463251', 'EXAMPLE@EXAMPLE.COM', 'KILOMETRO 14 Y MEDIO VIA CONOPCOTO', '7', '9999999999999', 'CONSUMIDOR FINAL', 'C', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('65', 'CORRAL & ROSALES CIA.LTDA', '2544144', 'jcadena@corralrosales.com', 'Robles E4-136 y amazonas Edif. Proinco Calisto. piso 12', '7', '1791308182001', 'CORRAL & ROSALES CIA.LTDA', 'C', null, 'R', null, 'A');
INSERT INTO `cliente` VALUES ('66', 'CORSINF', '0999219738', 'mrubio@corsinf.com', 'DE LOS MOTILONES n40-345', null, '1712605284001', 'CONSINF', 'C', null, null, null, 'A');
INSERT INTO `cliente` VALUES ('67', 'CORSINF', '0999219738', 'mrubio@corsinf.com', 'DE LOS MOTILONES n40-345', null, '1712605284001', 'COSINF', 'C', null, null, null, 'A');
INSERT INTO `cliente` VALUES ('68', 'CORSINF', '0999219738', 'mrubio@corsinf.com', 'DE LOS MOTILONES n40-345', null, '1712605284001', 'COSINF', 'C', null, null, null, 'A');
INSERT INTO `cliente` VALUES ('69', 'CORSINF', '0999219738', 'mrubio@corsinf.com', 'DE LOS MOTILONES n40-345', '7', '1712605284001', 'COSINF', 'C', null, null, null, 'A');
INSERT INTO `cliente` VALUES ('72', 'broodboetiek.S.A.', '2005235673', 'broodboetiekquito@gmail.com', 'la ceramica y ruta viva tumbaco', '7', '1792802547001', 'broodboetiek.S.A.', 'C', null, null, null, 'A');
INSERT INTO `cliente` VALUES ('75', 'walter vaca', '099999999', 'example@example.com', 'av la gasca y esmeraldas', '6', '0702164179', 'prismanet', 'P', null, 'C', 'cliente_75_6.png', 'A');
INSERT INTO `cliente` VALUES ('83', 'CONSUMIDOS FINAL', '99999999', 'consumidos@final.com', 'consumidos final', '30', '999999999999', 'CONSUMIDOR FINAL', 'P', null, 'C', null, 'A');
INSERT INTO `cliente` VALUES ('84', 'CONSUMIDOS FINAL', '99999999', 'consumidos@final.com', 'consumidos final', '7', '999999999999', 'CONSUMIDOR FINAL', 'C', null, 'C', null, 'A');

-- ----------------------------
-- Table structure for codigos_secuenciales
-- ----------------------------
DROP TABLE IF EXISTS `codigos_secuenciales`;
CREATE TABLE `codigos_secuenciales` (
  `id_secuenciales` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_secuencial` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT '1',
  `id_empresa` varchar(255) DEFAULT NULL,
  `Autorizacion` varchar(255) DEFAULT NULL,
  `Serie` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_secuenciales`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of codigos_secuenciales
-- ----------------------------
INSERT INTO `codigos_secuenciales` VALUES ('1', 'FA_SERIE_001001', '22', '6', '0702164179001', '001-001', 'FA');
INSERT INTO `codigos_secuenciales` VALUES ('2', 'RE_SERIE_001002', '37', '6', '0702164179001', '001-002', 'RE');
INSERT INTO `codigos_secuenciales` VALUES ('3', 'GR_SERIE_001002', '22', '6', '0702164179001', '001-002', 'GR');
INSERT INTO `codigos_secuenciales` VALUES ('6', 'NC_SERIE_001002', '8', '6', '0702164179001', '001-002', 'NC');
INSERT INTO `codigos_secuenciales` VALUES ('7', 'FA_SERIE_001001', '1', null, null, null, null);
INSERT INTO `codigos_secuenciales` VALUES ('13', 'FA_SERIE_001002', '6', '6', '0702164179001', '001-002', 'FA');
INSERT INTO `codigos_secuenciales` VALUES ('14', 'LC_SERIE_001002', '1', '6', '0702164179001', '001-002', 'LC');
INSERT INTO `codigos_secuenciales` VALUES ('15', 'RE_SERIE_001001', '4', '6', '0702164179001', '001-001', 'RE');
INSERT INTO `codigos_secuenciales` VALUES ('16', 'NC_SERIE_001001', '2', '6', '0702164179001', '001-001', 'NC');
INSERT INTO `codigos_secuenciales` VALUES ('17', 'GR_SERIE_001001', '3', '6', '0702164179001', '001-001', 'GR');
INSERT INTO `codigos_secuenciales` VALUES ('48', 'FA_SERIE_001001', '2', '30', '1234567890001', '001-001', 'FA');
INSERT INTO `codigos_secuenciales` VALUES ('49', 'RE_SERIE_001001', '1', '30', '1234567890001', '001-001', 'RE');
INSERT INTO `codigos_secuenciales` VALUES ('50', 'NC_SERIE_001001', '1', '30', '1234567890001', '001-001', 'NC');
INSERT INTO `codigos_secuenciales` VALUES ('51', 'GR_SERIE_001001', '1', '30', '1234567890001', '001-001', 'GR');
INSERT INTO `codigos_secuenciales` VALUES ('52', 'LC_SERIE_001001', '1', '30', '1234567890001', '001-001', 'LC');
INSERT INTO `codigos_secuenciales` VALUES ('58', 'FA_SERIE_001001', '1', '7', '1722214507001', '001-001', 'FA');
INSERT INTO `codigos_secuenciales` VALUES ('59', 'RE_SERIE_001001', '1', '7', '1722214507001', '001-001', 'RE');
INSERT INTO `codigos_secuenciales` VALUES ('60', 'NC_SERIE_001001', '1', '7', '1722214507001', '001-001', 'NC');
INSERT INTO `codigos_secuenciales` VALUES ('61', 'GR_SERIE_001001', '1', '7', '1722214507001', '001-001', 'GR');
INSERT INTO `codigos_secuenciales` VALUES ('62', 'LC_SERIE_001001', '1', '7', '1722214507001', '001-001', 'LC');
INSERT INTO `codigos_secuenciales` VALUES ('63', 'FA_SERIE_001001', '1', '33', '1702546738001', '001-001', 'FA');
INSERT INTO `codigos_secuenciales` VALUES ('64', 'RE_SERIE_001001', '1', '33', '1702546738001', '001-001', 'RE');
INSERT INTO `codigos_secuenciales` VALUES ('65', 'NC_SERIE_001001', '1', '33', '1702546738001', '001-001', 'NC');
INSERT INTO `codigos_secuenciales` VALUES ('66', 'GR_SERIE_001001', '1', '33', '1702546738001', '001-001', 'GR');
INSERT INTO `codigos_secuenciales` VALUES ('67', 'LC_SERIE_001001', '1', '33', '1702546738001', '001-001', 'LC');

-- ----------------------------
-- Table structure for colores
-- ----------------------------
DROP TABLE IF EXISTS `colores`;
CREATE TABLE `colores` (
  `ID_COLORES` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_COLORES`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of colores
-- ----------------------------
INSERT INTO `colores` VALUES ('1', '18', 'N/A', 'A');
INSERT INTO `colores` VALUES ('4', '2', 'ROJO', 'A');
INSERT INTO `colores` VALUES ('5', '3', 'AMARILLO', 'A');
INSERT INTO `colores` VALUES ('6', '4', 'BLANCO', 'A');
INSERT INTO `colores` VALUES ('7', '5', 'VERDE', 'A');
INSERT INTO `colores` VALUES ('8', '6', 'NEGRO', 'A');
INSERT INTO `colores` VALUES ('9', '7', 'DORADO', 'A');
INSERT INTO `colores` VALUES ('10', '8', 'PLOMO', 'A');
INSERT INTO `colores` VALUES ('11', '9', 'TOMATE', 'A');
INSERT INTO `colores` VALUES ('12', '10', 'CAFE', 'A');
INSERT INTO `colores` VALUES ('13', '11', 'ROSADOVINO', 'A');
INSERT INTO `colores` VALUES ('14', '12', 'VINO', 'A');
INSERT INTO `colores` VALUES ('15', '13', 'CELESTE', 'A');
INSERT INTO `colores` VALUES ('16', '14', 'CREMA', 'A');
INSERT INTO `colores` VALUES ('17', '15', 'MORADO', 'A');
INSERT INTO `colores` VALUES ('18', '16', 'VARIOS', 'A');

-- ----------------------------
-- Table structure for combo
-- ----------------------------
DROP TABLE IF EXISTS `combo`;
CREATE TABLE `combo` (
  `id_combo` int(255) NOT NULL AUTO_INCREMENT,
  `id_producto` int(255) DEFAULT NULL,
  `id_producto_add` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_combo`),
  KEY `FK_PRODUCTO_CAOMBO` (`id_producto`),
  KEY `FK_PRODUCTO_ADD_COMBO` (`id_producto_add`),
  CONSTRAINT `combo_ibfk_1` FOREIGN KEY (`id_producto_add`) REFERENCES `productos` (`id_productos`),
  CONSTRAINT `combo_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of combo
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id_empresa` int(255) NOT NULL AUTO_INCREMENT,
  `Razon_Social` varchar(100) DEFAULT '',
  `Nombre_Comercial` varchar(100) DEFAULT '',
  `RUC` varchar(13) DEFAULT '',
  `Direccion` varchar(100) DEFAULT '',
  `telefono` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `matriz` varchar(255) DEFAULT NULL,
  `Ruta_Certificado` varchar(255) DEFAULT '',
  `Clave_Certificado` varchar(255) NOT NULL DEFAULT '',
  `IP_VPN` varchar(100) DEFAULT NULL,
  `BASE` varchar(100) DEFAULT NULL,
  `TIPO_BASE` varchar(100) DEFAULT NULL,
  `USUARIO` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `PUERTO` varchar(50) DEFAULT NULL,
  `Ambiente` varchar(255) DEFAULT NULL,
  `Periodo` varchar(255) DEFAULT '.',
  `obligadoContabilidad` varchar(2) DEFAULT 'NO',
  `contribuyenteEspecial` varchar(255) DEFAULT NULL,
  `valor_iva` varchar(3) DEFAULT '12',
  `smtp_host` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(50) DEFAULT NULL,
  `smtp_usuario` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT '',
  `smtp_secure` varchar(10) DEFAULT 'tls',
  `N_MESAS` int(11) DEFAULT 30,
  `facturacion_electronica` bit(1) DEFAULT b'0',
  `procesar_automatico` bit(1) DEFAULT b'0',
  `encargado_envios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('5', 'CAFETERIA', 'CAFETERIA', '1722214507', '', '231456987', '', '../img/empresa/logo.jpeg', null, 'walter_jalil_vaca_prieto_natural_2020_09_10.p12', 'Dlcjvl1210', 'localhost', 'cafeteria', 'MYSQL', 'root', '', '3306', '1', '.', '1', null, '18', '', null, '', '', 'tls', '30', '\0', '\0', '11');
INSERT INTO `empresa` VALUES ('6', 'VACA PRIETO WALTER JALIL', 'DISKCOVER SYSTEM', '0702164179001', 'Desarrollo para programacion de DiskCover System', '99999999', 'ejfc19omoshiroi@gmail.com', '../img/empresa/logo.jpeg', null, 'walter_jalil_vaca_prieto_natural_2020_09_10.p12', 'Dlcjvl1210', 'localhost', 'cafeteria1', 'MYSQL', 'root', '', '3306', '1', '.', '0', '4519', '12', '', null, '', '', 'tls', '0', '', '', '12');
INSERT INTO `empresa` VALUES ('7', 'EDISON JAVIER FARINANGO CABEZAS', 'EDISON JAVIER FARINANGO CABEZAS', '1722214507001', 'COLINAS DEL VALLES JIPIRO Y SANTA BARBARA', '0987242579', 'javier.farinango92@gmail.com', '../img/empresa/logo.png', null, 'EDISON_JAVIER_FARINANGO_CABEZAS_040123130036.p12', 'Fa19071992', 'localhost', 'cafeteria1', 'MYSQL', 'root', '', '3306', '2', '.', '0', null, '12', '', null, '', '', 'tls', '30', '', '', '');
INSERT INTO `empresa` VALUES ('30', 'empresa xyz', 'empresa xyz', '1234567890001', 'la madrid', '0987654321', 'example.com', '../img/empresa/empresa_xyz', null, '', '', 'localhost', 'cafeteria1', 'MYSQL', 'root', '', '3306', '1', '.', '0', null, '12', null, null, null, '', 'tls', '30', '', '\0', null);

-- ----------------------------
-- Table structure for entregas
-- ----------------------------
DROP TABLE IF EXISTS `entregas`;
CREATE TABLE `entregas` (
  `id_localizacion` int(255) NOT NULL AUTO_INCREMENT,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT '',
  `telefono` varchar(11) DEFAULT '',
  `id_factura` int(11) DEFAULT NULL,
  `entregado` bit(1) DEFAULT b'0',
  `pedido` varchar(255) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `principal` varchar(255) DEFAULT NULL,
  `secundario` varchar(255) DEFAULT NULL,
  `numero_casa` varchar(255) DEFAULT NULL,
  `responsable` int(255) DEFAULT NULL,
  `lat_responsable` varchar(255) DEFAULT '0',
  `lon_responsable` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_localizacion`),
  KEY `FK_FACTURAS_ENTREGAS` (`id_factura`),
  KEY `FK_EMPRESA_ENTREGA` (`empresa`),
  KEY `FK_USUARIO_ENTREGAS` (`responsable`),
  CONSTRAINT `entregas_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `entregas_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `entregas_ibfk_3` FOREIGN KEY (`responsable`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of entregas
-- ----------------------------

-- ----------------------------
-- Table structure for estado
-- ----------------------------
DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
  `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_ESTADO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of estado
-- ----------------------------
INSERT INTO `estado` VALUES ('1', 'B', 'BUENO', 'A');
INSERT INTO `estado` VALUES ('2', 'M', 'MALO', 'A');
INSERT INTO `estado` VALUES ('3', 'R', 'REGULAR', 'A');

-- ----------------------------
-- Table structure for facturas
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas` (
  `id_factura` int(255) NOT NULL AUTO_INCREMENT,
  `num_factura` int(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT '0.0000',
  `descuento` varchar(255) DEFAULT '0.0000',
  `iva` varchar(255) DEFAULT '0.0000',
  `total` varchar(255) DEFAULT '0.0000',
  `id_empresa` int(255) DEFAULT NULL,
  `id_usuario` int(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `Autorizacion` varchar(100) DEFAULT '123456789',
  `Sin_Iva` varchar(255) DEFAULT '0.0000',
  `Porc_IVA` varchar(255) DEFAULT '0.0000',
  `Con_IVA` varchar(255) DEFAULT '0.0000',
  `Tipo_pago` varchar(5) DEFAULT '.',
  `Propina` decimal(8,4) DEFAULT 0.0000,
  `Clave_Acceso` varchar(255) DEFAULT NULL,
  `estado_factura` char(2) DEFAULT 'P',
  `id_pedido` varchar(11) DEFAULT '',
  `datos_adicionales` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `FK_USUARIO_FACTURA` (`id_usuario`) USING BTREE,
  KEY `FK_CLIENTE_FACTURA` (`id_cliente`) USING BTREE,
  KEY `FK_FACTURAS_EMPRESA` (`id_empresa`) USING BTREE,
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  CONSTRAINT `facturas_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO `facturas` VALUES ('237', '1', '1.50', '0.00', '0.18', '1.68', '6', '18', '2023-03-25', '44', '001-002', '2503202301070216417900110010020000000011234567814', '0', '0.12', '1.5', '01', '0.0000', '2503202301070216417900110010020000000011234567814', 'A', '', null);
INSERT INTO `facturas` VALUES ('238', '2', '151.50', '0.00', '0.18', '151.68', '6', '18', '2023-03-25', '51', '001-002', '0504202301070216417900110010020000000021234567819', '150', '0.12', '1.5', '.', '0.0000', '0504202301070216417900110010020000000021234567819', 'A', '', null);
INSERT INTO `facturas` VALUES ('239', '3', '100.00', '0.00', '0.00', '100.00', '6', '18', '2023-03-25', '51', '001-002', '2503202301070216417900110010020000000031234567815', '100', '0.12', '0', '01', '0.0000', '2503202301070216417900110010020000000031234567815', 'AN', '', null);
INSERT INTO `facturas` VALUES ('240', '2', '150.00', '0.00', '0.00', '150.00', '6', '18', '2023-03-26', '44', '001-002', '0504202301070216417900110010020000000021234567819', '150', '0.12', '0', '20', '0.0000', '0504202301070216417900110010020000000021234567819', 'A', '', null);
INSERT INTO `facturas` VALUES ('250', '8', '301.5', '0', '0.18', '301.68', '6', '18', '2023-03-26', '41', '001-002', '0702164179001', '300', '0.12', '1.5', '01', '0.0000', null, 'P', '', null);
INSERT INTO `facturas` VALUES ('251', '9', '0.00', '0.00', '0.00', '0.00', '6', '18', '2023-03-29', '41', '001-002', '2903202301070216417900110010020000000091234567816', '0', '0.12', '0', '20', '0.0000', '2903202301070216417900110010020000000091234567816', 'A', '', null);
INSERT INTO `facturas` VALUES ('255', '13', '151.5', '0', '0.18', '151.68', '6', '18', '2023-03-29', null, '001-002', '01070216417900110010020000000131234567815', '150', '0.12', '1.5', '01', '0.0000', '01070216417900110010020000000131234567815', 'R', '', null);
INSERT INTO `facturas` VALUES ('256', '14', '151.5', '0', '0.18', '151.68', '6', '18', '2023-03-29', null, '001-002', '01070216417900110010020000000141234567810', '150', '0.12', '1.5', '01', '0.0000', '01070216417900110010020000000141234567810', 'R', '', null);
INSERT INTO `facturas` VALUES ('257', '15', '151.5', '0', '0.18', '151.68', '6', '18', '2023-03-29', null, '001-002', '0702164179001', '150', '0.12', '1.5', '01', '0.0000', null, 'P', '', null);
INSERT INTO `facturas` VALUES ('258', '16', '0.00', '0.00', '0.00', '0.00', '6', '18', '2023-03-29', '41', '001-002', '2903202301070216417900110010020000000161234567814', '0', '0.12', '0', '01', '0.0000', '2903202301070216417900110010020000000161234567814', 'R', '', null);
INSERT INTO `facturas` VALUES ('259', '17', '151.5', '0', '0.18', '151.68', '6', '18', '2023-03-29', '41', '001-002', '2903202301070216417900110010020000000171234567811', '150', '0.12', '1.5', '01', '0.0000', '2903202301070216417900110010020000000171234567811', 'A', '', null);
INSERT INTO `facturas` VALUES ('260', '18', '151.50', '0.00', '0.18', '151.68', '6', '18', '2023-03-29', '62', '001-002', '2903202301070216417900110010020000000181234567815', '150', '0.12', '1.5', '20', '0.0000', '2903202301070216417900110010020000000181234567815', 'A', '', null);
INSERT INTO `facturas` VALUES ('261', '19', '1.00', '0.00', '0.00', '1.00', '6', '18', '2023-04-03', '38', '001-002', '0304202301070216417900110010020000000191234567812', '1', '0.12', '0', '01', '0.0000', '0304202301070216417900110010020000000191234567812', 'A', '', null);
INSERT INTO `facturas` VALUES ('265', '1', '400.00', '0.00', '48.00', '448.00', '7', '22', '2023-04-04', '65', '001-001', '1104202301123456789000110010010000000011234567814', '0', '0.12', '400', '01', '0.0000', '1104202301123456789000110010010000000011234567814', 'R', '', null);
INSERT INTO `facturas` VALUES ('266', '20', '1.00', '0.00', '0.00', '1.00', '6', '18', '2023-04-04', '44', '001-002', '0702164179001', '1', '0.12', '0', '01', '0.0000', null, 'P', '', null);
INSERT INTO `facturas` VALUES ('267', '2', '150.00', '0.00', '0.00', '150.00', '6', '18', '2023-04-05', '38', '001-002', '0504202301070216417900110010020000000021234567819', '150', '0.12', '0', '01', '0.0000', '0504202301070216417900110010020000000021234567819', 'A', '', null);
INSERT INTO `facturas` VALUES ('268', '21', '1.00', '0.00', '0.00', '1.00', '6', '18', '2023-04-06', '44', '001-001', '0604202301070216417900110010010000000211234567819', '1', '0.12', '0', '01', '0.0000', '0604202301070216417900110010010000000211234567819', 'A', '', null);
INSERT INTO `facturas` VALUES ('269', '3', '0.00', '0.00', '0.00', '0.00', '6', '18', '2023-04-06', '38', '001-002', '0702164179001', '0', '0.12', '0', '.', '0.0000', null, 'P', '', null);
INSERT INTO `facturas` VALUES ('270', '4', '150.00', '0.00', '0.00', '150.00', '6', '18', '2023-04-06', '38', '001-002', '0604202301070216417900110010020000000041234567814', '150', '0.12', '0', '20', '0.0000', '0604202301070216417900110010020000000041234567814', 'A', '', 'placa de camion CVFD-23432');
INSERT INTO `facturas` VALUES ('271', null, '0.00', '0.00', '0.00', '0.00', '6', '18', '2023-04-07', '51', null, '123456789', '0', '0.12', '0', '.', '0.0000', null, 'P', '', null);
INSERT INTO `facturas` VALUES ('272', '1', '1.00', '0.00', '0.00', '1.00', '30', '36', '2023-04-11', '83', '001-001', '1104202301123456789000110010010000000011234567814', '1', '0.12', '0', '01', '0.0000', '1104202301123456789000110010010000000011234567814', 'R', '', '');
INSERT INTO `facturas` VALUES ('273', '5', '150.00', '0.00', '0.00', '150.00', '6', '18', '2023-03-29', '62', '001-002', '2903202301070216417900110010020000000051234567814', '150', '0.12', '0', '20', '0.0000', '2903202301070216417900110010020000000051234567814', 'A', '', null);

-- ----------------------------
-- Table structure for forma_pago
-- ----------------------------
DROP TABLE IF EXISTS `forma_pago`;
CREATE TABLE `forma_pago` (
  `id_forma_pago` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(255) DEFAULT NULL,
  `estado_forma_pago` char(255) DEFAULT 'A',
  `comprobante` int(1) DEFAULT 0,
  `mostrar_en` varchar(255) DEFAULT '1',
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_forma_pago`),
  KEY `FK_EMPRESA_FORMA-PAGO` (`id_empresa`) USING BTREE,
  CONSTRAINT `forma_pago_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of forma_pago
-- ----------------------------
INSERT INTO `forma_pago` VALUES ('5', 'EFECTIVO', 'A', '0', '1', '5');
INSERT INTO `forma_pago` VALUES ('6', 'EFECTIVO', 'A', '0', '1', '6');

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_GENERO`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES ('1', '1', 'N/A', 'A');
INSERT INTO `genero` VALUES ('2', '2', 'VIDRIO', 'A');
INSERT INTO `genero` VALUES ('3', '3', 'TELA', 'A');
INSERT INTO `genero` VALUES ('4', '4', 'MIMBRE', 'A');
INSERT INTO `genero` VALUES ('5', '5', 'ELECTRICO', 'A');
INSERT INTO `genero` VALUES ('6', '6', 'MIXTO', 'A');
INSERT INTO `genero` VALUES ('7', '7', 'PLASTICO', 'A');
INSERT INTO `genero` VALUES ('8', '8', 'CERAMICA', 'A');
INSERT INTO `genero` VALUES ('9', '9', 'ELECTRONICO', 'A');
INSERT INTO `genero` VALUES ('10', '10', 'MADERA', 'A');
INSERT INTO `genero` VALUES ('11', '11', 'CUERINA', 'A');
INSERT INTO `genero` VALUES ('12', '12', 'LOSA', 'A');
INSERT INTO `genero` VALUES ('13', '13', 'ETERNIT', 'A');
INSERT INTO `genero` VALUES ('14', '14', 'FIBRA', 'A');
INSERT INTO `genero` VALUES ('15', '15', 'MARMOL', 'A');
INSERT INTO `genero` VALUES ('16', '16', 'FORMICA', 'A');
INSERT INTO `genero` VALUES ('19', '17', 'METAL', 'A');

-- ----------------------------
-- Table structure for guia_remision
-- ----------------------------
DROP TABLE IF EXISTS `guia_remision`;
CREATE TABLE `guia_remision` (
  `id_empresa` varchar(255) DEFAULT '',
  `id_fac_interna` varchar(255) DEFAULT NULL,
  `TC` varchar(2) DEFAULT NULL,
  `Serie` varchar(7) DEFAULT '',
  `Factura` int(11) DEFAULT NULL,
  `Autorizacion` varchar(49) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `id_cliente` varchar(10) DEFAULT '',
  `Definitivo` varchar(20) DEFAULT NULL,
  `Fecha_Tours` varchar(25) DEFAULT NULL,
  `DAU` int(11) DEFAULT NULL,
  `FUE` int(11) DEFAULT NULL,
  `Declaracion` varchar(20) DEFAULT NULL,
  `Remision` int(11) DEFAULT NULL,
  `Comercial` varchar(120) DEFAULT NULL,
  `Cantidad` decimal(19,4) DEFAULT NULL,
  `Kilos` decimal(19,4) DEFAULT NULL,
  `Solicitud` int(11) DEFAULT NULL,
  `CIRUC_Comercial` varchar(13) DEFAULT NULL,
  `Entrega` varchar(60) DEFAULT NULL,
  `CIRUC_Entrega` varchar(13) DEFAULT NULL,
  `CiudadGRI` varchar(35) DEFAULT NULL,
  `CiudadGRF` varchar(35) DEFAULT NULL,
  `Placa_Vehiculo` varchar(10) DEFAULT NULL,
  `FechaGRE` datetime DEFAULT NULL,
  `FechaGRI` datetime DEFAULT NULL,
  `FechaGRF` datetime DEFAULT NULL,
  `Pedido` varchar(15) DEFAULT NULL,
  `Zona` varchar(50) DEFAULT NULL,
  `estado` varchar(3) DEFAULT '',
  `Serie_GR` varchar(7) DEFAULT '',
  `Autorizacion_GR` varchar(49) DEFAULT NULL,
  `Clave_Acceso_GR` varchar(49) DEFAULT NULL,
  `Orden_Compra` int(11) DEFAULT NULL,
  `Lugar_Entrega` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `IDX_Facturas_Auxiliares` (`id_empresa`,`TC`,`Serie`,`Factura`,`Fecha`,`id_cliente`,`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of guia_remision
-- ----------------------------
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-002', '1', '2503202301070216417900110010020000000011234567814', '2023-03-26 00:00:00', '62', null, null, null, null, null, '12', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'AGUARICO', 'ALAUSI', 'XXX-999', '2023-03-25 00:00:00', '2023-03-25 00:00:00', '2023-03-25 00:00:00', 'pedido8', 'zona 12', 'A', '001-002', '2503202306070216417900110010020000000121234567816', '2503202306070216417900110010020000000121234567816', null, 'plazoleta', '17');
INSERT INTO `guia_remision` VALUES ('6', '251', 'GR', '001-002', '9', '2903202301070216417900110010020000000091234567816', '2023-03-29 00:00:00', '41', null, null, null, null, null, '13', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', '24 DE MAYO', '24 DE MAYO', 'XXX-999', '2023-03-11 00:00:00', '2023-03-11 00:00:00', '2023-03-11 00:00:00', 'pediro 12', 'zona 12', 'R', '001-002', '1103202306070216417900110010020000000131234567811', '1103202306070216417900110010020000000131234567811', null, 'plazoleta cristo', '18');
INSERT INTO `guia_remision` VALUES ('6', '259', 'GR', '001-002', '17', '2903202301070216417900110010020000000171234567811', '2023-03-29 00:00:00', '41', null, null, null, null, null, '14', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'AGUARICO', 'AGUARICO', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 12', 'zona 12', 'AN', '001-002', '2903202306070216417900110010020000000141234567815', '2903202306070216417900110010020000000141234567815', null, 'plazoleta cristo', '19');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-003', '2', '98765654543432234', '2023-03-27 00:00:00', '41', null, null, null, null, null, '15', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'ARENILLAS', 'AMBATO', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 23', 'zona 12', 'A', '001-002', '2903202306070216417900110010020000000151234567810', '2903202306070216417900110010020000000151234567810', null, 'portal', '20');
INSERT INTO `guia_remision` VALUES ('6', '260', 'GR', '001-002', '18', '2903202301070216417900110010020000000181234567815', '2023-03-29 00:00:00', '62', null, null, null, null, null, '16', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', '24 DE MAYO', 'AGUARICO', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 12', 'zona 12', 'A', '001-002', '2903202306070216417900110010020000000161234567816', '2903202306070216417900110010020000000161234567816', null, 'plazoleta cristo', '21');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-003', '18', '00000001', '2023-03-28 00:00:00', '62', null, null, null, null, null, '17', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'AGUARICO', 'ALAUSI', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 12', 'zona 12', 'R', '001-002', '2903202306070216417900110010020000000171234567811', '2903202306070216417900110010020000000171234567811', null, 'plazoleta cristo', '22');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-003', '6', '2903202301070216417900110010020000000091234567816', '2023-03-28 00:00:00', '41', null, null, null, null, null, '18', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', '24 DE MAYO', 'AMBATO', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 12', 'zona 12', 'A', '001-002', '2903202306070216417900110010020000000181234567817', '2903202306070216417900110010020000000181234567817', null, 'plazoleta cristo', '23');
INSERT INTO `guia_remision` VALUES ('6', '273', 'GR', '001-002', '5', '2903202301070216417900110010020000000051234567814', '2023-03-29 00:00:00', '62', null, null, null, null, null, '19', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1722214507', 'AGUARICO', 'AGUARICO', 'XXX-999', '2023-03-29 00:00:00', '2023-03-29 00:00:00', '2023-03-29 00:00:00', 'pediro 12', 'zona 12', 'A', '001-002', '2903202306070216417900110010020000000191234567812', '2903202306070216417900110010020000000191234567812', null, 'plazoleta cristo', '24');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-002', '2', '1234567890', '2023-04-10 00:00:00', '62', null, null, null, null, null, '20', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1722214507', 'AGUARICO', 'AGUARICO', 'XXX-999', '2023-04-10 00:00:00', '2023-04-10 00:00:00', '2023-04-10 00:00:00', 'pediro 12', 'zona 12', 'A', '001-002', '1004202306070216417900110010020000000201234567811', '1004202306070216417900110010020000000201234567811', null, 'plazoleta cristo', '25');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '', null, null, null, '42', null, null, null, null, null, '21', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1722214507', 'AGUARICO', 'AGUARICO', 'XXX-999', '2023-04-11 00:00:00', '2023-04-11 00:00:00', '2023-04-11 00:00:00', '', '', 'P', '001-001', '0702164179001', null, null, '', '26');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '', null, null, null, '43', null, null, null, null, null, '1', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'AGUARICO', 'AGUARICO', 'XXX-999', '2023-04-11 00:00:00', '2023-04-11 00:00:00', '2023-04-11 00:00:00', 'pediro 12', 'zona 12', 'P', '001-001', '0702164179001', null, null, 'plazoleta cristo', '27');
INSERT INTO `guia_remision` VALUES ('6', null, 'GR', '001-001', '1', '1234567890', '2023-04-11 00:00:00', '41', null, null, null, null, null, '2', 'Javier Farinango', null, null, null, '1722214507', 'Javier Farinango', '1750188326', 'ALFREDO BAQUERIZO MORENO', 'AMBATO', 'XXX-999', '2023-04-11 00:00:00', '2023-04-11 00:00:00', '2023-04-11 00:00:00', 'pediro 12', 'zona 12', 'A', '001-001', '1104202306070216417900110010010000000021234567818', '1104202306070216417900110010010000000021234567818', null, 'plazoleta cristo', '28');

-- ----------------------------
-- Table structure for kardex_temp
-- ----------------------------
DROP TABLE IF EXISTS `kardex_temp`;
CREATE TABLE `kardex_temp` (
  `id_kardex` int(255) NOT NULL AUTO_INCREMENT,
  `id_producto` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `TP` varchar(255) DEFAULT NULL,
  `entrada` varchar(255) DEFAULT NULL,
  `salida` varchar(255) DEFAULT NULL,
  `valor_unitario` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT '',
  `total_iva` varchar(255) DEFAULT NULL,
  `existencias` varchar(255) DEFAULT NULL,
  `costo` varchar(255) DEFAULT NULL,
  `valor_total` varchar(255) DEFAULT '',
  `Factura` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha_Fab` date DEFAULT NULL,
  `fecha_Exp` date DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of kardex_temp
-- ----------------------------

-- ----------------------------
-- Table structure for kit
-- ----------------------------
DROP TABLE IF EXISTS `kit`;
CREATE TABLE `kit` (
  `id_kit` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_materia_prima` int(11) DEFAULT NULL,
  `cantida` varchar(255) DEFAULT NULL,
  `tamanio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kit`),
  KEY `FK_MATERIA_KIT` (`id_materia_prima`),
  KEY `FK_PRODUCTO_KIT` (`id_producto`),
  KEY `FK_TAMANIO_KIT` (`tamanio`),
  CONSTRAINT `kit_ibfk_1` FOREIGN KEY (`id_materia_prima`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `kit_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `kit_ibfk_3` FOREIGN KEY (`tamanio`) REFERENCES `tamanio` (`id_tamanio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of kit
-- ----------------------------

-- ----------------------------
-- Table structure for lineas_factura
-- ----------------------------
DROP TABLE IF EXISTS `lineas_factura`;
CREATE TABLE `lineas_factura` (
  `id_lineas` int(255) NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `precio_uni` varchar(255) DEFAULT NULL,
  `porc_descuento` varchar(255) DEFAULT '',
  `descuento` varchar(255) DEFAULT NULL,
  `iva` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `porc_iva` decimal(8,4) DEFAULT NULL,
  `Serie_No` varchar(100) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `id_guiaRemi` varchar(11) DEFAULT '',
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_lineas`),
  KEY `FK_LINEAS_FACTURA` (`id_factura`) USING BTREE,
  KEY `FK_PRODUCTO_LINEA` (`referencia`) USING BTREE,
  CONSTRAINT `lineas_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lineas_factura_ibfk_2` FOREIGN KEY (`referencia`) REFERENCES `productos` (`referencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lineas_factura
-- ----------------------------
INSERT INTO `lineas_factura` VALUES ('338', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', '237', '10.23.25', '0.1200', '001-002', '1.50', null, null);
INSERT INTO `lineas_factura` VALUES ('339', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', '238', '10.23.25', '0.1200', '001-002', '1.50', null, null);
INSERT INTO `lineas_factura` VALUES ('340', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '238', '01.01.37', '0.0000', '001-002', '150.00', null, null);
INSERT INTO `lineas_factura` VALUES ('341', 'Queso', '1', '100.00', '0.00', '0.00', '0.00', '100.00', '239', '01.01.36', '0.0000', '001-002', '100.00', null, null);
INSERT INTO `lineas_factura` VALUES ('344', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '240', '01.01.37', '0.0000', '001-002', '150.00', null, null);
INSERT INTO `lineas_factura` VALUES ('357', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', '259', '10.23.25', '0.1200', '001-002', '1.50', '19', null);
INSERT INTO `lineas_factura` VALUES ('358', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '259', '01.01.37', '0.0000', '001-002', '150.00', '19', null);
INSERT INTO `lineas_factura` VALUES ('359', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', null, '10.23.25', '0.1200', '001-002', '1.50', '20', null);
INSERT INTO `lineas_factura` VALUES ('360', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '260', '01.01.37', '0.0000', '001-002', '150.00', '21', null);
INSERT INTO `lineas_factura` VALUES ('361', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', '260', '10.23.25', '0.1200', '001-002', '1.50', '21', null);
INSERT INTO `lineas_factura` VALUES ('362', 'Queso', '1', '100.00', '0.00', '0.00', '0.00', '100.00', null, '01.01.36', '0.0000', '001-002', '100.00', '22', null);
INSERT INTO `lineas_factura` VALUES ('363', 'servicio de trasporte', '1', '1.50', '0.00', '0.00', '0.18', '1.68', null, '10.23.25', '0.1200', '001-002', '1.50', '23', null);
INSERT INTO `lineas_factura` VALUES ('364', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '273', '01.01.37', '0.0000', '001-002', '150.00', '24', null);
INSERT INTO `lineas_factura` VALUES ('365', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', '261', '01.01.37', '0.0000', '001-002', '1.00', '', null);
INSERT INTO `lineas_factura` VALUES ('367', 'HORAS ADICIONALES DE DESARROLLO (INTEGRACION TIMEMANAGER E INTRANET)', '8', '50', '0.00', '0.00', '48.00', '448.00', '265', '01.01.005', '0.1200', '001-001', '400.00', '', null);
INSERT INTO `lineas_factura` VALUES ('368', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', '266', '01.01.37', '0.0000', '001-002', '1.00', '', null);
INSERT INTO `lineas_factura` VALUES ('369', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '267', '01.01.37', '0.0000', '001-002', '150.00', '', null);
INSERT INTO `lineas_factura` VALUES ('370', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', '268', '01.01.37', '0.0000', '001-002', '1.00', '', null);
INSERT INTO `lineas_factura` VALUES ('375', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', '270', '01.01.37', '0.0000', '001-002', '150.00', '', 'pollo patas amarillas');
INSERT INTO `lineas_factura` VALUES ('376', 'prueba 1', '1', '1', '0.00', '0.00', '0.00', '1.00', '272', '001.001', '0.0000', '001-001', '1.00', '', '');
INSERT INTO `lineas_factura` VALUES ('377', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', null, '01.01.37', '0.0000', '001-002', '1.00', '25', null);
INSERT INTO `lineas_factura` VALUES ('378', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', null, '01.01.37', '0.0000', '001-001', '1.00', '26', null);
INSERT INTO `lineas_factura` VALUES ('379', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', null, '01.01.37', '0.0000', '001-001', '1.00', '27', null);
INSERT INTO `lineas_factura` VALUES ('380', 'Pollo  1', '1', '150.00', '0.00', '0.00', '0.00', '150.00', null, '01.01.37', '0.0000', '001-001', '150.00', '28', null);
INSERT INTO `lineas_factura` VALUES ('381', 'Pollo  1', '1', '1', '0.00', '0.00', '0.00', '1.00', null, '01.01.37', '0.0000', '001-002', '1.00', '18', null);

-- ----------------------------
-- Table structure for lineas_nota_credito
-- ----------------------------
DROP TABLE IF EXISTS `lineas_nota_credito`;
CREATE TABLE `lineas_nota_credito` (
  `id_nota_credito_linea` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `pvp` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `nota_credito` varchar(255) DEFAULT NULL,
  `descuento` varchar(255) DEFAULT NULL,
  `iva` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `porc_descuento` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `porc_iva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota_credito_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lineas_nota_credito
-- ----------------------------
INSERT INTO `lineas_nota_credito` VALUES ('1', 'servicio de trasporte', '1', '1.50', '1.50', '2', '0.00', '0.18', '1.68', '0.00', '10.23.25', '001-002', '0.12');
INSERT INTO `lineas_nota_credito` VALUES ('2', 'servicio de trasporte', '1', '1.50', '1.50', '5', '0.00', '0.18', '1.68', '0.00', '10.23.25', '001-002', '0.12');
INSERT INTO `lineas_nota_credito` VALUES ('3', 'Pollo  1', '1', '150.00', '150.00', '4', '0.00', '0.00', '150.00', '0.00', '01.01.37', '001-002', '0');
INSERT INTO `lineas_nota_credito` VALUES ('4', 'Pollo  1', '1', '150.00', '150.00', '6', '0.00', '0.00', '150.00', '0.00', '01.01.37', '001-002', '0');
INSERT INTO `lineas_nota_credito` VALUES ('5', 'Pollo  1', '1', '1', '1.00', '7', '0.00', '0.00', '1.00', '0.00', '01.01.37', '001-001', '0');

-- ----------------------------
-- Table structure for lista_tipo_contribuyente
-- ----------------------------
DROP TABLE IF EXISTS `lista_tipo_contribuyente`;
CREATE TABLE `lista_tipo_contribuyente` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `RUC` varchar(13) DEFAULT '.',
  `Zona` varchar(10) DEFAULT '.',
  `Agente_Retencion` varchar(30) DEFAULT '.',
  `Contribuyente_Especial` bit(1) DEFAULT b'0',
  `RIMPE_E` bit(1) DEFAULT NULL,
  `RIMPE_P` bit(1) DEFAULT NULL,
  `Micro_2020` bit(1) DEFAULT b'0',
  `Micro_2021` bit(1) DEFAULT b'0',
  `X` varchar(1) NOT NULL DEFAULT '.',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `RUC` (`RUC`)
) ENGINE=InnoDB AUTO_INCREMENT=961382 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of lista_tipo_contribuyente
-- ----------------------------
INSERT INTO `lista_tipo_contribuyente` VALUES ('18535', '0702164179001', 'ZONA 5', 'NAC-DNCRASC20-00000001', '\0', '', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18536', '0702410077001', 'ZONA 7', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18537', '1002556940001', 'ZONA 4', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18538', '0916403512001', 'ZONA 8', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18539', '1706298955001', 'ZONA 9', 'NAC-DNCRASC20-00000001', '\0', '', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18540', '1709526907001', 'ZONA 9', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18541', '1711313393001', 'ZONA 9', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18542', '1001864733001', 'ZONA 1', 'NAC-DNCRASC20-00000001', '\0', '', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18543', '0703151910001', 'ZONA 7', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18544', '0700751563001', 'ZONA 7', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18545', '1704779501001', 'ZONA 9', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18546', '1001969847001', 'ZONA 1', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18547', '1708012677001', 'ZONA 9', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18548', '1714939251001', 'ZONA 4', 'NAC-DNCRASC20-00000001', '\0', '', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18549', '1201044284001', 'ZONA 8', 'NAC-DNCRASC20-00000001', '\0', '\0', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('18550', '1721010708001', 'ZONA 1', 'NAC-DNCRASC20-00000001', '\0', '', '\0', '\0', '\0', '.');
INSERT INTO `lista_tipo_contribuyente` VALUES ('961381', '1722214507001', 'ZONA 9', '.', '\0', '', '\0', '\0', '\0', '.');

-- ----------------------------
-- Table structure for marcas
-- ----------------------------
DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `ID_MARCA` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `ESTADO` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_MARCA`)
) ENGINE=InnoDB AUTO_INCREMENT=2673 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of marcas
-- ----------------------------
INSERT INTO `marcas` VALUES ('1', '0', 'S/M', 'A');
INSERT INTO `marcas` VALUES ('2', '1', '3COM', 'A');
INSERT INTO `marcas` VALUES ('3', '2', '3M', 'A');
INSERT INTO `marcas` VALUES ('4', '3', 'A.O FORTY', 'A');
INSERT INTO `marcas` VALUES ('5', '4', 'A.O. SPENCER', 'A');
INSERT INTO `marcas` VALUES ('6', '5', 'ABBOTT', 'A');
INSERT INTO `marcas` VALUES ('7', '6', 'ABC', 'A');
INSERT INTO `marcas` VALUES ('8', '7', 'ABPICK', 'A');
INSERT INTO `marcas` VALUES ('9', '8', 'ACAI ELECTRIC COLTA', 'A');
INSERT INTO `marcas` VALUES ('10', '9', 'ACCUPOWER', 'A');
INSERT INTO `marcas` VALUES ('11', '10', 'ACER', 'A');
INSERT INTO `marcas` VALUES ('12', '11', 'ACKER', 'A');
INSERT INTO `marcas` VALUES ('13', '12', 'ACME', 'A');
INSERT INTO `marcas` VALUES ('14', '13', 'ACRIMETAL', 'A');
INSERT INTO `marcas` VALUES ('15', '14', 'ADEC', 'A');
INSERT INTO `marcas` VALUES ('16', '15', 'POWERMAX', 'A');
INSERT INTO `marcas` VALUES ('17', '16', 'ADLER', 'A');
INSERT INTO `marcas` VALUES ('18', '17', 'ADVAN', 'A');
INSERT INTO `marcas` VALUES ('19', '18', 'ADVANTAGE', 'A');
INSERT INTO `marcas` VALUES ('20', '19', 'ADVENT', 'A');
INSERT INTO `marcas` VALUES ('21', '20', 'AESCULAP', 'A');
INSERT INTO `marcas` VALUES ('22', '21', 'AGA', 'A');
INSERT INTO `marcas` VALUES ('23', '22', 'AGIPGAS', 'A');
INSERT INTO `marcas` VALUES ('24', '23', 'AIJON', 'A');
INSERT INTO `marcas` VALUES ('25', '24', 'IPHONE', 'A');
INSERT INTO `marcas` VALUES ('1580', '1579', 'KOPF', 'A');
INSERT INTO `marcas` VALUES ('1581', '1580', 'SANDY', 'A');
INSERT INTO `marcas` VALUES ('1582', '1581', 'TECUNSEH', 'A');
INSERT INTO `marcas` VALUES ('1583', '1582', 'BENCH GRINDER', 'A');
INSERT INTO `marcas` VALUES ('1584', '1583', 'CATA', 'A');
INSERT INTO `marcas` VALUES ('1585', '1584', 'RAPESCO', 'A');
INSERT INTO `marcas` VALUES ('1586', '1585', 'GS', 'A');
INSERT INTO `marcas` VALUES ('1587', '1586', 'TRIKON', 'A');
INSERT INTO `marcas` VALUES ('1588', '1587', 'JASUN', 'A');
INSERT INTO `marcas` VALUES ('1589', '1588', 'TAROS', 'A');
INSERT INTO `marcas` VALUES ('1590', '1589', 'FAHRENHEAT', 'A');
INSERT INTO `marcas` VALUES ('1591', '1590', 'ARMSTRONG', 'A');
INSERT INTO `marcas` VALUES ('1592', '1591', 'BROADCROWN', 'A');
INSERT INTO `marcas` VALUES ('1593', '1592', 'KAISER', 'A');
INSERT INTO `marcas` VALUES ('1594', '1593', 'CODISON', 'A');
INSERT INTO `marcas` VALUES ('1595', '1594', 'HUGER', 'A');
INSERT INTO `marcas` VALUES ('1596', '1595', 'AUDIOVOX', 'A');
INSERT INTO `marcas` VALUES ('1597', '1596', 'BIOEQUIP', 'A');
INSERT INTO `marcas` VALUES ('1598', '1597', 'ASSIN', 'A');
INSERT INTO `marcas` VALUES ('1599', '1598', 'HP', 'A');
INSERT INTO `marcas` VALUES ('1600', '1599', 'CISCO SYSTEM', 'A');
INSERT INTO `marcas` VALUES ('1601', '1600', 'SUN MICROSYSTEM', 'A');
INSERT INTO `marcas` VALUES ('2316', '2315', 'JOBY', 'A');
INSERT INTO `marcas` VALUES ('2317', '2316', 'MULTIBLITZ', 'A');
INSERT INTO `marcas` VALUES ('2318', '2317', 'TRANCELL', 'A');
INSERT INTO `marcas` VALUES ('2319', '2318', 'OBLIQUE', 'A');
INSERT INTO `marcas` VALUES ('2320', '2319', 'INFINITY', 'A');
INSERT INTO `marcas` VALUES ('2321', '2320', 'RADWAG', 'A');
INSERT INTO `marcas` VALUES ('2322', '2321', 'PELIKAN', 'A');
INSERT INTO `marcas` VALUES ('2323', '2322', 'MIDEA', 'A');
INSERT INTO `marcas` VALUES ('2324', '2323', 'SENAL', 'A');
INSERT INTO `marcas` VALUES ('2325', '2324', 'SAMSON', 'A');
INSERT INTO `marcas` VALUES ('2326', '2325', 'VARIZOOM', 'A');
INSERT INTO `marcas` VALUES ('2327', '2326', 'STAINLESS', 'A');
INSERT INTO `marcas` VALUES ('2328', '2327', 'DANBY PREMIERE', 'A');
INSERT INTO `marcas` VALUES ('2329', '2328', 'RECONYX', 'A');
INSERT INTO `marcas` VALUES ('2330', '2329', 'MIDWEST', 'A');
INSERT INTO `marcas` VALUES ('2331', '2330', 'DILAMI', 'A');
INSERT INTO `marcas` VALUES ('2332', '2331', 'ELECTRONIC', 'A');
INSERT INTO `marcas` VALUES ('2333', '2332', 'KYOTO', 'A');
INSERT INTO `marcas` VALUES ('2334', '2333', 'GRAN TEST', 'A');
INSERT INTO `marcas` VALUES ('2335', '2334', 'VEIBON', 'A');
INSERT INTO `marcas` VALUES ('2336', '2335', 'GOWLLANDS', 'A');
INSERT INTO `marcas` VALUES ('2337', '2336', 'MACO', 'A');
INSERT INTO `marcas` VALUES ('2338', '2337', 'ADAM', 'A');
INSERT INTO `marcas` VALUES ('2339', '2338', 'SIMULAIDS', 'A');
INSERT INTO `marcas` VALUES ('2340', '2339', 'RUBI', 'A');
INSERT INTO `marcas` VALUES ('2341', '2340', 'PCE INSTRUMENT', 'A');
INSERT INTO `marcas` VALUES ('2342', '2341', 'PARR', 'A');
INSERT INTO `marcas` VALUES ('2343', '2342', 'STUART', 'A');
INSERT INTO `marcas` VALUES ('2344', '2343', 'COAST', 'A');
INSERT INTO `marcas` VALUES ('2345', '2344', 'EVERMED', 'A');
INSERT INTO `marcas` VALUES ('2346', '2345', 'CATALY', 'A');
INSERT INTO `marcas` VALUES ('2347', '2346', 'ZOLERTIA', 'A');
INSERT INTO `marcas` VALUES ('2348', '2347', 'FRANCOLO', 'A');
INSERT INTO `marcas` VALUES ('2349', '2348', 'TECSUS', 'A');
INSERT INTO `marcas` VALUES ('2350', '2349', 'SOUND BLAST', 'A');
INSERT INTO `marcas` VALUES ('2351', '2350', 'KANOMAX', 'A');
INSERT INTO `marcas` VALUES ('2352', '2351', 'RIOBI', 'A');
INSERT INTO `marcas` VALUES ('2353', '2352', 'BLUEROCK TOOLS', 'A');
INSERT INTO `marcas` VALUES ('2354', '2353', 'ADC', 'A');
INSERT INTO `marcas` VALUES ('2355', '2354', 'RCD', 'A');
INSERT INTO `marcas` VALUES ('2356', '2355', 'SARTURIUS', 'A');
INSERT INTO `marcas` VALUES ('2357', '2356', 'UNIFIED NETWORK CONTROLER', 'A');
INSERT INTO `marcas` VALUES ('2358', '2357', 'BIOTAGE', 'A');
INSERT INTO `marcas` VALUES ('2359', '2358', 'HEATING MANTLE', 'A');
INSERT INTO `marcas` VALUES ('2360', '2359', 'CERAGEM', 'A');
INSERT INTO `marcas` VALUES ('2361', '2360', 'BABYLISS', 'A');
INSERT INTO `marcas` VALUES ('2362', '2361', 'DINO LITE', 'A');
INSERT INTO `marcas` VALUES ('2363', '2362', 'TOUCAN ECO', 'A');
INSERT INTO `marcas` VALUES ('2364', '2363', 'WASPMOTE', 'A');
INSERT INTO `marcas` VALUES ('2365', '2364', 'WHISTLER', 'A');
INSERT INTO `marcas` VALUES ('2366', '2365', 'FLOWATCH', 'A');
INSERT INTO `marcas` VALUES ('2367', '2366', 'YSI', 'A');
INSERT INTO `marcas` VALUES ('2368', '2367', 'K CENTRIFUGE', 'A');
INSERT INTO `marcas` VALUES ('2369', '2368', 'S&M', 'A');
INSERT INTO `marcas` VALUES ('2370', '2369', 'HUMAPETTE', 'A');
INSERT INTO `marcas` VALUES ('2371', '2370', 'ALLEN HEATH', 'A');
INSERT INTO `marcas` VALUES ('2372', '2371', 'SONICS', 'A');
INSERT INTO `marcas` VALUES ('2373', '2372', 'CEBORA', 'A');
INSERT INTO `marcas` VALUES ('2374', '2373', 'LUMENERA', 'A');
INSERT INTO `marcas` VALUES ('2375', '2374', 'RICE LAKE', 'A');
INSERT INTO `marcas` VALUES ('2376', '2375', 'FAT SHARK', 'A');
INSERT INTO `marcas` VALUES ('2377', '2376', 'PARROT', 'A');
INSERT INTO `marcas` VALUES ('2378', '2377', 'ONELAM', 'A');
INSERT INTO `marcas` VALUES ('2379', '2378', 'BIOBASE', 'A');
INSERT INTO `marcas` VALUES ('2380', '2379', 'ECOX', 'A');
INSERT INTO `marcas` VALUES ('2381', '2380', 'ECHO METER', 'A');
INSERT INTO `marcas` VALUES ('2382', '2381', 'SPER SCIENTIFIC', 'A');
INSERT INTO `marcas` VALUES ('2383', '2382', 'TOTALPACK', 'A');
INSERT INTO `marcas` VALUES ('2384', '2383', 'SPEEDOTRON', 'A');
INSERT INTO `marcas` VALUES ('2385', '2384', 'KINECT', 'A');
INSERT INTO `marcas` VALUES ('2386', '2385', 'LEAP MOTION', 'A');
INSERT INTO `marcas` VALUES ('2387', '2386', 'XIANGYI', 'A');
INSERT INTO `marcas` VALUES ('2388', '2387', 'GRAHAM FIELD', 'A');
INSERT INTO `marcas` VALUES ('2389', '2388', 'GLOBAL SECURITY', 'A');
INSERT INTO `marcas` VALUES ('2390', '2389', 'SYNOLOGY', 'A');
INSERT INTO `marcas` VALUES ('2391', '2390', 'OSRAM', 'A');
INSERT INTO `marcas` VALUES ('2392', '2391', 'K', 'A');
INSERT INTO `marcas` VALUES ('2393', '2392', 'PHOTRON LAMPS', 'A');
INSERT INTO `marcas` VALUES ('2394', '2393', 'DEHUMIDIFIER', 'A');
INSERT INTO `marcas` VALUES ('2395', '2394', 'EURO CLONE', 'A');
INSERT INTO `marcas` VALUES ('2396', '2395', 'AIRTRAQ', 'A');
INSERT INTO `marcas` VALUES ('2397', '2396', 'GLASSCO', 'A');
INSERT INTO `marcas` VALUES ('2398', '2397', 'SPINREACT', 'A');
INSERT INTO `marcas` VALUES ('2399', '2398', 'PLUS SED', 'A');
INSERT INTO `marcas` VALUES ('2400', '2399', 'DIFFERENTIAL', 'A');
INSERT INTO `marcas` VALUES ('2401', '2400', 'DIRECTV', 'A');
INSERT INTO `marcas` VALUES ('2402', '2401', 'NORTH FACE', 'A');
INSERT INTO `marcas` VALUES ('2403', '2402', 'TSC', 'A');
INSERT INTO `marcas` VALUES ('2404', '2403', 'XMART', 'A');
INSERT INTO `marcas` VALUES ('2405', '2404', 'EMPI', 'A');
INSERT INTO `marcas` VALUES ('2406', '2405', 'FISNEL SCIENTIFIC', 'A');
INSERT INTO `marcas` VALUES ('2407', '2406', 'ANDINO', 'A');
INSERT INTO `marcas` VALUES ('2408', '2407', '3D SYSTEMS', 'A');
INSERT INTO `marcas` VALUES ('2409', '2408', 'KIPUR', 'A');
INSERT INTO `marcas` VALUES ('2410', '2409', 'CANNON', 'A');
INSERT INTO `marcas` VALUES ('2411', '2410', 'MICROLITE', 'A');
INSERT INTO `marcas` VALUES ('2412', '2411', 'PROMPT', 'A');
INSERT INTO `marcas` VALUES ('2413', '2412', 'NOVALINEA', 'A');
INSERT INTO `marcas` VALUES ('2414', '2413', 'BOWENS', 'A');
INSERT INTO `marcas` VALUES ('2415', '2414', 'COWBOY', 'A');
INSERT INTO `marcas` VALUES ('2416', '2415', 'AKAI PROFESIONAL', 'A');
INSERT INTO `marcas` VALUES ('2417', '2416', 'BESCOR', 'A');
INSERT INTO `marcas` VALUES ('2418', '2417', 'EPHOTO', 'A');
INSERT INTO `marcas` VALUES ('2419', '2418', 'ZOOM', 'A');
INSERT INTO `marcas` VALUES ('2420', '2419', 'RODE RONT', 'A');
INSERT INTO `marcas` VALUES ('2421', '2420', 'FUKE', 'A');
INSERT INTO `marcas` VALUES ('2422', '2421', 'LAMBDA PLUS', 'A');
INSERT INTO `marcas` VALUES ('2423', '2422', 'TCS', 'A');
INSERT INTO `marcas` VALUES ('2424', '2423', 'VERNIER CALIPER', 'A');
INSERT INTO `marcas` VALUES ('2425', '2424', 'FORZA', 'A');
INSERT INTO `marcas` VALUES ('2426', '2425', 'GASSCO', 'A');
INSERT INTO `marcas` VALUES ('2427', '2426', 'MAGIC BULLET', 'A');
INSERT INTO `marcas` VALUES ('2428', '2427', 'GO PRO', 'A');
INSERT INTO `marcas` VALUES ('2429', '2428', 'PHANTOM', 'A');
INSERT INTO `marcas` VALUES ('2430', '2429', 'WPI', 'A');
INSERT INTO `marcas` VALUES ('2431', '2430', 'ENERGIZER', 'A');
INSERT INTO `marcas` VALUES ('2432', '2431', 'MATEST', 'A');
INSERT INTO `marcas` VALUES ('2433', '2432', 'POWER STAGE', 'A');
INSERT INTO `marcas` VALUES ('2434', '2433', 'DSC', 'A');
INSERT INTO `marcas` VALUES ('2435', '2434', 'MC', 'A');
INSERT INTO `marcas` VALUES ('2436', '2435', 'KNF LAB', 'A');
INSERT INTO `marcas` VALUES ('2437', '2436', '3B', 'A');
INSERT INTO `marcas` VALUES ('2438', '2437', 'WERNER', 'A');
INSERT INTO `marcas` VALUES ('2439', '2438', 'TUTTNAVER', 'A');
INSERT INTO `marcas` VALUES ('2440', '2439', 'SPORTECH', 'A');
INSERT INTO `marcas` VALUES ('2441', '2440', 'FITNESS', 'A');
INSERT INTO `marcas` VALUES ('2442', '2441', 'BODY STRONG', 'A');
INSERT INTO `marcas` VALUES ('2443', '2442', 'RACING BIKE', 'A');
INSERT INTO `marcas` VALUES ('2444', '2443', 'LUMENERA', 'A');
INSERT INTO `marcas` VALUES ('2445', '2444', 'SOLDERING IRON', 'A');
INSERT INTO `marcas` VALUES ('2446', '2445', 'ASUS', 'A');
INSERT INTO `marcas` VALUES ('2447', '2446', 'EPONA MEDICAL', 'A');
INSERT INTO `marcas` VALUES ('2448', '2447', 'NEXLINK', 'A');
INSERT INTO `marcas` VALUES ('2449', '2448', 'STAGE', 'A');
INSERT INTO `marcas` VALUES ('2450', '2449', 'ASPIRE', 'A');
INSERT INTO `marcas` VALUES ('2451', '2450', 'EVANS', 'A');
INSERT INTO `marcas` VALUES ('2452', '2451', 'MOTION COMPUTING', 'A');
INSERT INTO `marcas` VALUES ('2453', '2452', 'AIO', 'A');
INSERT INTO `marcas` VALUES ('2454', '2453', 'TAMA', 'A');
INSERT INTO `marcas` VALUES ('2455', '2454', 'GRANDVIEW', 'A');
INSERT INTO `marcas` VALUES ('2456', '2455', 'WILLIAMS SOUND', 'A');
INSERT INTO `marcas` VALUES ('2457', '2456', 'VERA', 'A');
INSERT INTO `marcas` VALUES ('2458', '2457', 'KELI', 'A');
INSERT INTO `marcas` VALUES ('2459', '2458', 'SHIMADZU', 'A');
INSERT INTO `marcas` VALUES ('2460', '2459', 'LASKO', 'A');
INSERT INTO `marcas` VALUES ('2461', '2460', 'LACTATE PLUS', 'A');
INSERT INTO `marcas` VALUES ('2462', '2461', 'NORDIC TRACK', 'A');
INSERT INTO `marcas` VALUES ('2463', '2462', 'SCHILLER', 'A');
INSERT INTO `marcas` VALUES ('2464', '2463', 'HEMOCUE', 'A');
INSERT INTO `marcas` VALUES ('2465', '2464', 'OMAUS', 'A');
INSERT INTO `marcas` VALUES ('2466', '2465', 'RLINK', 'A');
INSERT INTO `marcas` VALUES ('2467', '2466', 'DITEC', 'A');
INSERT INTO `marcas` VALUES ('2468', '2467', 'TRULINK', 'A');
INSERT INTO `marcas` VALUES ('2469', '2468', 'LUXVISION', 'A');
INSERT INTO `marcas` VALUES ('2470', '2469', 'AGIVENT', 'A');
INSERT INTO `marcas` VALUES ('2471', '2470', 'TRIMBLE', 'A');
INSERT INTO `marcas` VALUES ('2472', '2471', 'AUDIO MASTER', 'A');
INSERT INTO `marcas` VALUES ('2473', '2472', 'SPROUT', 'A');
INSERT INTO `marcas` VALUES ('2474', '2473', 'LEXICOM', 'A');
INSERT INTO `marcas` VALUES ('2475', '2474', 'EASYONE PLUS', 'A');
INSERT INTO `marcas` VALUES ('2476', '2475', 'LONBON', 'A');
INSERT INTO `marcas` VALUES ('2477', '2476', 'UNIFIED NETWORK CONTROLLER', 'A');
INSERT INTO `marcas` VALUES ('2478', '2477', 'GAUMARD', 'A');
INSERT INTO `marcas` VALUES ('2479', '2478', 'COMPEX', 'A');
INSERT INTO `marcas` VALUES ('2480', '2479', 'UNC', 'A');
INSERT INTO `marcas` VALUES ('2481', '2480', 'GAUMARD', 'A');
INSERT INTO `marcas` VALUES ('2482', '2481', 'MAKITA', 'A');
INSERT INTO `marcas` VALUES ('2483', '2482', 'RONG LONG', 'A');
INSERT INTO `marcas` VALUES ('2484', '2483', 'PIXIE', 'A');
INSERT INTO `marcas` VALUES ('2485', '2484', 'BK', 'A');
INSERT INTO `marcas` VALUES ('2486', '2485', 'WILDLIFE', 'A');
INSERT INTO `marcas` VALUES ('2487', '2486', 'NIHOH KOHDEN', 'A');
INSERT INTO `marcas` VALUES ('2488', '2487', 'SECTRA', 'A');
INSERT INTO `marcas` VALUES ('2489', '2488', 'ONE TOUCH', 'A');
INSERT INTO `marcas` VALUES ('2490', '2489', 'MASTERFLEX', 'A');
INSERT INTO `marcas` VALUES ('2491', '2490', 'GW INSTEK', 'A');
INSERT INTO `marcas` VALUES ('2492', '2491', 'WATER DIAM', 'A');
INSERT INTO `marcas` VALUES ('2493', '2492', 'NEEWER', 'A');
INSERT INTO `marcas` VALUES ('2494', '2493', 'HERMLE', 'A');
INSERT INTO `marcas` VALUES ('2495', '2494', 'ROCKER', 'A');
INSERT INTO `marcas` VALUES ('2496', '2495', 'KOREX', 'A');
INSERT INTO `marcas` VALUES ('2497', '2496', 'LOCH', 'A');
INSERT INTO `marcas` VALUES ('2498', '2497', 'TEKNO', 'A');
INSERT INTO `marcas` VALUES ('2499', '2498', 'DRIVE', 'A');
INSERT INTO `marcas` VALUES ('2500', '2499', 'ACTIVE', 'A');
INSERT INTO `marcas` VALUES ('2501', '2500', 'PEARL PIPETTES', 'A');
INSERT INTO `marcas` VALUES ('2502', '2501', 'AIRGAS', 'A');
INSERT INTO `marcas` VALUES ('2503', '2502', 'VEKTOR', 'A');
INSERT INTO `marcas` VALUES ('2504', '2503', 'WATHOW', 'A');
INSERT INTO `marcas` VALUES ('2505', '2504', 'PLOTWATCHER PRO', 'A');
INSERT INTO `marcas` VALUES ('2506', '2505', 'GREISINGER', 'A');
INSERT INTO `marcas` VALUES ('2507', '2506', 'KOKEN', 'A');
INSERT INTO `marcas` VALUES ('2508', '2507', 'HEARTSINE', 'A');
INSERT INTO `marcas` VALUES ('2509', '2508', 'JOSON-CARE', 'A');
INSERT INTO `marcas` VALUES ('2510', '2509', 'BLT', 'A');
INSERT INTO `marcas` VALUES ('2511', '2510', 'WALL MOUNT', 'A');
INSERT INTO `marcas` VALUES ('2512', '2511', 'DAIHATSU', 'A');
INSERT INTO `marcas` VALUES ('2513', '2512', 'ADE', 'A');
INSERT INTO `marcas` VALUES ('2514', '2513', 'LIMBS&THINGS', 'A');
INSERT INTO `marcas` VALUES ('2515', '2514', 'HID', 'A');
INSERT INTO `marcas` VALUES ('2516', '2515', 'ALIENWARE', 'A');
INSERT INTO `marcas` VALUES ('2517', '2516', 'LOCH', 'A');
INSERT INTO `marcas` VALUES ('2518', '2517', 'NEEDTEK', 'A');
INSERT INTO `marcas` VALUES ('2519', '2518', 'ROSCOE MEDICAL', 'A');
INSERT INTO `marcas` VALUES ('2520', '2519', 'CALCULATING', 'A');
INSERT INTO `marcas` VALUES ('2521', '2520', 'IP', 'A');
INSERT INTO `marcas` VALUES ('2522', '2521', 'CONRAD', 'A');
INSERT INTO `marcas` VALUES ('2523', '2522', 'LICOR', 'A');
INSERT INTO `marcas` VALUES ('2524', '2523', 'HHD', 'A');
INSERT INTO `marcas` VALUES ('2525', '2524', 'AXYGEN', 'A');
INSERT INTO `marcas` VALUES ('2526', '2525', 'DANTE', 'A');
INSERT INTO `marcas` VALUES ('2527', '2526', 'ERLAB', 'A');
INSERT INTO `marcas` VALUES ('2528', '2527', 'HUAWEI', 'A');
INSERT INTO `marcas` VALUES ('2529', '2528', 'TOPSCIEN', 'A');
INSERT INTO `marcas` VALUES ('2530', '2529', 'DELLEMC', 'A');
INSERT INTO `marcas` VALUES ('2531', '2530', 'DONALDSON TORIT', 'A');
INSERT INTO `marcas` VALUES ('2532', '2531', 'RAYTO', 'A');
INSERT INTO `marcas` VALUES ('2533', '2532', 'ZOMEI', 'A');
INSERT INTO `marcas` VALUES ('2534', '2533', 'MARIENFELD', 'A');
INSERT INTO `marcas` VALUES ('2535', '2534', 'INOX', 'A');
INSERT INTO `marcas` VALUES ('2536', '2535', 'TELLYES', 'A');
INSERT INTO `marcas` VALUES ('2537', '2536', 'APPIED-BIOSYSTEM', 'A');
INSERT INTO `marcas` VALUES ('2538', '2537', 'EASY CAST', 'A');
INSERT INTO `marcas` VALUES ('2539', '2538', 'HAMILTON BEACH', 'A');
INSERT INTO `marcas` VALUES ('2540', '2539', 'MET ONE', 'A');
INSERT INTO `marcas` VALUES ('2541', '2540', 'VORTEXER', 'A');
INSERT INTO `marcas` VALUES ('2542', '2541', 'PIPETTE', 'A');
INSERT INTO `marcas` VALUES ('2543', '2542', 'DINKO', 'A');
INSERT INTO `marcas` VALUES ('2544', '2543', 'SILICON POWER', 'A');
INSERT INTO `marcas` VALUES ('2545', '2544', 'LAB SCIENTIFIC', 'A');
INSERT INTO `marcas` VALUES ('2546', '2545', 'DIGOS', 'A');
INSERT INTO `marcas` VALUES ('2547', '2546', 'HOME CUE', 'A');
INSERT INTO `marcas` VALUES ('2548', '2547', 'OPC', 'A');
INSERT INTO `marcas` VALUES ('2549', '2548', 'ZOTEK', 'A');
INSERT INTO `marcas` VALUES ('2550', '2549', 'DURONIC', 'A');
INSERT INTO `marcas` VALUES ('2551', '2550', 'ATC', 'A');
INSERT INTO `marcas` VALUES ('2552', '2551', 'LARON', 'A');
INSERT INTO `marcas` VALUES ('2553', '2552', 'SHINSLON', 'A');
INSERT INTO `marcas` VALUES ('2554', '2553', 'ELC', 'A');
INSERT INTO `marcas` VALUES ('2672', '12', 'prueba', null);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(255) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '1', 'Home', 'home.php', '<i class=\'fas fa-home\'></i>');
INSERT INTO `menu` VALUES ('2', '2', 'Empresa', '', '<i class=\'fas fa-database\'></i>');
INSERT INTO `menu` VALUES ('3', '2.10', 'Datos Empresa', 'empresa.php', '');
INSERT INTO `menu` VALUES ('4', '2.20', 'Usuarios', 'usuarios.php', '');
INSERT INTO `menu` VALUES ('7', '6', 'Punto venta', '', '<i class=\'fas fa-shopping-bag\'></i>');
INSERT INTO `menu` VALUES ('8', '6.20', 'Facturar', 'cliente_pedido.php', null);
INSERT INTO `menu` VALUES ('13', '2.30', 'Accesos', 'accesos.php', '');
INSERT INTO `menu` VALUES ('17', '4', 'Articulo', '', '<i class=\'fas fa-box\'></i>');
INSERT INTO `menu` VALUES ('26', '4.10', 'Lista de articulos', 'lista_articulos.php', null);
INSERT INTO `menu` VALUES ('36', '2.40', 'Modulos y paginas', 'modulos_paginas.php', null);
INSERT INTO `menu` VALUES ('37', '4.20', 'Parametros de articulo', 'parametros_articulo.php', '');
INSERT INTO `menu` VALUES ('38', '5', 'Documentos electronicos', '', '<i class=\'fas fa-file\'></i>');
INSERT INTO `menu` VALUES ('39', '5.10', 'Kardex', 'kardex.php', null);
INSERT INTO `menu` VALUES ('45', '5.30', 'Lista de facturas', 'lista_facturas.php', null);
INSERT INTO `menu` VALUES ('46', '5.40', 'Lista de retenciones', 'lista_retenciones.php', null);
INSERT INTO `menu` VALUES ('47', '5.50', 'Lista nota de credito', 'lista_nota_credito.php', null);
INSERT INTO `menu` VALUES ('48', '5.60', 'lista guias de remision', 'lista_guia.php', null);
INSERT INTO `menu` VALUES ('49', '3', 'Cliente -  Proveedor', '', '<i class=\'fas fa-user\'></i>');
INSERT INTO `menu` VALUES ('51', '3.10', 'Clientes', 'cliente.php', null);
INSERT INTO `menu` VALUES ('52', '3.20', 'Proveedores', 'proveedores.php', null);
INSERT INTO `menu` VALUES ('53', '7', 'Carga de datos', '', '<i class=\'fas fa-database\'></i>');
INSERT INTO `menu` VALUES ('54', '7.10', 'Subir datos', 'subir_datos.php', null);
INSERT INTO `menu` VALUES ('55', '2.50', 'Secuenciales', 'secuenciales.php', null);

-- ----------------------------
-- Table structure for mesa
-- ----------------------------
DROP TABLE IF EXISTS `mesa`;
CREATE TABLE `mesa` (
  `id_mesa` int(255) NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `precio_uni` varchar(255) DEFAULT NULL,
  `porc_descuento` varchar(255) DEFAULT '0',
  `descuento` varchar(255) DEFAULT '0',
  `iva` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `porc_iva` decimal(8,4) DEFAULT NULL,
  `Serie_No` varchar(100) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `mesa` varchar(255) DEFAULT NULL,
  `servido` int(1) DEFAULT 0,
  `empresa` int(11) DEFAULT NULL,
  `APP_CLIENTE` varchar(13) DEFAULT '',
  `llevar` bit(1) DEFAULT b'0',
  `procesar` bit(1) DEFAULT b'0',
  `facturado` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id_mesa`),
  KEY `FK_PRODUCTO_LINEA` (`referencia`) USING BTREE,
  KEY `FK_EMPRESA MESA` (`empresa`),
  CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mesa_ibfk_2` FOREIGN KEY (`referencia`) REFERENCES `productos` (`referencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of mesa
-- ----------------------------

-- ----------------------------
-- Table structure for nota_credito
-- ----------------------------
DROP TABLE IF EXISTS `nota_credito`;
CREATE TABLE `nota_credito` (
  `id_nota_credito` int(11) NOT NULL AUTO_INCREMENT,
  `numero_nc` varchar(255) DEFAULT NULL,
  `fecha_nc` date DEFAULT NULL,
  `serie_nc` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `autorizacion_nc` varchar(255) DEFAULT NULL,
  `fecha_doc` date DEFAULT NULL,
  `serie_doc` varchar(255) DEFAULT NULL,
  `numero_doc` varchar(255) DEFAULT NULL,
  `autorizacion_doc` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `porc_iva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota_credito`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of nota_credito
-- ----------------------------
INSERT INTO `nota_credito` VALUES ('2', '3', '2023-03-24', '001-002', '41', '2403202304070216417900110010020000000031234567811', '2023-03-24', '001-009', '1', '987654345676543', 'dewvolucion de mercaderi', '6', 'AN', '0.12');
INSERT INTO `nota_credito` VALUES ('4', '5', '2023-03-24', '001-002', '43', '2403202304070216417900110010020000000051234567810', '2023-03-25', '001-002', '12', '', 'mo', '6', 'R', '0.12');
INSERT INTO `nota_credito` VALUES ('5', '6', '2023-03-24', '001-002', '43', '2403202304070216417900110010020000000061234567816', '2023-03-24', '001-002', '12', '', 'devolucion ', '6', 'A', '0.12');
INSERT INTO `nota_credito` VALUES ('6', '7', '2023-03-24', '001-002', '62', '0702164179001', '2023-03-24', '-', '', '', '', '6', 'P', '0.12');
INSERT INTO `nota_credito` VALUES ('7', '1', '2023-04-11', '001-001', '42', '1104202304070216417900110010010000000011234567811', '2023-04-11', '001-001', '2', '1234567890', 'devolucion', '6', 'A', '0.12');

-- ----------------------------
-- Table structure for notificaciones
-- ----------------------------
DROP TABLE IF EXISTS `notificaciones`;
CREATE TABLE `notificaciones` (
  `id_noti` int(255) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `cuerpo` varchar(255) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `leido` int(1) DEFAULT 0,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_noti`),
  KEY `FK_USUARIO_NOTIFICACION` (`usuario`) USING BTREE,
  KEY `FK_EMPRESA_NOTIFICACION` (`empresa`) USING BTREE,
  CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `notificaciones_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of notificaciones
-- ----------------------------

-- ----------------------------
-- Table structure for pagos_caja
-- ----------------------------
DROP TABLE IF EXISTS `pagos_caja`;
CREATE TABLE `pagos_caja` (
  `id_pagos` int(255) NOT NULL AUTO_INCREMENT,
  `valor_pago` float DEFAULT NULL,
  `id_factura` int(255) DEFAULT NULL,
  `id_forma_pago` int(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `mesa` varchar(11) DEFAULT '1',
  `detalle` varchar(255) DEFAULT NULL,
  `inicial` bit(1) DEFAULT b'0',
  `estado` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id_pagos`),
  KEY `FK_FACTURA_PAGOS` (`id_factura`) USING BTREE,
  KEY `FK_FORMA_PAGOS_PAGOS` (`id_forma_pago`) USING BTREE,
  CONSTRAINT `pagos_caja_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pagos_caja_ibfk_2` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of pagos_caja
-- ----------------------------
INSERT INTO `pagos_caja` VALUES ('180', '1', null, null, '2022-10-04', '1', 'INICIO DE CAJA', '', '\0');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id_productos` int(255) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio_uni` decimal(8,4) DEFAULT NULL,
  `iva` int(1) DEFAULT 0,
  `stock` varchar(255) DEFAULT NULL,
  `servicio` bit(1) DEFAULT b'0',
  `inventario` int(1) DEFAULT 0,
  `producto_terminado` bit(1) DEFAULT b'0',
  `peso` decimal(8,5) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `codigo_aux` varchar(255) DEFAULT '0',
  `codigo_bar` varchar(255) DEFAULT '0',
  `id_empresa` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  `modelo` varchar(11) DEFAULT '',
  `uni_medida` varchar(50) DEFAULT 'UNI',
  `color` int(11) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `sucursal` int(11) DEFAULT NULL,
  `RFID` varchar(255) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `descripcion2` varchar(255) DEFAULT NULL,
  `max` int(255) DEFAULT 0,
  `min` int(255) DEFAULT 0,
  `serie_pro` varchar(100) DEFAULT '',
  `promocion` bit(1) DEFAULT b'0',
  `materia_prima` bit(1) DEFAULT b'0',
  `paquetes` varchar(255) DEFAULT NULL,
  `xpaquetes` varchar(255) DEFAULT NULL,
  `sueltos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_productos`),
  KEY `referencia` (`referencia`) USING BTREE,
  KEY `FK_EMPRESA_PRODUCTO` (`id_empresa`) USING BTREE,
  KEY `FK_CATEGORIA_PRODUCTO` (`categoria`) USING BTREE,
  KEY `FK_MARCA_PROPDUCTO` (`marca`) USING BTREE,
  KEY `FK_GENERO_PRODUCTO` (`genero`) USING BTREE,
  KEY `FK_COLOR_PRODUCTO` (`color`) USING BTREE,
  KEY `FK_ESTADO_PRODUCTO` (`estado`) USING BTREE,
  KEY `FK_SUCURSAL_PRODUCTO` (`sucursal`) USING BTREE,
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`color`) REFERENCES `colores` (`ID_COLORES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`estado`) REFERENCES `estado` (`ID_ESTADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_5` FOREIGN KEY (`genero`) REFERENCES `genero` (`ID_GENERO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_6` FOREIGN KEY (`marca`) REFERENCES `marcas` (`ID_MARCA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `productos_ibfk_7` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id_sucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('36', '01.01.36', 'Queso', '100.0000', '0', '100', '\0', '1', '', '0.00000', '15', '0', '111111111', '6', '../img/articulos/product-10.jpg', null, null, 'UNI', null, null, null, '8', null, '2022-03-26', null, '100', '10', null, '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('37', '01.01.37', 'Pollo  1', '150.0000', '0', '100', '\0', '1', '', '0.00000', '15', '0', '111111111', '6', '../img/articulos/product-10.jpg', '1', '.', 'UNI', '1', '1', '3', '8', '.', '2022-03-26', '.', '100', '10', '.', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('105', '10.23.25', 'servicio de trasporte', '1.5000', '1', '', '', '0', '\0', '0.00000', '14', '', '', '6', null, '1', '', '', '1', '1', '1', '8', '', '2022-10-19', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('107', '01.01.001', 'SERVICIOS PROFESIONALES', '0.0000', '1', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-01-05', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('108', '01.01.002', 'SOPORTE EN DESARROLLO PHP Y ENVIO MASIVO DE PI', '0.0000', '1', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-01-05', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('109', '01.01.03', 'Horas de soporte de infraestructura.(Levantamiento de nuevo host con 1 VM administrado por Hyper-V) ', '44.7000', '1', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-01-26', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('110', '01.01.004', 'Envio de correos masivos (Enero)', '107.1400', '1', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-02-08', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('113', '01.01.005', 'Desarrollo', '0.0000', '1', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-02-27', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('114', '01.01.006', 'mantenimiento', '0.0000', '0', '', '\0', '0', '', '0.00000', '16', '', '', '7', null, '1', '', '', '1', '1', '1', '9', '', '2023-03-03', '', '0', '0', '', '\0', '\0', null, null, null);
INSERT INTO `productos` VALUES ('119', '001.001', 'prueba 1', '0.0000', '0', '', '\0', '0', '', '0.00000', '17', '', '', '30', null, '1', '', '', '1', '1', '1', '23', '', '2023-04-11', '', '0', '0', '', '\0', '\0', null, null, null);

-- ----------------------------
-- Table structure for promos
-- ----------------------------
DROP TABLE IF EXISTS `promos`;
CREATE TABLE `promos` (
  `id_promos` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorias` int(255) DEFAULT NULL,
  `id_producto` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_promos`),
  KEY `FK_CATEGIORIAS_PROMOS` (`id_categorias`),
  KEY `FK_CATEGORIAS_PRODUCTO` (`id_producto`),
  CONSTRAINT `promos_ibfk_1` FOREIGN KEY (`id_categorias`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `promos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of promos
-- ----------------------------

-- ----------------------------
-- Table structure for recetas
-- ----------------------------
DROP TABLE IF EXISTS `recetas`;
CREATE TABLE `recetas` (
  `id_recetas` int(255) NOT NULL AUTO_INCREMENT,
  `id_producto` int(255) DEFAULT NULL,
  `id_materia_prima` int(255) DEFAULT NULL,
  `peso` varchar(255) DEFAULT '',
  `cantidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_recetas`),
  KEY `ID_RECETAS_PRODUCTOS` (`id_producto`),
  KEY `ID_RECETAS_MATERIA_PRIMA` (`id_materia_prima`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_materia_prima`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recetas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of recetas
-- ----------------------------

-- ----------------------------
-- Table structure for retenciones
-- ----------------------------
DROP TABLE IF EXISTS `retenciones`;
CREATE TABLE `retenciones` (
  `id_retenciones` int(11) NOT NULL AUTO_INCREMENT,
  `serie` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `idproveedor` varchar(255) DEFAULT NULL,
  `codigoUsuario` varchar(255) DEFAULT NULL,
  `autorizacion` varchar(255) DEFAULT '',
  `fechaEmision` date DEFAULT NULL,
  `EstablecimientoFac` varchar(255) DEFAULT NULL,
  `puntoventa_Fac` varchar(255) DEFAULT NULL,
  `numeroFac` varchar(255) DEFAULT NULL,
  `autorizacionFac` varchar(50) DEFAULT '',
  `emisionFac` date DEFAULT NULL,
  `registroFac` date DEFAULT NULL,
  `VencimientoFac` date DEFAULT NULL,
  `No_IVA` varchar(255) DEFAULT NULL,
  `tarifa0` varchar(255) DEFAULT NULL,
  `tarifa12` varchar(255) DEFAULT NULL,
  `valor_ICE` varchar(255) DEFAULT NULL,
  `estadoRet` char(2) DEFAULT '',
  `id_empresa` varchar(255) DEFAULT NULL,
  `montoIva` varchar(255) DEFAULT '',
  `PagoLocExt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_retenciones`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of retenciones
-- ----------------------------
INSERT INTO `retenciones` VALUES ('12', '001-002', '24', '62', '21', '280120230707021641790011001002000000024123456', '2023-01-28', '001', '002', '123', '0000000001', '2023-01-28', '2023-01-28', '2023-01-28', '120', '130', '140', '150', 'AN', '6', '16.80', '01');
INSERT INTO `retenciones` VALUES ('13', '001-002', '25', '62', '21', '2901202307070216417900110010020000000251234567819', '2023-01-29', '001', '002', '3', '00000000001', '2023-01-29', '2023-01-29', '2023-01-29', '120', '130', '140', '150', 'A', '6', '16.80', '01');
INSERT INTO `retenciones` VALUES ('19', '001-002', '31', '43', '18', '2603202307070216417900110010020000000311234567810', '2023-03-26', '001', '001', '000000001', '0000000001', '2023-03-25', '2023-03-25', '2023-03-25', '120', '120', '0.00', '0.00', 'R', '6', '0.00', '01');
INSERT INTO `retenciones` VALUES ('22', '001-002', '34', '43', '18', '2603202307070216417900110010020000000341234567817', '2023-03-26', '001', '', '', '', '2023-03-26', '2023-03-26', '2023-03-26', '0.00', '12', '0.00', '0.00', 'R', '6', '0.00', '01');
INSERT INTO `retenciones` VALUES ('23', '001-001', '35', '75', '18', '0702164179001', '2023-04-12', '001', '001', '000000001', '0000000001', '2023-04-12', '2023-04-12', '2023-04-12', '120', '130', '140', '150', 'P', '6', '16.80', '01');
INSERT INTO `retenciones` VALUES ('24', '001-001', '1', '62', '18', '0702164179001', '2023-04-12', '001', '001', '000000001', '0000000001', '2023-04-12', '2023-04-12', '2023-04-12', '0.00', '120', '130', '140', 'P', '6', '15.60', '01');
INSERT INTO `retenciones` VALUES ('25', '001-002', '36', '62', '18', '0702164179001', '2023-04-12', '001', '001', '000000001', '0000000001', '2023-04-12', '2023-04-12', '2023-04-12', '120', '130', '120', '150', 'P', '6', '14.40', '01');
INSERT INTO `retenciones` VALUES ('26', '001-001', '2', '51', '18', '1104202307070216417900110010010000000021234567814', '2023-04-11', '001', '008', '000000004', '11234567890', '2023-04-11', '2023-04-11', '2023-04-11', '0.00', '140', '120', '0.00', 'A', '6', '14.40', '01');
INSERT INTO `retenciones` VALUES ('27', '001-001', '3', '62', '18', '1104202307070216417900110010010000000031234567811', '2023-04-11', '001', '001', '000000001', '0000000001', '2023-04-11', '2023-04-11', '2023-04-11', '110', '120', '130', '0.00', 'A', '6', '15.60', '01');

-- ----------------------------
-- Table structure for retenciones_impuestos
-- ----------------------------
DROP TABLE IF EXISTS `retenciones_impuestos`;
CREATE TABLE `retenciones_impuestos` (
  `id_impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_impuesto` varchar(255) DEFAULT NULL,
  `base_imponible` varchar(255) DEFAULT NULL,
  `porcentajeRet` varchar(255) DEFAULT NULL,
  `valorRetenido` varchar(255) DEFAULT '',
  `serieRet` varchar(255) DEFAULT '',
  `NoRetencion` varchar(255) DEFAULT NULL,
  `AutorizacionRet` varchar(255) DEFAULT NULL,
  `FechaRet` date DEFAULT NULL,
  `FacturaEstab` varchar(255) DEFAULT NULL,
  `FacturaPunto` varchar(255) DEFAULT NULL,
  `NoFactura` varchar(255) DEFAULT NULL,
  `IdProveedor` varchar(255) DEFAULT NULL,
  `codigoUsuario` varchar(255) DEFAULT NULL,
  `Cta_retencion` varchar(255) DEFAULT NULL,
  `bienes_servicios` char(1) DEFAULT '0',
  `codigo_retencion` varchar(255) DEFAULT '.',
  `id_empresa` varchar(255) DEFAULT NULL,
  `PagoLocExt` varchar(10) DEFAULT '01',
  `por_bienes` char(1) DEFAULT '\0',
  `por_servicios` char(1) DEFAULT '\0',
  PRIMARY KEY (`id_impuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of retenciones_impuestos
-- ----------------------------
INSERT INTO `retenciones_impuestos` VALUES ('114', 'RETENCION IVA 10% BIENES', '7.20', '10', '0.72', '001-002', '24', '1234567891234', '2023-01-28', '001', '002', '123', '62', '21', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('115', 'RETENCION 20% SERVICIOS', '9.60', '20', '1.92', '001-002', '24', '1234567891234', '2023-01-28', '001', '002', '123', '62', '21', null, '1', '.', '6', '01', '0', '1');
INSERT INTO `retenciones_impuestos` VALUES ('116', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '390.00', '10', '39.00', '001-002', '24', '1234567891234', '2023-01-28', '001', '002', '123', '62', '21', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('117', 'RETENCION IVA 10% BIENES', '7.20', '10', '0.72', '001-002', '25', '1234567891234', '2023-01-29', '001', '002', '3', '62', '21', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('118', 'RETENCION 20% SERVICIOS', '9.60', '20', '1.92', '001-002', '25', '1234567891234', '2023-01-29', '001', '002', '3', '62', '21', null, '1', '.', '6', '01', '0', '1');
INSERT INTO `retenciones_impuestos` VALUES ('119', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '390.00', '10', '39.00', '001-002', '25', '1234567891234', '2023-01-29', '001', '002', '3', '62', '21', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('120', 'RETENCION IVA 10% BIENES', '7.20', '10', '0.72', '001-002', '26', '1234567891234', '2023-01-29', '001', '001', '000000001', '62', '21', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('121', 'RETENCION 20% SERVICIOS', '10.80', '20', '2.16', '001-002', '26', '1234567891234', '2023-01-29', '001', '001', '000000001', '62', '21', null, '1', '.', '6', '01', '0', '1');
INSERT INTO `retenciones_impuestos` VALUES ('122', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '400.00', '10', '40.00', '001-002', '26', '1234567891234', '2023-01-29', '001', '001', '000000001', '62', '21', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('123', 'RETENCION IVA 10% BIENES', '19.20', '10', '1.92', '001-002', '27', '1234567891234', '2023-01-30', '001', '001', '000000001', '62', '21', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('124', 'RETENCION IVA 10% BIENES', '19.20', '10', '1.92', '001-002', '28', '1234567891234', '2023-01-30', '001', '001', '000000001', '62', '21', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('126', 'Servicios prestados por medios de comunicacion y agencias de publicidad', '450.00', '1.75', '7.88', '001-002', '27', '1234567891234', '2023-01-30', '001', '001', '000000001', '62', '21', null, '0', '309', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('127', 'Servicios predomina el intelecto no relacionados con el titulo profesional', '222.00', '8', '17.76', '001-002', '29', '1234567891234', '2023-03-25', '001', '001', '000000001', '62', '18', null, '0', '304', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('128', 'Honorarios y demas pagos por servicios de docencia', '12.00', '8', '0.96', '001-002', '30', '1234567891234', '2023-03-26', '001', '001', '000000001', '41', '18', null, '0', '304E', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('131', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '240.00', '10', '24.00', '001-002', '31', '1234567891234', '2023-03-26', '001', '001', '000000001', '43', '18', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('132', 'Servicios predomina el intelecto no relacionados con el titulo profesional', '6.00', '8', '0.48', '001-002', '32', '1234567891234', '2023-03-25', '001', '001', '000000001', '62', '18', null, '0', '304', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('133', 'RETENCION IVA 10% BIENES', '7.21', '10', '0.72', '001-002', '33', '1234567891234', '2023-03-25', '001', '001', '000000001', '41', '18', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('134', 'RETENCION 20% SERVICIOS', '9.59', '20', '1.92', '001-002', '33', '1234567891234', '2023-03-25', '001', '001', '000000001', '41', '18', null, '1', '.', '6', '01', '0', '1');
INSERT INTO `retenciones_impuestos` VALUES ('135', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '390.00', '10', '39.00', '001-002', '33', '1234567891234', '2023-03-25', '001', '001', '000000001', '41', '18', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('136', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '12.00', '10', '1.20', '001-002', '34', '0702164179001', '2023-03-25', '001', '', '', '43', '18', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('137', 'RETENCION IVA 10% BIENES', '16.80', '10', '1.68', '001-001', '35', '0702164179001', '2023-04-12', '001', '001', '000000001', '75', '18', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('138', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '390.00', '10', '39.00', '001-001', '35', '0702164179001', '2023-04-12', '001', '001', '000000001', '75', '18', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('139', 'RETENCION IVA 10% BIENES', '15.60', '10', '1.56', '001-001', '1', '0702164179001', '2023-04-12', '001', '001', '000000001', '62', '18', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('140', 'RETENCION IVA 10% BIENES', '14.40', '10', '1.44', '001-002', '36', '0702164179001', '2023-04-12', '001', '001', '000000001', '62', '18', null, '1', '.', '6', '01', '1', '0');
INSERT INTO `retenciones_impuestos` VALUES ('141', 'Servicios predomina el intelecto no relacionados con el titulo profesional', '370.00', '8', '29.60', '001-002', '36', '0702164179001', '2023-04-12', '001', '001', '000000001', '62', '18', null, '0', '304', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('142', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '260.00', '10', '26.00', '001-001', '2', '0702164179001', '2023-04-12', '001', '008', '000000004', '51', '18', null, '0', '303', '6', '01', '0', '0');
INSERT INTO `retenciones_impuestos` VALUES ('143', 'Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '360.00', '10', '36.00', '001-001', '3', '0702164179001', '2023-04-12', '001', '001', '000000001', '62', '18', null, '0', '303', '6', '01', '0', '0');

-- ----------------------------
-- Table structure for sucursales
-- ----------------------------
DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE `sucursales` (
  `id_sucursal` int(255) NOT NULL AUTO_INCREMENT,
  `telefono_s` varchar(20) DEFAULT '',
  `direccion_s` varchar(255) DEFAULT '',
  `serie_s` varchar(100) DEFAULT '',
  `empresa` int(11) DEFAULT NULL,
  `email_s` varchar(100) DEFAULT NULL,
  `nombre_sucursal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  KEY `FK_SUCURSAL_EMPRESA` (`empresa`) USING BTREE,
  CONSTRAINT `sucursales_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sucursales
-- ----------------------------
INSERT INTO `sucursales` VALUES ('7', '', '', '001-001', '5', null, 'sucursal principal');
INSERT INTO `sucursales` VALUES ('8', '0987456321', 'direccion', '001-002', '6', 'example@example.com', 'sucursal principal');
INSERT INTO `sucursales` VALUES ('9', '', '', '001-001', '7', 'javier.farinango92@gmail.com', 'SUCURSAL PRINCIPAL');
INSERT INTO `sucursales` VALUES ('23', '0987654321', 'la madrid', '001-001', '30', 'example.com', 'SUCURSAL PRINCIPAL');
INSERT INTO `sucursales` VALUES ('25', '0987242579', 'jipiro y santa barbara', '001-001', '7', 'javier.farinango92@gmail.com', 'SUCURSAL PRINCIPAL');

-- ----------------------------
-- Table structure for tabla_naciones
-- ----------------------------
DROP TABLE IF EXISTS `tabla_naciones`;
CREATE TABLE `tabla_naciones` (
  `Codigo` varchar(5) DEFAULT NULL,
  `Descripcion_Rubro` varchar(35) DEFAULT NULL,
  `CPais` varchar(3) DEFAULT NULL,
  `CRegion` varchar(1) DEFAULT NULL,
  `CProvincia` varchar(2) DEFAULT NULL,
  `CCiudad` varchar(2) DEFAULT NULL,
  `TR` varchar(1) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_Tabla_Naciones` (`Codigo`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tabla_naciones
-- ----------------------------
INSERT INTO `tabla_naciones` VALUES ('0', 'ESTADOS UNIDOS', '001', '.', '.', '.', 'N', '1');
INSERT INTO `tabla_naciones` VALUES ('0', 'CANADA', '002', '.', '.', '.', 'N', '2');
INSERT INTO `tabla_naciones` VALUES ('0', 'PUERTO RICO', '003', '.', '.', '.', 'N', '3');
INSERT INTO `tabla_naciones` VALUES ('0', 'REP. DOMINICANA', '004', '.', '.', '.', 'N', '4');
INSERT INTO `tabla_naciones` VALUES ('0', 'JAPON', '007', '.', '.', '.', 'N', '5');
INSERT INTO `tabla_naciones` VALUES ('0', 'KOREA', '008', '.', '.', '.', 'N', '6');
INSERT INTO `tabla_naciones` VALUES ('0', 'EEUU', '011', '.', '.', '.', 'N', '7');
INSERT INTO `tabla_naciones` VALUES ('0', 'HOLANDA', '031', '.', '.', '.', 'N', '8');
INSERT INTO `tabla_naciones` VALUES ('0', 'FRANCIA/MONACO', '033', '.', '.', '.', 'N', '9');
INSERT INTO `tabla_naciones` VALUES ('0', 'ESPA3/4A', '034', '.', '.', '.', 'N', '10');
INSERT INTO `tabla_naciones` VALUES ('0', 'ITALIA', '039', '.', '.', '.', 'N', '11');
INSERT INTO `tabla_naciones` VALUES ('0', 'GRAN BRETAoA', '044', '.', '.', '.', 'N', '12');
INSERT INTO `tabla_naciones` VALUES ('0', 'ALEMANIA', '049', '.', '.', '.', 'N', '13');
INSERT INTO `tabla_naciones` VALUES ('0', 'PERU', '051', '.', '.', '.', 'N', '14');
INSERT INTO `tabla_naciones` VALUES ('0', 'MEXICO', '052', '.', '.', '.', 'N', '15');
INSERT INTO `tabla_naciones` VALUES ('0', 'CUBA', '053', '.', '.', '.', 'N', '16');
INSERT INTO `tabla_naciones` VALUES ('0', 'ARGENTINA', '054', '.', '.', '.', 'N', '17');
INSERT INTO `tabla_naciones` VALUES ('0', 'BRASIL', '055', '.', '.', '.', 'N', '18');
INSERT INTO `tabla_naciones` VALUES ('0', 'CHILE', '056', '.', '.', '.', 'N', '19');
INSERT INTO `tabla_naciones` VALUES ('0', 'COLOMBIA', '057', '.', '.', '.', 'N', '20');
INSERT INTO `tabla_naciones` VALUES ('0', 'VENEZUELA', '058', '.', '.', '.', 'N', '21');
INSERT INTO `tabla_naciones` VALUES ('0', 'PAKISTAN', '101', '.', '.', '.', 'N', '22');
INSERT INTO `tabla_naciones` VALUES ('0', 'COLOMBIA', '301', '.', '.', '.', 'N', '23');
INSERT INTO `tabla_naciones` VALUES ('0', 'GUATEMALA', '502', '.', '.', '.', 'N', '24');
INSERT INTO `tabla_naciones` VALUES ('0', 'EL SALVADOR', '503', '.', '.', '.', 'N', '25');
INSERT INTO `tabla_naciones` VALUES ('0', 'HONDURAS', '504', '.', '.', '.', 'N', '26');
INSERT INTO `tabla_naciones` VALUES ('0', 'NICARAGUA', '505', '.', '.', '.', 'N', '27');
INSERT INTO `tabla_naciones` VALUES ('0', 'COSTA RICA', '506', '.', '.', '.', 'N', '28');
INSERT INTO `tabla_naciones` VALUES ('0', 'PANAMA', '507', '.', '.', '.', 'N', '29');
INSERT INTO `tabla_naciones` VALUES ('0', 'RUSIA', '577', '.', '.', '.', 'N', '30');
INSERT INTO `tabla_naciones` VALUES ('0', 'BOLIVIA', '591', '.', '.', '.', 'N', '31');
INSERT INTO `tabla_naciones` VALUES ('0', 'ECUADOR', '593', '.', '.', '.', 'N', '32');
INSERT INTO `tabla_naciones` VALUES ('0', 'PARAGUAY', '595', '.', '.', '.', 'N', '33');
INSERT INTO `tabla_naciones` VALUES ('0', 'URUGUAY', '598', '.', '.', '.', 'N', '34');
INSERT INTO `tabla_naciones` VALUES ('0', 'CHINA', '599', '.', '.', '.', 'N', '35');
INSERT INTO `tabla_naciones` VALUES ('0', 'HUNGRIA', '600', '.', '.', '.', 'N', '36');
INSERT INTO `tabla_naciones` VALUES ('0', 'PORTUGAL', '601', '.', '.', '.', 'N', '37');
INSERT INTO `tabla_naciones` VALUES ('0', 'SUECIA', '602', '.', '.', '.', 'N', '38');
INSERT INTO `tabla_naciones` VALUES ('0', 'SUIZA', '603', '.', '.', '.', 'N', '39');
INSERT INTO `tabla_naciones` VALUES ('0', 'BELGICA', '604', '.', '.', '.', 'N', '40');
INSERT INTO `tabla_naciones` VALUES ('0', 'SUDAFRICA', '605', '.', '.', '.', 'N', '41');
INSERT INTO `tabla_naciones` VALUES ('0', 'OTRO', '999', '.', '.', '.', 'N', '42');
INSERT INTO `tabla_naciones` VALUES ('1', 'COSTA', '593', '1', '.', '.', 'R', '43');
INSERT INTO `tabla_naciones` VALUES ('107', 'EL ORO', '593', '1', '07', '.', 'P', '44');
INSERT INTO `tabla_naciones` VALUES ('10701', 'MACHALA', '593', '1', '07', '01', 'C', '45');
INSERT INTO `tabla_naciones` VALUES ('10702', 'ARENILLAS', '593', '1', '07', '02', 'C', '46');
INSERT INTO `tabla_naciones` VALUES ('10703', 'ATAHUALPA', '593', '1', '07', '03', 'C', '47');
INSERT INTO `tabla_naciones` VALUES ('10704', 'BALSAS', '593', '1', '07', '04', 'C', '48');
INSERT INTO `tabla_naciones` VALUES ('10705', 'CHILLA', '593', '1', '07', '05', 'C', '49');
INSERT INTO `tabla_naciones` VALUES ('10706', 'EL GUABO', '593', '1', '07', '06', 'C', '50');
INSERT INTO `tabla_naciones` VALUES ('10707', 'HUAQUILLAS', '593', '1', '07', '07', 'C', '51');
INSERT INTO `tabla_naciones` VALUES ('10708', 'MARCABELI', '593', '1', '07', '08', 'C', '52');
INSERT INTO `tabla_naciones` VALUES ('10709', 'PASAJE', '593', '1', '07', '09', 'C', '53');
INSERT INTO `tabla_naciones` VALUES ('10710', 'PINAS', '593', '1', '07', '10', 'C', '54');
INSERT INTO `tabla_naciones` VALUES ('10711', 'PORTOVELO', '593', '1', '07', '11', 'C', '55');
INSERT INTO `tabla_naciones` VALUES ('10712', 'SANTA ROSA', '593', '1', '07', '12', 'C', '56');
INSERT INTO `tabla_naciones` VALUES ('10713', 'ZARUMA', '593', '1', '07', '13', 'C', '57');
INSERT INTO `tabla_naciones` VALUES ('10714', 'LAS LAJAS', '593', '1', '07', '14', 'C', '58');
INSERT INTO `tabla_naciones` VALUES ('108', 'ESMERALDAS', '593', '1', '08', '.', 'P', '59');
INSERT INTO `tabla_naciones` VALUES ('10801', 'ESMERALDAS', '593', '1', '08', '01', 'C', '60');
INSERT INTO `tabla_naciones` VALUES ('10802', 'ELOY ALFARO', '593', '1', '08', '02', 'C', '61');
INSERT INTO `tabla_naciones` VALUES ('10803', 'MUISNE', '593', '1', '08', '03', 'C', '62');
INSERT INTO `tabla_naciones` VALUES ('10804', 'QUININDE', '593', '1', '08', '04', 'C', '63');
INSERT INTO `tabla_naciones` VALUES ('10805', 'SAN LORENZO', '593', '1', '08', '05', 'C', '64');
INSERT INTO `tabla_naciones` VALUES ('10806', 'ATACAMES', '593', '1', '08', '06', 'C', '65');
INSERT INTO `tabla_naciones` VALUES ('10807', 'RIOVERDE', '593', '1', '08', '07', 'C', '66');
INSERT INTO `tabla_naciones` VALUES ('109', 'GUAYAS', '593', '1', '09', '.', 'P', '67');
INSERT INTO `tabla_naciones` VALUES ('10901', 'GUAYAQUIL', '593', '1', '09', '01', 'C', '68');
INSERT INTO `tabla_naciones` VALUES ('10902', 'ALFREDO BAQUERIZO MORENO', '593', '1', '09', '02', 'C', '69');
INSERT INTO `tabla_naciones` VALUES ('10903', 'BALAO', '593', '1', '09', '03', 'C', '70');
INSERT INTO `tabla_naciones` VALUES ('10904', 'BALZAR', '593', '1', '09', '04', 'C', '71');
INSERT INTO `tabla_naciones` VALUES ('10905', 'COLIMES', '593', '1', '09', '05', 'C', '72');
INSERT INTO `tabla_naciones` VALUES ('10906', 'DAULE', '593', '1', '09', '06', 'C', '73');
INSERT INTO `tabla_naciones` VALUES ('10907', 'DURAN', '593', '1', '09', '07', 'C', '74');
INSERT INTO `tabla_naciones` VALUES ('10908', 'EL EMPALME', '593', '1', '09', '08', 'C', '75');
INSERT INTO `tabla_naciones` VALUES ('10909', 'EL TRIUNFO', '593', '1', '09', '09', 'C', '76');
INSERT INTO `tabla_naciones` VALUES ('10910', 'MILAGRO', '593', '1', '09', '10', 'C', '77');
INSERT INTO `tabla_naciones` VALUES ('10911', 'NARANJAL', '593', '1', '09', '11', 'C', '78');
INSERT INTO `tabla_naciones` VALUES ('10912', 'NARANJITO', '593', '1', '09', '12', 'C', '79');
INSERT INTO `tabla_naciones` VALUES ('10913', 'PALESTINA', '593', '1', '09', '13', 'C', '80');
INSERT INTO `tabla_naciones` VALUES ('10915', 'SALINAS', '593', '1', '09', '15', 'C', '81');
INSERT INTO `tabla_naciones` VALUES ('10916', 'SAMBORONDON', '593', '1', '09', '16', 'C', '82');
INSERT INTO `tabla_naciones` VALUES ('10917', 'SANTA ELENA', '593', '1', '09', '17', 'C', '83');
INSERT INTO `tabla_naciones` VALUES ('10918', 'SANTA LUCIA', '593', '1', '09', '18', 'C', '84');
INSERT INTO `tabla_naciones` VALUES ('10919', 'URBINA JADO', '593', '1', '09', '19', 'C', '85');
INSERT INTO `tabla_naciones` VALUES ('10920', 'SAN JACINTO DE YAGUACHI', '593', '1', '09', '20', 'C', '86');
INSERT INTO `tabla_naciones` VALUES ('10921', 'PLAYAS [GENERAL VILLAMIL]', '593', '1', '09', '21', 'C', '87');
INSERT INTO `tabla_naciones` VALUES ('10922', 'SIMON BOLIVAR', '593', '1', '09', '22', 'C', '88');
INSERT INTO `tabla_naciones` VALUES ('10923', 'CORONEL MARCELINO MARIDUENA', '593', '1', '09', '23', 'C', '89');
INSERT INTO `tabla_naciones` VALUES ('10924', 'LOMAS DE SARGENTILLO', '593', '1', '09', '24', 'C', '90');
INSERT INTO `tabla_naciones` VALUES ('10925', 'NOBOL [VICENTE PIEDRAHITA]', '593', '1', '09', '25', 'C', '91');
INSERT INTO `tabla_naciones` VALUES ('10926', 'LA LIBERTAD', '593', '1', '09', '26', 'C', '92');
INSERT INTO `tabla_naciones` VALUES ('10927', 'GENERAL ANTONIO ELIZALDE [BUCAY]', '593', '1', '09', '27', 'C', '93');
INSERT INTO `tabla_naciones` VALUES ('10928', 'ISIDRO AYORA', '593', '1', '09', '28', 'C', '94');
INSERT INTO `tabla_naciones` VALUES ('112', 'LOS RIOS', '593', '1', '12', '.', 'P', '95');
INSERT INTO `tabla_naciones` VALUES ('11201', 'BABAHOYO', '593', '1', '12', '01', 'C', '96');
INSERT INTO `tabla_naciones` VALUES ('11202', 'BABA', '593', '1', '12', '02', 'C', '97');
INSERT INTO `tabla_naciones` VALUES ('11203', 'MONTALVO', '593', '1', '12', '03', 'C', '98');
INSERT INTO `tabla_naciones` VALUES ('11204', 'PUEBLO VIEJO', '593', '1', '12', '04', 'C', '99');
INSERT INTO `tabla_naciones` VALUES ('11205', 'QUEVEDO', '593', '1', '12', '05', 'C', '100');
INSERT INTO `tabla_naciones` VALUES ('11206', 'URDANETE', '593', '1', '12', '06', 'C', '101');
INSERT INTO `tabla_naciones` VALUES ('11207', 'VENTANAS', '593', '1', '12', '07', 'C', '102');
INSERT INTO `tabla_naciones` VALUES ('11208', 'VINCES', '593', '1', '12', '08', 'C', '103');
INSERT INTO `tabla_naciones` VALUES ('11209', 'PALENQUE', '593', '1', '12', '09', 'C', '104');
INSERT INTO `tabla_naciones` VALUES ('11210', 'BUENA FE', '593', '1', '12', '10', 'C', '105');
INSERT INTO `tabla_naciones` VALUES ('11211', 'VALENCIA', '593', '1', '12', '11', 'C', '106');
INSERT INTO `tabla_naciones` VALUES ('11212', 'MOCACHE', '593', '1', '12', '12', 'C', '107');
INSERT INTO `tabla_naciones` VALUES ('113', 'MANABI', '593', '1', '13', '.', 'P', '108');
INSERT INTO `tabla_naciones` VALUES ('11301', 'PORTOVIEJO', '593', '1', '13', '01', 'C', '109');
INSERT INTO `tabla_naciones` VALUES ('11302', 'BOLIVAR', '593', '1', '13', '02', 'C', '110');
INSERT INTO `tabla_naciones` VALUES ('11303', 'CHONE', '593', '1', '13', '03', 'C', '111');
INSERT INTO `tabla_naciones` VALUES ('11304', 'EL CARMEN', '593', '1', '13', '04', 'C', '112');
INSERT INTO `tabla_naciones` VALUES ('11305', 'FLAVIO ALFARO', '593', '1', '13', '05', 'C', '113');
INSERT INTO `tabla_naciones` VALUES ('11306', 'JIPIJAPA', '593', '1', '13', '06', 'C', '114');
INSERT INTO `tabla_naciones` VALUES ('11307', 'JUNIN', '593', '1', '13', '07', 'C', '115');
INSERT INTO `tabla_naciones` VALUES ('11308', 'MANTA', '593', '1', '13', '08', 'C', '116');
INSERT INTO `tabla_naciones` VALUES ('11309', 'MONTECRISTI', '593', '1', '13', '09', 'C', '117');
INSERT INTO `tabla_naciones` VALUES ('11310', 'PAJAN', '593', '1', '13', '10', 'C', '118');
INSERT INTO `tabla_naciones` VALUES ('11311', 'PICHINCHA', '593', '1', '13', '11', 'C', '119');
INSERT INTO `tabla_naciones` VALUES ('11312', 'ROCAFUERTE', '593', '1', '13', '12', 'C', '120');
INSERT INTO `tabla_naciones` VALUES ('11313', 'SANTA ANA', '593', '1', '13', '13', 'C', '121');
INSERT INTO `tabla_naciones` VALUES ('11314', 'SUCRE', '593', '1', '13', '14', 'C', '122');
INSERT INTO `tabla_naciones` VALUES ('11315', 'TOSAGUA', '593', '1', '13', '15', 'C', '123');
INSERT INTO `tabla_naciones` VALUES ('11316', '24 DE MAYO', '593', '1', '13', '16', 'C', '124');
INSERT INTO `tabla_naciones` VALUES ('11317', 'PEDERNALES', '593', '1', '13', '17', 'C', '125');
INSERT INTO `tabla_naciones` VALUES ('11318', 'OLMEDO', '593', '1', '13', '18', 'C', '126');
INSERT INTO `tabla_naciones` VALUES ('11319', 'PUERTO LOPEZ', '593', '1', '13', '19', 'C', '127');
INSERT INTO `tabla_naciones` VALUES ('11320', 'JAMA', '593', '1', '13', '20', 'C', '128');
INSERT INTO `tabla_naciones` VALUES ('11321', 'JARAMIJO', '593', '1', '13', '21', 'C', '129');
INSERT INTO `tabla_naciones` VALUES ('11322', 'SAN VICENTE', '593', '1', '13', '22', 'C', '130');
INSERT INTO `tabla_naciones` VALUES ('124', 'SANTA ELENA', '593', '1', '24', '.', 'C', '131');
INSERT INTO `tabla_naciones` VALUES ('12401', 'SANTA ELENA', '593', '1', '24', '01', 'C', '132');
INSERT INTO `tabla_naciones` VALUES ('12402', 'LA LIBERTAD', '593', '1', '24', '02', 'C', '133');
INSERT INTO `tabla_naciones` VALUES ('12403', 'SALINAS', '593', '1', '24', '03', 'C', '134');
INSERT INTO `tabla_naciones` VALUES ('2', 'SIERRA', '593', '2', '.', '.', 'R', '135');
INSERT INTO `tabla_naciones` VALUES ('201', 'AZUAY', '593', '2', '01', '.', 'P', '136');
INSERT INTO `tabla_naciones` VALUES ('20101', 'CUENCA', '593', '2', '01', '01', 'C', '137');
INSERT INTO `tabla_naciones` VALUES ('20102', 'GIRON', '593', '2', '01', '02', 'C', '138');
INSERT INTO `tabla_naciones` VALUES ('20103', 'GUALACEO', '593', '2', '01', '03', 'C', '139');
INSERT INTO `tabla_naciones` VALUES ('20104', 'NABON', '593', '2', '01', '04', 'C', '140');
INSERT INTO `tabla_naciones` VALUES ('20105', 'PAUTE', '593', '2', '01', '05', 'C', '141');
INSERT INTO `tabla_naciones` VALUES ('20106', 'PUCARA', '593', '2', '01', '06', 'C', '142');
INSERT INTO `tabla_naciones` VALUES ('20107', 'SAN FERNANDO', '593', '2', '01', '07', 'C', '143');
INSERT INTO `tabla_naciones` VALUES ('20108', 'SANTA ISABEL [CHAGUARURCO]', '593', '2', '01', '08', 'C', '144');
INSERT INTO `tabla_naciones` VALUES ('20109', 'SIGSIG', '593', '2', '01', '09', 'C', '145');
INSERT INTO `tabla_naciones` VALUES ('20110', 'ONA', '593', '2', '01', '10', 'C', '146');
INSERT INTO `tabla_naciones` VALUES ('20111', 'CHORDELEG', '593', '2', '01', '11', 'C', '147');
INSERT INTO `tabla_naciones` VALUES ('20112', 'EL PAN', '593', '2', '01', '12', 'C', '148');
INSERT INTO `tabla_naciones` VALUES ('20113', 'SEVILLA DE ORO', '593', '2', '01', '13', 'C', '149');
INSERT INTO `tabla_naciones` VALUES ('20114', 'GUACHAPALA', '593', '2', '01', '14', 'C', '150');
INSERT INTO `tabla_naciones` VALUES ('20115', 'CAMILO PONCE ENRIQUEZ', '593', '2', '01', '15', 'C', '151');
INSERT INTO `tabla_naciones` VALUES ('202', 'BOLIVAR', '593', '2', '02', '.', 'P', '152');
INSERT INTO `tabla_naciones` VALUES ('20201', 'GUARANDA', '593', '2', '02', '01', 'C', '153');
INSERT INTO `tabla_naciones` VALUES ('20202', 'CHILLANES', '593', '2', '02', '02', 'C', '154');
INSERT INTO `tabla_naciones` VALUES ('20203', 'CHIMBO', '593', '2', '02', '03', 'C', '155');
INSERT INTO `tabla_naciones` VALUES ('20204', 'ECHEANDIA', '593', '2', '02', '04', 'C', '156');
INSERT INTO `tabla_naciones` VALUES ('20205', 'SAN MIGUEL', '593', '2', '02', '05', 'C', '157');
INSERT INTO `tabla_naciones` VALUES ('20206', 'CALUMA', '593', '2', '02', '06', 'C', '158');
INSERT INTO `tabla_naciones` VALUES ('20207', 'LAS NAVES', '593', '2', '02', '07', 'C', '159');
INSERT INTO `tabla_naciones` VALUES ('203', 'CANAR', '593', '2', '03', '.', 'P', '160');
INSERT INTO `tabla_naciones` VALUES ('20301', 'AZOGUES', '593', '2', '03', '01', 'C', '161');
INSERT INTO `tabla_naciones` VALUES ('20302', 'BIBLIAN', '593', '2', '03', '02', 'C', '162');
INSERT INTO `tabla_naciones` VALUES ('20303', 'CANAR', '593', '2', '03', '03', 'C', '163');
INSERT INTO `tabla_naciones` VALUES ('20304', 'LA TRONCAL', '593', '2', '03', '04', 'C', '164');
INSERT INTO `tabla_naciones` VALUES ('20305', 'EL TAMBO', '593', '2', '03', '05', 'C', '165');
INSERT INTO `tabla_naciones` VALUES ('20306', 'DELEG', '593', '2', '03', '06', 'C', '166');
INSERT INTO `tabla_naciones` VALUES ('20307', 'SUSCAL', '593', '2', '03', '07', 'C', '167');
INSERT INTO `tabla_naciones` VALUES ('204', 'CARCHI', '593', '2', '04', '.', 'P', '168');
INSERT INTO `tabla_naciones` VALUES ('20401', 'TULCAN', '593', '2', '04', '01', 'C', '169');
INSERT INTO `tabla_naciones` VALUES ('20402', 'BOLIVAR', '593', '2', '04', '02', 'C', '170');
INSERT INTO `tabla_naciones` VALUES ('20403', 'ESPEJO', '593', '2', '04', '03', 'C', '171');
INSERT INTO `tabla_naciones` VALUES ('20404', 'MIRA [CHONTAHUASI]', '593', '2', '04', '04', 'C', '172');
INSERT INTO `tabla_naciones` VALUES ('20405', 'MONTUFAR', '593', '2', '04', '05', 'C', '173');
INSERT INTO `tabla_naciones` VALUES ('20406', 'SAN PEDRO DE HUACA', '593', '2', '04', '06', 'C', '174');
INSERT INTO `tabla_naciones` VALUES ('205', 'COTOPAXI', '593', '2', '05', '.', 'P', '175');
INSERT INTO `tabla_naciones` VALUES ('20501', 'LATACUNGA', '593', '2', '05', '01', 'C', '176');
INSERT INTO `tabla_naciones` VALUES ('20502', 'LA MANA', '593', '2', '05', '02', 'C', '177');
INSERT INTO `tabla_naciones` VALUES ('20503', 'PANGUA', '593', '2', '05', '03', 'C', '178');
INSERT INTO `tabla_naciones` VALUES ('20504', 'PUJILI', '593', '2', '05', '04', 'C', '179');
INSERT INTO `tabla_naciones` VALUES ('20505', 'SALCEDO', '593', '2', '05', '05', 'C', '180');
INSERT INTO `tabla_naciones` VALUES ('20506', 'SAQUISILI', '593', '2', '05', '06', 'C', '181');
INSERT INTO `tabla_naciones` VALUES ('20507', 'SIGCHOS', '593', '2', '05', '07', 'C', '182');
INSERT INTO `tabla_naciones` VALUES ('206', 'CHIMBORAZO', '593', '2', '06', '.', 'P', '183');
INSERT INTO `tabla_naciones` VALUES ('20601', 'RIOBAMBA', '593', '2', '06', '01', 'C', '184');
INSERT INTO `tabla_naciones` VALUES ('20602', 'ALAUSI', '593', '2', '06', '02', 'C', '185');
INSERT INTO `tabla_naciones` VALUES ('20603', 'COLTA', '593', '2', '06', '03', 'C', '186');
INSERT INTO `tabla_naciones` VALUES ('20604', 'CHAMBO', '593', '2', '06', '04', 'C', '187');
INSERT INTO `tabla_naciones` VALUES ('20605', 'CHUNCHI', '593', '2', '06', '05', 'C', '188');
INSERT INTO `tabla_naciones` VALUES ('20606', 'GUAMOTE', '593', '2', '06', '06', 'C', '189');
INSERT INTO `tabla_naciones` VALUES ('20607', 'GUANO', '593', '2', '06', '07', 'C', '190');
INSERT INTO `tabla_naciones` VALUES ('20608', 'PALLATANGA', '593', '2', '06', '08', 'C', '191');
INSERT INTO `tabla_naciones` VALUES ('20609', 'PENIPE', '593', '2', '06', '09', 'C', '192');
INSERT INTO `tabla_naciones` VALUES ('20610', 'CUMANDA', '593', '2', '06', '10', 'C', '193');
INSERT INTO `tabla_naciones` VALUES ('210', 'IMBABURA', '593', '2', '10', '.', 'P', '194');
INSERT INTO `tabla_naciones` VALUES ('21001', 'IBARRA', '593', '2', '10', '01', 'C', '195');
INSERT INTO `tabla_naciones` VALUES ('21002', 'ANTONIO ANTE', '593', '2', '10', '02', 'C', '196');
INSERT INTO `tabla_naciones` VALUES ('21003', 'COTACACHI', '593', '2', '10', '03', 'C', '197');
INSERT INTO `tabla_naciones` VALUES ('21004', 'OTAVALO', '593', '2', '10', '04', 'C', '198');
INSERT INTO `tabla_naciones` VALUES ('21005', 'PIMAMPIRO', '593', '2', '10', '05', 'C', '199');
INSERT INTO `tabla_naciones` VALUES ('21006', 'SAN MIGUEL DE URCUQUI', '593', '2', '10', '06', 'C', '200');
INSERT INTO `tabla_naciones` VALUES ('211', 'LOJA', '593', '2', '11', '.', 'P', '201');
INSERT INTO `tabla_naciones` VALUES ('21101', 'LOJA', '593', '2', '11', '01', 'C', '202');
INSERT INTO `tabla_naciones` VALUES ('21102', 'CALVAS', '593', '2', '11', '02', 'C', '203');
INSERT INTO `tabla_naciones` VALUES ('21103', 'CATAMAYO', '593', '2', '11', '03', 'C', '204');
INSERT INTO `tabla_naciones` VALUES ('21104', 'CELICA', '593', '2', '11', '04', 'C', '205');
INSERT INTO `tabla_naciones` VALUES ('21105', 'CHAGUARPAMBA', '593', '2', '11', '05', 'C', '206');
INSERT INTO `tabla_naciones` VALUES ('21106', 'ESPINDOLA', '593', '2', '11', '06', 'C', '207');
INSERT INTO `tabla_naciones` VALUES ('21107', 'GONZANAMA', '593', '2', '11', '07', 'C', '208');
INSERT INTO `tabla_naciones` VALUES ('21108', 'MACARA', '593', '2', '11', '08', 'C', '209');
INSERT INTO `tabla_naciones` VALUES ('21109', 'PALTAS', '593', '2', '11', '09', 'C', '210');
INSERT INTO `tabla_naciones` VALUES ('21110', 'PUYANGO', '593', '2', '11', '10', 'C', '211');
INSERT INTO `tabla_naciones` VALUES ('21111', 'SARAGURO', '593', '2', '11', '11', 'C', '212');
INSERT INTO `tabla_naciones` VALUES ('21112', 'SOZORANGA', '593', '2', '11', '12', 'C', '213');
INSERT INTO `tabla_naciones` VALUES ('21113', 'ZAPOTILLO', '593', '2', '11', '13', 'C', '214');
INSERT INTO `tabla_naciones` VALUES ('21114', 'PINDAL', '593', '2', '11', '14', 'C', '215');
INSERT INTO `tabla_naciones` VALUES ('21115', 'QUILANGA', '593', '2', '11', '15', 'C', '216');
INSERT INTO `tabla_naciones` VALUES ('21116', 'OLMEDO', '593', '2', '11', '16', 'C', '217');
INSERT INTO `tabla_naciones` VALUES ('217', 'PICHINCHA', '593', '2', '17', '.', 'P', '218');
INSERT INTO `tabla_naciones` VALUES ('21701', 'QUITO', '593', '2', '17', '01', 'C', '219');
INSERT INTO `tabla_naciones` VALUES ('21702', 'CAYAMBE', '593', '2', '17', '02', 'C', '220');
INSERT INTO `tabla_naciones` VALUES ('21703', 'MEJIA', '593', '2', '17', '03', 'C', '221');
INSERT INTO `tabla_naciones` VALUES ('21704', 'PEDRO MONCAYO', '593', '2', '17', '04', 'C', '222');
INSERT INTO `tabla_naciones` VALUES ('21705', 'RUMINAHUI', '593', '2', '17', '05', 'C', '223');
INSERT INTO `tabla_naciones` VALUES ('21706', 'SANTO DOMINGO DE LOS COLORADOS', '593', '2', '17', '06', 'C', '224');
INSERT INTO `tabla_naciones` VALUES ('21707', 'SAN MIGUEL DE LOS BANCOS', '593', '2', '17', '07', 'C', '225');
INSERT INTO `tabla_naciones` VALUES ('21708', 'PEDRO VICENTE MALDONADO', '593', '2', '17', '08', 'C', '226');
INSERT INTO `tabla_naciones` VALUES ('21709', 'PUERTO QUITO', '593', '2', '17', '09', 'C', '227');
INSERT INTO `tabla_naciones` VALUES ('218', 'TUNGURAHUA', '593', '2', '18', '.', 'P', '228');
INSERT INTO `tabla_naciones` VALUES ('21801', 'AMBATO', '593', '2', '18', '01', 'C', '229');
INSERT INTO `tabla_naciones` VALUES ('21802', 'BANOS DE AGUA SANTA', '593', '2', '18', '02', 'C', '230');
INSERT INTO `tabla_naciones` VALUES ('21803', 'CEVALLOS', '593', '2', '18', '03', 'C', '231');
INSERT INTO `tabla_naciones` VALUES ('21804', 'MOCHA', '593', '2', '18', '04', 'C', '232');
INSERT INTO `tabla_naciones` VALUES ('21805', 'PATATE', '593', '2', '18', '05', 'C', '233');
INSERT INTO `tabla_naciones` VALUES ('21806', 'QUERO', '593', '2', '18', '06', 'C', '234');
INSERT INTO `tabla_naciones` VALUES ('21807', 'SAN PEDRO DE PELILEO', '593', '2', '18', '07', 'C', '235');
INSERT INTO `tabla_naciones` VALUES ('21808', 'SANTIAGO DE PILLARO', '593', '2', '18', '08', 'C', '236');
INSERT INTO `tabla_naciones` VALUES ('21809', 'TISALEO', '593', '2', '18', '09', 'C', '237');
INSERT INTO `tabla_naciones` VALUES ('223', 'SANTO DOMINGO DE LOS TSACHILAS', '593', '2', '23', '.', 'P', '238');
INSERT INTO `tabla_naciones` VALUES ('22301', 'SANTO DOMINGO', '593', '2', '23', '01', 'C', '239');
INSERT INTO `tabla_naciones` VALUES ('3', 'ORIENTE', '593', '3', '.', '.', 'R', '240');
INSERT INTO `tabla_naciones` VALUES ('314', 'MORONA SANTIAGO', '593', '3', '14', '.', 'P', '241');
INSERT INTO `tabla_naciones` VALUES ('31401', 'MORONA', '593', '3', '14', '01', 'C', '242');
INSERT INTO `tabla_naciones` VALUES ('31402', 'GUALAQUIZA', '593', '3', '14', '02', 'C', '243');
INSERT INTO `tabla_naciones` VALUES ('31403', 'LIMON - INDANZA', '593', '3', '14', '03', 'C', '244');
INSERT INTO `tabla_naciones` VALUES ('31404', 'PALORA', '593', '3', '14', '04', 'C', '245');
INSERT INTO `tabla_naciones` VALUES ('31405', 'SANTIAGO', '593', '3', '14', '05', 'C', '246');
INSERT INTO `tabla_naciones` VALUES ('31406', 'SUCUA', '593', '3', '14', '06', 'C', '247');
INSERT INTO `tabla_naciones` VALUES ('31407', 'HUAMBOYA', '593', '3', '14', '07', 'C', '248');
INSERT INTO `tabla_naciones` VALUES ('31408', 'SAN JUAN DON BOSCO', '593', '3', '14', '08', 'C', '249');
INSERT INTO `tabla_naciones` VALUES ('31409', 'TAISHA', '593', '3', '14', '09', 'C', '250');
INSERT INTO `tabla_naciones` VALUES ('31410', 'LOGRONO', '593', '3', '14', '10', 'C', '251');
INSERT INTO `tabla_naciones` VALUES ('31411', 'PABLO VI', '593', '3', '14', '11', 'C', '252');
INSERT INTO `tabla_naciones` VALUES ('31412', 'TIWINTZA', '593', '3', '14', '12', 'C', '253');
INSERT INTO `tabla_naciones` VALUES ('315', 'NAPO', '593', '3', '15', '.', 'P', '254');
INSERT INTO `tabla_naciones` VALUES ('31501', 'TENA', '593', '3', '15', '01', 'C', '255');
INSERT INTO `tabla_naciones` VALUES ('31503', 'ARCHIDONA', '593', '3', '15', '03', 'C', '256');
INSERT INTO `tabla_naciones` VALUES ('31504', 'EL CHACO', '593', '3', '15', '04', 'C', '257');
INSERT INTO `tabla_naciones` VALUES ('31507', 'QUIJOS', '593', '3', '15', '07', 'C', '258');
INSERT INTO `tabla_naciones` VALUES ('31509', 'CARLOS JULIO AROSEMENA T', '593', '3', '15', '09', 'C', '259');
INSERT INTO `tabla_naciones` VALUES ('316', 'PASTAZA', '593', '3', '16', '.', 'P', '260');
INSERT INTO `tabla_naciones` VALUES ('31601', 'PASTAZA', '593', '3', '16', '01', 'C', '261');
INSERT INTO `tabla_naciones` VALUES ('31602', 'MERA', '593', '3', '16', '02', 'C', '262');
INSERT INTO `tabla_naciones` VALUES ('31603', 'SANTA CLARA', '593', '3', '16', '03', 'C', '263');
INSERT INTO `tabla_naciones` VALUES ('31604', 'ARAJUNO', '593', '3', '16', '04', 'C', '264');
INSERT INTO `tabla_naciones` VALUES ('319', 'ZAMORA CHINCHIPE', '593', '3', '19', '.', 'P', '265');
INSERT INTO `tabla_naciones` VALUES ('31901', 'ZAMORA', '593', '3', '19', '01', 'C', '266');
INSERT INTO `tabla_naciones` VALUES ('31902', 'CHINCHIPE', '593', '3', '19', '02', 'C', '267');
INSERT INTO `tabla_naciones` VALUES ('31903', 'NANGARITZA', '593', '3', '19', '03', 'C', '268');
INSERT INTO `tabla_naciones` VALUES ('31904', 'YACUAMBI', '593', '3', '19', '04', 'C', '269');
INSERT INTO `tabla_naciones` VALUES ('31905', 'YANZATZA', '593', '3', '19', '05', 'C', '270');
INSERT INTO `tabla_naciones` VALUES ('31906', 'EL PANGUI', '593', '3', '19', '06', 'C', '271');
INSERT INTO `tabla_naciones` VALUES ('31907', 'CENTINELA DEL CONDOR', '593', '3', '19', '07', 'C', '272');
INSERT INTO `tabla_naciones` VALUES ('31908', 'PALANDA', '593', '3', '19', '08', 'C', '273');
INSERT INTO `tabla_naciones` VALUES ('31909', 'PAQUISHA', '593', '3', '19', '09', 'C', '274');
INSERT INTO `tabla_naciones` VALUES ('321', 'SUCUMBIOS', '593', '3', '21', '.', 'P', '275');
INSERT INTO `tabla_naciones` VALUES ('32101', 'LAGO AGRIO', '593', '3', '21', '01', 'C', '276');
INSERT INTO `tabla_naciones` VALUES ('32102', 'GONZALO PIZARRO', '593', '3', '21', '02', 'C', '277');
INSERT INTO `tabla_naciones` VALUES ('32103', 'PUTUMAYO', '593', '3', '21', '03', 'C', '278');
INSERT INTO `tabla_naciones` VALUES ('32104', 'SHUSHUFINDI', '593', '3', '21', '04', 'C', '279');
INSERT INTO `tabla_naciones` VALUES ('32105', 'SUCUMBIOS', '593', '3', '21', '05', 'C', '280');
INSERT INTO `tabla_naciones` VALUES ('32106', 'CASCALES', '593', '3', '21', '06', 'C', '281');
INSERT INTO `tabla_naciones` VALUES ('32107', 'CUYABENO', '593', '3', '21', '07', 'C', '282');
INSERT INTO `tabla_naciones` VALUES ('322', 'ORELLANA', '593', '3', '22', '.', 'P', '283');
INSERT INTO `tabla_naciones` VALUES ('32201', 'ORELLANA', '593', '3', '22', '01', 'C', '284');
INSERT INTO `tabla_naciones` VALUES ('32202', 'AGUARICO', '593', '3', '22', '02', 'C', '285');
INSERT INTO `tabla_naciones` VALUES ('32203', 'LA JOYA DE LOS SACHAS', '593', '3', '22', '03', 'C', '286');
INSERT INTO `tabla_naciones` VALUES ('32204', 'LORETO', '593', '3', '22', '04', 'C', '287');
INSERT INTO `tabla_naciones` VALUES ('4', 'INSULAR', '593', '4', '.', '.', 'R', '288');
INSERT INTO `tabla_naciones` VALUES ('420', 'GALAPAGOS', '593', '4', '20', '.', 'P', '289');
INSERT INTO `tabla_naciones` VALUES ('42001', 'SAN CRISTOBAL', '593', '4', '20', '01', 'C', '290');
INSERT INTO `tabla_naciones` VALUES ('42002', 'ISABELA', '593', '4', '20', '02', 'C', '291');
INSERT INTO `tabla_naciones` VALUES ('42003', 'SANTA CRUZ', '593', '4', '20', '03', 'C', '292');
INSERT INTO `tabla_naciones` VALUES ('42004', 'PUERTO AYORA', '593', '4', '20', '04', 'C', '293');
INSERT INTO `tabla_naciones` VALUES ('999', 'OTRO', '999', '9', '99', '.', 'P', '294');
INSERT INTO `tabla_naciones` VALUES ('99999', 'OTRO', '999', '9', '99', '99', 'C', '295');

-- ----------------------------
-- Table structure for tabla_referenciales_sri
-- ----------------------------
DROP TABLE IF EXISTS `tabla_referenciales_sri`;
CREATE TABLE `tabla_referenciales_sri` (
  `Tipo_Referencia` varchar(15) DEFAULT NULL,
  `Codigo` varchar(6) DEFAULT NULL,
  `Descripcion` varchar(130) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_Tabla_Referenciales_SRI` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tabla_referenciales_sri
-- ----------------------------
INSERT INTO `tabla_referenciales_sri` VALUES ('IDENTIFICACION', '0', 'No aplica', '1');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '0', '.', '2');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '01', 'SIN UTILIZACION DEL SISTEMA FINANCIERO', '3');
INSERT INTO `tabla_referenciales_sri` VALUES ('TARJETAS', '01', 'AMERICAN EXPRESS', '4');
INSERT INTO `tabla_referenciales_sri` VALUES ('EXPORTACION', '01', 'Con Refrendo', '5');
INSERT INTO `tabla_referenciales_sri` VALUES ('TIPO DE PAGO', '01', 'PAGO LOCAL', '6');
INSERT INTO `tabla_referenciales_sri` VALUES ('TRABAJADOR', '01', 'No aplica', '7');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '01', 'Conyuge', '8');
INSERT INTO `tabla_referenciales_sri` VALUES ('TRABAJADOR', '02', 'Trabajador con discapacidad', '9');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '02', 'Hijo[a]', '10');
INSERT INTO `tabla_referenciales_sri` VALUES ('TIPO DE PAGO', '02', 'PAGO AL EXTERIOR', '11');
INSERT INTO `tabla_referenciales_sri` VALUES ('EXPORTACION', '02', 'Sin Refrendo', '12');
INSERT INTO `tabla_referenciales_sri` VALUES ('TARJETAS', '02', 'DINERS CLUB', '13');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '02', 'CHEQUE PROPIO', '14');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '03', 'CHEQUE CERTIFICADO', '15');
INSERT INTO `tabla_referenciales_sri` VALUES ('TARJETAS', '03', 'MASTERCARD', '16');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '03', 'Madre', '17');
INSERT INTO `tabla_referenciales_sri` VALUES ('TRABAJADOR', '03', 'Trabajador que actua en calidad de sustituto de una persona con discapacidad', '18');
INSERT INTO `tabla_referenciales_sri` VALUES ('TRABAJADOR', '04', 'Trabajador tiene conyuge pareja en union de hecho o hijo con discapacidad y se encuentra bajo su cuidado y/o responsabilidad', '19');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '04', 'Padre', '20');
INSERT INTO `tabla_referenciales_sri` VALUES ('TARJETAS', '04', 'VISA', '21');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '04', 'CHEQUE DE GERENCIA', '22');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '05', 'CHEQUE DEL EXTERIOR', '23');
INSERT INTO `tabla_referenciales_sri` VALUES ('TARJETAS', '05', 'OTRA TARJETA', '24');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '05', 'Padres', '25');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '06', 'Abuelo[a]', '26');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '06', 'DEBITO DE CUENTA', '27');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '07', 'TRANSFERENCIA PROPIO BANCO', '28');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '07', 'Hermano[a]', '29');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '08', 'Tio[a]', '30');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '08', 'TRANSFERENCIA OTRO BANCO NACIONAL', '31');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '09', 'TRANSFERENCIA BANCO EXTERIOR', '32');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '09', 'Sobrino[a]', '33');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '1', 'BCE - SISTEMA DE PAGOS INTERBANCARIO - SPI', '34');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '10', 'Primo[a]', '35');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '10', 'TARJETA DE CREDITO NACIONAL', '36');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '10', 'BANCO PICHINCHA', '37');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '11', 'TARJETA DE CREDITO INTERNACIONAL', '38');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '11', 'Cunado[a]', '39');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '1119', 'COOP. DE AHORRO Y CREDITO ïONCE DE JUNIOï', '40');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '1141', 'COOP. DE AHORRO Y CRED. ïSANTA ROSAï LTDA', '41');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '1182', 'COOP. DE AHORRO Y CREDITO SAN FRANCISCO DE ASIS LTDA', '42');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '12', 'GIRO', '43');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '12', 'Compadre', '44');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '13', 'DEPOSITO EN CUENTA [CORRIENTE/AHORROS]', '45');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '13', 'Comadre', '46');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '14', 'ENDOSO DE INVERSIÒN', '47');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '15', 'COMPENSACION DE DEUDAS', '48');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '16', 'TARJETA DE DEBITO', '49');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '17', 'DINERO ELECTRONICO', '50');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '17', 'BANCO DE GUAYAQUIL S.A', '51');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '18', 'TARJETA PREPAGO', '52');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '19', 'TARJETA DE CREDITO', '53');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '2', 'BANCO DE FOMENTO', '54');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '20', 'OTROS CON UTILIZACION DEL SISTEMA FINANCIERO', '55');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '202', 'BANCO ECUATORIANO DE LA VIVIENDA', '56');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '203', 'CACPECO LTDA', '57');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '204', 'COOP. DE LA PEQUENA EMPRESA DE PASTAZA', '58');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '205', 'COOP. AHORRO Y CREDITO 23 DE JULIO', '59');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '206', 'COOP. AHORRO Y CREDITO 29 DE OCTUBRE', '60');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '207', 'COOP. AHORRO Y CREDITO ANDALUCIA', '61');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '208', 'COOP. AHORRO Y CREDITO COTOCOLLAO', '62');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '209', 'COOP. AHORRO Y CREDITO DESARROLLO PUEBLOS', '63');
INSERT INTO `tabla_referenciales_sri` VALUES ('FORMA DE PAGO', '21', 'ENDOSO DE TITULOS', '64');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '210', 'COOP. AHORRO Y CREDITO EL SAGRARIO', '65');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '211', 'COOP. AHORRO Y CREDITO GUARANDA LTDA', '66');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '2129', 'COOP. MANUEL ESTEBAN GODOY ORTEGA LTDA. COOPMEGO', '67');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '213', 'COOP. JUVENTUD ECUATORIANA PROGRESISTA LTDA', '68');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '215', 'BANCO COOPNACIONAL S.A', '69');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '216', 'COOP. AHORRO Y CREDITO OSCUS', '70');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '217', 'COOP. PABLO MUNOZ VEGA', '71');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '218', 'COOP. AHORRO Y CREDITO PROGRESO', '72');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '219', 'COOP. AHORRO Y CREDITO RIOBAMBA', '73');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '220', 'COOP. AHORRO Y CREDITO SAN FRANCISCO', '74');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '222', 'COOP. AHORRO Y CREDITO TULCAN', '75');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '223', 'COOP. ATUNTAQUI LTDA', '76');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '224', 'COOP. COMERCIO LTDA. [PORTOVIEJO]', '77');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '225', 'COOP. AHORRO Y CREDITO LA DOLOROSA LTDA', '78');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '226', 'COOP. PREVISION AHORRO Y DESARROLLO', '79');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '227', 'COOP.AHORRO Y CREDITO ALIANZA DEL VALLE LTDA', '80');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '228', 'COOPERATIVA DE AHORRO Y CREDITO CONSTRUCCION COMERCIO Y PRODUCCION LTDA', '81');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '229', 'COOP.AHORRO Y CREDITO CHONE LTDA', '82');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '231', 'COOP. AHORRO Y CREDITO SANTA ANA LTDA', '83');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '232', 'FINANCIERA - DINERS CLUB DEL ECUADOR S A', '84');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '233', 'MUTUALISTA AMBATO', '85');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '234', 'MUTUALISTA AZUAY', '86');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '236', 'MUTUALISTA IMBABURA', '87');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '238', 'MUTUALISTA PICHINCHA', '88');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '239', 'PACIFICARD', '89');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '24', 'BANCO CITY BANK', '90');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '25', 'BANCO MACHALA', '91');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '27', 'BANCO DELBANK S.A', '92');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '2753', 'COOP. AHORRO Y CREDITO 9 DE OCTUBRE LTDA', '93');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '29', 'BANCO DE LOJA', '94');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '30', 'BANCO DEL PACIFICO', '95');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '32', 'BANCO INTERNACIONAL', '96');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '3304', 'COOP. DE AHORRO Y CREDITO PADRE JULIAN LORENTE LTDA', '97');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '3352', 'COOP. AHORRO Y CREDITO DE LA LA PEQUENA EMPRESA CACPE BIBLIAN LTDA', '98');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '3364', 'COOP. AHORRO Y CREDITO SAN JOSE LTDA', '99');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '34', 'BANCO AMAZONAS', '100');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '35', 'BANCO DEL AUSTRO', '101');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '36', 'BANCO DE LA PRODUCCION-PROMERICA', '102');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '3615', 'COOP. DE AHORRO Y CREDITO JARDIN AZUAYO', '103');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '37', 'BANCO BOLIVARIANO', '104');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '39', 'BANCO COMERCIAL DE MANABI', '105');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '40', 'BANCO SIN ASIGNAR', '106');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4001', 'BANCO DEL INSTITUTO ECUATORIANO DE SEGURIDAD SOCIAL', '107');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4002', 'BANCO PARA LA ASISTENCIA COMUNITARIA FINCA S.A', '108');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4003', 'BANCO-D-MIRO S.A', '109');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4004', 'COOP. A Y C DE LA PEQ. EMP. CACPE ZAMORA LTDA', '110');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4005', 'COOP. A. Y C. CARROCEROS DE TUNGURAHUA', '111');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4006', 'COOP. AHO.Y CRED.NUEVOS HORIZONTES EL ORO LTDA', '112');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4007', 'COOP. AHORRO Y CREDITO AGRARIA MUSHUK KAWSAY LTDA', '113');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4008', 'COOP. AHORRO Y CREDITO ALIANZA MINAS LTDA', '114');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4009', 'COOP. AHORRO Y CREDITO CAMARA DE COMERCIO DEL CANTON BOLIVAR LTDA', '115');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4010', 'COOP. AHORRO Y CREDITO CAMARA DE COMERCIO INDIGENA DE GUAMOTE LTDA', '116');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4011', 'COOP. AHORRO Y CREDITO CARIAMANGA LTDA', '117');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4012', 'COOP. AHORRO Y CREDITO DE LA CAMARA DE COMERCIO DE PINDAL CADECOPI', '118');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4013', 'COOP. AHORRO Y CREDITO DE LA PEQUENA EMPRESA GUALAQUIZA', '119');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4014', 'COOP. AHORRO Y CREDITO FAMILIA AUSTRAL', '120');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4015', 'COOP. AHORRO Y CREDITO FUNDESARROLLO', '121');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4016', 'COOP. AHORRO Y CREDITO JUAN DE SALINAS LTDA', '122');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4017', 'COOP. AHORRO Y CREDITO LOS RIOS', '123');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4018', 'COOP. AHORRO Y CREDITO MALCHINGUI LTDA', '124');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4019', 'COOP. AHORRO Y CREDITO MANANTIAL DE ORO LTDA', '125');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4020', 'COOP. AHORRO Y CREDITO MI TIERRA', '126');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4021', 'COOP. AHORRO Y CREDITO NUEVA JERUSALEN', '127');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4022', 'COOP. AHORRO Y CREDITO PUELLARO LTDA', '128');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4023', 'COOP. AHORRO Y CREDITO SAN ANTONIO LTDA', '129');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4024', 'COOP. AHORRO Y CREDITO SAN GABRIEL LTDA', '130');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4025', 'COOP. AHORRO Y CREDITO SAN MIGUEL DE LOS BANCOS', '131');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4026', 'COOP. AHORRO Y CREDITO SEMILLA DEL PROGRESO LTDA', '132');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4027', 'COOP. AHORRO Y CREDITO SENOR DE GIRON', '133');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4028', 'COOP. AHORRO Y CREDITO TENA LTDA', '134');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4029', 'COOP. AHORRO Y CREDITO TUNGURAHUA LTDA', '135');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4030', 'COOP. AHORRO. Y CREDI. MUJERES UNIDAS TANTANAKUSHKA WARMIKUNAPAK CACMU LTDA', '136');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4031', 'COOP. DE A Y C EDUCADORES DE PASTAZA LTDA', '137');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4032', 'COOP. DE A Y C GONZANAMA [MIES]', '138');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4033', 'COOP. DE A Y C JUAN PIO DE MORA LTDA', '139');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4034', 'COOP. DE A. Y C. 23 DE MAYO LTDA', '140');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4035', 'COOP. DE A. Y C. BANOS LTDA', '141');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4036', 'COOP. DE A. Y C. CASAG LTDA', '142');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4037', 'COOP. DE A. Y C. CREDISUR LTDA', '143');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4038', 'COOP. DE A. Y C. DE LA PEQ. EMPRESA CACPE MACARA', '144');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4039', 'COOP. DE A. Y C. DE LOS SERV. PUBL. DEL MIN. DE EDUCACION Y CULTURA', '145');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4040', 'COOP. DE A. Y C. DEL COL. FISC. EXPER. VICENTE ROCAFUERTE', '146');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4041', 'COOP. DE A. Y C. DESARROLLO INTEGRAL LTDA', '147');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4042', 'COOP. DE A. Y C. ECUAFUTURO LTDA', '148');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4043', 'COOP. DE A. Y C. ESCENCIA INDIGENA LTDA', '149');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4044', 'COOP. DE A. Y C. FOCLA', '150');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4045', 'COOP. DE A. Y C. FUTURO Y PROGRESO DE GALAPAGOS LTDA', '151');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4046', 'COOP. DE A. Y C. GENERAL RUMINAHUI', '152');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4047', 'COOP. DE A. Y C. GRAMEEN AMAZONAS', '153');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4048', 'COOP. DE A. Y C. GUAMOTE LTDA', '154');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4049', 'COOP. DE A. Y C. LUCHA CAMPESINA LTDA', '155');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4050', 'COOP. DE A. Y C. MAQUITA CUSHUN LTDA', '156');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4051', 'COOP. DE A. Y C. MAQUITA CUSHUNCHIC LTDA', '157');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4052', 'COOP. DE A. Y C. PIJAL', '158');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4053', 'COOP. DE A. Y C. PROFESIONALES DEL VOLANTE UNION LTDA [MIES]', '159');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4054', 'COOP. DE A. Y C. SANTA ROSA DE PATUTAN LTDA', '160');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4055', 'COOP. DE A. Y C. SIERRA CENTRO LTDA', '161');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4056', 'COOP. DE A. Y C. SINCHI RUNA LTDA', '162');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4057', 'COOP. DE A. Y C. SUMAC LLACTA LTDA', '163');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4058', 'COOP. DE A. Y C. UNION MERCEDARIA LTDA', '164');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4059', 'COOP. DE A. Y C. VALLES DEL LIRIO', '165');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4060', 'COOP. DE A. Y C. VENCEDORES DE TUNGURAHUA', '166');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4061', 'COOP. DE AHORRO Y CREDITO ïSIMIATUG LTDAï', '167');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4062', 'COOP. DE AHORRO Y CREDITO 4 DE OCTUBRE LTDA', '168');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4063', 'COOP. DE AHORRO Y CREDITO ACCION Y DESARROLLO LTDA', '169');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4064', 'COOP. DE AHORRO Y CREDITO ALFONSO JARAMILLO C.C.C', '170');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4065', 'COOP. DE AHORRO Y CREDITO ANDINA LTDA', '171');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4066', 'COOP. DE AHORRO Y CREDITO CAMARA DE COMERCIO DE AMBATO LTDA', '172');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4067', 'COOP. DE AHORRO Y CREDITO CREDI FACIL LTDA', '173');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4068', 'COOP. DE AHORRO Y CREDITO CREDIAMIGO LTDA. LOJA [MIES]', '174');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4069', 'COOP. DE AHORRO Y CREDITO CRISTO REY', '175');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4070', 'COOP. DE AHORRO Y CREDITO DE LA PEQ. EMP. CACPE YANZATZA LTDA', '176');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4071', 'COOP. DE AHORRO Y CREDITO DORADO LTDA', '177');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4072', 'COOP. DE AHORRO Y CREDITO EDUC.DEL TUNGURAHUA LTDA', '178');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4073', 'COOP. DE AHORRO Y CREDITO EDUCADORES DE CHIMBORAZO', '179');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4074', 'COOP. DE AHORRO Y CREDITO HUAICANA LTDA', '180');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4075', 'COOP. DE AHORRO Y CREDITO HUAQUILLAS LTDA', '181');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4076', 'COOP. DE AHORRO Y CREDITO JADAN LTDA. [MIES]', '182');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4077', 'COOP. DE AHORRO Y CREDITO LA MERCED LTDA', '183');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4078', 'COOP. DE AHORRO Y CREDITO MUSHUC RUNA LTDA', '184');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4079', 'COOP. DE AHORRO Y CREDITO NUESTROS ABUELOS LTDA', '185');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4080', 'COOP. DE AHORRO Y CREDITO NUEVA HUANCAVILCA LTDA', '186');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4081', 'COOP. DE AHORRO Y CREDITO PEDRO MONCAYO LTDA', '187');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4082', 'COOP. DE AHORRO Y CREDITO PILAHUIN TIO LTDA', '188');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4083', 'COOP. DE AHORRO Y CREDITO PUERTO LOPEZ LTDA', '189');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4084', 'COOP. DE AHORRO Y CREDITO SAN MIGUEL DE SIGCHOS', '190');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4085', 'COOP. ESFUERZO UNIDO PARA EL DESARR. DEL CHILCO LA ESPERANZA', '191');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4086', 'COOP.AHORRO Y CREDITO DE LA PEQUENA EMPRESA DE LOJA CACPE LOJA LTDA', '192');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4087', 'COOP.AHORRO Y CREDITO PRIMERO DE ENERO DEL AUSTRO COOPEA', '193');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4088', 'COOP.DE AHORRO Y CREDITO COCA LTDA', '194');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4089', 'COOP.DE AHORRO Y CREDITO HUAYCO PUNGO LTDA', '195');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4091', 'COOPERATIVA 15 DE AGOSTO PILACOTO', '196');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4092', 'COOPERATIVA DE AHORRO Y CREDITO ïSAN JORGE LTDAï', '197');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4093', 'COOPERATIVA DE AHORRO Y CREDITO 27 DE ABRIL LOJA', '198');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4094', 'COOPERATIVA DE AHORRO Y CREDITO AGRICOLA ïJUNINï LTDA', '199');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4095', 'COOPERATIVA DE AHORRO Y CREDITO AMBATO LTDA', '200');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4096', 'COOPERATIVA DE AHORRO Y CREDITO ARTESANOS LTDA', '201');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4097', 'COOPERATIVA DE AHORRO Y CREDITO CAC-CICA [MIES]', '202');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4098', 'COOPERATIVA DE AHORRO Y CREDITO CACPE CELICA', '203');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4099', 'COOPERATIVA DE AHORRO Y CREDITO CATAMAYO LTDA. [MIES]', '204');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4100', 'COOPERATIVA DE AHORRO Y CREDITO EL CALVARIO LTDA', '205');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4101', 'COOPERATIVA DE AHORRO Y CREDITO ERCO LTDA', '206');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4102', 'COOPERATIVA DE AHORRO Y CREDITO FERNANDO DAQUILEMA', '207');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4103', 'COOPERATIVA DE AHORRO Y CREDITO FORTUNA [MIES]', '208');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4104', 'COOPERATIVA DE AHORRO Y CREDITO INTEGRAL', '209');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4105', 'COOPERATIVA DE AHORRO Y CREDITO LLANGANATES', '210');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4106', 'COOPERATIVA DE AHORRO Y CREDITO MARCABELI LTDA', '211');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4107', 'COOPERATIVA DE AHORRO Y CREDITO NUEVA ESPERANZA', '212');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4108', 'COOPERATIVA DE AHORRO Y CREDITO PILAHUIN', '213');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4109', 'COOPERATIVA DE AHORRO Y CREDITO PROVIDA', '214');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4110', 'COOPERATIVA DE AHORRO Y CREDITO PUCARA LTDA', '215');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4111', 'COOPERATIVA DE AHORRO Y CREDITO QUILANGA LTDA', '216');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4112', 'COOPERATIVA DE AHORRO Y CREDITO SAN JOSE S.J', '217');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4113', 'COOPERATIVA DE AHORRO Y CREDITO SANTA ANITA LTDA', '218');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4115', 'FONDO DE CESANTIA DEL MAGISTERIO ECUATORIANO FCME-FCPC', '219');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4116', 'INTERDIN S.A', '220');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4117', 'COOP. AHORRO Y CREDITO AMAZONAS LTDA', '221');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4118', 'COOP. DE A. Y C. FINANCIERA INDIGENA LTDA', '222');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4119', 'COOP. DE A. Y C. 20 DE FEBRERO LTDA', '223');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4120', 'COOP. DE A. Y C. EDUCADORES TULCAN LTDA', '224');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4166', 'FINANCIERA - CONSULCREDITO S.A', '225');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4167', 'COOPERATIVA DE AHORRO Y CREDITO HUINARA LTDA. [MIES]', '226');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4168', 'COOP. DE A. Y C. INKA KIPU LTDA', '227');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4169', 'COOP. DE A. Y C. ACCION TUNGURAHUA LTDA', '228');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4170', 'COOP. DE A. Y C. 16 DE JUNIO', '229');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4171', 'COOP. A.Y C. ESC.SUP.POLITEC. AGROP. DE MANABI MANUEL FELIX LOPEZ LTDA', '230');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4172', 'COOP. DE A. Y C. INDIGENA ALFA Y OMEGA LTDA.ALFA Y OMEGA LTDA', '231');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4173', 'COOP. DE A. Y C. FENIX', '232');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4174', 'COOP. DE AHORRO Y CREDITO LOS ANDES LATINOS LTDA', '233');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4175', 'COOP. DE AHORRO Y CREDITO GUARUMAL DEL CENTRO LTDA', '234');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4177', 'COOP. DE A. Y C. COOPAC AUSTRO LTDA [MIESS]', '235');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4178', 'COOPERATIVA DE AHORRO Y CREDITO CREA LTDA [ MIES]', '236');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4179', 'CCOP. DE A. Y C. SALASACA', '237');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4180', 'COOP. DE A. Y C. SUMAK SAMY LTDA', '238');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4181', 'COOP. DE A. Y C. INTERCULT. TARPUK RUNA LTDA', '239');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4182', 'COOP. DE A. Y C. CHIBULEO LTDA', '240');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4183', 'COOP. DE A. Y C. EL TESORO PILLARENO', '241');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4184', 'COOP. DE A. Y C. KISAPINCHA LTDA', '242');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4185', 'COOP. DE A. Y C. JUVENTUD UNIDA LTDA', '243');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4186', 'COOP. DE A. Y C. UNION QUISAPINCHA LTDA', '244');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4187', 'COOP. DE A. Y C. 13 DE ABRIL LTDA', '245');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4188', 'COOP. DE A. Y C. SALINAS LTDA', '246');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4189', 'COOP. DE A. Y C. SAN PEDRO LTDA', '247');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4190', 'COOP. DE A. Y C. VIRGEN DEL CISNE', '248');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4191', 'COOP. DE A. Y C. LOS CHASQUIS PASTOCALLE LTDA', '249');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4192', 'COOP. DE A. Y C. COOPINDIGENA LTDA', '250');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4193', 'COOP. DE A. Y C EDUCADORES DE ZAMORA CHINCHIPE', '251');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4194', 'COOPERATIVA DE AHORRO Y CREDITO LAS LAGUNAS [MIESS]', '252');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4195', 'COOP.DE A.Y C. EL COMERCIANTE LTDA [MIES]', '253');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4196', 'COOP. DE AHORRO Y CREDITO EDUCADORES DE EL ORO LTDA', '254');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4197', 'COOP. DE A. Y C. EMPLEADOS BANCARIOS DEL ORO LTDA', '255');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4198', 'COOPERATIVA DE AHORRO Y CREDITO RIOCHICO', '256');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4199', 'COOP. DE A. Y C. LA UNION LTDA', '257');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '42', 'BANCO GENERAL RUMINAHUI', '258');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4200', 'COOP. DE A. Y C. SAN MARTIN DE TISALEO LTDA', '259');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4201', 'COOP. DE A. Y C. ALLI TARPUC LTDA', '260');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4202', 'COOP. DE AHORRO Y CREDITO SAN MIGUEL DE PALLATANGA', '261');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4203', 'COOP. DE A. Y C. PADRE VICENTE PONCE RUBIO', '262');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4213', 'COOP. DE A. Y C. EL TRANSPORTISTA CACET', '263');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4216', 'COOP. DE A Y C. LUZ DEL VALLE', '264');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4217', 'COOP. DE A Y C. ESPERANZA Y PROGRESO DEL VALLE', '265');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4224', 'COOPERATIVA DE AHORRO Y CREDITO RUNA SHUNGO LTDA', '266');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '4227', 'BCE-TRANSFERENCIAS REMESAS', '267');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '43', 'BANCO DEL LITORAL S.A', '268');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '45', 'BANCO SUDAMERICANO', '269');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '50', 'BANCO COFIEC', '270');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5001', 'COOP. DE A. Y C. CORDILLERA DE LOS ANDES LTDA', '271');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5002', 'COOP. DE A. Y C. PUERTO FRANCISCO DE ORELLANA', '272');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5003', 'COOP. DE A. Y C. CHOCO TUNGURAHUA RUNA LTDA', '273');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5004', 'COOP. DE A. Y C. COOPARTAMOS LTDA', '274');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5005', 'COOP. DE A. Y C. CORPORACION CENTRO LTDA', '275');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5006', 'COOP DE A. Y C. SAN JUAN DE COTOGCHOA', '276');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5007', 'COOP. DE A. Y C. EMPRENDEDORES COOPEMPRENDER LTDA', '277');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5008', 'COOP. DE A. Y C. NUEVA LOJA LTDA', '278');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5009', 'COOP. DE A. Y C. PICHNCHA LTDA', '279');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5010', 'COOP.DE AHORRO Y CREDITO CACEC LTDA. [COTOPAXI]', '280');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5011', 'COOP.DE A. Y C. VENCEDORES DE PICHINCHA LTDA', '281');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5012', 'COOPERATIVA DE AHORRO Y CREDITO SAN BARTOLO LTDA', '282');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5013', 'COOP. DE AHORRO Y CREDITO ïEL DISCAPACITADOï LTDA', '283');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5014', 'COOP. DE A. Y C. DEL EMIGRANTE ECUATORIANO Y SU FAMILIA LTDA', '284');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5015', 'COOP. AHORRO Y CREDITO LA LIBERTAD LTDA', '285');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5016', 'COAC CUNA DE LA NACIONALIDAD LTDA', '286');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5017', 'COOP. DE A Y C. SERVIDORES MUNICIPALES DE CUENCA', '287');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5018', 'COOP. DE A. Y C. SAN MARCOS', '288');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5019', 'COOP. DE AHORRO Y CREDITO PROFUTURO LTDA', '289');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5020', 'COOPERATIVA DE AHORRO Y CREDITO MACODES LTDA', '290');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5021', 'COOPERATIVA DE AHORRO Y CREDITO GUACHAPALA LTDA', '291');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5022', 'COOPERATIVA DE AHORRO Y CREDITO SANTA ISABEL LTDA', '292');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5023', 'COOPERATIVA DE AHORRO Y CREDITO GANANSOL LTDA', '293');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5024', 'COOPERATIVA DE AHORRO Y CREDITO DEL AZUAY', '294');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5025', 'COAC DEL SINDICATO DE CHOFERES PROFESIONALES DEL AZUAY', '295');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5026', 'COOPERATIVA DE AHORRO Y CREDITO DEL COLEGIO DE ARQUITECTOS DEL AZUAY', '296');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5027', 'COOPERATIVA DE AHORRO Y CREDITO NUKANCHIK', '297');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5028', 'COOPERATIVA DE AHORRO Y CREDITO SANTA ANA LTDA', '298');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5029', 'COOPERATIVA DE AHORRO Y CREDITO MULTIEMPRESARIAL LTDA', '299');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5031', 'COOP. DE A. Y C. INDIGENA SAC PELILEO', '300');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5032', 'COOP. DE A. Y C. INTERCULTURAL TAWANTINSUYU LTDA', '301');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5033', 'COOP. DE A. Y C. OCIPSA', '302');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5034', 'COOP. DE A. Y C. MUSHUG CAUSAY LTDA', '303');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5035', 'COOP. DE A. Y C. 21 DE NOVIEMBRE LTDA', '304');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5036', 'COOP. DE A. Y C. LA FLORESTA LTDA', '305');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5037', 'COOP. DE A. Y C. CORP. ORG. CAMPESINAS DE QUISAPINCHA COCIQ', '306');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5038', 'COOP. DE A. Y C. MULTICULTURAL BANCO INDIGENA LTDA', '307');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5039', 'COOP DE A. Y C. CRECER WINARI LTDA', '308');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5040', 'COOP. DE A. Y C. BANOS DE AGUA SANTA LTDA', '309');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5041', 'COOP. DE AHORRO Y CREDITO 1 DE JULIO', '310');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5042', 'COOP. DE A. Y C. SUMAK NAN LTDA', '311');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5043', 'COOPERATIVA DE AHORRO Y CREDITO CANAR LTDA', '312');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5044', 'COOPERATIVA DE AHORRO Y CREDITO SAN ANTONIO LTDA', '313');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5045', 'COOP. DE AHORRO Y CREDITO FUNDAR', '314');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5046', 'COAC BUENA FE LTDA', '315');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5047', 'COOP. AHORRO Y CREDITO METROPOLIS LTDA', '316');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5048', 'COOP. DE AHORRO Y CREDITO EL CAFETAL', '317');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5049', 'COOP.DE AHORRO Y CREDITO MICROEMPRESARIAL ïSUCREï', '318');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5050', 'COOP. DE A. Y C. AFROECUATORIANA DE LA PEQ. EMP. LTDA CACAEPE', '319');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5051', 'COOPERATIVA DE AHORRO Y CREDITO JOYOCOTO LTDA', '320');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5052', 'COOP. DE A. Y C. UNIOTAVALO LTDA', '321');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5053', 'COOP. DE A. Y C. UNION EL EJIDO', '322');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5054', 'COOP. DE A. Y C. GENESIS LTDA', '323');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5055', 'COOP. DE A Y C. MARIA AUXILIADORA DE QUIROGA LTDA', '324');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5056', 'COOP. DE A. Y C. FORTALEZA', '325');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5057', 'COOP. DE A. Y C. PUJILI LTDA', '326');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5058', 'COOP. DE A. Y C. CREDIL LTDA', '327');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5059', 'COOP. DE A. Y C. COOPTOPAXI LTDA', '328');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5060', 'COOP. DE A. Y C. ILINIZA LTDA', '329');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5061', 'COOP. DE A. Y C. MUSHUK PAKARI LTDA', '330');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5062', 'COOP. DE A. Y C. UNIBLOCK Y SERVICIOS LTDA', '331');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5063', 'COOP. DE A. Y C. SAN FERNANDO LIMITADA', '332');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5064', 'COOP. DE A. Y C. FUTURO LAMANENSE', '333');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5065', 'COOP. DE A. Y C. SAQUISILI LTDA', '334');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5066', 'COOP. DE A. Y C. INNOVACION ANDINA LTDA', '335');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5067', 'COOP. DE A. Y C. MUSHUK WASI LTDA [ MIES ]', '336');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5068', 'COOP. DE AHORRO Y CREDITO SARAGUROS', '337');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5069', 'COOPERATIVA DE AHORRO Y CREDITO ïINTI WASIï LTDA. [MIES]', '338');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5070', 'COOPERATIVA DE AHORRO Y CREDITO CASA FACIL LTDA', '339');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5071', 'COOPERATIVA DE AHORRO Y CREDITO SOLIDARIA LTDA', '340');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5072', 'COOPERATIVA DE AHORRO Y CREDITO ECONOMIA DEL SUR ïECOSURï', '341');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5073', 'COOPERATIVA DE AHORRO Y CREDITO MIGRANTES Y EMPRENDEDORES', '342');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5074', 'COOPERATIVA DE AHORRO Y CREDITO SAN SEBASTIAN', '343');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5075', 'COOP. DE A. Y C. DEL SINDICATO DE CHOFERES PROFESIONALES DE LOJA', '344');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5077', 'COOPERATIVA DE AHORRO Y CREDITO SOCIO AMIGO', '345');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5078', 'COOP. DE A. Y C. INDIGENAS GALAPAGOS LTDA', '346');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5079', 'COOPERATIVA DE AHORRO Y CREDITO LA BENEFICA LTDA', '347');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5080', 'COOPERATIVA DE AHORRO Y CREDITO SAN ISIDRO LTDA', '348');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5081', 'COOP.DE AHORRO Y CREDITO ABDON CALDERON LTDA', '349');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5082', 'COOP. A Y C CAMARA DE COMERCIO CANTON -EL CARMEN LTDA', '350');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5083', 'COOP.DE AHORRO Y CREDITO AGROPRODUCTIVA MANABI LTDA', '351');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5084', 'COOP. DE AHORRO Y CRED. LA INMACULADA DE SAN PLACIDO LTDA', '352');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5085', 'COOP. AHORRO Y CREDITO CACPE MANABI', '353');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5086', 'COOP.AHORRO Y CREDITO MAGISTERIO MANABITA LIMITADA', '354');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5087', 'COAC TIENDA DE DINERO LTDA', '355');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5088', 'COOP.A.Y C. SANTA MARIA DE LA MANGA DEL CURA LTDA', '356');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5089', 'COOP. DE A. Y C. SOL DE LOS ANDES LTDA', '357');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5090', 'COOP. DE A.Y C. PRODUC. AHORRO INVERS. SERVICIO P.A.I.S. LTDA', '358');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5091', 'COOP. DE A. Y C. FRANDESC LTDA', '359');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5092', 'COOP. DE A. Y C. NUKA LLAKTA LTDA', '360');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5093', 'COOP. DE A Y C. CAMARA DE COMERCIO RIOBAMBA', '361');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5094', 'COOP. DE A. Y C. BASHALAN LTDA', '362');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '5095', 'COOP. DE A. Y C. CAMARA DE COMERCIO SANTO DOMINGO', '363');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '59', 'BANCO SOLIDARIO', '364');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '60', 'BANCO PROCREDIT S.A', '365');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '61', 'BANCO CAPITAL S.A', '366');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '66', 'BANECUADOR B.P.', '367');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '82', 'FINANCIERA - FINANCOOP', '368');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '98', 'Garante', '369');
INSERT INTO `tabla_referenciales_sri` VALUES ('PARENTESCO', '99', 'Otro', '370');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '9987', 'COOP. ïCALCETAï LTDA', '371');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '9988', 'COOPERATIVA DE AHORRO Y CREDITO MINGA LTDA', '372');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '9989', 'COOP. AHORRO Y CREDITO ACCION RURAL', '373');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '9995', 'COOP. AHORRO Y CREDITO 15 DE ABRIL LTDA', '374');
INSERT INTO `tabla_referenciales_sri` VALUES ('BANCOS Y COOP', '9997', 'COOP. DE AHORRO Y CREDITO POLICIA NACIONAL LTDA', '375');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'BLOQ', 'Bloqueo definitivo', '376');
INSERT INTO `tabla_referenciales_sri` VALUES ('IDENTIFICACION', 'C', 'Cedula de Identidad', '377');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'DBFULL', 'Su Base de Datos esta a punto de colapsar', '378');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'DBMANT', 'Su Base de Datos Necesita Mantenimiento', '379');
INSERT INTO `tabla_referenciales_sri` VALUES ('IDENTIFICACION', 'F', 'Consumidor Final', '380');
INSERT INTO `tabla_referenciales_sri` VALUES ('SEXO', 'F', 'Femenino', '381');
INSERT INTO `tabla_referenciales_sri` VALUES ('SEXO', 'M', 'Masculino', '382');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'MAS360', 'Cartera Vencida por mas 360', '383');
INSERT INTO `tabla_referenciales_sri` VALUES ('APLICA CONVENIO', 'NA', 'No aplica', '384');
INSERT INTO `tabla_referenciales_sri` VALUES ('APLICA CONVENIO', 'NO', 'Sin convenio', '385');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'OK', 'Empresa al Dia', '386');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'OKONLY', 'Empresa al dia solo lectura', '387');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'ONLY', 'Empresa de Solo Lectura', '388');
INSERT INTO `tabla_referenciales_sri` VALUES ('IDENTIFICACION', 'P', 'Pasaporte', '389');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'PAGO', 'Falta de Pago', '390');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'PRUEBA', 'Empresa a prueba por 45 dias', '391');
INSERT INTO `tabla_referenciales_sri` VALUES ('IDENTIFICACION', 'R', 'Registro Unico Contribuyente', '392');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'RENOV', 'Su contrato esta por vencer', '393');
INSERT INTO `tabla_referenciales_sri` VALUES ('APLICA CONVENIO', 'SI', 'Con convenio', '394');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VEN180', 'Cartera Vencida por 180', '395');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VEN30', 'Cartera Vencida por 30', '396');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VEN360', 'Cartera Vencida por 360', '397');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VEN60', 'Cartera Vencida por 60', '398');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VEN90', 'Cartera Vencida por 90', '399');
INSERT INTO `tabla_referenciales_sri` VALUES ('ESTADO EMPRESA', 'VRENOV', 'Su contrato esta vencido', '400');

-- ----------------------------
-- Table structure for tamanio
-- ----------------------------
DROP TABLE IF EXISTS `tamanio`;
CREATE TABLE `tamanio` (
  `id_tamanio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float(255,0) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tamanio`),
  KEY `FK_PRODUCTO_TAMANIO` (`id_producto`),
  CONSTRAINT `tamanio_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tamanio
-- ----------------------------

-- ----------------------------
-- Table structure for tipo_concepto_retencion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_concepto_retencion`;
CREATE TABLE `tipo_concepto_retencion` (
  `Concepto` varchar(230) DEFAULT NULL,
  `Porcentaje` float DEFAULT NULL,
  `Codigo` varchar(5) DEFAULT NULL,
  `Ingresar_Porcentaje` varchar(1) DEFAULT NULL,
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Fecha_Final` datetime DEFAULT NULL,
  `T` varchar(1) DEFAULT NULL,
  `Tipo_Pago` varchar(1) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_Tipo_Concepto_Retencion` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tipo_concepto_retencion
-- ----------------------------
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Rendimientos Financieros', '5', '308', 'N', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '1');
INSERT INTO `tipo_concepto_retencion` VALUES ('Remuneraciones a Deportistas Entrenadores Cuerpo Tecnico y Arbitros', '5', '318', 'S', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '2');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transacciones de Bienes [Activos Fijos]', '1', '323', 'N', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '3');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transacciones de Bienes [Activos Corrientes]', '1', '325', 'N', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '4');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transacciones de Servicios', '1', '327', 'S', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '5');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses y Comisiones en Operaciones de Credito', '1', '411', 'N', '2002-01-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '6');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento Mercantil Internacional por Pago de Intereses', '25', '419', 'N', '2002-01-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '7');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento Mercantil Internacional cuando no se ejerce la opcion de Compra', '25', '421', 'N', '2002-01-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '8');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos Por Seguros y Reaseguros', '1', '307', 'N', '2002-02-01 00:00:00', '2003-02-28 00:00:00', 'N', 'L', '9');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios Personas Naturales', '8', '302', 'N', '2003-03-01 00:00:00', '2003-03-31 00:00:00', 'N', 'L', '10');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Personas Naturales', '8', '306', 'N', '2003-03-01 00:00:00', '2003-03-31 00:00:00', 'N', 'L', '11');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos Por Seguros y Reaseguros', '1', '307', 'N', '2003-03-01 00:00:00', '2003-03-31 00:00:00', 'N', 'L', '12');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos realizados a Notarios y Registradores de Propiedad o Mercantiles', '8', '337', 'N', '2003-03-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '13');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos de Dividendos Anticipados', '25', '339', 'N', '2003-03-01 00:00:00', '2004-03-31 00:00:00', 'N', 'L', '14');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios Personas Naturales', '8', '303', 'N', '2003-04-01 00:00:00', '2006-12-31 00:00:00', 'N', 'L', '15');
INSERT INTO `tipo_concepto_retencion` VALUES ('Remuneracion a Otros Trabajadores Autonomos [N]', '1', '304', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '16');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Materia Prima [N]', '1', '306', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '17');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Bienes No Producidos por la Sociedad [N]', '1', '307', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '18');
INSERT INTO `tipo_concepto_retencion` VALUES ('Suministros y Materiales [N]', '1', '309', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '19');
INSERT INTO `tipo_concepto_retencion` VALUES ('Repuestos y Herramientas [N]', '1', '310', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '20');
INSERT INTO `tipo_concepto_retencion` VALUES ('Lubricantes [N]', '1', '311', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '21');
INSERT INTO `tipo_concepto_retencion` VALUES ('Activos Fijos [N]', '1', '312', 'N', '2003-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '22');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Concepto de Servicio de Transporte Privado de Pasajeros o Servicio Publico o Privado de Carga[N]', '1', '313', 'N', '2003-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '23');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias Derechos de Autor Marcas Patentes y Similares', '0', '314', 'N', '2003-04-01 00:00:00', '2004-03-30 00:00:00', 'N', 'L', '24');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses de Creditos Externos registrados en el BCE [N]', '25', '405', 'N', '2003-04-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '25');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago Local a Extranjeros por Servicios Ocasionales', '25', '305', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '26');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Materia Prima no Sujeta a retencion [N]', '0', '308', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '27');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias Derechos de Autor Marcas Patentes y Similares - Sociedades', '1', '314', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'S', 'L', '28');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias Derechos de Autor Marcas Patentes y Similares - Personas Naturales', '8', '314', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '29');
INSERT INTO `tipo_concepto_retencion` VALUES ('Remuneraciones a Deportistas Entrenadores Cuerpo Tecnico y Arbitros', '5', '315', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '30');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos realizados a Notarios y Registradores de Propiedad o Mercantiles', '8', '316', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '31');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Comisiones Pagadas a Sociedades [N]', '1', '317', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '32');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Promocion y Publicidad [N]', '1', '318', 'S', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '33');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Arrendamientos Mercantil', '1', '319', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '34');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Personas Naturales', '8', '320', 'N', '2004-04-01 00:00:00', '2006-12-31 00:00:00', 'N', 'L', '35');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Sociedades [N]', '5', '321', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '36');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Seguros y Reaseguros [10% del valor de las primas facturadas]', '1', '322', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '37');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Rendimientos Financieros', '5', '323', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '38');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos Cuenta Corriente', '5', '323A', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '39');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos Cuenta Ahorros Sociedades', '5', '323B1', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'S', 'L', '40');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos Cuenta Ahorros Persona Natural', '0', '323B2', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '41');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos en Cuentas Corrientes Exentas', '0', '323C', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '42');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Compra Cancelacion o Redencion de Mini Bems y Bems 5', '5', '323D', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '43');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Deposito a Plazo', '5', '323E', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '44');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Operaciones de Reporto - REPOS', '5', '323F', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '45');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Inversiones [Captaciones]', '5', '323G', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '46');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Obligaciones', '5', '323H', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '47');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Bonos Convertible en Acciones', '5', '323I', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '48');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Bonos de Organismos y Gobiernos extranjeros', '5', '323J', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '49');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Bonos de Organismos y Gobiernos extranjeros', '5', '323K', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '50');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos o Creditos en Cuenta Real. Empresas Emis. Tarjetas de Credito', '1', '324', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '51');
INSERT INTO `tipo_concepto_retencion` VALUES ('Loterias Rifas Apuestas y Similares', '15', '325', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '52');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Intereses y Comisiones en Operaciones de Credito entre las Instituciones Sistema Financiero [N]', '1', '326', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '53');
INSERT INTO `tipo_concepto_retencion` VALUES ('Venta de Combustibles a Comercializadoras', '0.2', '327', 'S', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '54');
INSERT INTO `tipo_concepto_retencion` VALUES ('Venta de Combustibles a Distribuidoras', '0.3', '328', 'S', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '55');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Otros Servicios [N]', '1', '329', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '56');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos de Dividendos Anticipados', '25', '330', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '57');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Agua Energia Luz y Telecomunicaciones [N]', '1', '331', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '58');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras Compras de Bienes y Servicios no Sujetas a Retencion [N]', '0', '332', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '59');
INSERT INTO `tipo_concepto_retencion` VALUES ('Convenio de Debito o Recaudacion', '0', '333', 'S', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '60');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago con Tarjeta de Credito', '0', '334', 'S', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '61');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por actividades de construccion de obra material inmueble urbanizacion lotizacion o actividades similares', '0', '335', 'N', '2004-04-01 00:00:00', '2007-06-30 00:00:00', 'S', 'L', '62');
INSERT INTO `tipo_concepto_retencion` VALUES ('Base Imponible Conv.Doble Tributacion', '0', '401', 'S', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '63');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses y Costos Financieros por Financiamiento de Proveedores Externos [N]', '25', '403', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '64');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses de Creditos Externos no registrados en el BCE [N]', '25', '407', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '65');
INSERT INTO `tipo_concepto_retencion` VALUES ('Comisiones y Exportaciones [N]', '25', '409', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '66');
INSERT INTO `tipo_concepto_retencion` VALUES ('Convenio de Doble Tributacion', '25', '410', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '67');
INSERT INTO `tipo_concepto_retencion` VALUES ('Comisiones Pagadas para la Promocion del Turismo Receptivo [N]', '25', '411', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '68');
INSERT INTO `tipo_concepto_retencion` VALUES ('El 4% de las Primas de Cesion o Reaseguros Contratados con Empresas que no tengan establecimiento o representacion permanente en E', '25', '413', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '69');
INSERT INTO `tipo_concepto_retencion` VALUES ('10% de los Pagos efectuados por las Agencias Internacionales de Prensa registradas en la Secretaria de Comunicacion del Estado', '25', '415', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '70');
INSERT INTO `tipo_concepto_retencion` VALUES ('El 10% del Valor de los Contratos de Fletamento de Naves para Empresas de Transporte Aereo o Maritimo Internacional [N]', '25', '417', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '71');
INSERT INTO `tipo_concepto_retencion` VALUES ('B. Imponible Arrendamiento Mercantil Internacional por Pago de Intereses', '25', '423', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '72');
INSERT INTO `tipo_concepto_retencion` VALUES ('B. Imponible Arrendamiento Mercantil Internacional cuando no se ejerce la opcion de Compra', '25', '425', 'N', '2004-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '73');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios Personas Naturales', '5', '303', 'N', '2007-01-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '74');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Personas Naturales', '5', '320', 'N', '2007-01-01 00:00:00', '2007-06-30 00:00:00', 'N', 'L', '75');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios comisiones y dietas a personas naturales', '8', '303', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '76');
INSERT INTO `tipo_concepto_retencion` VALUES ('Remuneracion a Otros Trabajadores Autonomos [N]', '2', '304', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '77');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Materia Prima [N]', '2', '306', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '78');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Bienes No Producidos por la Sociedad [N]', '2', '307', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '79');
INSERT INTO `tipo_concepto_retencion` VALUES ('Suministros y Materiales [N]', '2', '309', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '80');
INSERT INTO `tipo_concepto_retencion` VALUES ('Repuestos y Herramientas [N]', '2', '310', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '81');
INSERT INTO `tipo_concepto_retencion` VALUES ('Lubricantes [N]', '2', '311', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '82');
INSERT INTO `tipo_concepto_retencion` VALUES ('Activos Fijos [N]', '2', '312', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '83');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias Derechos de Autor Marcas Patentes y Similares - Sociedades', '2', '314', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '84');
INSERT INTO `tipo_concepto_retencion` VALUES ('Remuneraciones a Deportistas Entrenadores Cuerpo Tecnico y Arbitros', '8', '315', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '85');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Comisiones Pagadas a Sociedades [N]', '2', '317', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '86');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Promocion y Publicidad [N]', '2', '318', 'S', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '87');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Arrendamientos Mercantil', '2', '319', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '88');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Personas Naturales', '8', '320', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '89');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Sociedades [N]', '8', '321', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '90');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Seguros y Reaseguros [10% del valor de las primas facturadas]', '2', '322', 'N', '2007-07-01 00:00:00', '2008-03-31 00:00:00', 'S', 'L', '91');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Rendimientos Financieros', '2', '323', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '92');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos Cuenta Corriente', '2', '323A', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '93');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Depositos Cuenta Ahorros Sociedades', '2', '323B1', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '94');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Compra Cancelacion o Redencion de Mini Bems y Bems 5', '2', '323D', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '95');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Deposito a Plazo', '2', '323E', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '96');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Operaciones de Reporto - REPOS', '2', '323F', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '97');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Inversiones [Captaciones]', '2', '323G', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '98');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Obligaciones', '2', '323H', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '99');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Bonos Convertible en Acciones', '2', '323I', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '100');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF: Bonos de Organismos y Gobiernos extranjeros', '2', '323J', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '101');
INSERT INTO `tipo_concepto_retencion` VALUES ('RF:Entre IFIs', '2', '323K', 'S', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '102');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos o Creditos en Cuenta Real. Empresas Emis. Tarjetas de Credito', '2', '324', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '103');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Otros Servicios [N]', '2', '329', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '104');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por Agua Energia Luz y Telecomunicaciones [N]', '1', '331', 'S', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '105');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por actividades de construccion de obra material inmueble urbanizacion lotizacion o actividades similares', '2', '335', 'N', '2007-07-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '106');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Materia Prima [N]', '1', '306', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '107');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compras Locales de Bienes No Producidos por la Sociedad [N]', '1', '307', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '108');
INSERT INTO `tipo_concepto_retencion` VALUES ('Suministros y Materiales [N]', '1', '309', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '109');
INSERT INTO `tipo_concepto_retencion` VALUES ('Repuestos y Herramientas [N]', '1', '310', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '110');
INSERT INTO `tipo_concepto_retencion` VALUES ('Lubricantes [N]', '1', '311', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '111');
INSERT INTO `tipo_concepto_retencion` VALUES ('Activos Fijos [N]', '1', '312', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'N', 'L', '112');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Seguros y Reaseguros [10% del valor de las primas facturadas]', '1', '322', 'N', '2008-04-01 00:00:00', '2008-12-31 00:00:00', 'S', 'L', '113');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y dietas', '8', '303', 'N', '2009-01-01 00:00:00', '2010-05-31 00:00:00', 'S', 'L', '114');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina el intelecto', '8', '304', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '115');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina la mano de obra', '2', '307', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '116');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios entre sociedades', '2', '308', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '117');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios publicidad y comunicacion', '1', '309', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '118');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicio transporte privado de pasajeros o servicio publico o privado de carga', '1', '310', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '119');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transferencia de bienes muebles de naturaleza corporal', '1', '312', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '120');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento mercantil', '1', '319', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '121');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento bienes inmuebles', '8', '320', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '122');
INSERT INTO `tipo_concepto_retencion` VALUES ('Seguros y reaseguros [primas y cesiones]', '1', '322', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '123');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros [No aplica para IFIs]', '2', '323', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '124');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Corriente', '2', '323A', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '125');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Ahorros Sociedades', '2', '323B1', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '126');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Ahorros Persona Natural', '0', '323B2', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '127');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: depositos en cuentas exentas', '0', '323C', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '128');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: compra cancelacion o redencion de mini bem´s y bem´s', '2', '323D', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '129');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo', '2', '323E', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '130');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: operaciones de reporto - repos', '2', '323F', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '131');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: inversiones [captaciones]', '2', '323G', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '132');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: obligaciones', '2', '323H', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '133');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos convertible en acciones', '2', '323I', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '134');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos de organismos y gobiernos extranjeros', '2', '323J', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '135');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: entre IFIs', '2', '323K', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '136');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por loterias rifas apuestas y similares', '15', '325', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '137');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a comercializadoras [2/ml]', '0.3', '327', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '138');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a distribuidores [2/ml]', '0.2', '328', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '139');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras compras de bienes y servicios no sujetas a retencion', '0', '332', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '140');
INSERT INTO `tipo_concepto_retencion` VALUES ('Convenio de Debito o Recaudacion', '0', '333', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '141');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por compras con tarjeta de credito', '0', '334', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '142');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 1%', '1', '340', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '143');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 2%', '2', '341', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '144');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 8%', '8', '342', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '145');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 25%', '25', '343', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '146');
INSERT INTO `tipo_concepto_retencion` VALUES ('Con convenio de doble tributacion', '0', '401', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '147');
INSERT INTO `tipo_concepto_retencion` VALUES ('Sin convenio de doble tributacion intereses y costos financieros por financiamiento de proveedores externos [en la cuantia que excede a la tasa maxima', '25', '403', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '148');
INSERT INTO `tipo_concepto_retencion` VALUES ('Sin convenio de doble tributacion intereses de creditos externos registrados en el BCE [en la cuantia que excede a la tasa maxima]', '25', '405', 'S', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '149');
INSERT INTO `tipo_concepto_retencion` VALUES ('Sin convenio de doble tributacion por otros conceptos', '25', '421', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '150');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos al exterior no sujetos a retencion', '0', '427', 'N', '2009-01-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '151');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y dietas', '10', '303', 'S', '2010-06-01 00:00:00', '2012-12-31 00:00:00', 'S', 'L', '152');
INSERT INTO `tipo_concepto_retencion` VALUES ('Reembolsos de Gastos Compras de Quien Asume el Gasto', '0', '337', 'S', '2011-01-01 00:00:00', '2012-12-31 00:00:00', 'N', 'L', '153');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios Personas Naturales', '5', '302', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '154');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y dietas', '10', '303', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '155');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina el intelecto', '8', '304', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '156');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Arrendamiento Mercantil', '1', '305', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '157');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento de Bienes Inmuebles de Propiedad de Personas Naturales', '5', '306', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '158');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina la mano de obra', '2', '307', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '159');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios entre sociedades', '2', '308', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '160');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios publicidad y comunicacion', '1', '309', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '161');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicio transporte privado de pasajeros o servicio publico o privado de carga', '1', '310', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '162');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transferencia de bienes muebles de naturaleza corporal', '1', '312', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '163');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Comisiones', '1', '315', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '164');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos o Creditos en Cuenta Real. Empresas Emis. Tarjetas de Credito', '1', '316', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '165');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias Derechos de Autor Marcas Patentes y Similares', '8', '317', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '166');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento mercantile', '1', '319', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '167');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento bienes inmuebles', '8', '320', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '168');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos por Servicios Petroleros', '1', '321', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '169');
INSERT INTO `tipo_concepto_retencion` VALUES ('Seguros y reaseguros [primas y cesiones]', '1', '322', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '170');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros [No aplica para IFIs]', '2', '323', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '171');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Corriente', '2', '323A', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '172');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Ahorros Sociedades', '2', '323B1', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '173');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta Ahorros Persona Natural', '0', '323B2', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '174');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: depositos en cuentas exentas', '0', '323C', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '175');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: compra cancelacion o redencion de mini bem´s y bem´s', '2', '323D', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '176');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo', '2', '323E', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '177');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: operaciones de reporto – repos', '2', '323F', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '178');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: inversiones [captaciones]', '2', '323G', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '179');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: obligaciones', '2', '323H', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '180');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos convertible en acciones', '2', '323I', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '181');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos de organismos y gobiernos extranjeros', '2', '323J', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '182');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: entre IFIs', '2', '323K', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '183');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por loterias rifas apuestas y similares', '15', '325', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '184');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a comercializadoras', '2', '327', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '185');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a distribuidores', '3', '328', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '186');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras compras de bienes y servicios no sujetas a retencion', '0', '332', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '187');
INSERT INTO `tipo_concepto_retencion` VALUES ('Convenio de Debito o Recaudacion', '0', '333', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '188');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por compras con tarjeta de credito', '0', '334', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '189');
INSERT INTO `tipo_concepto_retencion` VALUES ('Reembolso de Gasto - Compra Intermediario', '0', '336', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '190');
INSERT INTO `tipo_concepto_retencion` VALUES ('Reembolso de Gasto - Compra de quien asume el gasto', '0', '337', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '191');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos de Dividendos Anticipados', '25', '339', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '192');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 1%', '1', '340', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '193');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 2%', '2', '341', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '194');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 8%', '8', '342', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '195');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables a la tarifa de impuesto a la renta prevista para sociedades', '22', '343', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '196');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables a otros porcentajes', '0', '344', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '197');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos personas naturales residents', '10', '345', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '198');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos sociedades en paraisos fiscales', '35', '346', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '199');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos anticipados', '22', '347', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '200');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra local de banano a productor', '2', '348', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '201');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto a la actividad bananera productor-exportador', '2', '349', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '202');
INSERT INTO `tipo_concepto_retencion` VALUES ('Conv. Doble Tributacion', '0', '407', 'N', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '203');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Rentas Inmobiliarias', '0', '500', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '204');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Beneficios Empresariales', '0', '501', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '205');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios Empresariales', '0', '502', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '206');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Navegacion Maritima y/o aerea', '0', '503', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '207');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Dividendos', '0', '504', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '208');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses', '0', '505', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '209');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses por Finaciamiento de proveedores externos', '0', '506', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '210');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses de creditos externos', '0', '507', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '211');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Creditos de IFIs organismos y gobierno a gobierno', '0', '508', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '212');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Canones o regalias', '0', '509', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '213');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Ganancias de capital', '0', '510', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '214');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales independientes', '0', '511', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '215');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales dependientes', '0', '512', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '216');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Artistas y deportistas', '0', '513', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '217');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Participacion de consejeros', '0', '514', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '218');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Entretenimiento Publico', '0', '515', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '219');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Pensiones', '0', '516', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '220');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Reembolso de Gastos', '0', '517', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '221');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Funciones Pùblicas', '0', '518', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '222');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Estudiantes', '0', '519', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '223');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por otros conceptos', '0', '520', 'S', '2013-01-01 00:00:00', '2014-09-30 00:00:00', 'N', 'L', '224');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '10', '303', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '225');
INSERT INTO `tipo_concepto_retencion` VALUES ('Utilizacion o aprovechamiento de la imagen o renombre', '10', '303A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '226');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina el intelecto no relacionados con el titulo profesional', '8', '304', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '227');
INSERT INTO `tipo_concepto_retencion` VALUES ('Comisiones y demas pagos por servicios predomina intelecto no relacionados con el titulo profesional', '8', '304A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '228');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a notarios y registradores de la propiedad y mercantil por sus actividades ejercidas como tales', '8', '304B', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '229');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a deportistas entrenadores arbitros miembros del cuerpo tecnico por sus actividades ejercidas como tales', '8', '304C', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '230');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a artistas por sus actividades ejercidas como tales', '8', '304D', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '231');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios y demas pagos por servicios de docencia', '8', '304E', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '232');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina la mano de obra', '2', '307', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '233');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios prestados por medios de comunicacion y agencias de publicidad', '1', '309', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '234');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicio de transporte privado de pasajeros o transporte publico o privado de carga', '1', '310', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '235');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por pagos a traves de liquidacion de compra [nivel cultural o rusticidad]', '2', '311', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '236');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transferencia de bienes muebles de naturaleza corporal', '1', '312', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '237');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes de origen agricola avicola pecuario apicola cunicula bioacuatico y forestal', '1', '312A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '238');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a personas naturales', '8', '314A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '239');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a personas naturales', '8', '314B', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '240');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a sociedades', '8', '314C', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '241');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', '8', '314D', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '242');
INSERT INTO `tipo_concepto_retencion` VALUES ('Cuotas de arrendamiento mercantil inclusive la de opcion de compra', '1', '319', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '243');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por arrendamiento bienes inmuebles', '8', '320', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '244');
INSERT INTO `tipo_concepto_retencion` VALUES ('Seguros y reaseguros [primas y cesiones]', '1', '322', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '245');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros pagados a naturales y sociedades [No a IFIs]', '2', '323', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '246');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta. Corriente', '2', '323A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '247');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta. Ahorros Sociedades', '2', '323B1', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '248');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: compra cancelacion o redencion de mini bem´s y bem´s', '0', '323D', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '249');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo fijo gravados', '2', '323E', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '250');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo fijo exentos', '0', '323E2', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '251');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: operaciones de reporto - repos', '2', '323F', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '252');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: inversiones [captaciones] rendimientos distintos de aquellos pagados a IFIs', '2', '323G', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '253');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: obligaciones', '2', '323H', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '254');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos convertible en acciones', '2', '323I', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '255');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses en operaciones de credito entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '323K', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '256');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Por inversiones entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '323L', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '257');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Inversiones en titulos valores en renta fija gravados', '2', '323M', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '258');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Inversiones en titulos valores en renta fija exentos', '0', '323N', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '259');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economia Popular y Solidaria', '0', '323O', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '260');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses pagados por entidades del sector publico a favor de sujetos pasivos', '2', '323P', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '261');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Otros intereses y rendimientos financieros gravados', '2', '323Q', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '262');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Otros intereses y rendimientos financieros exentos', '0', '323R', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '263');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por loterias rifas apuestas y similares', '15', '325', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '264');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a comercializadoras [2/mil]', '2', '327', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '265');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a distribuidores [3/mil]', '2', '328', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '266');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras compras de bienes y servicios no sujetas a retencion', '0', '332', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '267');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por la enajenacion ocasional de acciones o participaciones y titulos valores', '0', '332A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '268');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes inmuebles', '0', '332B', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '269');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transporte publico de pasajeros', '0', '332C', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '270');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos en el pais por transporte de pasajeros o transporte internacional de carga a companias nacionales o extranjeras de aviacion o maritimas', '0', '332D', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '271');
INSERT INTO `tipo_concepto_retencion` VALUES ('Valores entregados por las cooperativas de transporte a sus socios', '0', '332E', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '272');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compraventa de divisas distintas al dolar de los Estados Unidos de America', '0', '332F', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '273');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos con tarjeta de credito', '0', '334', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '274');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago local tarjeta de credito reportada por la Emisora de tarjeta de credito solo recap', '2', '335', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '275');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior tarjeta de credito reportada por la Emisora de tarjeta de credito solo recap', '0', '335A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '276');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por energia electrica', '1', '340A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '277');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por actividades de construccion de obra material inmueble urbanizacion lotizacion o actividades similares', '1', '340B', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '278');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 2%', '2', '341', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '279');
INSERT INTO `tipo_concepto_retencion` VALUES ('Ganancias de capital [0-10]', '10', '344A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '280');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos personas naturales residentes en el Ecuador', '0', '345', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '281');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos gravados distribuidos en acciones [reinversion de utilidades sin derecho a reduccion tarifa IR]', '0', '345A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '282');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos exentos a sociedades nacionales o extranjeras domiciliadas en el Ecuador', '0', '345B', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '283');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos exentos distribuidos en acciones [reinversion de utilidades con derecho a reduccion tarifa IR]', '0', '345C', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '284');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos anticipados', '22', '347', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '285');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos anticipados prestamos accionistas beneficiarios o partìcipes', '22', '347A', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '286');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra local de banano a productor', '2', '348', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '287');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto a la actividad bananera productor-exportador', '2', '349', 'N', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'L', '288');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Rentas Inmobiliarias', '22', '500', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '289');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Beneficios Empresariales', '22', '501', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '290');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios Empresariales', '22', '502', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '291');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Navegacion Maritima y/o aerea', '22', '503', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '292');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior- Dividendos', '22', '504', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '293');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos a sociedades en paraisos fiscales [entre 13 y 35]', '35', '504A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '294');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos anticipados', '22', '504B', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '295');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos anticipados prestamos accionistas beneficiarios o partìcipes', '22', '504C', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '296');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Rendimientos financieros', '22', '505', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '297');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de Instituciones Financieras del exterior', '22', '505A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '298');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de gobierno a gobierno', '22', '505B', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '299');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de organismos multilaterales', '22', '505C', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '300');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses por financiamiento de proveedores externos', '22', '505D', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '301');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses de otros creditos externos', '22', '505E', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '302');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Otros Intereses y Rendimientos Financieros', '22', '505F', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '303');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Canones derechos de autor marcas patentes y similares', '22', '509', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '304');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Regalias por concepto de franquicias', '22', '509A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '305');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Ganancias de capital', '22', '510', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '306');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales independientes', '22', '511', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '307');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales dependientes', '22', '512', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '308');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Artistas', '22', '513', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '309');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Deportistas', '22', '513A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '310');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Participacion de consejeros', '22', '514', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '311');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Entretenimiento Publico', '22', '515', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '312');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Pensiones', '22', '516', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '313');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Reembolso de Gastos', '22', '517', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '314');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Funciones Publicas', '22', '518', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '315');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Estudiantes', '22', '519', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '316');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por otros conceptos', '22', '520', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '317');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Pago a proveedores de servicios hoteleros y turisticos en el exterior', '22', '520A', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '318');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Arrendamientos mercantil internacional', '22', '520B', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '319');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Seguros cesiones y reaseguros', '22', '520C', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '320');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Comisiones por exportaciones y por promocion de turismo receptivo', '22', '520D', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '321');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por las empresas de transporte maritimo o aereo y por empresas pesqueras de alta mar por su actividad', '22', '520E', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '322');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por las agencias internacionales de prensa', '22', '520F', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '323');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Contratos de fletamento de naves para empresas de transporte aereo o maritimo internacional', '22', '520G', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '324');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - No sujetos a retencion', '22', '521', 'S', '2014-10-01 00:00:00', '2015-02-28 00:00:00', 'S', 'E', '325');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '10', '303', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '326');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina el intelecto no relacionados con el titulo profesional', '8', '304', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '327');
INSERT INTO `tipo_concepto_retencion` VALUES ('Comisiones y demas pagos por servicios predomina intelecto no relacionados con el titulo profesional', '8', '304A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '328');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a notarios y registradores de la propiedad y mercantil por sus actividades ejercidas como tales', '8', '304B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '329');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a deportistas entrenadores arbitros miembros del cuerpo tecnico por sus actividades ejercidas como tales', '8', '304C', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '330');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a artistas por sus actividades ejercidas como tales', '8', '304D', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '331');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios y demas pagos por servicios de docencia', '8', '304E', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '332');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina la mano de obra', '2', '307', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '333');
INSERT INTO `tipo_concepto_retencion` VALUES ('Utilizacion o aprovechamiento de la imagen o renombre', '10', '308', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '334');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios prestados por medios de comunicacion y agencias de publicidad', '1', '309', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '335');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicio de transporte privado de pasajeros o transporte publico o privado de carga', '1', '310', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '336');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por pagos a traves de liquidacion de compra [nivel cultural o rusticidad]', '2', '311', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '337');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transferencia de bienes muebles de naturaleza corporal', '1', '312', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '338');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes de origen agricola avicola pecuario apicola cunicula bioacuatico y forestal', '1', '312A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '339');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a personas naturales', '8', '314A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '340');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a personas naturales', '8', '314B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '341');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a sociedades', '8', '314C', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '342');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', '8', '314D', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '343');
INSERT INTO `tipo_concepto_retencion` VALUES ('Cuotas de arrendamiento mercantil inclusive la de opcion de compra', '1', '319', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '344');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por arrendamiento bienes inmuebles', '8', '320', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '345');
INSERT INTO `tipo_concepto_retencion` VALUES ('Seguros y reaseguros [primas y cesiones]', '1', '322', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '346');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros pagados a naturales y sociedades [No a IFIs]', '2', '323', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '347');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Inversiones en titulos valores en renta fija gravados', '2', '323_M', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '348');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Inversiones en titulos valores en renta fija exentos', '0', '323_N', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '349');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economia Popular y Solidaria', '0', '323_O', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '350');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses pagados por entidades del sector publico a favor de sujetos pasivos', '2', '323_P', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '351');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta. Corriente', '2', '323A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '352');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: depositos Cta. Ahorros Sociedades', '2', '323B1', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '353');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo fijo gravados', '2', '323E', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '354');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: deposito a plazo fijo exentos', '0', '323E2', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '355');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por rendimientos financieros: operaciones de reporto - repos', '2', '323F', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '356');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: inversiones [captaciones] rendimientos distintos de aquellos pagados a IFIs', '2', '323G', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '357');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: obligaciones', '2', '323H', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '358');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: bonos convertible en acciones', '2', '323I', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '359');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Otros intereses y rendimientos financieros gravados', '2', '323Q', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '360');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Otros intereses y rendimientos financieros exentos', '0', '323R', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '361');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Intereses en operaciones de credito entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '324A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '362');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por RF: Por inversiones entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '324B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '363');
INSERT INTO `tipo_concepto_retencion` VALUES ('Anticipo dividendos', '22', '325', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '364');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos anticipados prestamos accionistas beneficiarios o partìcipes', '22', '325A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '365');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos que correspondan al impuesto a la renta unico establecido en el art. 27 de la lrti [hasta el 100%]', '100', '326', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '366');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos a personas naturales residentes [1% al 13%]', '13', '327', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '367');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos a sociedades residentes [hasta el 100%]', '100', '328', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '368');
INSERT INTO `tipo_concepto_retencion` VALUES ('dividendos distribuidos a fideicomisos residentes [hasta el 100%]', '100', '329', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '369');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos gravados distribuidos en acciones [reinversion de utilidades sin derecho a reduccion tarifa IR]', '0', '330', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '370');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos exentos distribuidos en acciones [reinversion de utilidades con derecho a reduccion tarifa IR]', '0', '331', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '371');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras compras de bienes y servicios no sujetas a retencion', '0', '332', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '372');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por la enajenacion ocasional de acciones o participaciones y titulos valores', '0', '332A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '373');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes inmuebles', '0', '332B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '374');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transporte publico de pasajeros', '0', '332C', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '375');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos en el pais por transporte de pasajeros o transporte internacional de carga a companias nacionales o extranjeras de aviacion o maritimas', '0', '332D', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '376');
INSERT INTO `tipo_concepto_retencion` VALUES ('Valores entregados por las cooperativas de transporte a sus socios', '0', '332E', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '377');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compraventa de divisas distintas al dolar de los Estados Unidos de America', '0', '332F', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '378');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos con tarjeta de credito', '0', '332G', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '379');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior tarjeta de credito reportada por la Emisora de tarjeta de credito solo recap', '0', '332H', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '380');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a traves de convenio de debito [Clientes IFIS]', '0', '332I', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '381');
INSERT INTO `tipo_concepto_retencion` VALUES ('Enajenacion de derechos representativos de capital y otros derechos cotizados en bolsa ecuatoriana', '0.2', '333', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '382');
INSERT INTO `tipo_concepto_retencion` VALUES ('Enajenacion de derechos representativos de capital y otros derechos no cotizados en bolsa ecuatoriana', '1', '334', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '383');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por loterias rifas apuestas y similares', '15', '335', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '384');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a comercializadoras [2/mil]', '2', '336', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '385');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por venta de combustibles a distribuidores [3/mil]', '2', '337', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '386');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra local de banano a productor [1% -2%]', '2', '338', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '387');
INSERT INTO `tipo_concepto_retencion` VALUES ('Liquidacion impuesto unico a la venta local de banano de produccion propia [hasta el 100%]', '100', '339', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '388');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto unico a la exportacion de banano de produccion propia - componente 1 [1% -2%]', '2', '340', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '389');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto unico a la exportacion de banano de produccion propia - componente 2 [125% - 2%]', '2', '341', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '390');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto unico a la exportacion de banano producido por terceros [05%-2%]', '2', '342', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '391');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras Retenciones Aplicables el 1%', '1', '343', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '392');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por energia electrica', '1', '343A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '393');
INSERT INTO `tipo_concepto_retencion` VALUES ('Por actividades de construccion de obra material inmueble urbanizacion lotizacion o actividades similares', '1', '343B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '394');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 2%', '2', '344', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '395');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago local tarjeta de credito reportada por la Emisora de tarjeta de credito solo recap', '2', '344A', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '396');
INSERT INTO `tipo_concepto_retencion` VALUES ('Ganancias de capital [entre 0 y 10]', '10', '346A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'L', '397');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Rentas Inmobiliarias [entre 0 y 22]', '22', '500', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '398');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Beneficios Empresariales [entre 0 y 22]', '22', '501', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '399');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Servicios tecnicos administrativos o de consultoria y regalia', '35', '501A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '400');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios Empresariales [entre 0 y 22]', '22', '502', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '401');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Navegacion Maritima y/o aerea [entre 0 y 22]', '22', '503', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '402');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior- Dividendos distribuidos a personas naturales', '0', '504', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '403');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos a sociedades [hasta el 100%]', '100', '504A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '404');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Anticipo dividendos', '22', '504B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '405');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos anticipados prestamos accionistas beneficiarios o partìcipes [entre 0 y 22]', '22', '504C', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '406');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos a fideicomisos [hasta el 100%]', '100', '504D', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '407');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior- Dividendos distribuidos a personas naturales [paraisos fiscales]', '0', '504E', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '408');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos a sociedades [paraisos fiscales]', '13', '504F', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '409');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Anticipo dividendos [paraisos fiscales]', '25', '504G', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '410');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Dividendos a fideicomisos [paraisos fiscales]', '13', '504H', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '411');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Rendimientos financieros [entre 0 y 22]', '22', '505', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '412');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de Instituciones Financieras del exterior [entre 0 y 22]', '22', '505A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '413');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de gobierno a gobierno [entre 0 y 22]', '22', '505B', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '414');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior – Intereses de creditos de organismos multilaterales [entre 0 y 22]', '22', '505C', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '415');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses por financiamiento de proveedores externos [entre 0 y 22]', '22', '505D', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '416');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Intereses de otros creditos externos [entre 0 y 22]', '22', '505E', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '417');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Otros Intereses y Rendimientos Financieros [entre 0 y 22]', '22', '505F', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '418');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Canones derechos de autor marcas patentes y similares [entre 0 y 22]', '22', '509', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '419');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Regalias por concepto de franquicias [entre 0 y 22]', '22', '509A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '420');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Ganancias de capital [entre 0 y 22]', '22', '510', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '421');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales independientes [entre 0 y 22]', '22', '511', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '422');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios profesionales dependientes [entre 0 y 22]', '22', '512', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '423');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Artistas [entre 0 y 22]', '22', '513', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '424');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Deportistas [entre 0 y 22]', '22', '513A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '425');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Participacion de consejeros [entre 0 y 22]', '22', '514', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '426');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Entretenimiento Publico [entre 0 y 22]', '22', '515', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '427');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Pensiones [entre 0 y 22]', '22', '516', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '428');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Reembolso de Gastos [entre 0 y 22]', '22', '517', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '429');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Funciones Publicas [entre 0 y 22]', '22', '518', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '430');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Estudiantes [entre 0 y 22]', '22', '519', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '431');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Otros conceptos de ingresos gravados [entre 0 y 22]', '22', '520', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '432');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Pago a proveedores de servicios hoteleros y turisticos en el exterior [entre 0 y 22]', '22', '520A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '433');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Arrendamientos mercantil internacional [entre 0 y 22]', '22', '520B', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '434');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Comisiones por exportaciones y por promocion de turismo receptivo [entre 0 y 22]', '22', '520D', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '435');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por las empresas de transporte maritimo o aereo y por empresas pesqueras de alta mar por su actividad. [entre 0 y 22]', '22', '520E', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '436');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Por las agencias internacionales de prensa [entre 0 y 22]', '22', '520F', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '437');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Contratos de fletamento de naves para empresas de transporte aereo o maritimo internacional [entre 0 y 22]', '22', '520G', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '438');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Enajenacion de derechos representativos de capital y otros derechos', '5', '521', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '439');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios tecnicos administrativos o de consultoria y regalias con convenio de doble tributacion [hasta el 100%]', '100', '522A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '440');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios tecnicos administrativos o de consultoria y regalias sin convenio de doble tributacion', '22', '522B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '441');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Servicios tecnicos administrativos o de consultoria y regalias en paraisos fiscales', '35', '522C', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '442');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Seguros y reaseguros [primas y cesiones] con convenio de doble tributacion [hasta el 100%]', '100', '523A', 'S', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '443');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Seguros y reaseguros [primas y cesiones] sin convenio de doble tributacion', '22', '523B', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '444');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Seguros y reaseguros [primas y cesiones] en paraisos fiscales', '35', '523C', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '445');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior - Otros pagos al exterior no sujetos a retencion', '0', '524', 'N', '2015-03-01 00:00:00', '2020-03-31 00:00:00', 'S', 'E', '446');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios profesionales y demas pagos por servicios relacionados con el titulo profesional', '10', '303', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '447');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina el intelecto no relacionados con el titulo profesional', '8', '304', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '448');
INSERT INTO `tipo_concepto_retencion` VALUES ('Comisiones y demas pagos por servicios predomina intelecto no relacionados con el titulo profesional', '8', '304A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '449');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a notarios y registradores de la propiedad y mercantil por sus actividades ejercidas como tales', '8', '304B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '450');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a deportistas entrenadores arbitros miembros del cuerpo tecnico por sus actividades ejercidas como tales', '8', '304C', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '451');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a artistas por sus actividades ejercidas como tales', '8', '304D', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '452');
INSERT INTO `tipo_concepto_retencion` VALUES ('Honorarios y demas pagos por servicios de docencia', '8', '304E', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '453');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios predomina la mano de obra', '2', '307', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '454');
INSERT INTO `tipo_concepto_retencion` VALUES ('Utilizacion o aprovechamiento de la imagen o renombre', '10', '308', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '455');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicios prestados por medios de comunicacion y agencias de publicidad', '1.75', '309', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '456');
INSERT INTO `tipo_concepto_retencion` VALUES ('Servicio de transporte privado de pasajeros o transporte publico o privado de carga', '1', '310', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '457');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos a traves de liquidacion de compra [nivel cultural o rusticidad]', '2', '311', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '458');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transferencia de bienes muebles de naturaleza corporal', '1.75', '312', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '459');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes de origen agricola avicola pecuario apicola cunicula bioacuatico forestal y carnes en estado natural', '1', '312A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '460');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto a la Renta unico para la actividad de produccion y cultivo de palma aceitera', '1', '312B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '461');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a personas naturales', '8', '314A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '462');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a personas naturales', '8', '314B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '463');
INSERT INTO `tipo_concepto_retencion` VALUES ('Regalias por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual - pago a sociedades', '8', '314C', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '464');
INSERT INTO `tipo_concepto_retencion` VALUES ('Canones derechos de autor marcas patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', '8', '314D', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '465');
INSERT INTO `tipo_concepto_retencion` VALUES ('Cuotas de arrendamiento mercantil [prestado por sociedades] inclusive la de opcion de compra', '1.75', '319', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '466');
INSERT INTO `tipo_concepto_retencion` VALUES ('Arrendamiento bienes inmuebles', '8', '320', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '467');
INSERT INTO `tipo_concepto_retencion` VALUES ('Seguros y reaseguros [primas y cesiones]', '1.75', '322', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '468');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros pagados a naturales y sociedades [No a IFIs]', '2', '323', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '469');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros depositos Cta. Corriente', '2', '323A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '470');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros depositos Cta. Ahorros Sociedades', '2', '323B1', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '471');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros deposito a plazo fijo gravados', '2', '323E', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '472');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros deposito a plazo fijo exentos', '0', '323E2', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '473');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros operaciones de reporto - repos', '2', '323F', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '474');
INSERT INTO `tipo_concepto_retencion` VALUES ('Inversiones [captaciones] rendimientos distintos de aquellos pagados a IFIs', '2', '323G', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '475');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros obligaciones', '2', '323H', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '476');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros bonos convertible en acciones', '2', '323I', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '477');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros : Inversiones en titulos valores en renta fija gravados', '2', '323M', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '478');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros Inversiones en titulos valores en renta fija exentos', '0', '323N', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '479');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses y demas rendimientos financieros pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economia Popular y Solidaria', '0', '323O', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '480');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses pagados por entidades del sector publico a favor de sujetos pasivos', '2', '323P', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '481');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otros intereses y rendimientos financieros gravados', '2', '323Q', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '482');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otros intereses y rendimientos financieros exentos', '0', '323R', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '483');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos y creditos en cuenta efectuados por el BCE y los depositos centralizados de valores en calidad de intermediarios a instituciones del sistema financiero por cuenta de otras personas naturales y sociedades', '2', '323S', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '484');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros originados en la deuda publica ecuatoriana', '0', '323T', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '485');
INSERT INTO `tipo_concepto_retencion` VALUES ('Rendimientos financieros originados en titulos valores de obligaciones de 360 dias o mas para el financiamiento de proyectos publicos en asociacion publico-privada', '0', '323U', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '486');
INSERT INTO `tipo_concepto_retencion` VALUES ('Intereses en operaciones de credito entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '324A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '487');
INSERT INTO `tipo_concepto_retencion` VALUES ('Inversiones entre instituciones del sistema financiero y entidades economia popular y solidaria', '1', '324B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '488');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos y creditos en cuenta efectuados por el BCE y los depositos centralizados de valores en calidad de intermediarios a instituciones del sistema financiero por cuenta de otras instituciones del sistema financiero', '1', '324C', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '489');
INSERT INTO `tipo_concepto_retencion` VALUES ('Anticipo dividendos 22% o 25%', '22', '325', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '490');
INSERT INTO `tipo_concepto_retencion` VALUES ('Prestamos accionistas beneficiarios o participes residentes o establecidos en el Ecuador 22% o 25%', '22', '325A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '491');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos que correspondan al impuesto a la renta unico establecido en el art. 27 de la LRTI', '25', '326', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '492');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos a personas naturales residentes', '25', '327', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '493');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos distribuidos a sociedades residentes', '0', '328', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '494');
INSERT INTO `tipo_concepto_retencion` VALUES ('dividendos distribuidos a fideicomisos residentes', '0', '329', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '495');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos en acciones [capitalizacion de utilidades]', '0', '331', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '496');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras compras de bienes y servicios no sujetas a retencion', '0', '332', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '497');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compra de bienes inmuebles', '0', '332B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '498');
INSERT INTO `tipo_concepto_retencion` VALUES ('Transporte publico de pasajeros', '0', '332C', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '499');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos en el pais por transporte de pasajeros o transporte internacional de carga a companias nacionales o extranjeras de aviacion o maritimas', '0', '332D', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '500');
INSERT INTO `tipo_concepto_retencion` VALUES ('Valores entregados por las cooperativas de transporte a sus socios', '0', '332E', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '501');
INSERT INTO `tipo_concepto_retencion` VALUES ('Compraventa de divisas distintas al dolar de los Estados Unidos de America', '0', '332F', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '502');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pagos con tarjeta de credito', '0', '332G', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '503');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago al exterior tarjeta de credito reportada por la Emisora de tarjeta de credito solo recap', '0', '332H', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '504');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a traves de convenio de debito [Clientes IFIS]', '0', '332I', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '505');
INSERT INTO `tipo_concepto_retencion` VALUES ('Ganancia en la enajenacion de derechos representativos de capital u otros derechos que permitan la exploracion explotacion concesion o similares de sociedades que se coticen en bolsa de valores del Ecuador', '10', '333', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '506');
INSERT INTO `tipo_concepto_retencion` VALUES ('Contraprestacion producida por la enajenacion de derechos representativos de capital u otros derechos que permitan la exploracion explotacion concesion o similares de sociedades no cotizados en bolsa de valores del Ecuador', '1', '334', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '507');
INSERT INTO `tipo_concepto_retencion` VALUES ('Loterias rifas apuestas y similares', '15', '335', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '508');
INSERT INTO `tipo_concepto_retencion` VALUES ('Venta de combustibles a comercializadoras 2/mil', '2', '336', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '509');
INSERT INTO `tipo_concepto_retencion` VALUES ('Venta de combustibles a distribuidores 3/mil', '3', '337', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '510');
INSERT INTO `tipo_concepto_retencion` VALUES ('Produccion y venta local de banano producido o no por el mismo sujeto pasivo 1% a 2%', '1', '338', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '511');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto unico a la exportacion de banano', '3', '340', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '512');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras Retenciones Aplicables el 1%', '1', '343', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', 'L', '513');
INSERT INTO `tipo_concepto_retencion` VALUES ('Energia electrica', '1', '343A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '514');
INSERT INTO `tipo_concepto_retencion` VALUES ('Actividades de construccion de obra material inmueble urbanizacion lotizacion o actividades similares', '1.75', '343B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '515');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto Redimible a las botellas plasticas - IRBP', '1', '343C', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '516');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 2.75%', '2.75', '3440', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '517');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago local tarjeta de credito /debito reportada por la Emisora de tarjeta de credito / entidades del sistema financiero', '2', '344A', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '518');
INSERT INTO `tipo_concepto_retencion` VALUES ('Adquisicion de sustancias minerales dentro del territorio nacional', '2', '344B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '519');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables el 8%', '8', '345', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '520');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras ganancias de capital distintas de enajenacion de derechos representativos de capital', '0', '346A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '521');
INSERT INTO `tipo_concepto_retencion` VALUES ('Donaciones en dinero -Impuesto a la donaciones', '0', '346B', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '522');
INSERT INTO `tipo_concepto_retencion` VALUES ('Retencion a cargo del propio sujeto pasivo por la exportacion de concentrados y/o elementos metalicos 0% o 10%', '10', '346C', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '523');
INSERT INTO `tipo_concepto_retencion` VALUES ('Retencion a cargo del propio sujeto pasivo por la comercializacion de productos forestales 0% o 10%', '10', '346D', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '524');
INSERT INTO `tipo_concepto_retencion` VALUES ('Impuesto unico a ingresos provenientes de actividades agropecuarias en etapa de produccion / comercializacion local o exportacion', '1', '348', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '525');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras autoretenciones 150% o 175%', '1.75', '350', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '526');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Rentas Inmobiliarias 25% o 35%', '25', '500', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '527');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Beneficios/Servicios Empresariales 25% o 35%', '25', '501', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '528');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Servicios tecnicos administrativos o de consultoria y regalias 25% o 35%', '25', '501A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '529');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Navegacion Maritima y/o aerea 0% o 25% o 35%', '0', '503', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '530');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Dividendos distribuidos a personas naturales [domicilados o no en paraiso fiscal] o a sociedades sin beneficiario efectivo persona natural residente en Ecuador', '25', '504', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '531');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos a sociedades con beneficiario efectivo persona natural residente en el Ecuador', '25', '504A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '532');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos a no residentes incumpliendo el deber de informar la composicion societaria', '35', '504B', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '533');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos a residentes o establecidos en paraisos fiscales o regimenes de menor imposicion [con beneficiario Persona Natural residente en Ecuador]', '25', '504C', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '534');
INSERT INTO `tipo_concepto_retencion` VALUES ('Dividendos a fideicomisos o establecidos en paraisos fiscales o regimenes de menor imposicion [con beneficiario Persona Natural residente en Ecuador]', '25', '504D', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '535');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Anticipo dividendos [no domiciliada en paraisos fiscales o regimenes de menor imposicion] 22% o 25%', '22', '504E', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '536');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Anticipo dividendos [domiciliadas en paraisos fiscales o regimenes de menor imposicion] 22% o 25% o 28%', '22', '504F', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '537');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Prestamos accionistas beneficiarios o partìcipes [no domiciladas en paraisos fiscales o regimenes de menor imposicion] 22% o 25%', '22', '504G', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '538');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Prestamos accionistas beneficiarios o partìcipes [domiciladas en paraisos fiscales o regimenes de menor imposicion] 22% o 25% o 28%', '22', '504H', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '539');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Prestamos no comerciales a partes relacionadas [no domiciladas en paraisos fiscales o regimenes de menor imposicion] 22% o 25%', '22', '504I', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '540');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Prestamos no comerciales a partes relacionadas [domiciladas en paraisos fiscales o regimenes de menor imposicion] 22% o 25% o 28%', '22', '504J', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '541');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Rendimientos financieros 25% o 35%', '25', '505', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '542');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes – Intereses de creditos de Instituciones Financieras del exterior 0% o 25%', '25', '505A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '543');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes – Intereses de creditos de gobierno a gobierno 0% o 25%', '25', '505B', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '544');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes – Intereses de creditos de organismos multilaterales 0% o 25%', '25', '505C', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '545');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Intereses por financiamiento de proveedores externos', '25', '505D', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '546');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Intereses de otros creditos externos', '25', '505E', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '547');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Otros Intereses y Rendimientos Financieros 25% o 35%', '25', '505F', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '548');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Canones derechos de autor marcas patentes y similares 25% o 35%', '25', '509', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '549');
INSERT INTO `tipo_concepto_retencion` VALUES ('PPago a no residentes - Regalias por concepto de franquicias 25% o 35%', '25', '509A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '550');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Otras ganancias de capital distintas de enajenacion de derechos representativos de capital 5% 25% 35%', '5', '510', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '551');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Servicios profesionales independientes 25% o 35%', '25', '511', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '552');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Servicios profesionales dependientes 25% o 35%', '25', '512', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '553');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Artistas 25% o 35%', '25', '513', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '554');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Deportistas 25% o 35%', '25', '513A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '555');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Participacion de consejeros 25% o 35%', '25', '514', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '556');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Entretenimiento Publico 25% o 35%', '25', '515', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '557');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Pensiones 25% o 35%', '25', '516', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '558');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Reembolso de Gastos 25% o 35%', '25', '517', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '559');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Funciones Publicas 25% o 35%', '25', '518', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '560');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Estudiantes 25% o 35%', '25', '519', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '561');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Pago a proveedores de servicios hoteleros y turisticos en el exterior 25% o 35%', '25', '520A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '562');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Arrendamientos mercantil internacional 0% 25% 35%', '0', '520B', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '563');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Comisiones por exportaciones y por promocion de turismo receptivo 0% 25% 35%', '0', '520D', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '564');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Por las empresas de transporte maritimo o aereo y por empresas pesqueras de alta mar por su actividad', '0', '520E', 'N', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '565');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Por las agencias internacionales de prensa 0% 25% 35%', '0', '520F', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '566');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Contratos de fletamento de naves para empresas de transporte aereo o maritimo internacional 0% 25% 35%', '0', '520G', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '567');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Enajenacion de derechos representativos de capital u otros derechos que permitan la exploracion explotacion concesion o similares de sociedades 1% o 10%', '1', '521', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '568');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes - Seguros y reaseguros [primas y cesiones] 0% 25% 35%', '0', '523A', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '569');
INSERT INTO `tipo_concepto_retencion` VALUES ('Pago a no residentes- Donaciones en dinero -Impuesto a la donaciones', '0', '525', 'S', '2020-04-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '570');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables a otros porcentajes [Incluyen retenciones al regimen Microempresarial]', '1.75', '346', 'N', '2020-09-01 00:00:00', '2050-12-31 00:00:00', 'S', '.', '571');
INSERT INTO `tipo_concepto_retencion` VALUES ('Otras retenciones aplicables a otros porcentajes [Incluyen retenciones al regimen Microempresarial]', '1.75', '351', 'N', '2021-01-01 00:00:00', '2020-12-31 00:00:00', 'S', '.', '572');

-- ----------------------------
-- Table structure for tipo_retencion
-- ----------------------------
DROP TABLE IF EXISTS `tipo_retencion`;
CREATE TABLE `tipo_retencion` (
  `id_tipo_retencion` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta` varchar(255) DEFAULT '0',
  `porcentaje` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `bienes` bit(1) DEFAULT b'0',
  `servicios` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id_tipo_retencion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tipo_retencion
-- ----------------------------
INSERT INTO `tipo_retencion` VALUES ('1', '0', '10', 'RETENCION IVA 10% BIENES', '', '\0');
INSERT INTO `tipo_retencion` VALUES ('2', '0', '30', 'RETENCION DE IVA 30% COMPRA DE BIENES', '', '\0');
INSERT INTO `tipo_retencion` VALUES ('3', '0', '20', 'RETENCION 20% SERVICIOS', '\0', '');
INSERT INTO `tipo_retencion` VALUES ('4', '0', '70', 'RETENCION IVA POR LA PRESENTACION DE OTROS SERVICIOS', '\0', '');
INSERT INTO `tipo_retencion` VALUES ('5', '0', '100', 'RETENCION DE IVA 100% POR SERVICIOS PROFECIONALES', '\0', '');

-- ----------------------------
-- Table structure for tipo_usuario
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(255) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` varchar(255) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`),
  KEY `FK_tipo_usuario_empresa` (`empresa`),
  CONSTRAINT `tipo_usuario_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id_empresa`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of tipo_usuario
-- ----------------------------
INSERT INTO `tipo_usuario` VALUES ('9', 'DBA', '5');
INSERT INTO `tipo_usuario` VALUES ('10', 'ADMINISTRADOR', '5');
INSERT INTO `tipo_usuario` VALUES ('11', 'MOTORIZADO', '5');
INSERT INTO `tipo_usuario` VALUES ('12', 'DBA', '6');
INSERT INTO `tipo_usuario` VALUES ('13', 'CAJERO', '6');
INSERT INTO `tipo_usuario` VALUES ('15', 'CAJA ADMIN', '6');

-- ----------------------------
-- Table structure for transferencias
-- ----------------------------
DROP TABLE IF EXISTS `transferencias`;
CREATE TABLE `transferencias` (
  `id_transferencias` int(255) NOT NULL AUTO_INCREMENT,
  `id_producto` int(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transferencias`),
  KEY `FK_PRODUCTO_TRASNFERENCIA` (`id_producto`) USING BTREE,
  KEY `FK_TRANFERENCIAS_USUARIO` (`id_usuario`),
  CONSTRAINT `transferencias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `transferencias_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- ----------------------------
-- Records of transferencias
-- ----------------------------

-- ----------------------------
-- Table structure for trans_kardex
-- ----------------------------
DROP TABLE IF EXISTS `trans_kardex`;
CREATE TABLE `trans_kardex` (
  `id_kardex` int(255) NOT NULL AUTO_INCREMENT,
  `id_producto` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `TP` varchar(255) DEFAULT NULL,
  `entrada` varchar(255) DEFAULT NULL,
  `salida` varchar(255) DEFAULT NULL,
  `valor_unitario` varchar(255) DEFAULT NULL,
  `total_iva` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT '',
  `existencias` varchar(255) DEFAULT NULL,
  `costo` varchar(255) DEFAULT NULL,
  `valor_total` varchar(255) DEFAULT '',
  `Factura` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha_Fab` date DEFAULT NULL,
  `fecha_Exp` date DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of trans_kardex
-- ----------------------------
INSERT INTO `trans_kardex` VALUES ('48', '73', '2022-04-27', 'CD', '94', null, '35.0000', null, '', '94', '35.0000', '3290', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('49', '73', '2022-04-27', 'CD', null, '2', '0', '0', '0', '92', '0', '0', '122', 'SALIDA DE STOCK FACTURA: 122', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('50', '74', '2022-04-27', 'CD', '91', null, '35.0000', null, '', '91', '35.0000', '3185', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('51', '74', '2022-04-27', 'CD', null, '1', '0', '0', '0', '90', '0', '0', '122', 'SALIDA DE STOCK FACTURA: 122', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('52', '24', '2022-04-27', 'CD', '-114', null, '150.0000', null, '', '-114', '150.0000', '-17100', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('53', '88', '2022-04-27', 'CD', '6', null, '2.3600', null, '', '6', '2.3600', '14.16', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('54', '88', '2022-04-27', 'CD', null, '120', '150.0000', '81.00', '450.00', '-114', '150.0000', '531.00', '122', 'SALIDA DE STOCK FACTURA: 122', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('55', '73', '2022-04-27', 'CD', null, '1', '0', '0', '0', '91', '0', '0', '123', 'SALIDA DE STOCK FACTURA: 123', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('56', '74', '2022-04-27', 'CD', null, '1', '0', '0', '0', '89', '0', '0', '123', 'SALIDA DE STOCK FACTURA: 123', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('57', '88', '2022-04-27', 'CD', null, '80', '150.0000', '54.00', '300.00', '-194', '150.0000', '354.00', '123', 'SALIDA DE STOCK FACTURA: 123', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('58', '84', '2022-04-27', 'CD', '1.20', null, '2.3600', null, '', '1.20', '2.3600', '2.832', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('59', '84', '2022-04-27', 'CD', null, '0.6', '150.0000', '54.00', '300.00', '0.6', '150.0000', '354.00', '123', 'SALIDA DE STOCK FACTURA: 123', '2022-04-27', '2022-04-27', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('60', '62', '2022-05-25', 'CD', '100', null, '50.0000', null, '', '100', '50.0000', '5000', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('61', '62', '2022-05-25', 'CD', null, '1', '0', '0', '0', '99', '0', '0', '124', 'SALIDA DE STOCK FACTURA: 124', '2022-05-25', '2022-05-25', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('62', '65', '2022-05-25', 'CD', '99', null, '100.0000', null, '', '99', '100.0000', '9900', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('63', '65', '2022-05-25', 'CD', null, '1', '0', '0', '0', '98', '0', '0', '124', 'SALIDA DE STOCK FACTURA: 124', '2022-05-25', '2022-05-25', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('64', '18', '2022-05-25', 'CD', '100', null, '4.2000', null, '', '100', '4.2000', '420', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('65', '87', '2022-05-25', 'CD', '35', null, '12.3200', null, '', '35', '12.3200', '431.2', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('66', '87', '2022-05-25', 'CD', null, '2', '4.2000', '1.51', '8.40', '33', '4.2000', '9.91', '124', 'SALIDA DE STOCK FACTURA: 124', '2022-05-25', '2022-05-25', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('67', '83', '2022-05-25', 'CD', '33', null, '1.2300', null, '', '33', '1.2300', '40.59', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('68', '83', '2022-05-25', 'CD', null, '2', '4.2000', '1.51', '8.40', '31', '4.2000', '9.91', '124', 'SALIDA DE STOCK FACTURA: 124', '2022-05-25', '2022-05-25', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('69', '85', '2022-05-25', 'CD', '0.00', null, '2.3200', null, '', '0.00', '2.3200', '0', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('70', '85', '2022-05-25', 'CD', null, '0.6', '4.2000', '1.51', '8.40', '-0.6', '4.2000', '9.91', '124', 'SALIDA DE STOCK FACTURA: 124', '2022-05-25', '2022-05-25', '14', null, '22', '001-001', '5');
INSERT INTO `trans_kardex` VALUES ('71', '5', '2022-06-02', 'CD', '100', null, '60.0000', null, '', '100', '60.0000', '6000', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('72', '1', '2022-06-02', 'CD', '100', null, '30.0000', null, '', '100', '30.0000', '3000', null, 'INGRESO INICIAL DE STOCK', null, null, '14', null, null, null, '5');
INSERT INTO `trans_kardex` VALUES ('73', '98', '2022-06-02', 'CD', '100', null, '60.0000', null, '', '100', '60.0000', '6000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('74', '95', '2022-06-02', 'CD', '100', null, '35.0000', null, '', '100', '35.0000', '3500', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('75', '101', '2022-06-02', 'CD', '100', null, '100.0000', null, '', '100', '100.0000', '10000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('76', '102', '2022-06-02', 'CD', '100', null, '175.0000', null, '', '100', '175.0000', '17500', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('77', '99', '2022-06-02', 'CD', '100', null, '110.0000', null, '', '100', '110.0000', '11000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('78', '95', '2022-06-06', 'CD', '100', null, '35.0000', null, '', '100', '35.0000', '3500', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('79', '96', '2022-06-06', 'CD', '100', null, '40.0000', null, '', '100', '40.0000', '4000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('80', '101', '2022-06-06', 'CD', '100', null, '100.0000', null, '', '100', '100.0000', '10000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('81', '101', '2022-06-06', 'CD', null, '1', '100.0000', '0', '100.00', '99', '100.0000', '100.00', '149', 'SALIDA DE STOCK FACTURA: 149', '2022-06-06', '2022-06-06', '18', null, '47', '001-001', '6');
INSERT INTO `trans_kardex` VALUES ('82', '96', '2022-06-06', 'CD', null, '1', '40.0000', '0', '40.00', '99', '40.0000', '40.00', '18', 'SALIDA DE STOCK FACTURA: 18', '2022-06-06', '2022-06-06', '18', null, '42', '001-001', '6');
INSERT INTO `trans_kardex` VALUES ('83', '98', '2022-06-06', 'CD', '100', null, '60.0000', null, '', '100', '60.0000', '6000', null, 'INGRESO INICIAL DE STOCK', null, null, '20', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('84', '98', '2022-06-06', 'CD', null, '1', '60.0000', '0', '60.00', '99', '60.0000', '60.00', '19', 'SALIDA DE STOCK FACTURA: 19', '2022-06-06', '2022-06-06', '20', null, '39', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('85', '96', '2022-06-06', 'CD', null, '1', '40.0000', '0', '40.00', '98', '40.0000', '40.00', '19', 'SALIDA DE STOCK FACTURA: 19', '2022-06-06', '2022-06-06', '20', null, '39', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('86', '95', '2022-06-06', 'CD', null, '1', '35.0000', '0', '35.00', '99', '35.0000', '35.00', '19', 'SALIDA DE STOCK FACTURA: 19', '2022-06-06', '2022-06-06', '20', null, '39', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('87', '101', '2022-06-06', 'CD', null, '2', '100.0000', '0', '200.00', '97', '100.0000', '200.00', '20', 'SALIDA DE STOCK FACTURA: 20', '2022-06-06', '2022-06-06', '20', null, '39', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('88', '95', '2022-07-15', 'CD', '99', null, '35.0000', null, '', '99', '35.0000', '3465', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('89', '95', '2022-07-15', 'CD', null, '1', '35.0000', '0', '35.00', '98', '35.0000', '35.00', '21', 'SALIDA DE STOCK FACTURA: 21', '2022-07-15', '2022-07-15', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('90', '98', '2022-07-31', 'CD', '99', null, '60.0000', null, '', '99', '60.0000', '5940', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('91', '98', '2022-07-31', 'CD', null, '1', '60.0000', '0', '60.00', '98', '60.0000', '60.00', '22', 'SALIDA DE STOCK FACTURA: 22', '2022-07-31', '2022-07-31', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('92', '101', '2022-08-01', 'CD', '97', null, '100.0000', null, '', '97', '100.0000', '9700', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('93', '101', '2022-08-01', 'CD', null, '1', '100.0000', '0', '100.00', '96', '100.0000', '100.00', '23', 'SALIDA DE STOCK FACTURA: 23', '2022-08-01', '2022-08-01', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('94', '99', '2022-08-22', 'CD', '100', null, '110.0000', null, '', '100', '110.0000', '11000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('95', '99', '2022-08-22', 'CD', null, '1', '110.0000', '0', '110.00', '99', '110.0000', '110.00', '24', 'SALIDA DE STOCK FACTURA: 24', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('96', '98', '2022-08-22', 'CD', '98', null, '60.0000', null, '', '98', '60.0000', '5880', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('97', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '97', '60.0000', '60.00', '25', 'SALIDA DE STOCK FACTURA: 25', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('98', '100', '2022-08-22', 'CD', '100', null, '80.0000', null, '', '100', '80.0000', '8000', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('99', '100', '2022-08-22', 'CD', null, '1', '80.0000', '0', '80.00', '99', '80.0000', '80.00', '26', 'SALIDA DE STOCK FACTURA: 26', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('100', '100', '2022-08-22', 'CD', null, '1', '80.0000', '0', '80.00', '98', '80.0000', '80.00', '27', 'SALIDA DE STOCK FACTURA: 27', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('101', '101', '2022-08-22', 'CD', '96', null, '100.0000', null, '', '96', '100.0000', '9600', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('102', '101', '2022-08-22', 'CD', null, '1', '100.0000', '0', '100.00', '95', '100.0000', '100.00', '28', 'SALIDA DE STOCK FACTURA: 28', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('103', '100', '2022-08-22', 'CD', null, '1', '80.0000', '0', '80.00', '97', '80.0000', '80.00', '29', 'SALIDA DE STOCK FACTURA: 29', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('104', '99', '2022-08-22', 'CD', null, '1', '110.0000', '0', '110.00', '98', '110.0000', '110.00', '30', 'SALIDA DE STOCK FACTURA: 30', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('105', '95', '2022-08-22', 'CD', '98', null, '35.0000', null, '', '98', '35.0000', '3430', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('106', '95', '2022-08-22', 'CD', null, '1', '35.0000', '0', '35.00', '97', '35.0000', '35.00', '31', 'SALIDA DE STOCK FACTURA: 31', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('107', '95', '2022-08-22', 'CD', null, '1', '35.0000', '0', '35.00', '96', '35.0000', '35.00', '32', 'SALIDA DE STOCK FACTURA: 32', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('108', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '96', '60.0000', '60.00', '33', 'SALIDA DE STOCK FACTURA: 33', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('109', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '95', '60.0000', '60.00', '34', 'SALIDA DE STOCK FACTURA: 34', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('110', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '94', '60.0000', '60.00', '35', 'SALIDA DE STOCK FACTURA: 35', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('111', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '93', '60.0000', '60.00', '36', 'SALIDA DE STOCK FACTURA: 36', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('112', '98', '2022-08-22', 'CD', null, '1', '60.0000', '0', '60.00', '92', '60.0000', '60.00', '37', 'SALIDA DE STOCK FACTURA: 37', '2022-08-22', '2022-08-22', '18', null, '38', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('113', '98', '2022-09-02', 'CD', '92', null, '60.0000', null, '', '92', '60.0000', '5520', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('114', '98', '2022-09-02', 'CD', null, '1', '60.0000', '0', '60.00', '91', '60.0000', '60.00', '38', 'SALIDA DE STOCK FACTURA: 38', '2022-09-02', '2022-09-02', '18', null, '39', '001-002', '6');
INSERT INTO `trans_kardex` VALUES ('115', '101', '2022-10-04', 'CD', '95', null, '100.0000', null, '', '95', '100.0000', '9500', null, 'INGRESO INICIAL DE STOCK', null, null, '18', null, null, null, '6');
INSERT INTO `trans_kardex` VALUES ('116', '101', '2022-10-04', 'CD', null, '1', '1', '0', '1.00', '94', '1', '1.00', '39', 'SALIDA DE STOCK FACTURA: 39', '2022-10-04', '2022-10-04', '18', null, '38', '001-002', '6');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(255) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(255) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ci_ruc` varchar(10) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `serie` varchar(7) DEFAULT NULL,
  `sucursal` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT '../img/sistema/sin_imagen.jpg',
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_USUARIO_EMPRESA` (`id_empresa`) USING BTREE,
  KEY `FK_SUCURSAL_USUARIO` (`sucursal`) USING BTREE,
  KEY `FK_USUARIO_TIPO_USUARIO` (`tipo_usuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id_sucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('18', '6', 'PACO', 'EXAMPLE', '147852369', 'Paco', 'Pepe', '001-002', '8', '../img/sistema/sin_imagen.jpg', 'example@example.com', '0222222222', '12');
INSERT INTO `usuario` VALUES ('21', '6', 'invitado', 'example', '1750188326', 'invitado', 'invitado', '001-002', '8', '../img/sistema/sin_imagen.jpg', 'EXAMPLE@EXAMPLE.COM', '0987242589', '13');
INSERT INTO `usuario` VALUES ('22', '7', 'invitado', 'invitado example', '9999999999', 'invitado', 'invitado', '001-001', null, '../img/sistema/sin_imagen.jpg', 'invitado@invitado.com', '022222222222222', '13');
INSERT INTO `usuario` VALUES ('36', '30', null, null, null, '1234567890001', '1234567890001', '001-001', null, '../img/sistema/sin_imagen.jpg', null, null, '10');
INSERT INTO `usuario` VALUES ('38', '7', null, null, null, '1722214507001', '1722214507001', '001-001', null, '../img/sistema/sin_imagen.jpg', null, null, '10');
