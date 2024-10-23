-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2024 at 04:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bienes_patrimoniales`
--

CREATE TABLE `bienes_patrimoniales` (
  `ID_Bien` int(11) NOT NULL,
  `Codigo_Producto` int(11) DEFAULT NULL,
  `Proveedor_ID` int(11) DEFAULT NULL,
  `Departamento_ID` int(11) DEFAULT NULL,
  `Depreciacion` decimal(10,2) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Serie` varchar(50) DEFAULT NULL,
  `Placa` varchar(50) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bienes_patrimoniales`
--

INSERT INTO `bienes_patrimoniales` (`ID_Bien`, `Codigo_Producto`, `Proveedor_ID`, `Departamento_ID`, `Depreciacion`, `Descripcion`, `Serie`, `Placa`, `Marca`, `Modelo`, `fecha`) VALUES
(3, NULL, NULL, NULL, NULL, 'Producto A - Descripción', '212345', 'PLACA123', NULL, NULL, '2024-10-18 00:00:00'),
(4, NULL, NULL, NULL, NULL, 'Producto B - Descripción', '354321', 'PLACA543', NULL, NULL, '2024-10-18 00:00:00'),
(17, 4, 2, 4, 100.00, 'Descripción del producto 4', '12767', '465414', 'Marca B', 'Modelo Y', '0022-02-22 00:00:00'),
(65, 4, 2, 4, 100.00, 'Descripción del producto 4', '28212', '519319', 'Marca B', 'Modelo Y', '0044-04-04 00:00:00'),
(100, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '27892', 'Tec17285', 'Dell', 'Inspiron 15', '0003-02-04 00:00:00'),
(1244, 4, 2, 4, 100.00, 'Descripción del producto 4', '38314', '543833', 'Marca B', 'Modelo Y', '0022-12-22 00:00:00'),
(1251, 4, 2, 4, 100.00, 'Descripción del producto 4', '67809', '442792', 'Marca B', 'Modelo Y', '2024-10-19 00:00:00'),
(1252, 4, 2, 4, 100.00, 'Descripción del producto 4', '87666', '438023', 'Marca B', 'Modelo Y', '2024-10-19 00:00:00'),
(1253, 4, 2, 4, 100.00, 'Descripción del producto 4', '13901', '449695', 'Marca B', 'Modelo Y', '2024-10-19 00:00:00'),
(1254, 4, 2, 4, 100.00, 'Descripción del producto 4', '76747', '460441', 'Marca B', 'Modelo Y', '2024-10-19 00:00:00'),
(1255, 4, 2, 4, 100.00, 'Descripción del producto 4', '22050', '417864', 'Marca B', 'Modelo Y', '2024-10-19 00:00:00'),
(1256, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '13137', '145115', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1257, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '44106', '131351', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1258, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '88520', '115689', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1259, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '11851', '127546', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1260, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '54206', '166362', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1261, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '72835', '151559', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1262, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '32542', '137246', 'Dell', 'Inspiron 15', '2024-11-09 00:00:00'),
(1321, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '45491', '112001', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1322, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '98831', '162953', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1323, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '88400', '114092', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1324, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '79773', '158394', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1325, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '25795', '178452', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1326, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '42716', '153379', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1327, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '45507', '169552', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1328, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '35237', '138391', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1329, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '48384', '174925', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1330, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '63918', '150855', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1331, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '32236', '143508', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1332, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '25679', '128574', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1333, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '29500', '166575', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1334, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '96832', '138070', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1335, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '26337', '180384', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1336, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '82630', '193724', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1337, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '71451', '110717', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1338, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '28401', '132535', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1339, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '52393', '147772', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1340, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '66795', '147423', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1341, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '98703', '120070', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1342, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '37371', '173542', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1343, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '13700', '115234', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1344, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '63059', '129128', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1345, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '74630', '128753', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1346, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '27004', '121729', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1347, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '35351', '138787', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1348, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '48631', '156417', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1349, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '82187', '161170', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1350, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '61180', '139950', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1351, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '54086', '123859', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1352, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '39928', '121722', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1353, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '98364', '195520', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1354, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '39337', '182336', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1355, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '69183', '167603', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1356, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '17903', '133581', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1357, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '45402', '179633', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1358, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '86960', '157831', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1359, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '72926', '172717', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00'),
(1360, 2, 1, 1, 564.29, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '73987', '141563', 'Dell', 'Inspiron 15', '2024-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `compra_productos`
--

CREATE TABLE `compra_productos` (
  `ID_Compra` int(11) NOT NULL,
  `Codigo_Producto` int(11) DEFAULT NULL,
  `Cantidad_Producto` int(11) DEFAULT NULL,
  `Precio_Producto` decimal(10,2) DEFAULT NULL,
  `Proveedor_ID` int(11) DEFAULT NULL,
  `Departamento_ID` int(11) DEFAULT NULL,
  `Detalle_Producto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compra_productos`
--

INSERT INTO `compra_productos` (`ID_Compra`, `Codigo_Producto`, `Cantidad_Producto`, `Precio_Producto`, `Proveedor_ID`, `Departamento_ID`, `Detalle_Producto`) VALUES
(1, 3, 10, 20.50, 1, 3, 'Detalle de la compra del producto 3'),
(2, 2, 20, 750.00, 1, 1, 'Compra de 20 laptops Dell Inspiron 15 para el departamento de Tecnología'),
(3, 4, 5, 30.75, 2, 4, 'Detalle de la compra del producto 4'),
(4, 3, 10, 20.50, 1, 3, 'Detalle de la compra del producto 3');

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `ID_Departamento` int(11) NOT NULL,
  `Nombre_Departamento` varchar(50) NOT NULL,
  `Especificacion_Departamento` varchar(150) DEFAULT NULL,
  `Ubicacion_Departamento` varchar(100) DEFAULT NULL,
  `Jefe_Departamento` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departamentos`
