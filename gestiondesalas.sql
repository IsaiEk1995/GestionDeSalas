/*
Navicat MySQL Data Transfer

Source Server         : Wamp
Source Server Version : 50731
Source Host           : 127.0.0.1:3306
Source Database       : gestiondesalas

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-08-23 15:34:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asignaturas
-- ----------------------------
DROP TABLE IF EXISTS `asignaturas`;
CREATE TABLE `asignaturas` (
  `ClaveAsig` varchar(50) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Cuatrimestre` varchar(50) DEFAULT NULL,
  `HrsTotales` varchar(50) DEFAULT NULL,
  `HrsPracticas` varchar(50) DEFAULT NULL,
  `HrsTeoricas` varchar(50) DEFAULT NULL,
  `id_plan` varchar(50) DEFAULT NULL,
  `IdCarrera` varchar(50) DEFAULT NULL,
  `id_area` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ClaveAsig`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of asignaturas
-- ----------------------------
INSERT INTO `asignaturas` VALUES ('IDS-701', 'MATEMÁTICAS PARA INGENIERÍA I', '7', '60', null, null, 'IDS-2020', 'IDS', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-702', 'METDOLOGÍAS PARA EL DESARROLLO DE PROYECTOS', '7', '45', null, null, 'IDS-2020', 'IDS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-703', 'ARQUITECTURAS DE SOFTWARE', '7', '75', null, null, 'IDS-2020', 'IDS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-704', 'EXPERIENCIA DE USUARIO', '7', '45', null, null, 'IDS-2020', 'IDS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-705', 'SEGURIDAD INFORMÁTICA', '7', '45', null, null, 'IDS-2020', 'IDS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-706', 'INGLÉS VI', '7', '60', null, null, 'IDS-2020', 'IDS', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('IDS-707', 'ADMINISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'IDS-2020', 'IDS', 'HD', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-701', 'MATEMÁTICAS PARA INGENIERÍA I', '7', '60', null, null, 'IMI-2020', 'IMI', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-702', 'FÍSICA PARA INGENIERÍA', '7', '60', null, null, 'IMI-2020', 'IMI', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-703', 'PROTOCOLOS DE OPERACIÓN Y MANTENIMIENTO', '7', '45', null, null, 'IMI-2020', 'IMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-704', 'TRIBOLOGÍA', '7', '60', null, null, 'IMI-2020', 'IMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-705', 'INGLÉS VI', '7', '60', null, null, 'IMI-2020', 'IMI', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-706', 'PLANEACIÓN Y ORGANIZACIÓN DEL TRABAJO', '7', '45', null, null, 'IMI-2020', 'IMI', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('IMI-707', 'ADMINISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'IMI-2020', 'IMI', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1001', 'ESTADÍSTICA APLICADA', '10', '60', null, null, 'ITI-2019', 'ITI', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1002', 'AUDITORÍA DE SISTEMAS DE TI', '10', '60', null, null, 'ITI-2019', 'ITI', 'TF', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1003', 'SEGURIDAD DE LA INFORMACIÓN', '10', '75', null, null, 'ITI-2019', 'ITI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1004', 'TÓPICOS SELECTOS DE TI', '10', '45', null, null, 'ITI-2019', 'ITI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1005', 'INTEGRADORA II', '10', '30', null, null, 'ITI-2019', 'ITI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1006', 'INGLÉS IX', '10', '60', null, null, 'ITI-2019', 'ITI', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-1007', 'NEGOCIACIÓN EMPRESARIAL', '10', '30', null, null, 'ITI-2019', 'ITI', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-701', 'MATEMÁTICAS PARA TI', '7', '75', null, null, 'ITI2019', 'ITI', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-702', 'INGENIERÍA ECONÓMICA', '7', '45', null, null, 'ITI2019', 'ITI', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-703', 'PROGRAMACIÓN DE APLICACIONES', '7', '75', null, null, 'ITI2019', 'ITI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-704', 'MODELADO DE PROCESOS DE NEGOCIO', '7', '45', null, null, 'ITI2019', 'ITI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-705', 'REDES LAN Y WAN', '7', '45', null, null, 'ITI2019', 'ITI', 'FP', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-706', 'INGLÉS VI', '7', '60', null, null, 'ITI2019', 'ITI', 'LEN', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-707', 'ADMNISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'ITI2019', 'ITI', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('ITI-801', 'ADMINISTRACIÓN DE PROYECTOS DE TI', '8', '60', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-802', 'BASE DE DATOS PARA APLICACIÓNES', '8', '75', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-803', 'REDES CONVERGENTES', '8', '75', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-804', 'SISTEMAS DE CALIDAD EN TI', '8', '45', null, null, 'ITI2019', 'ITI', '', 'LEN');
INSERT INTO `asignaturas` VALUES ('ITI-805', 'INGLÉS VII', '8', '60', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-806', 'PLANEACIÓN  ORGANIZACIÓN DEL TRABAJO', '8', '45', null, null, 'ITI2019', 'ITI', '', 'FD');
INSERT INTO `asignaturas` VALUES ('ITI-901', 'ADMINISTRACION DE PROYECTOS TI II', '9', '60', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-902', 'DESARROLLO DE APLICACIONES WEB', '9', '90', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-903', 'APLICACIÓN DE LAS TELECOMUNICACIONES', '9', '75', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-904', 'INTEGRADORA I', '9', '30', null, null, 'ITI2019', 'ITI', '', 'FT');
INSERT INTO `asignaturas` VALUES ('ITI-905', 'MODELOS DE PROCESO PARA EL DESARROLLO DE SOFTWARE', '9', '45', null, null, 'ITI2019', 'ITI', '', 'FP');
INSERT INTO `asignaturas` VALUES ('ITI-906', 'INGLES VIII', '9', '60', null, null, 'ITI2019', 'ITI', '', 'LYC');
INSERT INTO `asignaturas` VALUES ('ITI-907', 'DIRECCIÓN  DE EQUIPOS DE ALTO RENDIMIENTO', '9', '30', null, null, 'ITI2019', 'ITI', '', 'FD');
INSERT INTO `asignaturas` VALUES ('LGA-1001', 'Desarrollo de Conceptos Gastronómicos', '10', '75', null, null, 'LGA-2013', 'LGA', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-1002', 'Alta Cocina Mexicana', '10', '90', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-1003', 'Gestión Empresarial', '10', '75', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-1004', 'Integradora', '10', '30', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-1005', 'Inglés IX', '10', '60', null, null, 'LGA-2013', 'LGA', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-1006', 'Negociación Empresarial', '10', '30', null, null, 'LGA-2013', 'LGA', 'HD', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-701', 'PATRIMONIO CULINARIO DE MÉXICO', '7', '75', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-702', 'COCINA ORIENTAL', '7', '105', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-703', 'INGENIERÍA DE PROCESOS GASTRONÓMICOS', '7', '75', null, null, 'LGA-2013', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-704', 'INGLÉS VI', '7', '60', null, null, 'LGA-2013', 'LGA', 'LEN', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-705', 'ADMINISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'LGA-2013', 'LGA', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA-801', 'MIXOLOGIA', '8', '45', null, null, 'LGA-2013', 'LGA', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGA-802', 'COCINA EUROPEA', '8', '120', null, null, 'LGA-2013', 'LGA', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGA-803', 'CONTABILIDAD ADMINISTRATIVA', '8', '75', null, null, 'LGA-2013', 'LGA', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGA-804', 'GESTION DE COMPRAS', '8', '45', null, null, 'LGA-2013', 'LGA', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGA-805', 'INGLES VII', '8', '60', null, null, 'LGA-2013', 'LGA', '', 'LEN');
INSERT INTO `asignaturas` VALUES ('LGA-806', 'PLANEACION Y ORGANIZACIÓN DEL TRABAJO', '8', '45', null, null, 'LGA-2013', 'LGA', '', 'FD');
INSERT INTO `asignaturas` VALUES ('LGA-901', 'INGENIERÍA DEL MENÚ', '9', '60', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA-902', 'COCINA MEXICANA', '9', '120', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA-903', 'ANÁLISIS E INTERPRETACIÓN FINANCIERA', '9', '75', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA-904', 'GESTIÓN DE LA CALIDAD EN ESTABLECIMIENTOS DE ALIME', '9', '45', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA-905', 'INGLÉS VIII', '9', '60', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA-906', 'DIRECCIÓN DE EQUIPOS DE ALTO RENDIMIENTO', '9', '30', null, null, 'LGA-2013', 'LGA', null, null);
INSERT INTO `asignaturas` VALUES ('LGA20-701', '\nCOCINA MEXICANA I', '7', '90', null, null, 'LGA-2020', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA20-702', 'PATRIMONIO CULINARIO DE MÉXICO', '7', '75', null, null, 'LGA-2020', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA20-703', 'ADMINISTRACIÓN DE PROCESOS GASTRONÓMICOS', '7', '60', null, null, 'LGA-2020', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA20-704', 'BEBIDAS DESTILADAS MEXICANAS', '7', '45', null, null, 'LGA-2020', 'LGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA20-705', 'INGLÉS VI', '7', '60', null, null, 'LGA-2020', 'LGA', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('LGA20-706', 'ADMINISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'LGA-2020', 'LGA', 'HD', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1001', 'DESARROLLO DE PROYECTOS PARA EL TURISMO II', '10', '90', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1002', 'INSTRUMENTOS PARA EL DESARROLLO SUSTENTABLE', '10', '90', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1003', 'DESTINOS TURÍSTICOS INTELIGENTES', '10', '90', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1004', 'INTEGRADORA', '10', '30', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1005', 'INGLÉS IX', '10', '60', null, null, 'LGT2019', 'LGT', 'LYC', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-1006', 'NEGOCIACIÓN EMPRESARIAL', '10', '30', null, null, 'LGT2019', 'LGT', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-701', 'ECONOMÍA PARA EL TURISMO', '7', '75', null, null, 'LGT2019', 'LGT', 'FC', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-702', 'ANÁLISIS  E INTERPRETACIÓN DE INFORMACIÓN PARA EL ', '7', '60', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-703', 'CALIDAD Y RESPONSABILIDAD SOCIAL', '7', '75', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-704', 'DESARROLLO DEL CAPITAL HUMANO EN LA ORGANIZACIÓN', '7', '60', null, null, 'LGT2019', 'LGT', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-705', 'INGLÉS VI', '7', '60', null, null, 'LGT2019', 'LGT', 'LEN', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-706', 'ADMNISTRACIÓN DEL TIEMPO', '7', '45', null, null, 'LGT2019', 'LGT', 'FD', 'TC');
INSERT INTO `asignaturas` VALUES ('LGT-801', 'FINANZAS PARA EL TURISMO', '8', '90', null, null, 'LGT2019', 'LGT', '', 'FC');
INSERT INTO `asignaturas` VALUES ('LGT-802', 'GESTION Y PLANIFICACION TURISTICA', '8', '120', null, null, 'LGT2019', 'LGT', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGT-803', 'CONTROL ADMINISTRATIVO EN EL TURISMO', '8', '60', null, null, 'LGT2019', 'LGT', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGT-804', 'INGLES VII', '8', '60', null, null, 'LGT2019', 'LGT', '', 'LEN');
INSERT INTO `asignaturas` VALUES ('LGT-805', 'PLANEACION Y ORGANIZACIÓN DEL TRABAJO', '8', '45', null, null, 'LGT2019', 'LGT', '', 'FD');
INSERT INTO `asignaturas` VALUES ('LGT-901', 'DESARROLLO DE PROYECTOS PARA EL TURISMO I', '9', '75', null, null, 'LGT2019', 'LGT', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGT-902', 'INNOVACIÓN Y TURISMO RESPONSABLE', '9', '120', null, null, 'LGT2019', 'LGT', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGT-903', 'MERCADOTECNIA ESTRATÉGICA', '9', '75', null, null, 'LGT2019', 'LGT', '', 'FT');
INSERT INTO `asignaturas` VALUES ('LGT-904', 'INGLES VIII', '9', '60', null, null, 'LGT2019', 'LGT', '', 'LYC');
INSERT INTO `asignaturas` VALUES ('LGT-905', 'DIRECCIÓN DE EQUIPOS DE ALTO RENDIMIENTO', '9', '30', null, null, 'LGT2019', 'LGT', '', 'FD');
INSERT INTO `asignaturas` VALUES ('TAF-101', 'Matemáticas', '1', '60', null, null, 'TAF2017', 'TAF', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-102', 'Informática', '1', '75', null, null, 'TAF2017', 'TAF', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-103', 'Administración de Organizaciones', '1', '45', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-104', 'Mercadotecnia', '1', '75', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-105', 'Contabilidad Básica', '1', '105', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-106', 'Inglés I', '1', '60', null, null, 'TAF2017', 'TAF', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-107', 'Expresión Oral y Escrita I', '1', '75', null, null, 'TAF2017', 'TAF', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-108', 'Formación Sociocultural I', '1', '30', null, null, 'TAF2017', 'TAF', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-201', 'Matemáticas Financieras', '2', '45', null, null, 'TAF2017', 'TAF', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-202', 'Estadística Aplicada a la Admimistración', '2', '60', null, null, 'TAF2017', 'TAF', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-203', 'Modelos de Desarrollo Organizacional', '2', '45', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-204', 'Metodología de Investigación', '2', '60', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-205', 'Contabilidad Intermedia', '2', '75', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-206', 'Fundamentos de Economía', '2', '60', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-207', 'Diseño de Procesos y Gestión de la Calidad', '2', '75', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-208', 'Inglés II', '2', '60', null, null, 'TAF2017', 'TAF', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-209', 'Formación Sociocultural II', '2', '45', null, null, 'TAF2017', 'TAF', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-301', 'Planeación estratégica', '3', '60', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-302', 'Estudio de Mercado', '3', '60', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-303', 'Análisis e Interpretación de Estados Financieros', '3', '75', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-304', 'Planeación Financiera', '3', '90', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-305', 'Desarrollo Sustentable', '3', '60', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-306', 'Legislación Organizacional', '3', '60', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-307', 'Integradora I', '3', '30', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-308', 'Inglés III', '3', '60', null, null, 'TAF2017', 'TAF', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAF-309', 'Formación Sociocultural III', '3', '30', null, null, 'TAF2017', 'TAF', 'HG', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-401', 'Administración de Proyectos I', '4', '75', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-402', 'Estudio Técnico', '4', '90', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-403', 'Estudio Financiero', '4', '90', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-404', 'Diagnóstico Local y Regional', '4', '90', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-405', 'Diseño de Procesos de Producción', '4', '90', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-406', 'Inglés IV', '4', '60', null, null, 'TAF2017', 'TAF', 'LYM', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-407', 'Formación Sociocultural IV', '4', '45', null, null, 'TAF2017', 'TAF', 'HG', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-501', 'Administración de Proyectos II', '5', '75', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-502', 'Comercialización y Logística', '5', '45', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-503', 'Evaluación Financiera', '5', '75', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-504', 'Desarrollo y Crecimiento Económico', '5', '75', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-505', 'Innovación y Emprendimiento', '5', '75', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-506', 'Integradora II', '5', '30', null, null, 'TAF2017', 'TAF', 'FT', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-507', 'Inglés V', '5', '60', null, null, 'TAF2017', 'TAF', 'LYM', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-508', 'Expresión Oral y Escrita II', '5', '75', null, null, 'TAF2017', 'TAF', 'LYM', 'FYEP');
INSERT INTO `asignaturas` VALUES ('TAF-601', 'Estadía Profesional', '6', '525', null, null, 'TAF2017', 'TAF', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-101', 'ÁLGEBRA LINEAL', '1', '90', null, null, 'TAS-2018', 'TAS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-102', 'QUÍMICA BÁSICA', '1', '75', null, null, 'TAS-2018', 'TAS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-103', 'BIOLOGÍA', '1', '60', null, null, 'TAS-2018', 'TAS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-104', 'TOPOGRAFÍA', '1', '60', null, null, 'TAS-2018', 'TAS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-105', 'SISTEMAS DE PRODUCCIÓN AGRÍCOLA SUSTENTABLE I', '1', '60', null, null, 'TAS-2018', 'TAS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-106', 'INGLÉS I', '1', '60', null, null, 'TAS-2018', 'TAS', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-107', 'EXPRESIÓN ORAL Y ESCRITA I', '1', '75', null, null, 'TAS-2018', 'TAS', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TAS-108', 'FORMACIÓN SOCIOCULTURAL I', '1', '30', null, null, 'TAS-2018', 'TAS', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-101', 'MATEMÁTICAS APLICADAS A LA GASTRONOMÍA', '1', '60', null, null, 'TGA2012', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-102', 'INFORMÁTICA', '1', '60', null, null, 'TGA2012', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-103', 'SEGURIDAD E HIGIENE EN  ALIMENTOS', '1', '45', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-104', 'INTRODUCCIÓN A LA GASTRONOMÍA', '1', '75', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-105', 'BASES CULINARIAS', '1', '120', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-106', 'INGLÉS I', '1', '60', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-107', 'EXPRESIÓN ORAL Y ESCRITA II', '1', '75', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-108', 'FORMACIÓN SOCIOCULTURAL I', '1', '30', null, null, 'TGA2012', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-201', 'ESTADÍSTICA', '2', '60', null, null, 'TGA2012', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-202', 'FUNDAMENTOS DE NUTRICIÓN', '2', '60', null, null, 'TGA2012', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-203', 'OPERACIÓN DE BAR', '2', '60', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-204', 'MÉTODOS Y TÉCNICAS CULINARIAS', '2', '120', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-205', 'MENEJO DE ALMACÉN', '2', '45', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-206', 'PANADERÍA', '2', '90', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-207', 'INGLÉS II', '2', '60', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-208', 'FORMACIÓN SOCIOCULTURAL II', '2', '45', null, null, 'TGA2012', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-301', 'COSTOS Y PRESUPUESTOS', '3', '75', null, null, 'TGA2012', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-302', 'FUNDAMENTOS DE VITIVINICULTURA', '3', '60', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-303', 'ESTANDARIZACIÓN DE PLATILLOS', '3', '120', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-304', 'ADMINISTRACIÓN DE ALIMENTOS Y BEBIDAS I', '3', '60', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-305', 'PASTELERÍA', '3', '105', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-306', 'INGLES III', '3', '60', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-307', 'FORMACIÓN SOCIOCULTURAL III', '3', '30', null, null, 'TGA2012', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-401', 'SERVICIOS DE ALIMENTOS Y BEBIDAS', '4', '90', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-402', 'MERCADOTECNÍA DE SERVICIOS GASTRONÓMICOS', '4', '60', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-403', 'ADMINISTRACIÓN DE ALIMENTOS Y BEBIDAS II', '4', '60', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-404', 'REPOSTERÍA', '4', '90', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-405', 'INTEGRADORA I', '4', '30', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-406', 'INGLÉS IV', '4', '60', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-407', 'FRANCÉS I', '4', '90', null, null, 'TGA2012', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-408', 'FORMACIÓN SOCIOCULTURAL IV', '4', '45', null, null, 'TGA2012', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA-501', 'EVALUACIÓN DE SERVICIOS GASTRONÓMICOS', '5', '75', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-502', 'CONFORMACIÓN DE MENÚS', '5', '120', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-503', 'LOGÍSTICA DE EVENTOS', '5', '105', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-504', 'INTEGRADORA II', '5', '30', null, null, 'TGA2012', 'TGA', 'FT', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-505', 'INGLÉS V', '5', '60', null, null, 'TGA2012', 'TGA', 'LYM', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-506', 'FRANCÉS II', '5', '90', null, null, 'TGA2012', 'TGA', 'LYM', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-507', 'EXPRESIÓN ORAL Y ESCRITA II', '5', '75', null, null, 'TGA2012', 'TGA', 'LYM', 'A1');
INSERT INTO `asignaturas` VALUES ('TGA-601', 'ESTADIAS PROFESIONALES', '6', '525', null, null, 'TGA2012', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-101', 'Matemáticas Aplicadas a la Gastronomía', '1', '60', null, null, 'TGA2018', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-102', 'Informática', '1', '60', null, null, 'TGA2018', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-103', 'Seguridad e Higiene en los Alimentos', '1', '45', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-104', 'Introducción a la Gastronomía', '1', '75', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-105', 'Bases Culinarias', '1', '120', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-106', 'Inglés I', '1', '60', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-107', 'Expresión Oral y Escrita I', '1', '75', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-108', 'Formación Sociocultural I', '1', '30', null, null, 'TGA2018', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-201', 'Estadística Aplicada a la Gastronomía', '2', '60', null, null, 'TGA2018', 'TGA', 'CBA', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-202', 'Fundamentos de Nutrición', '2', '60', null, null, 'TGA2018', 'TGA', 'CBA', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-203', 'Servicios de Alimentos y Bebidas', '2', '60', null, null, 'TGA2018', 'TGA', 'FT', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-204', 'Métodos y Técnicas Culinarias', '2', '120', null, null, 'TGA2018', 'TGA', 'FT', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-205', 'Panadería', '2', '120', null, null, 'TGA2018', 'TGA', 'TF', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-206', 'Inglés II', '2', '60', null, null, 'TGA2018', 'TGA', 'LYM', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-207', 'Formación Sociocultural II', '2', '45', null, null, 'TGA2018', 'TGA', 'HG', 'TC ');
INSERT INTO `asignaturas` VALUES ('TGA18-301', 'Costos y Presupuestos', '3', '60', null, null, 'TGA2018', 'TGA', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-302', 'Operación de Bar', '3', '75', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-303', 'Estandarización de Platillos', '3', '120', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-304', 'Gestión de Compras y Almacén', '3', '75', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-305', 'Pastelería', '3', '105', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-306', 'Inglés III', '3', '60', null, null, 'TGA2018', 'TGA', 'LM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-307', 'Formación Sociocultural III', '3', '30', null, null, 'TGA2018', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-401', 'Mercadotecnia de Servicios Gastronómicos', '4', '60', null, null, 'TGA2018', 'TGA', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TGA18-402', 'Fundamentos de Vitivinicultura', '4', '60', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-403', 'Administración de Alimentos y Bebidas', '4', '75', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-404', 'Repostería', '4', '105', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-405', 'Integradora I', '4', '30', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-406', 'Inglés IV', '4', '60', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-407', 'Francés I', '4', '90', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-408', 'Formación Sociocultural IV', '4', '45', null, null, 'TGA2018', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-501', 'Métodos y Técnicas de Investigación Aplicadas a la', '5', '60', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-502', 'Evaluación de Servicios Gastronómicos', '5', '45', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-503', 'Conformación de Menús', '5', '120', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-504', 'Logística de Eventos', '5', '75', null, null, 'TGA2018', 'TGA', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-505', 'Integradora II', '5', '30', null, null, 'TGA2018', 'TGA', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-506', 'Ingles V', '5', '60', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-507', 'Francés II', '5', '60', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TGA18-508', 'Expresión Oral y Escrita II', '5', '75', null, null, 'TGA2018', 'TGA', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-101', 'ÁLGEBRA LINEAL', '1', '90', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-102', 'QUÍMICA BÁSICA', '1', '75', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-103', 'INTRODUCCIÓN AL MANTENIMIENTO', '1', '45', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-104', 'SEGURIDAD Y MEDIO AMBIENTE', '1', '45', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-105', 'INFORMÁTICA', '1', '45', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-106', 'ADMINISTRACIÓN DEL PERSONAL', '1', '45', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-107', 'INGLÉS I', '1', '60', null, null, 'TMI2015', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-108', 'EXPRESIÓN ORAL Y ESCRITA I', '1', '75', null, null, 'TMI2015', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-109', 'FORMACIÓN SOCIOCULTURAL I', '1', '45', null, null, 'TMI2015', 'TMI', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-201', 'FUNCIONES MATEMÁTICAS', '2', '60', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-202', 'FÍSICA', '2', '60', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-203', 'ELECTRICIDAD Y MAGNETISMO', '2', '45', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-204', 'GESTIÓN DEL MANTENIMIENTO', '2', '75', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-205', 'CALIDAD EN EL MANTENIMIENTO', '2', '60', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-206', 'DIBUJO INDUSTRIAL', '2', '60', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-207', 'MÉTODOS Y SISTEMAS DE  TRABAJO', '2', '60', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-208', 'COSTOS Y PRESUPUESTOS', '2', '45', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-209', 'INGLÉS II', '2', '60', null, null, 'TMI2015', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-301', 'CÁLCULO DIFERENCIAL', '3', '60', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-302', 'PROBABILIDAD Y ESTADÍSTICA', '3', '75', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-303', 'TERMODINÁMICA', '3', '45', null, null, 'TMI2015', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-304', 'SISTEMAS ELÉCTRICOS', '3', '60', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-305', 'MÁQUINAS Y MECANISMOS', '3', '105', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-306', 'ELECTRÓNICA ANALÓGICA', '3', '60', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-307', 'INTEGRADORA I', '3', '30', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-308', 'INGLÉS III', '3', '60', null, null, 'TMI2015', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-309', 'FORMACIÓN SOCIOCULTURAL II', '3', '30', null, null, 'TMI2015', 'TMI', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI-401', 'CÁLCULO INTEGRAL', '4', '60', null, null, 'TMI2015', 'TMI', 'CBA', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-402', 'ESTRUCTURA Y PROPIDADES DE LOS MATERIALES', '4', '45', null, null, 'TMI2015', 'TMI', 'CBA', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-403', 'MÁQUINAS ELÉCTRICAS', '4', '75', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-404', 'REDES DE SERVICIOS INDUSTRIALES', '4', '45', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-405', 'ELECTRÓNICA DIGITAL', '4', '60', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-406', 'PRINCIPIOS DE PROGRAMACIÓN', '4', '45', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-407', 'SISTEMAS NEUMÁTICOS E HIDRÁULICOS', '4', '105', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-408', 'INGLÉS IV', '4', '60', null, null, 'TMI2015', 'TMI', 'LYM', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-409', 'FORMACIÓN SOCIOCULTURAL III', '4', '30', null, null, 'TMI2015', 'TMI', 'HG', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-501', 'INSTALACIONES ELÉCTRICAS', '5', '75', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-502', 'MÁQUINAS TÉRMICAS', '5', '45', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-503', 'MANTENIMIENTO A PROCESOS DE MANUFACTURA', '5', '75', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-504', 'AUTOMATIZACIÓN Y ROBÓTICA', '5', '75', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-505', 'INGENIERÍA DE MATERIALES', '5', '45', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-506', 'INTEGRADORA II', '5', '30', null, null, 'TMI2015', 'TMI', 'FT', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-507', 'INGLÉS V', '5', '60', null, null, 'TMI2015', 'TMI', 'LYM', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-508', 'EXPRESIÓN ORAL Y ESCRITA II', '5', '75', null, null, 'TMI2015', 'TMI', 'LYM', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-509', 'FORMACIÓN SOCIOCULTURAL IV', '5', '45', null, null, 'TMI2015', 'TMI', 'HG', 'AI');
INSERT INTO `asignaturas` VALUES ('TMI-601', 'ESTADÍA PROFESIONAL', '6', '525', null, null, 'TMI2015', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-101', 'Álgebra Lineal', '1', '90', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-102', 'Química Básica', '1', '75', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-103', 'Introducción al Mantenimiento', '1', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-104', 'Seguridad y Medio Ambiente', '1', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-105', 'Tecnologías para la Digitalización', '1', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-106', 'Administración del Personal', '1', '45', null, null, 'TMI2018', 'TMI', 'TF', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-107', 'Inglés I', '1', '60', null, null, 'TMI2018', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-108', 'Expresión Oral y Escrita I', '1', '75', null, null, 'TMI2018', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-109', 'Formación Sociocultural I', '1', '45', null, null, 'TMI2018', 'TMI', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-201', 'Funciones Matemáticas', '2', '60', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-202', 'Física', '2', '60', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-203', 'Electricidad y Magnetismo', '2', '45', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-204', 'Gestión del mantenimiento', '2', '75', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-205', 'Calidad en el Mantenimiento', '2', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-206', 'Dibujo Industrial', '2', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-207', 'Métodos y Sistemas de Trabajo', '2', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-208', 'Costos y Presupuestos', '2', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-209', 'Inglés II', '2', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-301', 'Cálculo Diferencial', '3', '60', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-302', 'Probabilidad y Estadistica', '3', '75', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-303', 'Termodinámica', '3', '45', null, null, 'TMI2018', 'TMI', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-304', 'Sistemas Eléctricos', '3', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-305', 'Máquinas y Mecanismos', '3', '105', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-306', 'Electrónica Analógica', '3', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-307', 'Integradora I', '3', '30', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-308', 'Inglés III', '3', '60', null, null, 'TMI2018', 'TMI', 'LM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-309', 'Formación Sociocultural II', '3', '30', null, null, 'TMI2018', 'TMI', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-401', 'Cálculo Integral', '4', '60', null, null, 'TMI2018', 'TMI', 'CA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-402', 'Estructura y Propiedades de los Materiales', '4', '45', null, null, 'TMI2018', 'TMI', 'CA', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-403', 'Máquinas Eléctricas', '4', '75', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-404', 'Redes de Servicios Industriales', '4', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-405', 'Electrónica Digital', '4', '60', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-406', 'Principios de Programación', '4', '45', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-407', 'Sistemas Neumáticos e Hidráulicos', '4', '105', null, null, 'TMI2018', 'TMI', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-408', 'Ingles IV', '4', '60', null, null, 'TMI2018', 'TMI', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-409', 'Formación Sociocultural III', '4', '30', null, null, 'TMI2018', 'TMI', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TMI18-501', 'Instalaciones Eléctricas', '5', '75', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-502', 'Máquinas Térmicas', '5', '45', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-503', 'Mantenimiento a Procesos de Manufactura', '5', '75', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-504', 'Automatización y Robótica', '5', '75', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-505', 'Ingeniería de Materiales', '5', '45', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-506', 'Integradora II', '5', '30', null, null, 'TMI2018', 'TMI', 'FT', null);
INSERT INTO `asignaturas` VALUES ('TMI18-507', 'Inglés V', '5', '60', null, null, 'TMI2018', 'TMI', 'LM', null);
INSERT INTO `asignaturas` VALUES ('TMI18-508', 'Expresión Oral y Escrita II', '5', '75', null, null, 'TMI2018', 'TMI', 'LM', null);
INSERT INTO `asignaturas` VALUES ('TMI18-509', 'Formación Sociocultural IV', '5', '45', null, null, 'TMI2018', 'TMI', 'HG', null);
INSERT INTO `asignaturas` VALUES ('TTD-101', 'Álgebra Lineal', '1', '90', null, null, 'TTD2018', 'TTD', 'CB', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-102', 'Desarrollo de Habilidades del Pensamiento Lógico', '1', '45', null, null, 'TTD2018', 'TTD', 'CB', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-103', 'Fundamentos de TI', '1', '75', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-104', 'Fundamentos de Redes', '1', '75', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-105', 'Metodología de la Programación', '1', '75', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-106', 'Expresión Oral y Escrita I', '1', '75', null, null, 'TTD2018', 'TTD', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-107', 'Inglés I', '1', '60', null, null, 'TTD2018', 'TTD', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-108', 'Formación Sociocultural I', '1', '30', null, null, 'TTD2018', 'TTD', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-201', 'Funciones Matemáticas', '2', '60', null, null, 'TTD2018', 'TTD', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-202', 'Metodologías y Modelado de Desarrollo de Software', '2', '75', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-203', 'Interconexión de Redes', '2', '90', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-204', 'Programación Orientada a Objetos', '2', '90', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-205', 'Introducción al Diseño Digital', '2', '45', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-206', 'Base de Datos', '2', '60', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-207', 'Inglés II', '2', '60', null, null, 'TTD2018', 'TTD', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-208', 'Formación Sociocultural II', '2', '45', null, null, 'TTD2018', 'TTD', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-301', 'Cálculo Diferencial', '3', '60', null, null, 'TTD2018', 'TTD', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-302', 'Probabilidad y Estadística', '3', '75', null, null, 'TTD2018', 'TTD', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-303', 'Base de Datos para Aplicaciones', '3', '105', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-304', 'Sistemas Operativos', '3', '75', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-305', 'Aplicaciones Web', '3', '90', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-306', 'Integradora I', '3', '30', null, null, 'TTD2018', 'TTD', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-307', 'Inglés III', '3', '60', null, null, 'TTD2018', 'TTD', 'LM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-308', 'Formación sociocultural III', '3', '30', null, null, 'TTD2018', 'TTD', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTD-401', 'Estándares y Métricas para el Desarrollo de Softwa', '4', '45', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-402', 'Principios para IoT', '4', '60', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-403', 'Diseño de Apps', '4', '60', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-404', 'Estructura de datos aplicada', '4', '90', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-405', 'Aplicaciones Web Orientada a Servicios', '4', '105', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-406', 'Evaluación y Mejora para el Desarrollo de Software', '4', '60', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-407', 'Inglés IV', '4', '60', null, null, 'TTD2018', 'TTD', 'LYM', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-408', 'Formación Sociocultural IV', '4', '45', null, null, 'TTD2018', 'TTD', 'HG', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-501', 'Aplicaciones de IoT', '5', '90', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-502', 'Desarrollo Móvil Multiplataforma', '5', '105', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-503', 'Integradora II', '5', '30', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-504', 'Aplicaciones Web para I4.0', '5', '75', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-505', 'Base de Datos para Cómputo en la Nube', '5', '90', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-506', 'Expresión Oral y Escrita II', '5', '75', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTD-507', 'Inglés V', '5', '60', null, null, 'TTD2018', 'TTD', 'FT', 'ESP');
INSERT INTO `asignaturas` VALUES ('TTH-101', 'Matemáticas Aplicadas en el Turismo', '1', '75', null, null, 'TTH2017', 'TTH', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-102', 'Introducción a las Tecnologías de la Información', '1', '60', null, null, 'TTH2017', 'TTH', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-103', 'Introducción al Turismo', '1', '60', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-104', 'Patrimonio Natural y Cultural', '1', '90', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-105', 'Administración', '1', '60', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-106', 'Inglés I', '1', '90', null, null, 'TTH2017', 'TTH', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-107', 'Expresión Oral y Escrita I', '1', '75', null, null, 'TTH2017', 'TTH', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-108', 'Formación Sociocultural I', '1', '30', null, null, 'TTH2017', 'TTH', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-201', 'Estadística', '2', '75', null, null, 'TTH2017', 'TTH', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-202', 'Sustentabilidad en el Turismo', '2', '60', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-203', 'Servicios de Turismo Cultural y de Naturaleza', '2', '60', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-204', 'Servicios de Hospedaje y Alimentos y Bebidas', '2', '75', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-205', 'Gestión de la Calidad', '2', '75', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-206', 'Inglés II', '2', '120', null, null, 'TTH2017', 'TTH', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-207', 'Formación Sociocultural II', '2', '45', null, null, 'TTH2017', 'TTH', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-301', 'Métodos y Técnicas de Investigación', '3', '75', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-302', 'Servicios de Viaje', '3', '75', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-303', 'Capital Humano', '3', '60', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-304', 'Operaciones Contables y Financieras', '3', '90', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-305', 'Mercadotecnia de Productos y Servicios Turísticos', '3', '75', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-306', 'Integradora I', '3', '30', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-307', 'Inglés III', '3', '90', null, null, 'TTH2017', 'TTH', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-308', 'Formación Sociocultural III', '3', '30', null, null, 'TTH2017', 'TTH', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTH-401', 'Reservaciones', '4', '60', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-402', 'Administración de Habitaciones', '4', '75', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-403', 'Recepción', '4', '90', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-404', 'Calidad en Servicios de Hospitalidad', '4', '45', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-405', 'Ventas y Comercio Digital', '4', '75', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-406', 'Inglés IV', '4', '60', null, null, 'TTH2017', 'TTH', 'LYM', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-407', 'Francés I', '4', '90', null, null, 'TTH2017', 'TTH', 'LYM', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-408', 'Formación sociocultural IV', '4', '90', null, null, 'TTH2017', 'TTH', 'HG', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-501', 'Relaciones Públicas y Concierge', '5', '30', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-502', 'Animación Turística y Sociocultural', '5', '45', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-503', 'Logística de Eventos', '5', '75', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-504', 'Centros de Consumo en Hotelería', '5', '60', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-505', 'Formación de Capital Humano', '5', '75', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-506', 'Integradora II', '5', '30', null, null, 'TTH2017', 'TTH', 'FT', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-507', 'Inglés V', '5', '60', null, null, 'TTH2017', 'TTH', 'LYM', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-508', 'Francés II', '5', '60', null, null, 'TTH2017', 'TTH', 'LYM', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-509', 'Expresión Oral y Escrita II', '5', '75', null, null, 'TTH2017', 'TTH', 'LYM', 'AH');
INSERT INTO `asignaturas` VALUES ('TTH-601', 'Estadía Profesional', '6', '525', null, null, 'TTH2017', 'TTH', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-101', 'DESARROLLO DE HABILIDADES DEL PENSAMIENTO LÓGICO', '1', '60', '30', '15', 'TTS2009', 'TTS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-102', 'OFIMÁTICA', '1', '45', null, null, 'TTS2009', 'TTS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-103', 'SOPORTE TÉCNICO', '1', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-104', 'METODOLOGÍA DE LA PROGRAMACIÓN', '1', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-105', 'FUNDAMENTOS DE REDES', '1', '75', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-106', 'INGLÉS I', '1', '60', null, null, 'TTS2009', 'TTS', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-107', 'EXPRESIÓN ORAL Y ESCRITA I', '1', '75', null, null, 'TTS2009', 'TTS', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-108', 'FORMACIÓN SOCIOCULTURAL', '1', '30', null, null, 'TTS2009', 'TTS', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-201', 'DESARROLLO DE HABILIDADES DEL PENSAMIENTO MATEMÁTI', '2', '75', null, null, 'TTS2009', 'TTS', 'CBA', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-202', 'PROGRAMACIÓN', '2', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-203', 'BASE DE DATOS', '2', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-204', 'INTRODUCCIÓN AL ANÁLISIS Y DISEÑO DE SISTEMAS', '2', '75', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-205', 'REDES DE ÁREA LOCAL', '2', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-206', 'INGLÉS II', '2', '60', null, null, 'TTS2009', 'TTS', 'LYM', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-207', 'FORMACIÓN SOCIOCULTURAL II', '2', '45', null, null, 'TTS2009', 'TTS', 'HG', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-301', 'ADMINISTRACIÓN DE LA FUNCIÓN INFORMÁTICA', '3', '45', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-302', 'DESARROLLO DE APLICACIÓNES I', '3', '90', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-303', 'SISTEMAS OPERATIVOS', '3', '75', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-304', 'INTEGRADORA I', '3', '30', null, null, 'TTS2009', 'TTS', 'FT', 'TC');
INSERT INTO `asignaturas` VALUES ('TTS-305', 'DESARROLLO DE APLICACIÓNES WEB', '3', '90', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-306', 'BASE DE DATOS II', '3', '105', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-307', 'INGLÉS III', '3', '60', null, null, 'TTS2009', 'TTS', 'LYM', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-308', 'FORMACIÓN SOCIOCULTURAL III', '3', '30', null, null, 'TTS2009', 'TTS', 'HG', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-401', 'DESARROLLO DE APLICACIONES II', '4', '105', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-402', 'ADMINISTRACIÓN DE BASE DE DATOS', '4', '90', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-403', 'INGENIERÍA DE SOFTWARE I', '4', '90', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-404', 'ESTRUCTURA DE DATOS', '4', '105', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-405', 'INGLÉS IV', '4', '60', null, null, 'TTS2009', 'TTS', 'LYM', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-406', 'FORMACIÓN SOCIOCULTURAL IV', '4', '45', null, null, 'TTS2009', 'TTS', 'HG', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-501', 'DESARROLLO DE APLICACIONES III', '5', '105', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-502', 'INGENIERÍA DE SOFTWARE II', '5', '90', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-503', 'CALIDAD EN EL DESARROLLO DE SOFTWARE', '5', '90', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-504', 'INTEGRADORA II', '5', '30', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-505', 'INGLÉS V', '5', '60', null, null, 'TTS2009', 'TTS', 'LYM', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-506', 'EXPRESIÓN ORAL Y ESCRITA II', '5', '75', null, null, 'TTS2009', 'TTS', 'LYM', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-507', 'ADMINISTRACIÓN DE PROYECTOS', '5', '75', null, null, 'TTS2009', 'TTS', 'FT', 'SI');
INSERT INTO `asignaturas` VALUES ('TTS-601', 'ESTADÍAS PROFESIONALES', '6', '525', null, null, 'TTS2009', 'TTS', 'FT', 'TC');

-- ----------------------------
-- Table structure for docentesporgrupo
-- ----------------------------
DROP TABLE IF EXISTS `docentesporgrupo`;
CREATE TABLE `docentesporgrupo` (
  `ClaveCarga` varchar(50) NOT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `ClaveAsig` varchar(50) DEFAULT NULL,
  `Cedula` varchar(50) NOT NULL,
  `ClaveGrupo` varchar(50) NOT NULL,
  PRIMARY KEY (`ClaveCarga`),
  KEY `cedula` (`ClaveCarga`),
  KEY `id_asignatura` (`Cedula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of docentesporgrupo
-- ----------------------------
INSERT INTO `docentesporgrupo` VALUES ('1', '2018C', 'TTS-401', '01', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('2', '2018C', 'TTS-402', '02', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('3', '2018C', 'TTS-403', '01', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('4', '2018C', 'TTS-404', '200', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('5', '2018C', 'TTS-405', '05', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('6', '2018C', 'TTS-406', '10', 'TTS-4A');
INSERT INTO `docentesporgrupo` VALUES ('7', '2018C', 'TTS-401', '01', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('8', '2018C', 'TTS-402', '02', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('9', '2018C', 'TTS-403', '01', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('10', '2018C', 'TTS-404', '200', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('11', '2018C', 'TTS-405', '05', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('12', '2018C', 'TTS-406', '10', 'TTS-4B');
INSERT INTO `docentesporgrupo` VALUES ('13', '2018C', 'TTD-101', '43', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('14', '2018C', 'TTD-102', '89', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('15', '2018C', 'TTD-103', '03', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('16', '2018C', 'TTD-104', '03', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('17', '2018C', 'TTD-105', '200', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('18', '2018C', 'TTD-106', '09', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('19', '2018C', 'TTD-107', '05', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('20', '2018C', 'TTD-108', '10', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('21', '2018C', 'TTD-101', '88', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('22', '2018C', 'TTD-102', '89', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('23', '2018C', 'TTD-103', '03', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('24', '2018C', 'TTD-104', '03', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('25', '2018C', 'TTD-105', '200', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('26', '2018C', 'TTD-106', '09', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('27', '2018C', 'TTD-107', '05', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('28', '2018C', 'TTD-108', '10', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('38', '2018C', 'TTH-101', '43', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('39', '2018C', 'TTH-102', '89', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('40', '2018C', 'TTH-103', '85', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('41', '2018C', 'TTH-104', '78', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('42', '2018C', 'TTH-105', '04', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('43', '2018C', 'TTH-106', '05', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('44', '2018C', 'TTH-107', '10', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('45', '2018C', 'TTH-108', '92', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('46', '2018C', 'TTH-401', '78', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('47', '2018C', 'TTH-402', '92', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('48', '2018C', 'TTH-403', '85', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('49', '2018C', 'TTH-404', '35', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('50', '2018C', 'TTH-405', '93', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('51', '2018C', 'TTH-406', '87', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('52', '2018C', 'TTH-407', '79', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('53', '2018C', 'TTH-408', '58', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('54', '2018C', 'TTH-401', '78', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('55', '2018C', 'TTH-402', '92', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('56', '2018C', 'TTH-403', '85', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('57', '2018C', 'TTH-404', '11', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('58', '2018C', 'TTH-405', '93', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('59', '2018C', 'TTH-406', '87', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('60', '2018C', 'TTH-407', '79', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('61', '2018C', 'TTH-408', '58', 'TTH-4B');
INSERT INTO `docentesporgrupo` VALUES ('62', '2018C', 'TAF-401', '04', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('63', '2018C', 'TAF-402', '94', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('64', '2018C', 'TAF-403', '94', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('65', '2018C', 'TAF-404', '35', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('66', '2018C', 'TAF-405', '11', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('67', '2018C', 'TAF-406', '80', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('68', '2018C', 'TAF-407', '10', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('69', '2018C', 'TAF-101', '43', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('70', '2018C', 'TAF-102', '89', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('71', '2018C', 'TAF-103', '94', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('72', '2018C', 'TAF-104', '93', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('73', '2018C', 'TAF-105', '04', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('74', '2018C', 'TAF-106', '80', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('75', '2018C', 'TAF-107', '10', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('76', '2018C', 'TAF-108', '92', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('77', '2018C', 'TTH-101', '43', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('78', '2018C', 'TTH-102', '89', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('79', '2018C', 'TTH-103', '85', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('80', '2018C', 'TTH-104', '78', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('81', '2018C', 'TTH-105', '04', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('82', '2018C', 'TTH-106', '80', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('83', '2018C', 'TTH-107', '10', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('84', '2018C', 'TTH-108', '92', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('85', '2018C', 'TMI-401', '11', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('86', '2018C', 'TMI-402', '37', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('87', '2018C', 'TMI-403', '89', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('88', '2018C', 'TMI-404', '08', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('89', '2018C', 'TMI-405', '03', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('90', '2018C', 'TMI-406', '89', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('91', '2018C', 'TMI-407', '08', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('92', '2018C', 'TMI-408', '87', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('93', '2018C', 'TMI-409', '09', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('94', '2018C', 'TMI18-101', '88', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('95', '2018C', 'TMI18-102', '43', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('96', '2018C', 'TMI18-103', '37', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('97', '2018C', 'TMI18-104', '37', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('98', '2018C', 'TMI18-105', '03', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('99', '2018C', 'TMI18-106', '35', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('100', '2018C', 'TMI18-107', '87', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('101', '2018C', 'TMI18-108', '08', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('102', '2018C', 'TMI18-109', '92', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('103', '2018C', 'TGA-401', '58', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('104', '2018C', 'TGA-402', '78', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('105', '2018C', 'TGA-403', '85', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('106', '2018C', 'TGA-404', '77', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('107', '2018C', 'TGA-405', '81', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('108', '2018C', 'TGA-406', '87', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('109', '2018C', 'TGA-407', '79', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('110', '2018C', 'TGA-408', '50', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('111', '2018C', 'TGA-401', '06', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('112', '2018C', 'TGA-402', '78', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('113', '2018C', 'TGA-403', '85', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('114', '2018C', 'TGA-404', '86', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('115', '2018C', 'TGA-405', '81', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('116', '2018C', 'TGA-406', '87', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('117', '2018C', 'TGA-407', '79', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('118', '2018C', 'TGA-408', '50', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('119', '2018C', 'TGA18-101', '88', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('120', '2018C', 'TGA18-102', '09', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('121', '2018C', 'TGA18-103', '58', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('122', '2018C', 'TGA18-104', '06', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('123', '2018C', 'TGA18-105', '77', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('124', '2018C', 'TGA18-106', '80', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('125', '2018C', 'TGA18-107', '50', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('126', '2018C', 'TGA18-108', '92', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('127', '2018C', 'TGA18-101', '88', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('128', '2018C', 'TGA18-102', '09', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('129', '2018C', 'TGA18-103', '58', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('130', '2018C', 'TGA18-104', '06', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('131', '2018C', 'TGA18-105', '86', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('132', '2018C', 'TGA18-106', '80', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('133', '2018C', 'TGA18-107', '50', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('134', '2018C', 'TGA18-108', '92', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('135', '2018C', 'TGA18-101', '88', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('136', '2018C', 'TGA18-102', '09', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('137', '2018C', 'TGA18-103', '58', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('138', '2018C', 'TGA18-104', '06', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('139', '2018C', 'TGA18-105', '86', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('140', '2018C', 'TGA18-106', '80', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('141', '2018C', 'TGA18-107', '50', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('142', '2018C', 'TGA18-108', '92', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('143', '2018C', 'TGA18-101', '88', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('144', '2018C', 'TGA18-102', '09', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('145', '2018C', 'TGA18-103', '58', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('146', '2018C', 'TGA18-104', '06', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('147', '2018C', 'TGA18-105', '86', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('148', '2018C', 'TGA18-106', '05', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('149', '2018C', 'TGA18-107', '93', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('150', '2018C', 'TGA18-108', '92', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('151', '2019A', 'TTS-501', '02', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('152', '2019A', 'TTS-502', '01', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('153', '2019A', 'TTS-503', '96', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('154', '2019A', 'TTS-504', '89', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('155', '2019A', 'TTS-505', '05', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('156', '2019A', 'TTS-506', '92', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('157', '2019A', 'TTS-507', '94', 'TTS-5A');
INSERT INTO `docentesporgrupo` VALUES ('158', '2019A', 'TTS-501', '96', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('159', '2019A', 'TTS-502', '01', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('160', '2019A', 'TTS-503', '01', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('161', '2019A', 'TTS-504', '89', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('162', '2019A', 'TTS-505', '05', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('163', '2019A', 'TTS-506', '88', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('164', '2019A', 'TTS-507', '93', 'TTS-5B');
INSERT INTO `docentesporgrupo` VALUES ('165', '2019A', 'TTD-201', '43', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('166', '2019A', 'TTD-202', '96', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('167', '2019A', 'TTD-203', '03', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('168', '2019A', 'TTD-204', '02', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('169', '2019A', 'TTD-205', '96', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('170', '2019A', 'TTD-206', '01', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('171', '2019A', 'TTD-207', '05', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('172', '2019A', 'TTD-208', '37', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('173', '2019A', 'TTD-201', '43', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('174', '2019A', 'TTD-202', '96', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('175', '2019A', 'TTD-203', '03', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('176', '2019A', 'TTD-204', '02', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('177', '2019A', 'TTD-205', '96', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('178', '2019A', 'TTD-206', '01', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('179', '2019A', 'TTD-207', '05', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('180', '2019A', 'TTD-208', '93', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('181', '2019A', 'TMI18-201', '88', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('182', '2019A', 'TMI18-202', '08', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('183', '2019A', 'TMI18-203', '89', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('184', '2019A', 'TMI18-204', '37', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('185', '2019A', 'TMI18-205', '08', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('186', '2019A', 'TMI18-206', '11', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('187', '2019A', 'TMI18-207', '43', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('188', '2019A', 'TMI18-208', '04', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('189', '2019A', 'TMI18-209', '87', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('190', '2019A', 'TAF-201', '88', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('191', '2019A', 'TAF-202', '43', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('192', '2019A', 'TAF-203', '35', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('193', '2019A', 'TAF-204', '89', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('194', '2019A', 'TAF-205', '94', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('195', '2019A', 'TAF-206', '04', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('196', '2019A', 'TAF-207', '35', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('197', '2019A', 'TAF-208', '80', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('198', '2019A', 'TAF-209', '09', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('199', '2019A', 'TAF-501', '94', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('200', '2019A', 'TAF-502', '85', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('201', '2019A', 'TAF-503', '94', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('202', '2019A', 'TAF-504', '93', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('203', '2019A', 'TAF-505', '04', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('204', '2019A', 'TAF-506', '35', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('205', '2019A', 'TAF-507', '80', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('206', '2019A', 'TAF-508', '09', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('242', '2019A', 'TMI-501', '03', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('243', '2019A', 'TMI-502', '37', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('244', '2019A', 'TMI-503', '89', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('245', '2019A', 'TMI-504', '03', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('246', '2019A', 'TMI-505', '89', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('247', '2019A', 'TMI-506', '08', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('248', '2019A', 'TMI-507', '87', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('249', '2019A', 'TMI-508', '93', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('250', '2019A', 'TMI-509', '50', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('251', '2019A', 'TTH-201', '88', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('252', '2019A', 'TTH-202', '78', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('253', '2019A', 'TTH-203', '92', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('254', '2019A', 'TTH-204', '78', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('255', '2019A', 'TTH-205', '85', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('256', '2019A', 'TTH-206', '05', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('257', '2019A', 'TTH-207', '94', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('258', '2019A', 'TTH-501', '04', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('259', '2019A', 'TTH-502', '85', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('260', '2019A', 'TTH-503', '78', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('261', '2019A', 'TTH-504', '92', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('262', '2019A', 'TTH-505', '11', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('263', '2019A', 'TTH-506', '79', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('264', '2019A', 'TTH-507', '87', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('265', '2019A', 'TTH-508', '79', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('266', '2019A', 'TTH-509', '09', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('267', '2019A', 'TTH-501', '04', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('268', '2019A', 'TTH-502', '78', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('269', '2019A', 'TTH-503', '85', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('270', '2019A', 'TTH-504', '92', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('271', '2019A', 'TTH-505', '89', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('272', '2019A', 'TTH-506', '79', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('273', '2019A', 'TTH-507', '87', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('274', '2019A', 'TTH-508', '79', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('275', '2019A', 'TTH-509', '09', 'TTH-5B');
INSERT INTO `docentesporgrupo` VALUES ('284', '2019B', 'TTD-301', '43', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('285', '2019B', 'TTD-302', '88', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('286', '2019B', 'TTD-303', '96', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('287', '2019B', 'TTD-304', '01', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('288', '2019B', 'TTD-305', '02', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('289', '2019B', 'TTD-306', '96', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('290', '2019B', 'TTD-307', '87', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('291', '2019B', 'TTD-308', '08', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('292', '2019B', 'TTD-301', '88', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('293', '2019B', 'TTD-302', '43', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('294', '2019B', 'TTD-303', '97', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('295', '2019B', 'TTD-304', '01', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('296', '2019B', 'TTD-305', '96', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('297', '2019B', 'TTD-306', '01', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('298', '2019B', 'TTD-307', '87', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('299', '2019B', 'TTD-308', '08', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('300', '2019B', 'TMI18-301', '88', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('301', '2019B', 'TMI18-302', '43', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('302', '2019B', 'TMI18-303', '11', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('303', '2019B', 'TMI18-304', '97', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('304', '2019B', 'TMI18-305', '37', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('305', '2019B', 'TMI18-306', '89', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('306', '2019B', 'TMI18-307', '08', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('307', '2019B', 'TMI18-308', '87', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('308', '2019B', 'TMI18-309', '95', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('309', '2019B', 'TGA18-301', '94', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('310', '2019B', 'TGA18-302', '77', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('311', '2019B', 'TGA18-303', '58', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('312', '2019B', 'TGA18-304', '93', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('313', '2019B', 'TGA18-305', '86', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('314', '2019B', 'TGA18-306', '80', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('315', '2019B', 'TGA18-301', '94', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('316', '2019B', 'TGA18-302', '86', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('317', '2019B', 'TGA18-303', '77', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('318', '2019B', 'TGA18-304', '93', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('319', '2019B', 'TGA18-305', '58', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('320', '2019B', 'TGA18-306', '80', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('321', '2019B', 'TGA18-301', '94', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('322', '2019B', 'TGA18-302', '58', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('323', '2019B', 'TGA18-303', '86', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('324', '2019B', 'TGA18-304', '93', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('325', '2019B', 'TGA18-305', '77', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('326', '2019B', 'TGA18-306', '87', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('327', '2019B', 'TTH-301', '79', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('328', '2019B', 'TTH-302', '79', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('329', '2019B', 'TTH-303', '92', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('330', '2019B', 'TTH-304', '93', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('331', '2019B', 'TTH-305', '78', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('332', '2019B', 'TTH-306', '85', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('333', '2019B', 'TTH-307', '05', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('334', '2019B', 'TTH-308', '95', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('335', '2019B', 'TAF-301', '94', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('336', '2019B', 'TAF-302', '78', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('337', '2019B', 'TAF-303', '93', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('338', '2019B', 'TAF-304', '94', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('339', '2019B', 'TAF-305', '92', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('340', '2019B', 'TAF-306', '11', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('341', '2019B', 'TAF-307', '93', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('342', '2019B', 'TAF-308', '05', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('343', '2019B', 'TAF-309', '95', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('344', '2019B', 'TGA18-307', '50', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('345', '2019B', 'TGA18-307', '50', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('346', '2019B', 'TGA18-307', '50', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('347', '2019B', 'TAF-601', '', 'TAF-6A');
INSERT INTO `docentesporgrupo` VALUES ('348', '2019B', 'TTS-601', '', 'TTS-6A');
INSERT INTO `docentesporgrupo` VALUES ('349', '2019B', 'TTS-601', '', 'TTS-6B');
INSERT INTO `docentesporgrupo` VALUES ('350', '2019B', 'TMI-601', '', 'TMI-6A');
INSERT INTO `docentesporgrupo` VALUES ('351', '2019B', 'TGA-601', '', 'TGA-6A');
INSERT INTO `docentesporgrupo` VALUES ('352', '2019B', 'TGA-601', '', 'TGA-6B');
INSERT INTO `docentesporgrupo` VALUES ('353', '2019B', 'TTH-601', '', 'TTH-6B');
INSERT INTO `docentesporgrupo` VALUES ('354', '2019C', 'TTD-401', '96', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('355', '2019C', 'TTD-402', '97', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('356', '2019C', 'TTD-403', '02', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('357', '2019C', 'TTD-404', '96', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('358', '2019C', 'TTD-405', '01', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('359', '2019C', 'TTD-406', '01', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('360', '2019C', 'TTD-407', '05', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('361', '2019C', 'TTD-408', '95', 'TTD-4A');
INSERT INTO `docentesporgrupo` VALUES ('362', '2019C', 'TTD-101', '43', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('363', '2019C', 'TTD-102', '89', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('364', '2019C', 'TTD-103', '96', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('365', '2019C', 'TTD-104', '01', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('366', '2019C', 'TTD-105', '96', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('367', '2019C', 'TTD-106', '09', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('368', '2019C', 'TTD-107', '05', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('369', '2019C', 'TTD-108', '95', 'TTD-1A');
INSERT INTO `docentesporgrupo` VALUES ('370', '2019C', 'TTD-101', '43', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('371', '2019C', 'TTD-102', '89', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('372', '2019C', 'TTD-103', '01', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('373', '2019C', 'TTD-104', '97', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('374', '2019C', 'TTD-105', '96', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('375', '2019C', 'TTD-106', '09', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('376', '2019C', 'TTD-107', '05', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('377', '2019C', 'TTD-108', '95', 'TTD-1B');
INSERT INTO `docentesporgrupo` VALUES ('378', '2019C', 'TMI18-101', '88', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('379', '2019C', 'TMI18-102', '43', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('380', '2019C', 'TMI18-103', '37', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('381', '2019C', 'TMI18-104', '37', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('382', '2019C', 'TMI18-105', '89', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('383', '2019C', 'TMI18-106', '99', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('384', '2019C', 'TMI18-107', '87', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('385', '2019C', 'TMI18-108', '08', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('386', '2019C', 'TMI18-109', '95', 'TMI-1A');
INSERT INTO `docentesporgrupo` VALUES ('387', '2019C', 'TMI18-401', '88', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('388', '2019C', 'TMI18-402', '37', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('389', '2019C', 'TMI18-403', '89', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('390', '2019C', 'TMI18-404', '08', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('391', '2019C', 'TMI18-405', '89', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('392', '2019C', 'TMI18-406', '02', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('393', '2019C', 'TMI18-407', '08', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('394', '2019C', 'TMI18-408', '87', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('395', '2019C', 'TMI18-409', '09', 'TMI-4A');
INSERT INTO `docentesporgrupo` VALUES ('396', '2019C', 'TGA18-101', '88', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('397', '2019C', 'TGA18-102', '02', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('398', '2019C', 'TGA18-103', '50', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('399', '2019C', 'TGA18-104', '58', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('400', '2019C', 'TGA18-105', '77', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('401', '2019C', 'TGA18-106', '05', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('402', '2019C', 'TGA18-107', '99', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('403', '2019C', 'TGA18-108', '92', 'TGA-1A');
INSERT INTO `docentesporgrupo` VALUES ('404', '2019C', 'TGA18-101', '88', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('405', '2019C', 'TGA18-102', '97', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('406', '2019C', 'TGA18-103', '50', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('407', '2019C', 'TGA18-104', '58', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('408', '2019C', 'TGA18-105', '86', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('409', '2019C', 'TGA18-106', '80', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('410', '2019C', 'TGA18-107', '99', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('411', '2019C', 'TGA18-108', '92', 'TGA-1B');
INSERT INTO `docentesporgrupo` VALUES ('412', '2019C', 'TGA18-101', '88', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('413', '2019C', 'TGA18-102', '96', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('414', '2019C', 'TGA18-103', '50', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('415', '2019C', 'TGA18-104', '100', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('416', '2019C', 'TGA18-105', '86', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('417', '2019C', 'TGA18-106', '05', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('418', '2019C', 'TGA18-107', '08', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('419', '2019C', 'TGA18-108', '37', 'TGA-1C');
INSERT INTO `docentesporgrupo` VALUES ('420', '2019C', 'TGA18-101', '88', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('421', '2019C', 'TGA18-102', '96', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('422', '2019C', 'TGA18-103', '50', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('423', '2019C', 'TGA18-104', '100', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('424', '2019C', 'TGA18-105', '58', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('425', '2019C', 'TGA18-106', '05', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('426', '2019C', 'TGA18-107', '93', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('427', '2019C', 'TGA18-108', '95', 'TGA-1D');
INSERT INTO `docentesporgrupo` VALUES ('428', '2019C', 'TGA18-401', '78', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('429', '2019C', 'TGA18-402', '100', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('430', '2019C', 'TGA18-403', '85', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('431', '2019C', 'TGA18-404', '77', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('432', '2019C', 'TGA18-405', '86', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('433', '2019C', 'TGA18-406', '87', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('434', '2019C', 'TGA18-407', '79', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('435', '2019C', 'TGA18-408', '50', 'TGA-4A');
INSERT INTO `docentesporgrupo` VALUES ('436', '2019C', 'TGA18-401', '78', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('437', '2019C', 'TGA18-402', '100', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('438', '2019C', 'TGA18-403', '93', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('439', '2019C', 'TGA18-404', '86', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('440', '2019C', 'TGA18-405', '11', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('441', '2019C', 'TGA18-406', '87', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('442', '2019C', 'TGA18-407', '79', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('443', '2019C', 'TGA18-408', '50', 'TGA-4B');
INSERT INTO `docentesporgrupo` VALUES ('444', '2019C', 'TGA18-401', '92', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('445', '2019C', 'TGA18-402', '77', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('446', '2019C', 'TGA18-403', '100', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('447', '2019C', 'TGA18-404', '58', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('448', '2019C', 'TGA18-405', '86', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('449', '2019C', 'TGA18-406', '87', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('450', '2019C', 'TGA18-407', '95', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('451', '2019C', 'TGA18-408', '37', 'TGA-4C');
INSERT INTO `docentesporgrupo` VALUES ('452', '2019C', 'TTH-101', '43', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('453', '2019C', 'TTH-102', '97', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('454', '2019C', 'TTH-103', '85', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('455', '2019C', 'TTH-104', '92', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('456', '2019C', 'TTH-105', '04', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('457', '2019C', 'TTH-106', '05', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('458', '2019C', 'TTH-107', '95', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('459', '2019C', 'TTH-108', '86', 'TTH-1A');
INSERT INTO `docentesporgrupo` VALUES ('460', '2019C', 'TTH-101', '43', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('461', '2019C', 'TTH-102', '02', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('462', '2019C', 'TTH-103', '85', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('463', '2019C', 'TTH-104', '78', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('464', '2019C', 'TTH-105', '04', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('465', '2019C', 'TTH-106', '80', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('466', '2019C', 'TTH-107', '92', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('467', '2019C', 'TTH-108', '86', 'TTH-1B');
INSERT INTO `docentesporgrupo` VALUES ('468', '2019C', 'TTH-401', '92', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('469', '2019C', 'TTH-402', '92', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('470', '2019C', 'TTH-403', '85', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('471', '2019C', 'TTH-404', '11', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('472', '2019C', 'TTH-405', '93', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('473', '2019C', 'TTH-406', '87', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('474', '2019C', 'TTH-407', '79', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('475', '2019C', 'TTH-408', '58', 'TTH-4A');
INSERT INTO `docentesporgrupo` VALUES ('476', '2019C', 'TAF-101', '43', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('477', '2019C', 'TAF-102', '89', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('478', '2019C', 'TAF-103', '37', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('479', '2019C', 'TAF-104', '93', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('480', '2019C', 'TAF-105', '94', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('481', '2019C', 'TAF-106', '80', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('482', '2019C', 'TAF-107', '50', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('483', '2019C', 'TAF-108', '99', 'TAF-1A');
INSERT INTO `docentesporgrupo` VALUES ('484', '2019C', 'TAF-401', '04', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('485', '2019C', 'TAF-402', '94', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('486', '2019C', 'TAF-403', '94', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('487', '2019C', 'TAF-404', '93', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('488', '2019C', 'TAF-405', '37', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('489', '2019C', 'TAF-406', '80', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('490', '2019C', 'TAF-407', '02', 'TAF-4A');
INSERT INTO `docentesporgrupo` VALUES ('491', '2019C', 'ITI-701', '88', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('492', '2019C', 'ITI-702', '94', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('493', '2019C', 'ITI-703', '02', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('494', '2019C', 'ITI-704', '04', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('495', '2019C', 'ITI-705', '01', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('496', '2019C', 'ITI-706', '80', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('497', '2019C', 'ITI-707', '09', 'ITI-7A');
INSERT INTO `docentesporgrupo` VALUES ('498', '2019C', 'LGA-701', '100', 'LGA-7A');
INSERT INTO `docentesporgrupo` VALUES ('499', '2019C', 'LGA-702', '77', 'LGA-7A');
INSERT INTO `docentesporgrupo` VALUES ('500', '2019C', 'LGA-703', '11', 'LGA-7A');
INSERT INTO `docentesporgrupo` VALUES ('501', '2019C', 'LGA-704', '80', 'LGA-7A');
INSERT INTO `docentesporgrupo` VALUES ('502', '2019C', 'LGA-705', '09', 'LGA-7A');
INSERT INTO `docentesporgrupo` VALUES ('503', '2019C', 'LGT-701', '94', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('504', '2019C', 'LGT-702', '11', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('505', '2019C', 'LGT-703', '78', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('506', '2019C', 'LGT-704', '85', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('507', '2019C', 'LGT-705', '80', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('508', '2019C', 'LGT-706', '08', 'LGT-7A');
INSERT INTO `docentesporgrupo` VALUES ('509', '2019C', 'LGT-701', '94', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('510', '2019C', 'LGT-702', '78', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('511', '2019C', 'LGT-703', '78', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('512', '2019C', 'LGT-704', '85', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('513', '2019C', 'LGT-705', '80', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('514', '2019C', 'LGT-706', '09', 'LGT-7B');
INSERT INTO `docentesporgrupo` VALUES ('515', '2020A', 'ITI-801', '02', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('516', '2020A', 'ITI-802', '01', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('517', '2020A', 'ITI-803', '96', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('518', '2020A', 'ITI-804', '02', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('519', '2020A', 'ITI-805', '80', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('520', '2020A', 'ITI-806', '09', 'ITI-8A');
INSERT INTO `docentesporgrupo` VALUES ('521', '2020A', 'LGA-801', '100', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('522', '2020A', 'LGA-802', '77', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('523', '2020A', 'LGA-803', '94', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('524', '2020A', 'LGA-804', '100', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('525', '2020A', 'LGA-805', '80', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('526', '2020A', 'LGA-806', '09', 'LGA-8A');
INSERT INTO `docentesporgrupo` VALUES ('527', '2020A', 'LGT-801', '94', 'LGT-8A');
INSERT INTO `docentesporgrupo` VALUES ('528', '2020A', 'LGT-802', '78', 'LGT-8A');
INSERT INTO `docentesporgrupo` VALUES ('529', '2020A', 'LGT-803', '85', 'LGT-8A');
INSERT INTO `docentesporgrupo` VALUES ('530', '2020A', 'LGT-804', '80', 'LGT-8A');
INSERT INTO `docentesporgrupo` VALUES ('531', '2020A', 'LGT-805', '09', 'LGT-8A');
INSERT INTO `docentesporgrupo` VALUES ('532', '2020A', 'LGT-801', '94', 'LGT-8B');
INSERT INTO `docentesporgrupo` VALUES ('533', '2020A', 'LGT-802', '78', 'LGT-8B');
INSERT INTO `docentesporgrupo` VALUES ('534', '2020A', 'LGT-803', '85', 'LGT-8B');
INSERT INTO `docentesporgrupo` VALUES ('535', '2020A', 'LGT-804', '80', 'LGT-8B');
INSERT INTO `docentesporgrupo` VALUES ('536', '2020A', 'LGT-805', '09', 'LGT-8B');
INSERT INTO `docentesporgrupo` VALUES ('537', '2020A', 'TTD-201', '43', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('538', '2020A', 'TTD-202', '96', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('539', '2020A', 'TTD-203', '97', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('540', '2020A', 'TTD-204', '02', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('541', '2020A', 'TTD-205', '96', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('542', '2020A', 'TTD-206', '01', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('543', '2020A', 'TTD-207', '05', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('544', '2020A', 'TTD-208', '95', 'TTD-2A');
INSERT INTO `docentesporgrupo` VALUES ('545', '2020A', 'TTD-201', '43', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('546', '2020A', 'TTD-202', '96', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('547', '2020A', 'TTD-203', '97', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('548', '2020A', 'TTD-204', '02', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('549', '2020A', 'TTD-205', '96', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('550', '2020A', 'TTD-206', '01', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('551', '2020A', 'TTD-207', '05', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('552', '2020A', 'TTD-208', '88', 'TTD-2B');
INSERT INTO `docentesporgrupo` VALUES ('553', '2020A', 'TTD-501', '97', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('554', '2020A', 'TTD-502', '01', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('555', '2020A', 'TTD-503', '02', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('556', '2020A', 'TTD-504', '96', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('557', '2020A', 'TTD-505', '96', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('558', '2020A', 'TTD-506', '92', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('559', '2020A', 'TTD-507', '80', 'TTD-5A');
INSERT INTO `docentesporgrupo` VALUES ('623', '2020A', 'TTH-201', '88', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('624', '2020A', 'TTH-202', '85', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('625', '2020A', 'TTH-203', '92', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('626', '2020A', 'TTH-204', '78', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('627', '2020A', 'TTH-205', '85', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('628', '2020A', 'TTH-206', '05', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('629', '2020A', 'TTH-207', '95', 'TTH-2A');
INSERT INTO `docentesporgrupo` VALUES ('630', '2020A', 'TTH-201', '88', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('631', '2020A', 'TTH-202', '85', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('632', '2020A', 'TTH-203', '92', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('633', '2020A', 'TTH-204', '79', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('634', '2020A', 'TTH-205', '11', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('635', '2020A', 'TTH-206', '80', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('636', '2020A', 'TTH-207', '95', 'TTH-2B');
INSERT INTO `docentesporgrupo` VALUES ('637', '2020A', 'TMI18-201', '88', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('638', '2020A', 'TMI18-202', '08', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('639', '2020A', 'TMI18-203', '89', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('640', '2020A', 'TMI18-204', '37', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('641', '2020A', 'TMI18-205', '08', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('642', '2020A', 'TMI18-206', '11', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('643', '2020A', 'TMI18-207', '43', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('644', '2020A', 'TMI18-208', '89', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('645', '2020A', 'TMI18-209', '103', 'TMI-2A');
INSERT INTO `docentesporgrupo` VALUES ('646', '2020A', 'TMI18-501', '37', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('647', '2020A', 'TMI18-502', '102', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('648', '2020A', 'TMI18-503', '102', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('649', '2020A', 'TMI18-504', '89', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('650', '2020A', 'TMI18-505', '89', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('651', '2020A', 'TMI18-506', '08', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('652', '2020A', 'TMI18-507', '103', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('653', '2020A', 'TMI18-508', '93', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('654', '2020A', 'TMI18-509', '50', 'TMI-5A');
INSERT INTO `docentesporgrupo` VALUES ('655', '2020A', 'TAF-201', '88', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('656', '2020A', 'TAF-202', '43', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('657', '2020A', 'TAF-203', '93', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('658', '2020A', 'TAF-204', '89', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('659', '2020A', 'TAF-205', '94', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('660', '2020A', 'TAF-206', '04', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('661', '2020A', 'TAF-207', '04', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('662', '2020A', 'TAF-208', '80', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('663', '2020A', 'TAF-209', '99', 'TAF-2A');
INSERT INTO `docentesporgrupo` VALUES ('664', '2020A', 'TAF-501', '94', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('665', '2020A', 'TAF-502', '85', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('666', '2020A', 'TAF-503', '94', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('667', '2020A', 'TAF-504', '93', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('668', '2020A', 'TAF-505', '04', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('669', '2020A', 'TAF-506', '93', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('670', '2020A', 'TAF-507', '80', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('671', '2020A', 'TAF-508', '09', 'TAF-5A');
INSERT INTO `docentesporgrupo` VALUES ('672', '2020A', 'TTH-501', '04', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('673', '2020A', 'TTH-502', '85', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('674', '2020A', 'TTH-503', '78', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('675', '2020A', 'TTH-504', '92', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('676', '2020A', 'TTH-505', '89', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('677', '2020A', 'TTH-506', '79', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('678', '2020A', 'TTH-507', '05', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('679', '2020A', 'TTH-508', '79', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('680', '2020A', 'TTH-509', '95', 'TTH-5A');
INSERT INTO `docentesporgrupo` VALUES ('681', '2020A', 'TGA18-201', '43', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('682', '2020A', 'TGA18-202', '50', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('683', '2020A', 'TGA18-203', '58', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('684', '2020A', 'TGA18-204', '77', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('685', '2020A', 'TGA18-205', '86', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('686', '2020A', 'TGA18-206', '05', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('687', '2020A', 'TGA18-207', '09', 'TGA-2A');
INSERT INTO `docentesporgrupo` VALUES ('688', '2020A', 'TGA18-201', '43', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('689', '2020A', 'TGA18-202', '50', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('690', '2020A', 'TGA18-203', '58', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('691', '2020A', 'TGA18-204', '100', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('692', '2020A', 'TGA18-205', '58', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('693', '2020A', 'TGA18-206', '05', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('694', '2020A', 'TGA18-207', '09', 'TGA-2B');
INSERT INTO `docentesporgrupo` VALUES ('695', '2020A', 'TGA18-201', '43', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('696', '2020A', 'TGA18-202', '50', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('697', '2020A', 'TGA18-203', '100', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('698', '2020A', 'TGA18-204', '86', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('699', '2020A', 'TGA18-205', '58', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('700', '2020A', 'TGA18-206', '05', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('701', '2020A', 'TGA18-207', '99', 'TGA-2C');
INSERT INTO `docentesporgrupo` VALUES ('702', '2020A', 'TGA18-501', '37', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('703', '2020A', 'TGA18-502', '92', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('704', '2020A', 'TGA18-503', '77', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('705', '2020A', 'TGA18-504', '100', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('706', '2020A', 'TGA18-505', '86', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('707', '2020A', 'TGA18-506', '103', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('708', '2020A', 'TGA18-507', '95', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('709', '2020A', 'TGA18-508', '50', 'TGA-5A');
INSERT INTO `docentesporgrupo` VALUES ('710', '2020A', 'TGA18-501', '50', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('711', '2020A', 'TGA18-502', '92', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('712', '2020A', 'TGA18-503', '86', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('713', '2020A', 'TGA18-504', '58', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('714', '2020A', 'TGA18-505', '86', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('715', '2020A', 'TGA18-506', '103', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('716', '2020A', 'TGA18-507', '79', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('717', '2020A', 'TGA18-508', '99', 'TGA-5B');
INSERT INTO `docentesporgrupo` VALUES ('718', '2020A', 'TGA18-501', '88', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('719', '2020A', 'TGA18-502', '92', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('720', '2020A', 'TGA18-503', '100', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('721', '2020A', 'TGA18-504', '86', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('722', '2020A', 'TGA18-505', '58', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('723', '2020A', 'TGA18-506', '103', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('724', '2020A', 'TGA18-507', '79', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('725', '2020A', 'TGA18-508', '99', 'TGA-5C');
INSERT INTO `docentesporgrupo` VALUES ('726', '2020B', 'TAF-301', '04', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('727', '2020B', 'TAF-302', '04', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('728', '2020B', 'TAF-303', '94', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('729', '2020B', 'TAF-304', '94', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('730', '2020B', 'TAF-305', '92', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('731', '2020B', 'TAF-306', '11', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('732', '2020B', 'TAF-307', '93', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('733', '2020B', 'TAF-308', '05', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('734', '2020B', 'TAF-309', '99', 'TAF-3A');
INSERT INTO `docentesporgrupo` VALUES ('735', '2020B', 'TGA18-301', '08', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('736', '2020B', 'TGA18-302', '58', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('737', '2020B', 'TGA18-303', '77', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('738', '2020B', 'TGA18-304', '89', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('739', '2020B', 'TGA18-305', '86', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('740', '2020B', 'TGA18-306', '103', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('741', '2020B', 'TGA18-307', '50', 'TGA-3A');
INSERT INTO `docentesporgrupo` VALUES ('742', '2020B', 'TGA18-301', '04', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('743', '2020B', 'TGA18-302', '100', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('744', '2020B', 'TGA18-303', '86', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('745', '2020B', 'TGA18-304', '93', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('746', '2020B', 'TGA18-305', '58', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('747', '2020B', 'TGA18-306', '80', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('748', '2020B', 'TGA18-307', '50', 'TGA-3B');
INSERT INTO `docentesporgrupo` VALUES ('749', '2020B', 'TGA18-301', '37', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('750', '2020B', 'TGA18-302', '86', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('751', '2020B', 'TGA18-303', '58', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('752', '2020B', 'TGA18-304', '102', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('753', '2020B', 'TGA18-305', '77', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('754', '2020B', 'TGA18-306', '80', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('755', '2020B', 'TGA18-307', '50', 'TGA-3C');
INSERT INTO `docentesporgrupo` VALUES ('756', '2020B', 'LGA-901', '77', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('757', '2020B', 'LGA-902', '100', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('758', '2020B', 'LGA-903', '94', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('759', '2020B', 'LGA-904', '100', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('760', '2020B', 'LGA-905', '80', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('761', '2020B', 'LGA-906', '09', 'LGA-9A');
INSERT INTO `docentesporgrupo` VALUES ('762', '2020B', 'TMI18-301', '88', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('763', '2020B', 'TMI18-302', '43', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('764', '2020B', 'TMI18-303', '11', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('765', '2020B', 'TMI18-304', '102', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('766', '2020B', 'TMI18-305', '37', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('767', '2020B', 'TMI18-306', '89', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('768', '2020B', 'TMI18-307', '08', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('769', '2020B', 'TMI18-308', '103', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('770', '2020B', 'TMI18-309', '95', 'TMI-3A');
INSERT INTO `docentesporgrupo` VALUES ('771', '2020B', 'TTD-301', '43', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('772', '2020B', 'TTD-302', '88', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('773', '2020B', 'TTD-303', '96', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('774', '2020B', 'TTD-304', '01', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('775', '2020B', 'TTD-305', '02', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('776', '2020B', 'TTD-306', '96', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('777', '2020B', 'TTD-307', '05', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('778', '2020B', 'TTD-308', '08', 'TTD-3A');
INSERT INTO `docentesporgrupo` VALUES ('779', '2020B', 'TTD-301', '88', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('780', '2020B', 'TTD-302', '43', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('781', '2020B', 'TTD-303', '97', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('782', '2020B', 'TTD-304', '01', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('783', '2020B', 'TTD-305', '96', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('784', '2020B', 'TTD-306', '01', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('785', '2020B', 'TTD-307', '05', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('786', '2020B', 'TTD-308', '08', 'TTD-3B');
INSERT INTO `docentesporgrupo` VALUES ('787', '2020B', 'ITI-901', '02', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('788', '2020B', 'ITI-902', '01', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('789', '2020B', 'ITI-903', '97', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('790', '2020B', 'ITI-904', '02', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('791', '2020B', 'ITI-905', '96', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('792', '2020B', 'ITI-906', '80', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('793', '2020B', 'ITI-907', '09', 'ITI-9A');
INSERT INTO `docentesporgrupo` VALUES ('794', '2020B', 'TTH-301', '79', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('795', '2020B', 'TTH-302', '85', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('796', '2020B', 'TTH-303', '92', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('797', '2020B', 'TTH-304', '93', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('798', '2020B', 'TTH-305', '78', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('799', '2020B', 'TTH-306', '85', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('800', '2020B', 'TTH-307', '103', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('801', '2020B', 'TTH-308', '95', 'TTH-3A');
INSERT INTO `docentesporgrupo` VALUES ('802', '2020B', 'TTH-301', '92', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('803', '2020B', 'TTH-302', '79', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('804', '2020B', 'TTH-303', '92', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('805', '2020B', 'TTH-304', '94', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('806', '2020B', 'TTH-305', '78', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('807', '2020B', 'TTH-306', '85', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('808', '2020B', 'TTH-307', '103', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('809', '2020B', 'TTH-308', '95', 'TTH-3B');
INSERT INTO `docentesporgrupo` VALUES ('810', '2020B', 'LGT-901', '11', 'LGT-9A');
INSERT INTO `docentesporgrupo` VALUES ('811', '2020B', 'LGT-902', '78', 'LGT-9A');
INSERT INTO `docentesporgrupo` VALUES ('812', '2020B', 'LGT-903', '04', 'LGT-9A');
INSERT INTO `docentesporgrupo` VALUES ('813', '2020B', 'LGT-904', '80', 'LGT-9A');
INSERT INTO `docentesporgrupo` VALUES ('814', '2020B', 'LGT-905', '09', 'LGT-9A');
INSERT INTO `docentesporgrupo` VALUES ('815', '2020B', 'LGT-901', '78', 'LGT-9B');
INSERT INTO `docentesporgrupo` VALUES ('816', '2020B', 'LGT-902', '85', 'LGT-9B');
INSERT INTO `docentesporgrupo` VALUES ('817', '2020B', 'LGT-903', '104', 'LGT-9B');
INSERT INTO `docentesporgrupo` VALUES ('818', '2020B', 'LGT-904', '80', 'LGT-9B');
INSERT INTO `docentesporgrupo` VALUES ('819', '2020B', 'LGT-905', '09', 'LGT-9B');

-- ----------------------------
-- Table structure for profesores
-- ----------------------------
DROP TABLE IF EXISTS `profesores`;
CREATE TABLE `profesores` (
  `cedula` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidop` varchar(50) DEFAULT NULL,
  `apellidom` varchar(50) DEFAULT NULL,
  `nivelestudio` varchar(50) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `tratamiento` varchar(50) DEFAULT NULL,
  `activo` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profesores
-- ----------------------------
INSERT INTO `profesores` VALUES ('01', 'JOSÉ GILBERTO', 'BALAM', 'BALAM', 'MAESTRÍA', 'LICENCIADO EN IFORMÁTICA', 'MTRO.', '', '01.jpg');
INSERT INTO `profesores` VALUES ('02', 'IVÁN', 'VEGA', 'UC', 'MAESTRÍA', 'INGENIERO EN SISTEMAS', 'MTRO.', '', '02.jpg');
INSERT INTO `profesores` VALUES ('021', 'IVÁN', 'VEGA', 'UC', 'MAESTRÍA', 'INGENIERO EN SISTEMAS', 'MTRO.', '\0', '02.jpg');
INSERT INTO `profesores` VALUES ('03', 'EDDIE JOSÉ ', 'CASTRO', 'BURGOS', 'LICENCIATURA', 'INGENIERO EN SISTEMAS', 'I.S.C', '\0', '03.jpg');
INSERT INTO `profesores` VALUES ('04', 'ARIEL', 'ACOSTA ', 'NAVARRO', 'MAESTRÍA', 'LICENCIADO EN ADMINISTRACIÓN', 'L.A.E', '', null);
INSERT INTO `profesores` VALUES ('05', 'CHRISTÍAN ROSSANA', 'ARCIQUE', 'RODRIGUEZ', 'LICENCIATURA', 'LIC.', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('06', 'PATSY YANNIL', 'CAN', 'MAY', 'LICENCIATURA', 'LICENCIADO EN GASTRONOMÍA', 'L.G.', '\0', null);
INSERT INTO `profesores` VALUES ('07', 'JESÚS FRANCISCO', 'DELGADO', 'CRUZ', 'LICENCIATURA', 'LICENCIADO EN ADMINISTRACIÓN', 'L.A.E', '\0', null);
INSERT INTO `profesores` VALUES ('08', 'AREF JESÚS', 'FRANCO ', 'LÓPEZ', 'MAESTRÍA', 'MAESTRÍA EN', 'MTRO.', '', null);
INSERT INTO `profesores` VALUES ('09', 'YENNY MARISSA', 'GAMBOA', 'CASTELLANOS', 'LICENCIATURA', 'LICENICIATURA EN INFORMÁTICA', 'L.I.', '', null);
INSERT INTO `profesores` VALUES ('10', 'AZALEA CORAL', 'OJEDA', 'TORRES', 'LICENCIATURA', 'LICENCIATURA EN PSICOLOGÍA', 'Psic.', '', null);
INSERT INTO `profesores` VALUES ('100', 'JESÚS ALEJANDRO', 'CONSTANTINO', 'LARENA', 'LICENCIATURA', null, 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('101', 'JOSÉ EDUARDO', 'PUGA', 'SOSA', 'MAESTRÍA', null, 'L.M.N.I', '', null);
INSERT INTO `profesores` VALUES ('102', 'JUAN', 'NUÑEZ', 'ZAVALA', 'INGENIERIA', 'INGENIERO', 'ING.', '', null);
INSERT INTO `profesores` VALUES ('103', 'ANGELY JANETH', 'MAY', 'PAT', 'LICENCIATURA', 'LICENCIATURA', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('104', 'RAUL ARNOLDO', 'LOPEZ', 'TORRES', 'LICENCIETURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('11', 'GERMÁN FELIPE', 'HERNÁNDEZ', 'CASTELLANOS', 'MAESTRÍA', 'ING. INDUSTRIAL', 'MTRO.', '', null);
INSERT INTO `profesores` VALUES ('11-2', 'GERMÁN FELIPE', 'HERNÁNDEZ', 'CASTELLANOS', 'MAESTRÍA', 'ING. INDUSTRIAL', 'MTRO.', '\0', '');
INSERT INTO `profesores` VALUES ('11-3', 'GERMÁN FELIPE', 'HERNÁNDEZ', 'CASTELLANOS', 'MAESTRÍA', 'ING. INDUSTRIAL', 'MTRO.', '\0', '');
INSERT INTO `profesores` VALUES ('200', 'JESUS ISIDRO', 'ARAUJO', 'MARTIN', 'LICENCIATURA', 'INGENIERO EN SISTEMAS', 'I.S.C.', '\0', null);
INSERT INTO `profesores` VALUES ('35', 'MARÍA DEL ROSARIO', 'MOO', 'CHI', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '\0', null);
INSERT INTO `profesores` VALUES ('37', 'LUIS MANUEL', 'RUIZ', 'CASTILLO', 'LICENCIATURA', 'LICENCIADO', 'M.I.A', '', null);
INSERT INTO `profesores` VALUES ('43', 'SILVIA DEL CARMEN', 'SANTOS', 'VARGUEZ', 'LICENCIATURA', 'LICENCIADO', 'MTRA.', '', null);
INSERT INTO `profesores` VALUES ('50', 'MARIAN ASTRID', 'SALAS', 'RODRÍGUEZ', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('58', 'SAYRA SARAHI', 'TACU', 'NOH', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('77', 'JHONNATAN  JESÚS ', 'DORANTES', 'DZIB', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('77-1', 'JHONNATAN  JESÚS ', 'DORANTES', 'DZIB', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '\0', '');
INSERT INTO `profesores` VALUES ('78', 'FÁTIMA LUCELLY', 'QUINTAL', 'CIH', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('79', 'SULEYMI DEL BELEN', 'XOOL', 'PUC', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('80', 'MARÍA MARGARITA', 'CAUICH', 'POOT', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('81', 'CAROLINA', 'DÍAZ', 'CULEBRO', 'LICENCIATURA', 'LICENCIADO', 'M.A.', '\0', null);
INSERT INTO `profesores` VALUES ('82', 'MARCOS', 'MENESES', 'DUAY', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '\0', null);
INSERT INTO `profesores` VALUES ('85', 'NELLY GUADALUPE', 'BAAS', 'BAAS', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('86', 'SANTIAGO', 'CARRILLO', 'CHAN', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('87', 'ANA LAURA', 'QUIÑONES', 'ESTRELLA', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '\0', null);
INSERT INTO `profesores` VALUES ('88', 'VALENTINA', 'TORRES', 'RODRÍGUEZ', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('89', 'ROBERTO ASIS', 'LÓPEZ', 'PUERTO', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('92', 'LEYLY VIRGINIA', 'VENTURA', 'CAUICH', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('93', 'BLANCA ROSA', 'GOMEZ', 'CORTAZAR', 'LICENCIATURA', 'LICENCIADO', 'IGP', '', null);
INSERT INTO `profesores` VALUES ('94', 'IVAN ALEJANDRO', 'ARCEO', 'ARCEO', 'LICENCIATURA', 'LICENCIADO', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('95', 'YANELI BERENICE', 'CHIN', 'TAMAYO', 'LICENCIATURA', 'LICENCIATURA EN LENGUAS MODERNAS', 'LIC.', '', null);
INSERT INTO `profesores` VALUES ('96', 'JOSÉ FERNANDO', 'CHAN', 'CANUL', 'LICENCIATURA', 'INGENEIRO EN SISTEMAS COMPUTACIONALES', 'I.S.C.', '', null);
INSERT INTO `profesores` VALUES ('97', 'EMMANUEL DE ATOCHA', 'PÉREZ', 'OJEDA', 'LICENCIATURA', 'INGENIERO EN SISTEMAS COMPUTACIONALES', 'I.S.C.', '', null);
INSERT INTO `profesores` VALUES ('98', 'REYNA ELENA', 'SUNZA', 'VERDE', 'LICENCIATURA', 'CONTADOR PÚBLICO', 'C.P.', '\0', null);
INSERT INTO `profesores` VALUES ('99', 'MÓNICA IVETTE', 'HERRERA', 'SÁNCHEZ', 'LICENCIATURA', 'PSICÓLOGO', 'PSIC.', '', null);

-- ----------------------------
-- Table structure for recursos
-- ----------------------------
DROP TABLE IF EXISTS `recursos`;
CREATE TABLE `recursos` (
  `id_recurso` int(11) NOT NULL,
  `recurso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_recurso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of recursos
-- ----------------------------
INSERT INTO `recursos` VALUES ('1', 'cable para microfono');
INSERT INTO `recursos` VALUES ('2', 'Bocina');
INSERT INTO `recursos` VALUES ('3', 'Microfono');

-- ----------------------------
-- Table structure for res_detalles_solicitud
-- ----------------------------
DROP TABLE IF EXISTS `res_detalles_solicitud`;
CREATE TABLE `res_detalles_solicitud` (
  `id` char(20) NOT NULL,
  `id_solicitud` char(20) NOT NULL,
  `id_horario` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_horario` (`id_horario`),
  KEY `id_solicitud` (`id_solicitud`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of res_detalles_solicitud
-- ----------------------------

-- ----------------------------
-- Table structure for res_espacios
-- ----------------------------
DROP TABLE IF EXISTS `res_espacios`;
CREATE TABLE `res_espacios` (
  `id_espacio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `cupo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_espacio`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of res_espacios
-- ----------------------------
INSERT INTO `res_espacios` VALUES ('1', 'Sala computo', '80');
INSERT INTO `res_espacios` VALUES ('2', 'Biblioteca', '45');
INSERT INTO `res_espacios` VALUES ('3', 'cocina', '30');
INSERT INTO `res_espacios` VALUES ('4', 'Sala Mac', '20');
INSERT INTO `res_espacios` VALUES ('5', 'prueba', '99');
INSERT INTO `res_espacios` VALUES ('6', 'hoteleria', '99');
INSERT INTO `res_espacios` VALUES ('7', 'salon multiple', '100');
INSERT INTO `res_espacios` VALUES ('8', 'qwertyu', '99');

-- ----------------------------
-- Table structure for res_horarios
-- ----------------------------
DROP TABLE IF EXISTS `res_horarios`;
CREATE TABLE `res_horarios` (
  `id_horario` int(20) NOT NULL AUTO_INCREMENT,
  `horario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of res_horarios
-- ----------------------------
INSERT INTO `res_horarios` VALUES ('3', '08:30');
INSERT INTO `res_horarios` VALUES ('4', '09:30');
INSERT INTO `res_horarios` VALUES ('5', '10:30');
INSERT INTO `res_horarios` VALUES ('6', '11:30');
INSERT INTO `res_horarios` VALUES ('7', '12:30');

-- ----------------------------
-- Table structure for res_solicitudes
-- ----------------------------
DROP TABLE IF EXISTS `res_solicitudes`;
CREATE TABLE `res_solicitudes` (
  `id_solicitud` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` char(20) DEFAULT NULL,
  `id_espacio` char(20) NOT NULL,
  `fecha_solicitud` char(20) NOT NULL,
  `fecha_solicitada` char(20) DEFAULT NULL,
  `fecha_autorizacion` char(20) DEFAULT NULL,
  `titulo_actividad` char(20) DEFAULT NULL,
  `detalle_actividad` char(20) DEFAULT NULL,
  `aprobado` char(20) DEFAULT NULL,
  `activa` char(20) DEFAULT NULL,
  `clave_grupo` char(20) DEFAULT NULL,
  `clave_asignatura` char(20) DEFAULT NULL,
  `participantes` char(20) DEFAULT NULL,
  `tipo_solicitud` char(20) DEFAULT NULL,
  `recurso` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `cedula` (`cedula`),
  KEY `id_espacio` (`id_espacio`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of res_solicitudes
-- ----------------------------
INSERT INTO `res_solicitudes` VALUES ('1', null, 'Biblioteca', '2021-08-06', null, null, 'prueba', 'prueba', null, null, null, 'prueba', '22', null, null);
INSERT INTO `res_solicitudes` VALUES ('2', null, 'Biblioteca', '2021-08-07', null, null, 'prueba 2', 'prueba 2', null, null, null, 'Hoteleria', '10', null, null);
INSERT INTO `res_solicitudes` VALUES ('3', null, 'Sala computo', '2021-08-06', null, null, 'prueba 3', 'prueba 3', null, null, null, 'prueba 3', '89', null, null);
INSERT INTO `res_solicitudes` VALUES ('4', null, 'cocina', '2021-08-19', null, null, 'manejo de cubiertos', 'se cortaran la mano', null, null, null, 'ids-9b', '9', null, null);
INSERT INTO `res_solicitudes` VALUES ('5', null, 'Sala Mac', '2021-08-11', null, null, 'PRUEBA', 'PRUEBA', null, null, null, 'IDS-9A', '9', null, null);
INSERT INTO `res_solicitudes` VALUES ('6', null, 'cocina', '2021-08-16', null, null, 'cocinar', 'preparar tortillas', null, null, null, 'IDS-9A', '90', null, null);
INSERT INTO `res_solicitudes` VALUES ('7', null, 'cocina', '2021-08-18', null, null, 'fiesta', 'fiesta', null, null, null, 'IDS-9A', '10', null, null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id_rol` int(20) NOT NULL,
  `rol` varchar(120) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrador');
INSERT INTO `roles` VALUES ('2', 'Usuario');

-- ----------------------------
-- Table structure for solicitudes_recursos
-- ----------------------------
DROP TABLE IF EXISTS `solicitudes_recursos`;
CREATE TABLE `solicitudes_recursos` (
  `id_solicitud_recursos` char(20) NOT NULL,
  `id_solicitud` char(20) NOT NULL,
  `id_recurso` char(20) NOT NULL,
  PRIMARY KEY (`id_solicitud_recursos`),
  KEY `id_solicitud` (`id_solicitud`),
  KEY `id_recurso` (`id_recurso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of solicitudes_recursos
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `nick` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(120) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(120) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_rol` int(20) NOT NULL,
  `active` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`nick`),
  KEY `fk` (`id_rol`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', 'Ricardo5', 'Ricardo', 'Can', '1', 'Administrador');
INSERT INTO `users` VALUES ('edwin', 'Edwin5', 'Edwin', 'Ek', '1', 'Administrador');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idusario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY (`idusario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
