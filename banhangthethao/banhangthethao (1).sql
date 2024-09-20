-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 03:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhangthethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'ha ngoc son nè', 'son0168746781311111@gmail.com', '0123456789', 'thanh pho ho chi minh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(14, 'Protatol TiTan Haruko', 'Protatol TiTan Haruko', 'public/uploads/th1.png', '<p>Protatol TiTan Haruko</p>\r\n', '14/12/2022', 'Protatol TiTan Haruko'),
(15, 'SpiritLocal', 'SpiritLocal', 'public/uploads/th2.png', '<p>SpiritLocal</p>\r\n', '14/12/2022', 'admin'),
(16, 'Tiger Sport', 'Tiger Sport', 'public/uploads/th3.png', '<p>Tiger Sport</p>\r\n', '14/12/2022', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total_num` int(11) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `id_customer`, `total_num`, `total_price`) VALUES
(2, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `code`, `image`, `description`, `create_date`, `user`) VALUES
(7, 'Tạ ', 'Tạ', 'public/uploads/ta3004.jpg', '<p>Tạ</p>\r\n', '14/12/2022', 'admin'),
(8, 'máy chạy bộ', 'máy chạy bộ', 'public/uploads/bay1.jpg', '<p>m&aacute;y chạy bộ</p>\r\n', '14/12/2022', 'admin'),
(9, 'máy tập tổng hợp', 'máy tập tổng hợp', 'public/uploads/keo1.jpg', '<p>m&aacute;y tập tổng hợp</p>\r\n', '14/12/2022', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `create_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `username`, `password`, `fullname`, `mail`, `phone`, `address`, `create_date`) VALUES
(2, 'son123', '202cb962ac59075b964b07152d234b70', 'hns', 'son123@gmail.com', '0123456789', 'tphcm', '14/12/2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_cart`
--

CREATE TABLE `tbl_detail_cart` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `num_total` int(11) NOT NULL,
  `sub_total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id`, `id_order`, `id_product`, `qty`, `sub_total_price`) VALUES
(1, 1, 11, 1, 2000000),
(2, 2, 14, 1, 2000000),
(3, 3, 15, 1, 3000000),
(4, 4, 14, 1, 2000000),
(5, 5, 15, 1, 3000000),
(6, 6, 14, 1, 2000000),
(7, 7, 14, 4, 8000000),
(8, 7, 11, 1, 2000000),
(9, 8, 14, 1, 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `custom_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `total_num_product` int(11) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` enum('Thành công','Chờ xác nhận','Hủy','') NOT NULL,
  `id_cart` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `custom_id`, `total_price`, `total_num_product`, `create_date`, `note`, `payment_method`, `status`, `id_cart`, `time`, `code`, `date_confirm`) VALUES
(1, 2, 2000000, 1, '14/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671031761', 'son123(1671031761)', ''),
(2, 2, 2000000, 1, '14/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671033496', 'son123(1671033496)', ''),
(3, 2, 3000000, 1, '14/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671035399', 'admin(1671035399)', ''),
(4, 2, 2000000, 1, '14/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671036098', 'son123(1671036098)', ''),
(5, 2, 3000000, 1, '14/12/2022', '', 'card_payment', 'Chờ xác nhận', 2, '1671036316', 'son123(1671036316)', ''),
(6, 2, 2000000, 1, '14/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671038482', 'son123(1671038482)', ''),
(7, 2, 10000000, 5, '15/12/2022', '', 'home_payment', 'Chờ xác nhận', 2, '1671095429', 'son123(1671095429)', ''),
(8, 2, 2000000, 1, '24/12/2022', '', 'card_payment', 'Chờ xác nhận', 2, '1671853912', 'son123(1671853912)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `promotional_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('còn hàng','hết hàng','hàng sắp về') NOT NULL,
  `description` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `id_category`, `id_brand`, `name`, `code`, `price`, `promotional_price`, `quantity`, `status`, `description`, `user`, `create_date`, `image`) VALUES