--

INSERT INTO `departamentos` (`ID_Departamento`, `Nombre_Departamento`, `Especificacion_Departamento`, `Ubicacion_Departamento`, `Jefe_Departamento`) VALUES
(1, 'Tecnología', 'Departamento de Tecnología de la Información', 'Edificio Principal, Piso 2', 'Juan Pérez'),
(2, 'Contabilidad', 'Departamento de Contabilidad y Finanzas', 'Edificio Principal, Piso 1', 'Ana Gómez'),
(3, 'Compras', 'Departamento de Compras y Abastecimiento', 'Edificio Anexo, Piso 1', 'Carlos Ramírez'),
(4, 'Bienes Patrimoniales', 'Departamento de Gestión de Bienes Patrimoniales', 'Edificio Central, Piso 3', 'María Fernández'),
(5, 'Recursos Humanos', 'Departamento de Recursos Humanos', 'Edificio Principal, Piso 3', 'Laura Sánchez');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `Codigo` int(11) NOT NULL,
  `Nombre_Producto` varchar(100) DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Modelo` varchar(25) DEFAULT NULL,
  `Descripcion_Producto` varchar(255) DEFAULT NULL,
  `Precio_Producto` decimal(10,2) DEFAULT NULL,
  `Depreciacion_Producto` decimal(10,2) DEFAULT NULL,
  `Departamento_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`Codigo`, `Nombre_Producto`, `Marca`, `Modelo`, `Descripcion_Producto`, `Precio_Producto`, `Depreciacion_Producto`, `Departamento_ID`) VALUES
