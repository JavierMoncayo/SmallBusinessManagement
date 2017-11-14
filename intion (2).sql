-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2017 a las 22:13:42
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `comment`) VALUES
(2, 'Pendrive', ''),
(3, 'Auriculares', ''),
(4, 'MP3', ''),
(5, 'Pin', ''),
(6, 'Reloj', ''),
(7, 'Mechero', ''),
(8, 'Llavero', ''),
(9, 'Altavoces', ''),
(10, 'Miscelanea', ''),
(11, 'Chupetes', NULL),
(12, 'Mecheros', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `person` varchar(16) DEFAULT NULL,
  `phone` int(16) DEFAULT NULL,
  `mobile_phone` int(32) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `pathlogo` varchar(32) DEFAULT NULL,
  `comment` text,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `person`, `phone`, `mobile_phone`, `address`, `email`, `city`, `pathlogo`, `comment`, `active`) VALUES
(1, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(2, 'Name 2', 'Person 2', 22222, 22222222, 'Street 2', 'email@ 222.com', 'City 222', '', '', 1),
(3, 'Name 3', 'Person 3', 33333, 33333333, 'Street 3', 'email@ 333.com', 'City 333', '', '', 1),
(4, 'Name 4', 'Person 4', 44444, 44444444, 'Street 4', 'email@ 444.com', 'City 444', '', '', 1),
(5, 'Name 5', 'Person 5', 55555, 55555555, 'Street 5', 'email@ 555.com', 'City 555', '', '', 1),
(6, 'Name 6', 'Person 6', 66666, 66666666, 'Street 6', 'email@ 666.com', 'City 666', '', '', 1),
(7, 'Name 7', 'Person 7', 77777, 77777777, 'Street 7', 'email@ 777.com', 'City 777', '', '', 1),
(8, 'Name 8', 'Person 8', 88888, 88888888, 'Street 8', 'email@ 888.com', 'City 888', '', '', 1),
(9, 'Name 9', 'Person 9', 99999, 99999999, 'Street 9', 'email@ 999.com', 'City 999', '', '', 1),
(10, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(11, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(12, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(13, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(14, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(15, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1),
(16, 'Name 1', 'Person 1', 11111, 11111111, 'Street 1', 'email@ 111.com', 'City 111', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `families`
--

CREATE TABLE `families` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `families`
--

INSERT INTO `families` (`id`, `name`, `comment`) VALUES
(1, 'Star Wars', ''),
(2, 'Minions', ''),
(3, 'Llaves_Silicona', ''),
(4, 'Camaras de fotos', ''),
(5, 'Personajes animados', ''),
(6, 'Infantiles', ''),
(7, 'Bebidas', ''),
(8, 'Comidas', ''),
(9, 'Superheroes', ''),
(10, 'Futbol', ''),
(12, 'Musica', ''),
(17, 'REVISAR', 'ESTA CATEGORIA HAY QUE REVISARLA Y RECOLOCAR LOS ARTICULOS'),
(18, 'Frikis', NULL),
(19, 'Helados', NULL),
(20, 'Animales', NULL),
(21, 'MonstruosSA', NULL),
(22, 'Bigotes', NULL),
(23, 'Dientes', NULL),
(24, 'LooneyTunes', NULL),
(25, 'Labios', NULL),
(26, 'Llaves_Imitacion', NULL),
(27, 'USB', NULL),
(29, 'Viejos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `storageName` varchar(16) NOT NULL,
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_family` int(11) NOT NULL,
  `id_picture` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `model` varchar(8) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `id_category`, `id_family`, `id_picture`, `name`, `reference`, `model`, `url`, `comment`) VALUES
(1, 2, 3, 0, 'BMW', '', NULL, '', ''),
(2, 2, 1, NULL, 'R2D2', NULL, 'F', 'http://www.aliexpress.com/item/usb-flash-drive-64g-star-wars-pen-drive-32g-pendrive-16g-R2D2-Darth-Vinda-8g-4g/32420311910.html?spm=2114.01010208.3.19.UfVHDq&ws_ab_test=searchweb201556_1,searchweb201602_1_10017_10005_10006_10034_10021_507_10022_10020_10018_10019,searchweb201603_2&btsid=f07abb57-15c4-43ab-b63a-a656b7a5dcd7', NULL),
(3, 2, 2, 0, 'OneEye', '', NULL, 'http://www.aliexpress.com/item/minions-Despicable-Me-USB-2-0-usb-flash-drives-thumb-pendrive-u-disk-usb-creativo-memory/32477789755.html', ''),
(4, 2, 2, 0, 'LongNeck', '', NULL, 'http://www.aliexpress.com/item/minions-Despicable-Me-USB-2-0-usb-flash-drives-thumb-pendrive-u-disk-usb-creativo-memory/32477789755.html', ''),
(5, 2, 1, 0, 'Yoda', '', 'G', 'http://www.aliexpress.com/item/usb-flash-drive-64g-star-wars-pen-drive-32g-pendrive-16g-R2D2-Darth-Vinda-8g-4g/32420311910.html?spm=2114.01010208.3.19.UfVHDq&ws_ab_test=searchweb201556_1,searchweb201602_1_10017_10005_10006_10034_10021_507_10022_10020_10018_10019,searchweb201603_2&btsid=f07abb57-15c4-43ab-b63a-a656b7a5dcd7', ''),
(6, 2, 1, 0, 'DarthVader', '', 'M4', 'http://www.aliexpress.com/item/Genius-Stars-Wars-seven-models-USB-dlash-drive-USB2-0-pendrive-8GB-4GB-32GB-16GB-64GB/32600329834.html', ''),
(7, 2, 5, 0, 'HelloKitty', '', NULL, 'http://www.aliexpress.com/item/2015-new-CUTE-LOVELY-Gift-Usb-flash-drive-memory-stick-cartoon-8GB-16GB-32GB-64GB-PEN/32396324568.html', ''),
(8, 2, 7, 0, 'Heineken', '', NULL, '', ''),
(9, 2, 8, 0, 'HeladoAlmendrado', '', NULL, '', ''),
(11, 2, 5, 0, 'HomerSimpson', '', NULL, '', ''),
(12, 2, 3, 0, 'Mercedes', '', NULL, '', ''),
(13, 2, 9, 0, 'Superman', '', NULL, '', ''),
(14, 2, 9, 0, 'Batman', '', NULL, '', ''),
(15, 2, 10, 0, 'RealMadrid', '', NULL, '', ''),
(16, 2, 6, 0, 'Conejito', '', NULL, '', ''),
(17, 2, 6, 0, 'OsoPanda', '', NULL, '', ''),
(18, 2, 6, 0, 'ZarpaRosa', '', NULL, '', ''),
(19, 2, 6, 0, 'GatoNegro', '', NULL, '', ''),
(20, 2, 8, 0, 'Fresa', '', NULL, '', ''),
(21, 2, 18, 0, 'Android', '', NULL, 'http://www.aliexpress.com/item/Free-shipping-U-Disk-cartoon-android-pen-drive-8GB-16GB-32GB-usb-flash-drive-flashdrive-memory/1924759270.html?spm=2114.01010208.3.56.OGAWjQ&ws_ab_test=searchweb201556_1,searchweb201602_1_10017_10005_10006_10034_10021_507_100', NULL),
(31, 2, 6, 0, 'MostruoMarron', '', NULL, '', ''),
(33, 2, 2, 0, 'MiBarsa', '', NULL, 'http://www.aliexpress.com/item/Despicable-Me-USB-2-0-usb-flash-drives-thumb-pendrive-u-disk-usb-creativo-memory-stick/32479896154.html', NULL),
(34, 2, 2, 0, 'TwoEyes', '', NULL, 'http://www.aliexpress.com/item/minions-Despicable-Me-USB-2-0-usb-flash-drives-thumb-pendrive-u-disk-usb-creativo-memory/32477789755.html', ''),
(35, 2, 5, 0, 'MikeWazowski', '', NULL, 'http://www.aliexpress.com/item/One-eye-big-eye-monster-Model-Free-shipping-USB-2-0-Flash-16G-32G-USB/32274534521.html', ''),
(39, 3, 2, 0, 'Au_Minion', '', NULL, 'http://www.aliexpress.com/item/New-cartoon-earphone-minions-Despicable-Me-superman-in-ear-headset-3-5mm-jake-stereo-headphones-for/32428442992.html', NULL),
(320, 11, 23, NULL, 'Dientes', NULL, NULL, 'http://www.aliexpress.com/item/Top-Silicone-Funny-Nipple-Dummy-Baby-Soother-Joke-Prank-Toddler-Pacy-Orthodontic-Nipples-Teether-Baby-Pacifier/32463837763.html', NULL),
(321, 11, 22, NULL, 'Bigotes', NULL, NULL, 'http://www.aliexpress.com/item/Top-Silicone-Funny-Nipple-Dummy-Baby-Soother-Joke-Prank-Toddler-Pacy-Orthodontic-Nipples-Teether-Baby-Pacifier/32463837763.html', NULL),
(322, 11, 25, NULL, 'Labios', NULL, NULL, 'http://www.aliexpress.com/item/Lip-Funny-Nipple-Dummy-Baby-Soother-Joke-Prank-Toddler-Pacy-Orthodontic-Nipples-Baby-Pacifier-Care/32375084364.html', NULL),
(323, 11, 23, NULL, 'Vampiro', NULL, NULL, 'http://www.aliexpress.com/item/Free-shipping-Mustache-Baby-Boy-Girl-Child-Dummy-Pacifier-Orthodontic-Nipples-Beard-Silicone-BPA-Free-New/32492594234.html', NULL),
(324, 2, 9, NULL, 'IronMan', NULL, NULL, 'http://www.aliexpress.com/item/2015-NEW-free-shipping-1GB-8GB-16GB-32GB-64GB-usb-flash-drive-pen-drive-Marvel-Cartoon/32273472203.html', NULL),
(325, 2, 2, NULL, 'Mi_Golf', NULL, NULL, 'http://www.aliexpress.com/item/New-2014-Cute-usb-flahs-drive-Memory-Stick-pen-Drive-Thumb-disk-Car-Pen-New-Minions/1495281360.html', NULL),
(326, 2, 2, NULL, 'Mi_Servicio', NULL, NULL, 'http://www.aliexpress.com/item/New-2014-Cute-usb-flahs-drive-Memory-Stick-pen-Drive-Thumb-disk-Car-Pen-New-Minions/1495281360.html', NULL),
(327, 2, 18, NULL, 'PlayStation', NULL, NULL, 'http://www.aliexpress.com/item/2015-New-usb-flash-drive-cartoon-gamepad-model-usb-2-0-memory-flash-stick-pen-drive/32570089297.html', NULL),
(328, 2, 26, NULL, 'Mercedes_IMI', NULL, NULL, 'http://www.aliexpress.com/item/2015-new-car-key-usb-2-0-Usb-flash-drive-memory-stick-U-disk-storage-8GB/32285914669.html', NULL),
(329, 2, 7, NULL, 'JarraCerveza', NULL, NULL, 'http://www.aliexpress.com/item/2015-RBT-Real-Capacity-High-Speed-Beer-Bottle-8GB-16GB-32GB-Pen-Drive-Pendrive-Usb-Flash/32281966919.html', NULL),
(330, 2, 24, NULL, 'Piolin', NULL, '1', 'http://www.aliexpress.com/item/usb-flash-drive-64g-pen-drive-32g-pendrive-16g-8g-4g-new-style-A-variety-of/32260871080.html', NULL),
(331, 2, 24, NULL, 'Bunny', NULL, '3', 'http://www.aliexpress.com/item/usb-flash-drive-64g-pen-drive-32g-pendrive-16g-8g-4g-new-style-A-variety-of/32260871080.html', NULL),
(332, 2, 1, NULL, 'SoldadoBlanco', NULL, 'M6', 'http://www.aliexpress.com/item/Genius-Stars-Wars-seven-models-USB-dlash-drive-USB2-0-pendrive-8GB-4GB-32GB-16GB-64GB/32600329834.html', NULL),
(333, 2, 1, NULL, 'SoldadoNegro', NULL, 'M7', 'http://www.aliexpress.com/item/Genius-Stars-Wars-seven-models-USB-dlash-drive-USB2-0-pendrive-8GB-4GB-32GB-16GB-64GB/32600329834.html', NULL),
(334, 2, 1, NULL, 'Darth Maul', NULL, 'C', 'http://www.aliexpress.com/item/Pen-drive-Star-Wars-Yoda-R2D2-Darth-Vader-8gb-16gb-32gb-64gb-usb-2-0-flash/32575309676.html', NULL),
(335, 2, 1, NULL, 'Cazarrecompensas', NULL, 'A', 'http://www.aliexpress.com/item/Pen-drive-Star-Wars-Yoda-R2D2-Darth-Vader-8gb-16gb-32gb-64gb-usb-2-0-flash/32575309676.html', NULL),
(336, 2, 1, NULL, 'BB-8', NULL, 'K', 'http://www.aliexpress.com/item/usb-flash-drive-64g-star-wars-pen-drive-32g-pendrive-16g-R2D2-Darth-Vinda-8g-4g/32420311910.html?spm=2114.01010208.3.46.IWoRgZ&ws_ab_test=searchweb201556_1,searchweb201602_1_10017_10005_10006_10034_10021_507_10022_10020_10018_10019,searchweb201603_2&btsid=13c5a64d-43b4-4a0f-883c-27ea79896a90', NULL),
(337, 7, 27, NULL, 'Mechero', NULL, '1', 'http://www.ebay.es/itm/301828163290', NULL),
(338, 2, 2, NULL, 'Mi_Darth', NULL, 'M5', 'http://www.aliexpress.com/item/Genius-Stars-Wars-seven-models-USB-dlash-drive-USB2-0-pendrive-8GB-4GB-32GB-16GB-64GB/32600329834.html', NULL),
(340, 2, 29, NULL, 'Viejos_Cartoon', NULL, NULL, NULL, NULL),
(341, 2, 29, NULL, 'Viejos_Brillantes', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `date_in` date DEFAULT NULL,
  `price_cost` decimal(10,2) DEFAULT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `date_delivery` date DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `date_sale` date DEFAULT NULL,
  `price_sale` decimal(10,2) DEFAULT NULL,
  `gift` tinyint(1) NOT NULL DEFAULT '0',
  `broken` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`id`, `id_product`, `date_in`, `price_cost`, `delivered`, `date_delivery`, `id_customer`, `sale`, `date_sale`, `price_sale`, `gift`, `broken`, `comment`) VALUES
(498, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(499, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(500, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(501, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(502, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(503, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(504, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(505, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(506, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(507, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(508, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(509, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(510, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(511, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(512, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(513, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(514, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(515, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(516, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(517, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(518, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(519, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(520, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(521, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(522, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(523, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(524, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(525, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(526, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(527, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(528, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(529, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(530, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(531, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(532, 320, '2016-04-01', '0.98', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(533, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(534, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(535, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(536, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(537, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(538, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(539, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(540, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(541, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(542, 321, '2016-04-01', '0.89', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(543, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(544, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(545, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(546, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(547, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(548, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(549, 323, '2016-04-01', '1.08', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(550, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(551, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(552, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(553, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(554, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(555, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(556, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(557, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(558, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(559, 322, '2016-04-01', '1.24', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(560, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(561, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(562, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(563, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(564, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(565, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(566, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(567, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(568, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(569, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(570, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(571, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(572, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(573, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(574, 321, '2016-03-13', '0.90', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(575, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(576, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(577, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(578, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(579, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(580, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(581, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(582, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(583, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(584, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(585, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(586, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(587, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(588, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(589, 320, '2016-03-13', '0.99', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(590, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(591, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(592, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(593, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(594, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(595, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(596, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(597, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(598, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(599, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(600, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(601, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(602, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(603, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(604, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(605, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(606, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(607, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(608, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(609, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(610, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(611, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(612, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(613, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(614, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(615, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(616, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(617, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(618, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(619, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(620, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(621, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(622, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(623, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(624, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(625, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(626, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(627, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(628, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(629, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(630, 39, '2016-03-01', '1.15', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(635, 39, '2016-03-01', '1.15', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(636, 39, '2016-03-01', '1.15', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(637, 39, '2016-03-01', '1.15', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(638, 39, '2016-03-01', '1.15', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(639, 39, '2016-03-01', '1.15', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(640, 330, '2016-04-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(641, 330, '2016-04-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(642, 330, '2016-04-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(643, 330, '2016-04-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(644, 330, '2016-04-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(645, 331, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(646, 331, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(647, 331, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(648, 331, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(649, 331, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(650, 324, '2016-03-13', '2.57', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(651, 324, '2016-03-13', '2.57', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(652, 324, '2016-03-13', '2.57', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(653, 324, '2016-03-13', '2.57', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(654, 324, '2016-03-13', '2.57', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(655, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(656, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(657, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(658, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(659, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(660, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(661, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(662, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(663, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(664, 329, '2016-03-13', '2.73', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(665, 34, '2016-03-13', '2.48', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(666, 34, '2016-03-13', '2.48', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(667, 34, '2016-03-13', '2.48', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(668, 328, '2016-03-13', '2.54', 1, '2016-04-22', 7, 0, NULL, NULL, 0, 0, NULL),
(669, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(670, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(671, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(672, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(673, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(674, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(675, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(676, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(677, 328, '2016-03-13', '2.54', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(678, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(679, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(680, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(681, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(682, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(683, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(684, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(685, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(686, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(687, 7, '2016-03-13', '2.56', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(688, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(689, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(690, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(691, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(692, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(693, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(694, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(695, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(696, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(697, 327, '2016-03-13', '2.88', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(698, 338, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(699, 338, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(700, 338, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(701, 338, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(702, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(703, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(704, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(705, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(706, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(707, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(708, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(709, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(710, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(711, 6, '2016-03-19', '2.33', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(712, 329, '2016-02-20', '2.74', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(713, 328, '2016-02-20', '2.63', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(714, 328, '2016-02-20', '2.63', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(715, 329, '2016-02-20', '2.70', 1, '2016-04-22', 7, 0, NULL, NULL, 0, 0, NULL),
(716, 329, '2016-02-20', '2.70', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(717, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(718, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(719, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(720, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(721, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(722, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(723, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(724, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(725, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(726, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(727, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(728, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(729, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(730, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(731, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(732, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(733, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(734, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(735, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(736, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(737, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(738, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(739, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(740, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(741, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(742, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(743, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(744, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(745, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(746, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(747, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(748, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(749, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(750, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(751, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(752, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(753, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(754, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(755, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(756, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(757, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(758, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(759, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(760, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(761, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(762, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(763, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(764, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(765, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(766, 337, '2016-03-13', '1.21', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(768, 334, '2016-02-20', '2.63', 1, '2017-11-13', 1, 0, NULL, NULL, 0, 0, NULL),
(769, 334, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(770, 334, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(771, 334, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(772, 2, '2016-02-20', '3.42', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(774, 2, '2016-02-20', '3.42', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(775, 2, '2016-02-20', '3.42', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(776, 2, '2016-02-20', '3.42', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(777, 333, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(778, 333, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(779, 333, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(780, 333, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(781, 333, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(782, 34, '2016-02-20', '2.65', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(784, 34, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(785, 34, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(786, 34, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(787, 332, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(788, 332, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(789, 332, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(790, 332, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(791, 332, '2016-02-20', '2.85', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(792, 335, '2016-02-20', '2.63', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(794, 335, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(795, 335, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(796, 335, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(797, 3, '2016-02-20', '2.65', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(799, 3, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(800, 3, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(801, 3, '2016-02-20', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(802, 6, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(803, 6, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(804, 6, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(805, 6, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(806, 6, '2016-02-20', '2.63', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(807, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(808, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(809, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(810, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(811, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(812, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(813, 333, '2016-01-17', '3.04', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(814, 333, '2016-01-17', '3.04', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(815, 333, '2016-01-17', '3.04', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(817, 333, '2016-01-17', '3.04', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(818, 333, '2016-01-17', '3.04', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(819, 332, '2016-01-17', '3.04', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(820, 6, '2016-01-17', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(821, 6, '2016-01-17', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(822, 6, '2016-01-17', '2.65', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(824, 6, '2016-01-17', '2.65', 1, '2016-04-22', 7, 0, NULL, NULL, 0, 0, NULL),
(825, 6, '2016-01-17', '2.65', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(826, 6, '2016-01-17', '2.65', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(827, 6, '2016-01-17', '2.65', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(828, 6, '2016-01-17', '2.65', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(829, 6, '2016-01-17', '2.65', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(830, 6, '2016-01-17', '2.65', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(831, 6, '2016-01-17', '2.65', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(832, 332, '2016-01-17', '2.92', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(833, 332, '2016-01-17', '2.92', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(834, 332, '2016-01-17', '2.92', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(835, 332, '2016-01-17', '2.92', 1, '2016-03-11', 5, 0, NULL, NULL, 0, 0, NULL),
(836, 332, '2016-01-17', '2.92', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(837, 332, '2016-01-17', '2.92', 1, '2016-02-25', 5, 0, NULL, NULL, 0, 0, NULL),
(838, 332, '2016-01-17', '2.92', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(839, 332, '2016-01-17', '2.92', 1, '2016-04-27', 6, 0, NULL, NULL, 0, 0, NULL),
(840, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-03-11', '7.00', 0, 0, NULL),
(841, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-03-11', '7.00', 0, 0, NULL),
(842, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(843, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(844, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(845, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(846, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(847, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(848, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(849, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(850, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(851, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(852, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(853, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(854, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(855, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 1, '2016-03-18', '7.00', 0, 0, NULL),
(856, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 1, '2016-03-18', '7.00', 0, 0, NULL),
(857, 340, '2016-01-01', '4.10', 1, '2016-03-18', 11, 1, '2016-03-18', '7.00', 0, 0, NULL),
(858, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(859, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-01-29', '7.00', 0, 0, NULL),
(860, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-01-29', '7.00', 0, 0, NULL),
(861, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-01-29', '7.00', 0, 0, NULL),
(862, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-01-29', '7.00', 0, 0, NULL),
(863, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(864, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(865, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(866, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(867, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(868, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(869, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(870, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(871, 340, '2016-01-01', '4.10', 1, '2016-01-29', 7, 0, NULL, NULL, 0, 0, NULL),
(872, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(873, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(874, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(875, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(876, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(877, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(878, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(879, 340, '2016-01-01', '4.10', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL),
(880, 340, '2016-01-01', '4.10', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(881, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(882, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(883, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(884, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(885, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(886, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(887, 340, '2016-01-01', '4.10', 1, '2016-04-18', 6, 1, '2016-04-27', '7.00', 0, 0, NULL),
(888, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(889, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(890, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(891, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(892, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(893, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(894, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(895, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(896, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(897, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(898, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(899, 340, '2016-01-01', '4.10', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(900, 340, '2016-01-01', '4.10', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(901, 340, '2016-01-01', '4.10', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(902, 340, '2016-01-01', '4.10', 1, '2016-04-28', 8, 0, NULL, NULL, 0, 0, NULL),
(903, 340, '2016-01-01', '4.10', 1, '2015-12-10', 8, 0, NULL, NULL, 0, 0, NULL),
(904, 340, '2016-01-01', '4.10', 1, '2015-12-10', 8, 0, NULL, NULL, 0, 0, NULL),
(905, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2016-04-16', '7.00', 0, 0, NULL),
(906, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2016-04-16', '7.00', 0, 0, NULL),
(907, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2015-12-10', '7.00', 0, 0, NULL),
(908, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2015-12-10', '7.00', 0, 0, NULL),
(909, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2015-12-10', '7.00', 0, 0, NULL),
(910, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2015-12-10', '7.00', 0, 0, NULL),
(911, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2015-12-10', '7.00', 0, 0, NULL),
(912, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2016-04-16', '7.00', 0, 0, NULL),
(913, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 1, '2016-04-16', '7.00', 0, 0, NULL),
(914, 340, '2016-01-01', '4.10', 1, '2015-11-16', 8, 0, NULL, NULL, 0, 0, NULL),
(915, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-12-18', '7.00', 0, 0, NULL),
(916, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 0, NULL, NULL, 0, 0, NULL),
(917, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(918, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(919, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(920, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(921, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(922, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(923, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 0, NULL, NULL, 0, 0, NULL),
(924, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 0, NULL, NULL, 0, 0, NULL),
(925, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-12-18', '7.00', 0, 0, NULL),
(926, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-12-18', '7.00', 0, 0, NULL),
(927, 340, '2016-01-01', '4.10', 1, '2015-12-01', 4, 1, '2015-02-22', '7.00', 0, 0, NULL),
(928, 341, '2016-01-01', '5.75', 1, '2015-11-16', 8, 0, NULL, NULL, 0, 0, NULL),
(929, 341, '2016-01-01', '5.75', 1, '2015-11-16', 8, 0, NULL, NULL, 0, 0, NULL),
(930, 341, '2016-01-01', '5.75', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(931, 341, '2016-01-01', '5.75', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(932, 341, '2016-01-01', '5.75', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(933, 341, '2016-01-01', '5.75', 1, '2015-12-10', 2, 0, NULL, NULL, 0, 0, NULL),
(934, 341, '2016-01-01', '5.75', 1, '2015-11-23', 5, 1, '2016-03-11', '7.00', 0, 0, NULL),
(935, 341, '2016-01-01', '5.75', 1, '2015-11-23', 5, 1, '2016-03-11', '7.00', 0, 0, NULL),
(936, 341, '2016-01-01', '5.75', 1, '2015-11-23', 5, 1, '2016-01-14', '7.00', 0, 0, NULL),
(937, 341, '2016-01-01', '5.75', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(938, 341, '2016-01-01', '5.75', 1, '2016-03-18', 11, 0, NULL, NULL, 0, 0, NULL),
(939, 341, '2016-01-01', '5.75', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(940, 341, '2016-01-01', '5.75', 1, '2016-01-29', 7, 1, '2016-04-22', '7.00', 0, 0, NULL),
(941, 341, '2016-01-01', '5.75', 0, NULL, NULL, 0, NULL, NULL, 0, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_family` (`id_family`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_2` (`id_product`),
  ADD KEY `id_product_3` (`id_product`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `families`
--
ALTER TABLE `families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;
--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_family`) REFERENCES `families` (`id`);

--
-- Filtros para la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