(11, 7, 15, 'Tạ khối đơn 15kg', '01', 2000000, 1950000, 2, 'còn hàng', '<p>chất lượng tốt</p>\r\n', 'admin', '14/12/2022', 'public/uploads/ta3002.jpg'),
(12, 8, 15, 'Máy chạy bộ A1', '02', 2000000, 1500000, 2, 'còn hàng', '<p>m&aacute;y chạy bộ</p>\r\n', 'admin', '14/12/2022', 'public/uploads/bay2.jpg'),
(13, 9, 15, 'máy tập tổng hợp A2', '03', 2000000, 1700000, 2, 'còn hàng', '<p>m&aacute;y tập tổng hợp</p>\r\n', 'admin', '14/12/2022', 'public/uploads/keo14.jpg'),
(14, 7, 15, 'Tạ đơn 20kg', '04', 2000000, 1700000, 2, 'còn hàng', '<p>Tốt cho sức khỏe</p>\r\n', 'admin', '14/12/2022', 'public/uploads/ta3001.jpg'),
(15, 8, 16, 'máy chạy bộ B2', '05', 3000000, 2500000, 1, 'còn hàng', '<p>Rất tốt cho sức khỏe</p>\r\n', 'admin', '14/12/2022', 'public/uploads/bay3.jpg'),
(16, 9, 16, 'Máy tập tổng hợp B2', '06', 2000000, 1700000, 2, 'còn hàng', '<p>Rất tốt cho sức khỏe</p>\r\n', 'admin', '15/12/2022', 'public/uploads/keo9.jpg'),
(17, 8, 15, 'tạ đơn pro', '08', 400000, 390000, 2, 'còn hàng', '<p>rất tốt</p>\r\n', 'admin', '10/01/2023', 'public/uploads/bay5.jpg'),
(18, 7, 16, 'tạ đơn max ping', '09', 500000, 490000, 4, 'còn hàng', '<p>tốt</p>\r\n', 'admin', '10/01/2023', 'public/uploads/nho1003.jpg'),
(21, 8, 14, 'máy chạy bộ max', '07', 500000, 490000, 3, 'còn hàng', '<p>tốt</p>\r\n', 'admin', '11/01/2023', 'public/uploads/chay1.jpg'),
(22, 9, 16, 'máy tập tổng hợp loại 1', '05', 500000, 400000, 3, 'còn hàng', '<p>tốt</p>\r\n', 'admin', '11/01/2023', 'public/uploads/keo13.jpg'),
(23, 7, 15, 'Tạ max', '08', 200000, 190000, 4, 'còn hàng', '<p>tốt</p>\r\n', 'admin', '11/01/2023', 'public/uploads/lon2004.jpg'),
(24, 9, 15, 'máy tập tổng hợp loại 2', '07', 500000, 490000, 4, 'còn hàng', '<p>tốt</p>\r\n', 'admin', '11/01/2023', 'public/uploads/keo10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_cart_ibfk_1` (`id_customer`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_cart_ibfk_1` (`id_cart`),
  ADD KEY `tbl_detail_cart_ibfk_2` (`id_product`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_order_ibfk_1` (`id_product`),
  ADD KEY `tbl_detail_order_ibfk_2` (`id_order`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_order_ibfk_1` (`custom_id`),
  ADD KEY `tbl_order_ibfk_2` (`id_cart`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_product_ibfk_1` (`id_brand`),
  ADD KEY `tbl_product_ibfk_2` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_detail_cart`
--
ALTER TABLE `tbl_detail_cart`
  ADD CONSTRAINT `tbl_detail_cart_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_detail_cart_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `tbl_detail_order_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_detail_order_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`custom_id`) REFERENCES `tbl_customer` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `tbl_cart` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `tbl_brand` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `tbl_category` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
