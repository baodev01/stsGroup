-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 06:18 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sts-printsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_subscribe`
--

CREATE TABLE `tb_subscribe` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sdt` varchar(30) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_thiepcuoi`
--

CREATE TABLE `tb_thiepcuoi` (
  `key_code` varchar(10) NOT NULL,
  `thiepcuoi_type` int(11) DEFAULT '0',
  `color` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `image_name` varchar(200) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_thiepcuoi`
--

INSERT INTO `tb_thiepcuoi` (`key_code`, `thiepcuoi_type`, `color`, `price`, `image_name`, `note`) VALUES
('TCA0001', 0, 1, 4000, 'images/thiepcuoi/TCA0001.jpg', ''),
('TCA0002', 0, 2, 4000, 'images/thiepcuoi/TCA0002.jpg', ''),
('TCA0003', 0, 3, 4000, 'images/thiepcuoi/TCA0003.jpg', ''),
('TCA0004', 0, 4, 4000, 'images/thiepcuoi/TCA0004.jpg', ''),
('TCA0005', 0, 1, 3800, 'images/thiepcuoi/TCA0005.jpg', ''),
('TCA0006', 0, 5, 3800, 'images/thiepcuoi/TCA0006.jpg', ''),
('TCA0007', 0, 5, 3800, 'images/thiepcuoi/TCA0007.jpg', ''),
('TCA0008', 0, 5, 3800, 'images/thiepcuoi/TCA0008.jpg', ''),
('TCA0009', 0, 1, 3800, 'images/thiepcuoi/TCA0009.jpg', ''),
('TCA0010', 0, 1, 2500, 'images/thiepcuoi/TCA0010.jpg', ''),
('TCA0011', 0, 3, 2500, 'images/thiepcuoi/TCA0011.jpg', ''),
('TCA0012', 0, 3, 2500, 'images/thiepcuoi/TCA0012.jpg', ''),
('TCA0013', 0, 1, 2500, 'images/thiepcuoi/TCA0013.jpg', ''),
('TCA0014', 0, 1, 2500, 'images/thiepcuoi/TCA0014.jpg', ''),
('TCA0015', 0, 1, 2500, 'images/thiepcuoi/TCA0015.jpg', ''),
('TCA0016', 0, 3, 2500, 'images/thiepcuoi/TCA0016.jpg', ''),
('TCA0017', 0, 4, 2500, 'images/thiepcuoi/TCA0017.jpg', ''),
('TCA0018', 0, 2, 2500, 'images/thiepcuoi/TCA0018.jpg', ''),
('TCA0019', 0, 3, 2500, 'images/thiepcuoi/TCA0019.jpg', ''),
('TCA0020', 0, 4, 2500, 'images/thiepcuoi/TCA0020.jpg', ''),
('TCA0021', 0, 0, 4300, 'images/thiepcuoi/TCA0021.jpg', ''),
('TCA0022', 0, 0, 4300, 'images/thiepcuoi/TCA0022.jpg', ''),
('TCA0023', 0, 0, 4300, 'images/thiepcuoi/TCA0023.jpg', ''),
('TCA0024', 0, 0, 4300, 'images/thiepcuoi/TCA0024.jpg', ''),
('TCA0025', 0, 6, 4500, 'images/thiepcuoi/TCA0025.jpg', ''),
('TCA0026', 0, 4, 4500, 'images/thiepcuoi/TCA0026.jpg', ''),
('TCA0027', 0, 3, 4500, 'images/thiepcuoi/TCA0027.jpg', ''),
('TCA0028', 0, 1, 4500, 'images/thiepcuoi/TCA0028.jpg', ''),
('TCA0029', 0, 1, 4300, 'images/thiepcuoi/TCA0029.jpg', ''),
('TCA0030', 0, 4, 4300, 'images/thiepcuoi/TCA0030.jpg', ''),
('TCA0031', 0, 3, 4300, 'images/thiepcuoi/TCA0031.jpg', ''),
('TCA0032', 0, 6, 4300, 'images/thiepcuoi/TCA0032.jpg', ''),
('TCA0033', 0, 3, 4300, 'images/thiepcuoi/TCA0033.jpg', ''),
('TCA0034', 0, 4, 4300, 'images/thiepcuoi/TCA0034.jpg', ''),
('TCA0035', 0, 6, 4500, 'images/thiepcuoi/TCA0035.jpg', ''),
('TCA0036', 0, 3, 4500, 'images/thiepcuoi/TCA0036.jpg', ''),
('TCA0037', 0, 4, 4500, 'images/thiepcuoi/TCA0037.jpg', ''),
('TCA0038', 0, 1, 3500, 'images/thiepcuoi/TCA0038.jpg', ''),
('TCA0039', 0, 5, 3500, 'images/thiepcuoi/TCA0039.jpg', ''),
('TCA0040', 0, 4, 3900, 'images/thiepcuoi/TCA0040.jpg', ''),
('TCA0041', 0, 5, 3900, 'images/thiepcuoi/TCA0041.jpg', ''),
('TCA0042', 0, 1, 4000, 'images/thiepcuoi/TCA0042.jpg', ''),
('TCA0043', 0, 4, 4000, 'images/thiepcuoi/TCA0043.jpg', ''),
('TCA0044', 0, 6, 4800, 'images/thiepcuoi/TCA0044.jpg', ''),
('TCA0045', 0, 3, 4800, 'images/thiepcuoi/TCA0045.jpg', ''),
('TCA0046', 0, 4, 4800, 'images/thiepcuoi/TCA0046.jpg', ''),
('TCA0047', 0, 4, 4100, 'images/thiepcuoi/TCA0047.jpg', ''),
('TCA0048', 0, 3, 4100, 'images/thiepcuoi/TCA0048.jpg', ''),
('TCA0049', 0, 6, 4100, 'images/thiepcuoi/TCA0049.jpg', ''),
('TCA0050', 0, 1, 4100, 'images/thiepcuoi/TCA0050.jpg', ''),
('TCA0051', 0, 5, 2500, 'images/thiepcuoi/TCA0051.jpg', ''),
('TCA0052', 0, 1, 2500, 'images/thiepcuoi/TCA0052.jpg', ''),
('TCA0053', 0, 4, 2500, 'images/thiepcuoi/TCA0053.jpg', ''),
('TCA0054', 0, 1, 2500, 'images/thiepcuoi/TCA0054.jpg', ''),
('TCA0055', 0, 5, 3500, 'images/thiepcuoi/TCA0055.jpg', ''),
('TCA0056', 0, 4, 3500, 'images/thiepcuoi/TCA0056.jpg', ''),
('TCA0057', 0, 3, 3000, 'images/thiepcuoi/TCA0057.jpg', ''),
('TCA0058', 0, 1, 3000, 'images/thiepcuoi/TCA0058.jpg', ''),
('TCA0059', 0, 5, 3000, 'images/thiepcuoi/TCA0059.jpg', ''),
('TCA0060', 0, 4, 3000, 'images/thiepcuoi/TCA0060.jpg', ''),
('TCA0061', 0, 5, 3000, 'images/thiepcuoi/TCA0061.jpg', ''),
('TCA0062', 0, 3, 3000, 'images/thiepcuoi/TCA0062.jpg', ''),
('TCA0063', 0, 5, 3000, 'images/thiepcuoi/TCA0063.jpg', ''),
('TCA0064', 0, 5, 2500, 'images/thiepcuoi/TCA0064.jpg', ''),
('TCA0065', 0, 4, 2500, 'images/thiepcuoi/TCA0065.jpg', ''),
('TCA0066', 0, 5, 2500, 'images/thiepcuoi/TCA0066.jpg', ''),
('TCA0067', 0, 5, 2500, 'images/thiepcuoi/TCA0067.jpg', ''),
('TCA0068', 0, 3, 2500, 'images/thiepcuoi/TCA0068.jpg', ''),
('TCA0069', 0, 3, 2500, 'images/thiepcuoi/TCA0069.jpg', ''),
('TCA0070', 0, 4, 2500, 'images/thiepcuoi/TCA0070.jpg', ''),
('TCA0071', 0, 4, 2500, 'images/thiepcuoi/TCA0071.jpg', ''),
('TCA0072', 0, 4, 3600, 'images/thiepcuoi/TCA0072.jpg', ''),
('TCA0073', 0, 3, 3600, 'images/thiepcuoi/TCA0073.jpg', ''),
('TCA0074', 0, 3, 3600, 'images/thiepcuoi/TCA0074.jpg', ''),
('TCA0075', 0, 1, 3600, 'images/thiepcuoi/TCA0075.jpg', ''),
('TCA0076', 0, 3, 3600, 'images/thiepcuoi/TCA0076.jpg', ''),
('TCA0077', 0, 1, 3600, 'images/thiepcuoi/TCA0077.jpg', ''),
('TCA0078', 0, 4, 3600, 'images/thiepcuoi/TCA0078.jpg', ''),
('TCA0079', 0, 1, 3600, 'images/thiepcuoi/TCA0079.jpg', ''),
('TCA0080', 0, 3, 3600, 'images/thiepcuoi/TCA0080.jpg', ''),
('TCA0081', 0, 3, 3600, 'images/thiepcuoi/TCA0081.jpg', ''),
('TCA0082', 0, 3, 3600, 'images/thiepcuoi/TCA0082.jpg', ''),
('TCA0083', 0, 3, 3600, 'images/thiepcuoi/TCA0083.jpg', ''),
('TCA0084', 0, 3, 3600, 'images/thiepcuoi/TCA0084.jpg', ''),
('TCA0085', 0, 1, 3600, 'images/thiepcuoi/TCA0085.jpg', ''),
('TCA0086', 0, 1, 3600, 'images/thiepcuoi/TCA0086.jpg', ''),
('TCA0087', 0, 1, 3600, 'images/thiepcuoi/TCA0087.jpg', ''),
('TCA0088', 0, 3, 3500, 'images/thiepcuoi/TCA0088.jpg', ''),
('TCA0089', 0, 4, 3500, 'images/thiepcuoi/TCA0089.jpg', ''),
('TCA0090', 0, 4, 3500, 'images/thiepcuoi/TCA0090.jpg', ''),
('TCA0091', 0, 5, 3500, 'images/thiepcuoi/TCA0091.jpg', ''),
('TCA0092', 0, 3, 3500, 'images/thiepcuoi/TCA0092.jpg', ''),
('TCA0093', 0, 1, 3600, 'images/thiepcuoi/TCA0093.jpg', ''),
('TCA0094', 0, 3, 3600, 'images/thiepcuoi/TCA0094.jpg', ''),
('TCA0095', 0, 1, 3600, 'images/thiepcuoi/TCA0095.jpg', ''),
('TCA0096', 0, 3, 4000, 'images/thiepcuoi/TCA0096.jpg', ''),
('TCA0097', 0, 3, 3600, 'images/thiepcuoi/TCA0097.jpg', ''),
('TCA0098', 0, 3, 3500, 'images/thiepcuoi/TCA0098.jpg', ''),
('TCA0099', 0, 3, 3500, 'images/thiepcuoi/TCA0099.jpg', ''),
('TCA0100', 0, 1, 3500, 'images/thiepcuoi/TCA0100.jpg', ''),
('TCA0101', 0, 5, 3500, 'images/thiepcuoi/TCA0101.jpg', ''),
('TCA0102', 0, 5, 3500, 'images/thiepcuoi/TCA0102.jpg', ''),
('TCA0103', 0, 5, 3500, 'images/thiepcuoi/TCA0103.jpg', ''),
('TCA0104', 0, 5, 3500, 'images/thiepcuoi/TCA0104.jpg', ''),
('TCA0105', 0, 5, 3500, 'images/thiepcuoi/TCA0105.jpg', ''),
('TCA0106', 0, 5, 3500, 'images/thiepcuoi/TCA0106.jpg', ''),
('TCA0107', 0, 5, 3500, 'images/thiepcuoi/TCA0107.jpg', ''),
('TCA0108', 0, 5, 3500, 'images/thiepcuoi/TCA0108.jpg', ''),
('TCA0109', 0, 5, 3500, 'images/thiepcuoi/TCA0109.jpg', ''),
('TCA0110', 0, 5, 3500, 'images/thiepcuoi/TCA0110.jpg', ''),
('TCA0111', 0, 5, 3500, 'images/thiepcuoi/TCA0111.jpg', ''),
('TCA0112', 0, 5, 3500, 'images/thiepcuoi/TCA0112.jpg', ''),
('TCA0113', 0, 3, 3500, 'images/thiepcuoi/TCA0113.jpg', ''),
('TCA0114', 0, 5, 3500, 'images/thiepcuoi/TCA0114.jpg', ''),
('TCA0115', 0, 4, 3500, 'images/thiepcuoi/TCA0115.jpg', ''),
('TCA0116', 0, 5, 3600, 'images/thiepcuoi/TCA0116.jpg', ''),
('TCA0117', 0, 3, 3600, 'images/thiepcuoi/TCA0117.jpg', ''),
('TCA0118', 0, 5, 3300, 'images/thiepcuoi/TCA0118.jpg', ''),
('TCA0119', 0, 5, 3300, 'images/thiepcuoi/TCA0119.jpg', ''),
('TCA0120', 0, 5, 3300, 'images/thiepcuoi/TCA0120.jpg', ''),
('TCA0121', 0, 5, 3300, 'images/thiepcuoi/TCA0121.jpg', ''),
('TCA0122', 0, 5, 3300, 'images/thiepcuoi/TCA0122.jpg', ''),
('TCA0123', 0, 5, 3300, 'images/thiepcuoi/TCA0123.jpg', ''),
('TCA0124', 0, 0, 3300, 'images/thiepcuoi/TCA0124.jpg', ''),
('TCA0125', 0, 5, 3300, 'images/thiepcuoi/TCA0125.jpg', ''),
('TCA0126', 0, 0, 3300, 'images/thiepcuoi/TCA0126.jpg', ''),
('TCA0127', 0, 5, 3300, 'images/thiepcuoi/TCA0127.jpg', ''),
('TCA0128', 0, 5, 3300, 'images/thiepcuoi/TCA0128.jpg', ''),
('TCA0129', 0, 5, 3300, 'images/thiepcuoi/TCA0129.jpg', ''),
('TCA0130', 0, 3, 4000, 'images/thiepcuoi/TCA0130.jpg', ''),
('TCA0131', 0, 5, 4000, 'images/thiepcuoi/TCA0131.jpg', ''),
('TCA0132', 0, 2, 4000, 'images/thiepcuoi/TCA0132.jpg', ''),
('TCA0133', 0, 3, 4000, 'images/thiepcuoi/TCA0133.jpg', ''),
('TCA0134', 0, 5, 4000, 'images/thiepcuoi/TCA0134.jpg', ''),
('TCA0135', 0, 5, 4000, 'images/thiepcuoi/TCA0135.jpg', ''),
('TCA0136', 0, 6, 4000, 'images/thiepcuoi/TCA0136.jpg', ''),
('TCA0137', 0, 6, 4000, 'images/thiepcuoi/TCA0137.jpg', ''),
('TCA0138', 0, 3, 4000, 'images/thiepcuoi/TCA0138.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_thiepcuoi_color`
--

CREATE TABLE `tb_thiepcuoi_color` (
  `id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_thiepcuoi_color`
--

INSERT INTO `tb_thiepcuoi_color` (`id`, `color_name`) VALUES
(1, 'Hồng'),
(2, 'Vàng'),
(3, 'Đỏ'),
(4, 'Tím'),
(5, 'Trắng'),
(6, 'Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `tb_thiepcuoi_type`
--

CREATE TABLE `tb_thiepcuoi_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_thiepcuoi_type`
--

INSERT INTO `tb_thiepcuoi_type` (`id`, `type_name`) VALUES
(1, 'Thiệp cưới truyền thống'),
(2, 'Thiệp cưới cao cấp'),
(3, 'Thiệp cưới in ảnh'),
(4, 'Thiệp cưới phong cách');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_subscribe`
--
ALTER TABLE `tb_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_thiepcuoi`
--
ALTER TABLE `tb_thiepcuoi`
  ADD PRIMARY KEY (`key_code`);

--
-- Indexes for table `tb_thiepcuoi_color`
--
ALTER TABLE `tb_thiepcuoi_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_thiepcuoi_type`
--
ALTER TABLE `tb_thiepcuoi_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_subscribe`
--
ALTER TABLE `tb_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
