-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2024 at 09:48 PM
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
(1750, 4, 2, 4, 19.21, 'Descripción del producto 4', '39257', 'Bie67393', 'Marca B', 'Modelo Y', '2022-02-01 00:00:00'),
(1751, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1752, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1753, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1754, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1755, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1756, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1757, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2020-01-01 00:00:00'),
(1758, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2020-01-01 00:00:00'),
(1759, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2020-01-01 00:00:00'),
(1760, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2020-01-01 00:00:00'),
(1761, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2020-01-01 00:00:00'),
(1762, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1763, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1764, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1765, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1766, 4, 2, 4, 19.21, 'Descripción del producto 4', '', '', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1767, 4, 2, 4, 19.21, 'Descripción del producto 4', '94632', '416659', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1768, 4, 2, 4, 19.21, 'Descripción del producto 4', '56385', '441366', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1769, 4, 2, 4, 19.21, 'Descripción del producto 4', '48825', '451970', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1770, 4, 2, 4, 19.21, 'Descripción del producto 4', '75815', '451329', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1771, 4, 2, 4, 19.21, 'Descripción del producto 4', '32574', '458899', 'Marca B', 'Modelo Y', '2021-01-01 00:00:00'),
(1772, 3, 1, 3, 7.25, 'Descripción del producto 3', '19114', '346899', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1773, 3, 1, 3, 7.25, 'Descripción del producto 3', '46640', '352561', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1774, 3, 1, 3, 7.25, 'Descripción del producto 3', '67402', '314917', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1775, 3, 1, 3, 7.25, 'Descripción del producto 3', '76652', '383579', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1776, 3, 1, 3, 7.25, 'Descripción del producto 3', '54131', '331037', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1777, 3, 1, 3, 7.25, 'Descripción del producto 3', '44579', '385908', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1778, 3, 1, 3, 7.25, 'Descripción del producto 3', '21343', '353409', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1779, 3, 1, 3, 7.25, 'Descripción del producto 3', '67462', '319183', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1780, 3, 1, 3, 7.25, 'Descripción del producto 3', '65123', '341741', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1781, 3, 1, 3, 7.25, 'Descripción del producto 3', '34055', '364263', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1782, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '35310', '130044', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1783, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '39316', '139324', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1784, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '81006', '154305', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1785, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '59935', '132122', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1786, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '31361', '127125', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1787, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '50574', '144228', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1788, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '62483', '191449', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1789, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '40151', '153410', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1790, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '68579', '163897', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1791, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '18169', '144227', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1792, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '56895', '198112', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1793, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '43109', '169585', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1794, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '19988', '143327', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1795, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '84142', '162343', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1796, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '44225', '197121', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1797, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '49571', '137041', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1798, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '68986', '143957', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1799, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '72835', '187289', 'Dell', 'Inspiron 15', '2020-01-02 00:00:00'),
(1825, 4, 2, 4, 19.21, 'Descripción del producto 4', '24429', '487863', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1826, 4, 2, 4, 19.21, 'Descripción del producto 4', '99285', '477297', 'Marca B', 'Modelo Y', '2022-01-01 00:00:00'),
(1827, 4, 2, 4, 19.21, 'Descripción del producto 4', '86308', '497157', 'Marca B', 'Modelo Y', '2024-10-01 00:00:00'),
(1828, 4, 2, 4, 19.21, 'Descripción del producto 4', '26491', '468466', 'Marca B', 'Modelo Y', '2024-10-01 00:00:00'),
(1829, 3, 1, 3, 7.25, 'Descripción del producto 3', '38772', '310997', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1830, 3, 1, 3, 7.25, 'Descripción del producto 3', '53871', '322254', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1831, 3, 1, 3, 7.25, 'Descripción del producto 3', '27804', '364010', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1832, 3, 1, 3, 7.25, 'Descripción del producto 3', '93889', '380571', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1833, 3, 1, 3, 7.25, 'Descripción del producto 3', '84087', '365950', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1834, 3, 1, 3, 7.25, 'Descripción del producto 3', '96820', '338830', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1835, 3, 1, 3, 7.25, 'Descripción del producto 3', '70339', '316909', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1836, 3, 1, 3, 7.25, 'Descripción del producto 3', '51376', '351757', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1837, 3, 1, 3, 7.25, 'Descripción del producto 3', '66216', '369234', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1838, 3, 1, 3, 7.25, 'Descripción del producto 3', '10508', '328672', 'Marca A', 'Modelo X', '2022-01-01 00:00:00'),
(1839, 3, 1, 3, 7.25, 'Descripción del producto 3', '37768', '342071', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1840, 3, 1, 3, 7.25, 'Descripción del producto 3', '20601', '325140', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1841, 3, 1, 3, 7.25, 'Descripción del producto 3', '76155', '330105', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1842, 3, 1, 3, 7.25, 'Descripción del producto 3', '40578', '333437', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1843, 3, 1, 3, 7.25, 'Descripción del producto 3', '20833', '319304', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1844, 3, 1, 3, 7.25, 'Descripción del producto 3', '90045', '362854', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1845, 3, 1, 3, 7.25, 'Descripción del producto 3', '16267', '336632', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1846, 3, 1, 3, 7.25, 'Descripción del producto 3', '26581', '348808', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1847, 3, 1, 3, 7.25, 'Descripción del producto 3', '23824', '336068', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1848, 3, 1, 3, 7.25, 'Descripción del producto 3', '29281', '373421', 'Marca A', 'Modelo X', '2001-01-01 00:00:00'),
(1849, 3, 1, 3, 7.25, 'Descripción del producto 3', '94087', '318275', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1850, 3, 1, 3, 7.25, 'Descripción del producto 3', '47808', '385499', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1851, 3, 1, 3, 7.25, 'Descripción del producto 3', '93025', '321210', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1852, 3, 1, 3, 7.25, 'Descripción del producto 3', '24044', '390162', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1853, 3, 1, 3, 7.25, 'Descripción del producto 3', '15061', '313507', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1854, 3, 1, 3, 7.25, 'Descripción del producto 3', '64344', '368654', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1855, 3, 1, 3, 7.25, 'Descripción del producto 3', '51842', '351667', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1856, 3, 1, 3, 7.25, 'Descripción del producto 3', '88360', '341654', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1857, 3, 1, 3, 7.25, 'Descripción del producto 3', '87297', '373247', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1858, 3, 1, 3, 7.25, 'Descripción del producto 3', '80758', '371796', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1859, 3, 1, 3, 7.25, 'Descripción del producto 3', '19323', '377381', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1860, 3, 1, 3, 7.25, 'Descripción del producto 3', '45933', '392998', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1861, 3, 1, 3, 7.25, 'Descripción del producto 3', '59987', '322506', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1862, 3, 1, 3, 7.25, 'Descripción del producto 3', '63858', '394003', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1863, 3, 1, 3, 7.25, 'Descripción del producto 3', '33733', '316959', 'Marca A', 'Modelo X', '2023-01-01 00:00:00'),
(1864, 3, 1, 3, 7.25, 'Descripción del producto 3', '76608', '376725', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1865, 3, 1, 3, 7.25, 'Descripción del producto 3', '27724', '383330', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1866, 3, 1, 3, 7.25, 'Descripción del producto 3', '22827', '314716', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1867, 3, 1, 3, 7.25, 'Descripción del producto 3', '49259', '352187', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1868, 3, 1, 3, 7.25, 'Descripción del producto 3', '53006', '361486', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1869, 3, 1, 3, 7.25, 'Descripción del producto 3', '95919', '330430', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1870, 3, 1, 3, 7.25, 'Descripción del producto 3', '77125', '337654', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1871, 3, 1, 3, 7.25, 'Descripción del producto 3', '70783', '362354', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1872, 3, 1, 3, 7.25, 'Descripción del producto 3', '76148', '343234', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1873, 3, 1, 3, 7.25, 'Descripción del producto 3', '48104', '360298', 'Marca A', 'Modelo X', '2009-01-01 00:00:00'),
(1874, 3, 1, 5, 7.25, 'Descripción del producto 3', '52743', '529087', 'Marca A', 'Modelo X', '2010-03-02 00:00:00'),
(1875, 3, 1, 5, 7.25, 'Descripción del producto 3', '43745', '578442', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1876, 3, 1, 5, 7.25, 'Descripción del producto 3', '72009', '589313', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1877, 3, 1, 5, 7.25, 'Descripción del producto 3', '44662', '557588', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1878, 3, 1, 5, 7.25, 'Descripción del producto 3', '98870', '557515', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1879, 3, 1, 5, 7.25, 'Descripción del producto 3', '28569', '519982', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1880, 3, 1, 5, 7.25, 'Descripción del producto 3', '29053', '548639', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1881, 3, 1, 5, 7.25, 'Descripción del producto 3', '90428', '518649', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1882, 3, 1, 5, 7.25, 'Descripción del producto 3', '87556', '551496', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1883, 3, 1, 5, 7.25, 'Descripción del producto 3', '60298', '587013', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1884, 3, 1, 5, 7.25, 'Descripción del producto 3', '46555', '558365', 'Marca A', 'Modelo X', '2024-01-23 00:00:00'),
(1885, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '90521', '241617', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1886, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '54340', '269597', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1887, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '10881', '233986', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1888, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '81459', '288065', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1889, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '18601', '212778', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1890, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '66576', '274472', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1891, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '85171', '271268', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1892, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '66059', '289948', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1893, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '52372', '284318', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1894, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '44315', '227007', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1895, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '38231', '255303', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1896, 2, 1, 2, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '47362', '237928', 'Dell', 'Inspiron 15', '2024-10-31 00:00:00'),
(1897, 4, 2, 4, 19.21, 'Descripción del producto 4', '70377', '440653', 'Marca B', 'Modelo Y', '2024-10-31 00:00:00'),
(1898, 4, 2, 4, 19.21, 'Descripción del producto 4', '42514', '475609', 'Marca B', 'Modelo Y', '2024-10-31 00:00:00'),
(1899, 4, 2, 4, 19.21, 'Descripción del producto 4', '73191', '479147', 'Marca B', 'Modelo Y', '2024-10-31 00:00:00'),
(1900, 4, 2, 4, 19.21, 'Descripción del producto 4', '53599', '428421', 'Marca B', 'Modelo Y', '2024-10-31 00:00:00'),
(1901, 4, 2, 4, 19.21, 'Descripción del producto 4', '76600', '483461', 'Marca B', 'Modelo Y', '2024-10-31 00:00:00'),
(1902, 3, 1, 3, 7.25, 'Descripción del producto 3', '41034', '396722', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1903, 3, 1, 3, 7.25, 'Descripción del producto 3', '85937', '385456', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1904, 3, 1, 3, 7.25, 'Descripción del producto 3', '34494', '332600', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1905, 3, 1, 3, 7.25, 'Descripción del producto 3', '10674', '346214', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1906, 3, 1, 3, 7.25, 'Descripción del producto 3', '29733', '361270', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1907, 3, 1, 3, 7.25, 'Descripción del producto 3', '36952', '324846', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1908, 3, 1, 3, 7.25, 'Descripción del producto 3', '40248', '382953', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1909, 3, 1, 3, 7.25, 'Descripción del producto 3', '15620', '380286', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1910, 3, 1, 3, 7.25, 'Descripción del producto 3', '14049', '338678', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1911, 3, 1, 3, 7.25, 'Descripción del producto 3', '84372', '324942', 'Marca A', 'Modelo X', '2024-10-24 00:00:00'),
(1912, 3, 1, 3, 7.25, 'Descripción del producto 3', '81084', '312516', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1913, 3, 1, 3, 7.25, 'Descripción del producto 3', '68000', '319481', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1914, 3, 1, 3, 7.25, 'Descripción del producto 3', '35994', '324044', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1915, 3, 1, 3, 7.25, 'Descripción del producto 3', '86813', '392910', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1916, 3, 1, 3, 7.25, 'Descripción del producto 3', '33599', '365716', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1917, 3, 1, 3, 7.25, 'Descripción del producto 3', '80499', '384792', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1918, 3, 1, 3, 7.25, 'Descripción del producto 3', '43945', '318558', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1919, 3, 1, 3, 7.25, 'Descripción del producto 3', '37138', '326931', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1920, 3, 1, 3, 7.25, 'Descripción del producto 3', '50497', '394124', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1921, 3, 1, 3, 7.25, 'Descripción del producto 3', '50532', '341713', 'Marca A', 'Modelo X', '2022-01-02 00:00:00'),
(1922, 3, 1, 2, 7.25, 'Descripción del producto 3', '65311', '296950', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1923, 3, 1, 2, 7.25, 'Descripción del producto 3', '99659', '237472', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1924, 3, 1, 2, 7.25, 'Descripción del producto 3', '67747', '252086', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1925, 3, 1, 2, 7.25, 'Descripción del producto 3', '70628', '263790', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1926, 3, 1, 2, 7.25, 'Descripción del producto 3', '74670', '273153', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1927, 3, 1, 2, 7.25, 'Descripción del producto 3', '12825', '222167', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1928, 3, 1, 2, 7.25, 'Descripción del producto 3', '81536', '278192', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1929, 3, 1, 2, 7.25, 'Descripción del producto 3', '60980', '266864', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1930, 3, 1, 2, 7.25, 'Descripción del producto 3', '52674', '296944', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1931, 3, 1, 2, 7.25, 'Descripción del producto 3', '27489', '291550', 'Marca A', 'Modelo X', '2021-06-25 00:00:00'),
(1932, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '67779', '152611', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1933, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '11339', '160005', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1934, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '69319', '177771', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1935, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '53804', '150290', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1936, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '88981', '178629', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1937, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '26144', '176087', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1938, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '19386', '143586', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1939, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '30475', '127297', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1940, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '97972', '189030', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1941, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '98086', '174739', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1942, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '74209', '110090', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1943, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '83956', '124105', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1944, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '74056', '136730', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1945, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '88379', '182920', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1946, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '72845', '143237', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1947, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '84328', '124267', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1948, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '81157', '157662', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1949, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '79879', '165313', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1950, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '70185', '140644', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1951, 2, 1, 1, 533.33, 'Laptop Dell de 15 pulgadas, 8GB RAM, 256GB SSD', '44149', '149183', 'Dell', 'Inspiron 15', '2021-07-20 00:00:00'),
(1952, 3, 1, 3, 7.25, 'Descripción del producto 3', '34248', '336372', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1953, 3, 1, 3, 7.25, 'Descripción del producto 3', '89363', '395405', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1954, 3, 1, 3, 7.25, 'Descripción del producto 3', '61022', '317914', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1955, 3, 1, 3, 7.25, 'Descripción del producto 3', '69765', '383526', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1956, 3, 1, 3, 7.25, 'Descripción del producto 3', '20583', '342871', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1957, 3, 1, 3, 7.25, 'Descripción del producto 3', '14809', '336435', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1958, 3, 1, 3, 7.25, 'Descripción del producto 3', '31872', '356497', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1959, 3, 1, 3, 7.25, 'Descripción del producto 3', '34606', '367170', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1960, 3, 1, 3, 7.25, 'Descripción del producto 3', '33468', '344696', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1961, 3, 1, 3, 7.25, 'Descripción del producto 3', '59914', '322104', 'hp', 'ryzen', '2024-10-29 00:00:00'),
(1962, 4, 2, 2, 19.21, 'Descripción del producto 4', '65566', '299469', 'hola2', 'hola', '2024-10-29 00:00:00'),
(1963, 4, 2, 2, 19.21, 'Descripción del producto 4', '36239', '228903', 'hola2', 'hola', '2024-10-29 00:00:00'),
(1964, 4, 2, 2, 19.21, 'Descripción del producto 4', '41126', '235863', 'hola2', 'hola', '2024-10-29 00:00:00'),
(1965, 4, 2, 2, 19.21, 'Descripción del producto 4', '62606', '239179', 'hola2', 'hola', '2024-10-29 00:00:00'),
(1966, 4, 2, 2, 19.21, 'Descripción del producto 4', '68690', '275472', 'hola2', 'hola', '2024-10-29 00:00:00'),
(1967, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '84238', '446831', 'ASUS', 'deluxe', '2024-11-05 00:00:00'),
(1968, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '23242', '438937', 'ASUS', 'deluxe', '2024-11-05 00:00:00'),
(1969, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '26494', '447953', 'ASUS', 'deluxe', '2024-11-05 00:00:00'),
(1970, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '57485', '410339', 'ASUS', 'deluxe', '2024-11-05 00:00:00'),
(1971, 12, 2, 4, 100.00, '1000GB, 16GB ram...', '10830', '481377', 'ASUS', 'DELUXE', '2022-01-05 00:00:00'),
(1972, 12, 2, 4, 100.00, '1000GB, 16GB ram...', '43890', '469298', 'ASUS', 'DELUXE', '2022-01-05 00:00:00'),
(1973, 12, 2, 4, 100.00, '1000GB, 16GB ram...', '44537', '445358', 'ASUS', 'DELUXE', '2022-01-05 00:00:00'),
(1974, 12, 2, 4, 100.00, '1000GB, 16GB ram...', '55629', '424468', 'ASUS', 'DELUXE', '2022-01-05 00:00:00'),
(1975, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '60814', '462577', 'ASUS', 'DELUXE', '2019-01-05 00:00:00'),
(1976, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '75065', '432362', 'ASUS', 'DELUXE', '2019-01-05 00:00:00'),
(1977, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '45278', '464758', 'ASUS', 'DELUXE', '2019-01-05 00:00:00'),
(1978, 12, 1, 4, 100.00, '1000GB, 16GB ram...', '20824', '475773', 'ASUS', 'DELUXE', '2019-01-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `compra_productos`
--

CREATE TABLE `compra_productos` (
  `ID_Compra` int(11) NOT NULL,
  `Cantidad_Producto` int(11) DEFAULT NULL,
  `Precio_Producto` decimal(10,2) DEFAULT NULL,
  `Proveedor_ID` int(11) DEFAULT NULL,
  `Departamento_ID` int(11) DEFAULT NULL,
  `Detalle_Producto` text DEFAULT NULL,
  `ID_Solicitud` int(11) DEFAULT NULL,
  `Total_Producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compra_productos`
--

INSERT INTO `compra_productos` (`ID_Compra`, `Cantidad_Producto`, `Precio_Producto`, `Proveedor_ID`, `Departamento_ID`, `Detalle_Producto`, `ID_Solicitud`, `Total_Producto`) VALUES
(1, 65, 546.00, 4, 3, 'marca , modelo, hola', 1, 35490),
(3, 4, 1052.58, 12, 4, 'HP, GFT78, AlienWare', 4, 4210),
(4, 20, 1200.00, 1, 1, 'HP , GFT78, laptop1', 5, 25680),
(5, 2, 5645.00, 8, 4, 'dfgdfg, rgrdg', 3, 12080);

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
  `Descripcion_Producto` varchar(255) DEFAULT NULL,
  `Precio_Producto` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `motivo_Solicitud` varchar(255) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`Codigo`, `Nombre_Producto`, `Descripcion_Producto`, `Precio_Producto`, `Stock`, `motivo_Solicitud`, `Marca`, `Modelo`, `ID_Proveedor`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'fdsf', 'fd', 5435.00, 5, NULL, 'fvdf', 'gdfg', NULL),
(11, 'fgf', 'b', 6.00, 654, NULL, 'fgfdg', '645', 4),
(12, 'AlienWare', '1000GB, 16GB ram...', 1052.58, 4, NULL, 'HP', 'GFT78', 12),
(13, 'laptop1', '1000GB, 16GB ram...', 1200.00, 20, NULL, 'HP', 'GFT78', 1),
(14, 'fsgsfv', 'grgd', 5435.00, 54, NULL, 'gdfg', 'dfgfd', 8);

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
  ADD KEY `Proveedor_ID` (`Proveedor_ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`),
  ADD KEY `ID_Solicitud` (`ID_Solicitud`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`ID_Departamento`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Codigo`);

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
  MODIFY `ID_Bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1979;

--
-- AUTO_INCREMENT for table `compra_productos`
--
ALTER TABLE `compra_productos`
  MODIFY `ID_Compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `ID_Departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- Constraints for table `Solicitudes_Producto`
--
ALTER TABLE `Solicitudes_Producto`
  ADD CONSTRAINT `Solicitudes_Producto_ibfk_1` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`Codigo`),
  ADD CONSTRAINT `Solicitudes_Producto_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamentos` (`ID_Departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