(2, 'Laptop', 'Dell', 'Inspiron 15', 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', 750.00, 10.00, 1),
(3, 'Producto 3', 'Marca A', 'Modelo X', 'Descripción del producto 3', 20.50, 5.00, 1),
(4, 'Producto 4', 'Marca B', 'Modelo Y', 'Descripción del producto 4', 30.75, 6.50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre_Proveedor` varchar(100) DEFAULT NULL,
  `Contacto` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proveedores`
--

INSERT INTO `proveedores` (`ID_Proveedor`, `Nombre_Proveedor`, `Contacto`, `Direccion`, `Telefono`) VALUES
(1, 'Proveedor Tech', 'soporte@proveedortech.com', 'Av. Principal 123', '555-1234'),
(2, 'Electro Suministros', 'ventas@electrosuministros.com', 'Calle Secundaria 456', '555-5678');

-- --------------------------------------------------------

--
-- Table structure for table `Solicitudes_Producto`
--

CREATE TABLE `Solicitudes_Producto` (
  `ID_Solicitud` int(11) NOT NULL,
  `Fecha_Solicitud` date DEFAULT NULL,
  `Descripcion_Solicitud` varchar(255) DEFAULT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad_Solicitada` int(11) DEFAULT NULL,
  `ID_Departamento` int(11) DEFAULT NULL,
  `Estado_Solicitud` enum('Pendiente','Completada','Cancelada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bienes_patrimoniales`
--
ALTER TABLE `bienes_patrimoniales`
  ADD PRIMARY KEY (`ID_Bien`),
  ADD KEY `Codigo_Producto` (`Codigo_Producto`),
  ADD KEY `Proveedor_ID` (`Proveedor_ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indexes for table `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD PRIMARY KEY (`ID_Compra`),
  ADD KEY `Codigo_Producto` (`Codigo_Producto`),
  ADD KEY `Proveedor_ID` (`Proveedor_ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`ID_Departamento`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indexes for table `Solicitudes_Producto`
--
ALTER TABLE `Solicitudes_Producto`
  ADD PRIMARY KEY (`ID_Solicitud`),
  ADD KEY `ID_Producto` (`ID_Producto`),
  ADD KEY `ID_Departamento` (`ID_Departamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bienes_patrimoniales`
--
ALTER TABLE `bienes_patrimoniales`
  MODIFY `ID_Bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1361;

--
-- AUTO_INCREMENT for table `compra_productos`
--
ALTER TABLE `compra_productos`
  MODIFY `ID_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `ID_Departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Solicitudes_Producto`
--
ALTER TABLE `Solicitudes_Producto`
  MODIFY `ID_Solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bienes_patrimoniales`
--
ALTER TABLE `bienes_patrimoniales`
  ADD CONSTRAINT `bienes_patrimoniales_ibfk_1` FOREIGN KEY (`Codigo_Producto`) REFERENCES `productos` (`Codigo`),
  ADD CONSTRAINT `bienes_patrimoniales_ibfk_2` FOREIGN KEY (`Proveedor_ID`) REFERENCES `proveedores` (`ID_Proveedor`),
  ADD CONSTRAINT `bienes_patrimoniales_ibfk_3` FOREIGN KEY (`Departamento_ID`) REFERENCES `departamentos` (`ID_Departamento`);

--
-- Constraints for table `compra_productos`
--
ALTER TABLE `compra_productos`
  ADD CONSTRAINT `compra_productos_ibfk_1` FOREIGN KEY (`Codigo_Producto`) REFERENCES `productos` (`Codigo`),
  ADD CONSTRAINT `compra_productos_ibfk_2` FOREIGN KEY (`Proveedor_ID`) REFERENCES `proveedores` (`ID_Proveedor`),
  ADD CONSTRAINT `compra_productos_ibfk_3` FOREIGN KEY (`Departamento_ID`) REFERENCES `departamentos` (`ID_Departamento`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `departamentos` (`ID_Departamento`);

--
-- Constraints for table `Solicitudes_Producto`
--
ALTER TABLE `Solicitudes_Producto`
  ADD CONSTRAINT `Solicitudes_Producto_ibfk_1` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`Codigo`),
  ADD CONSTRAINT `Solicitudes_Producto_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamentos` (`ID_Departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
