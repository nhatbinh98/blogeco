-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2023 at 11:40 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_eco`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'user', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_post`
--

DROP TABLE IF EXISTS `tbl_category_post`;
CREATE TABLE IF NOT EXISTS `tbl_category_post` (
  `id_category_post` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_category_post` varchar(200) NOT NULL,
  `desc_category_post` varchar(200) NOT NULL,
  PRIMARY KEY (`id_category_post`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_post`
--

INSERT INTO `tbl_category_post` (`id_category_post`, `title_category_post`, `desc_category_post`) VALUES
(2, 'Luật pháp', 'Luật pháp trong nước'),
(4, 'Công nghệ', 'Công nghệ trong nước');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

DROP TABLE IF EXISTS `tbl_category_product`;
CREATE TABLE IF NOT EXISTS `tbl_category_product` (
  `id_category_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_category_product` varchar(100) NOT NULL,
  `desc_category_product` varchar(200) NOT NULL,
  PRIMARY KEY (`id_category_product`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`id_category_product`, `title_category_product`, `desc_category_product`) VALUES
(23, 'Điện thoại', 'Điện thoại tốt'),
(25, 'Iphone', 'Iphone đời mới '),
(26, 'MacBook', 'MacBook pro'),
(27, 'laptop', 'Laptop cũ giá rẻ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_code`, `order_date`, `order_status`) VALUES
(1, '5732', '15/06/2021 07:59:47pm', 0),
(2, '2474', '15/06/2021 08:03:52pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(100) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sodienthoai` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  PRIMARY KEY (`order_details_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_quantity`, `name`, `sodienthoai`, `email`, `noidung`, `diachi`) VALUES
(1, '5732', 7, 3, 'ass', '4544554', 'ad@yahoog.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '44'),
(2, '5732', 9, 1, 'ass', '4544554', 'ad@yahoog.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '44'),
(3, '5732', 6, 3, 'ass', '4544554', 'ad@yahoog.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '44'),
(4, '2474', 10, 4, 'name', '456', 'ad1@yahoog.com', '123abc', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `title_post` varchar(255) NOT NULL,
  `content_post` text NOT NULL,
  `image_post` varchar(200) NOT NULL,
  `id_category_post` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_category_post` (`id_category_post`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id_post`, `title_post`, `content_post`, `image_post`, `id_category_post`) VALUES
(1, 'Bài viết 0', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Fate1623241098.jpg', 4),
(4, 'Bài viết 3', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'iphone31623513417.jpg', 4),
(5, 'Bài viết 6', '<p>Module đầu ti&ecirc;n của nam ch&acirc;m mạnh gấp 280.000 lần từ trường Tr&aacute;i Đất sắp được chuyển tới l&ograve; phản ứng ITER.</p>\r\n\r\n<p>Theo định luật cảm ứng Faraday, điện truyền qua d&acirc;y dẫn ph&aacute;t ra từ trường vu&ocirc;ng g&oacute;c với d&acirc;y. Khi quấn d&acirc;y th&agrave;nh cuộn, d&ograve;ng điện sản sinh từ trường h&igrave;nh tr&ograve;n. Mỗi cuộn d&acirc;y sẽ tăng cường độ mạnh của từ trường. Solenoid l&agrave; cuộn d&acirc;y điện c&ugrave;ng với l&otilde;i sắt từ di động lồng trong trung t&acirc;m của n&oacute;. Phi&ecirc;n bản đơn giản nhất của solenoid l&agrave; th&iacute; nghiệm trong lớp học, trong đ&oacute; học sinh quấn d&acirc;y quanh chiếc đinh v&agrave; gắn với pin. Khi bật pin, cuộn d&acirc;y c&oacute; thể nhấc kẹp giấy l&ecirc;n.</p>\r\n\r\n<p>Theo định luật cảm ứng Faraday, điện truyền qua d&acirc;y dẫn ph&aacute;t ra từ trường vu&ocirc;ng g&oacute;c với d&acirc;y. Khi quấn d&acirc;y th&agrave;nh cuộn, d&ograve;ng điện sản sinh từ trường h&igrave;nh tr&ograve;n. Mỗi cuộn d&acirc;y sẽ tăng cường độ mạnh của từ trường. Solenoid l&agrave; cuộn d&acirc;y điện c&ugrave;ng với l&otilde;i sắt từ di động lồng trong trung t&acirc;m của n&oacute;. Phi&ecirc;n bản đơn giản nhất của solenoid l&agrave; th&iacute; nghiệm trong lớp học, trong đ&oacute; học sinh quấn d&acirc;y quanh chiếc đinh v&agrave; gắn với pin. Khi bật pin, cuộn d&acirc;y c&oacute; thể nhấc kẹp giấy l&ecirc;n.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"Module đầu tiên của  Central solenoid. Ảnh: ITER.\" src=\"https://i1-vnexpress.vnecdn.net/2021/06/16/VNE-Magnet-JPG-2489-1623820623.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vKe5HbHiT1DjXR-e6jfMfg\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Module đầu ti&ecirc;n của Central solenoid. Ảnh:<em>&nbsp;ITER.</em></p>\r\n\r\n<p>C&aacute;c kỹ sư ở Mỹ đang chuẩn bị để vận chuyển bộ phận đầu ti&ecirc;n của nam ch&acirc;m mạnh nhất thế giới tới Ph&aacute;p, gi&uacute;p cung cấp năng lượng cho l&ograve; phản ứng tổng hợp hạt nh&acirc;n ti&ecirc;n tiến. Nam ch&acirc;m mang t&ecirc;n Central solenoid, sẽ trở th&agrave;nh &quot;tr&aacute;i tim&quot; của l&ograve; phản ứng tổng hợp hạt nh&acirc;n lớn nhất thế giới, ITER.</p>\r\n\r\n<p>Th&iacute; nghiệm quốc tế n&agrave;y bao gồm 35 quốc gia th&agrave;nh vi&ecirc;n với mục ti&ecirc;u chứng minh t&iacute;nh khả thi của việc sử dụng phản ứng tổng hợp hạt nh&acirc;n bền vững để tạo ra điện. Trong phản ứng tổng hợp hạt nh&acirc;n, nguy&ecirc;n tử nhỏ kết hợp để tạo ra nguy&ecirc;n tử lớn hơn trong phản ứng giải ph&oacute;ng năng lượng khổng lồ.</p>\r\n\r\n<p>Khi lắp r&aacute;p ho&agrave;n chỉnh, Central solenoid sẽ cao 18 m v&agrave; rộng 4,3 m, c&oacute; thể sản sinh từ trường 13 tesla, mạnh gấp 280.000 lần từ trường Tr&aacute;i Đất, đủ để nhấc bổng cả t&agrave;u s&acirc;n bay nặng khoảng 90.700 tấn.</p>\r\n\r\n<p>Central solenoid sẽ l&agrave; nam ch&acirc;m điện lớn v&agrave; mạnh nhất từng được chế tạo, theo John Smith, gi&aacute;m đốc kỹ thuật v&agrave; dự &aacute;n tại General Atomics, c&ocirc;ng ty sản xuất nam ch&acirc;m. Central solenoid bao gồm 6 module ri&ecirc;ng lẻ xếp chồng l&ecirc;n nhau ở trung t&acirc;m của l&ograve; phản ứng ITER. To&agrave;n bộ nam ch&acirc;m cao bằng t&ograve;a nh&agrave; 4 tầng v&agrave; nặng 907 tấn.</p>\r\n\r\n<p>Về cơ bản, mỗi module ri&ecirc;ng lẻ l&agrave; một cuộn d&acirc;y lớn chứa khoảng 5,6 km c&aacute;p si&ecirc;u dẫn bằng niobium-tin phủ th&eacute;p. Module sau đ&oacute; được xử l&yacute; nhiệt trong l&ograve; lớn suốt v&agrave;i tuần để tăng độ dẫn điện. Tiếp theo, d&acirc;y c&aacute;p được c&aacute;ch nhiệt v&agrave; quấn th&agrave;nh cuộn ở h&igrave;nh dạng cuối c&ugrave;ng.</p>\r\n\r\n<p>Theo định luật cảm ứng Faraday, điện truyền qua d&acirc;y dẫn ph&aacute;t ra từ trường vu&ocirc;ng g&oacute;c với d&acirc;y. Khi quấn d&acirc;y th&agrave;nh cuộn, d&ograve;ng điện sản sinh từ trường h&igrave;nh tr&ograve;n. Mỗi cuộn d&acirc;y sẽ tăng cường độ mạnh của từ trường. Solenoid l&agrave; cuộn d&acirc;y điện c&ugrave;ng với l&otilde;i sắt từ di động lồng trong trung t&acirc;m của n&oacute;. Phi&ecirc;n bản đơn giản nhất của solenoid l&agrave; th&iacute; nghiệm trong lớp học, trong đ&oacute; học sinh quấn d&acirc;y quanh chiếc đinh v&agrave; gắn với pin. Khi bật pin, cuộn d&acirc;y c&oacute; thể nhấc kẹp giấy l&ecirc;n.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, k&iacute;ch thước v&agrave; bản chất si&ecirc;u dẫn của Central solenoid c&oacute; nghĩa d&ograve;ng điện c&oacute; thể truyền qua nhiều hơn, cho ph&eacute;p tạo ra từ trường mạnh hơn bất cứ vật n&agrave;o kh&aacute;c. Central solenoid l&agrave; &quot;tr&aacute;i tim&quot; của l&ograve; ITER, bởi n&oacute; gi&uacute;p c&aacute;c nh&agrave; khoa học kiểm so&aacute;t độ k&eacute;m ổn định của phản ứng tổng hợp hạt nh&acirc;n.</p>\r\n\r\n<p>ITER được thiết kế để giải ph&oacute;ng lượng cực nhỏ deuterium v&agrave; tritium bay hơi, hai đồng vị hydro, trong buồng ch&acirc;n kh&ocirc;ng h&igrave;nh v&agrave;nh khăn lớn gọi l&agrave; tokamak. Tokamak l&agrave;m n&oacute;ng những đồng vị n&agrave;y tới nhiệt độ cực cao, t&aacute;ch electron khỏi nguy&ecirc;n tử v&agrave; biến đổi kh&iacute; th&agrave;nh plasma. Plasma si&ecirc;u n&oacute;ng sẽ đạt nhiệt độ 150 triệu độ C, n&oacute;ng gấp 10 lần l&otilde;i Mặt Trời. Ở nhiệt độ đ&oacute;, nguy&ecirc;n tử trải qua qu&aacute; tr&igrave;nh hợp hạch, giải ph&oacute;ng lượng lớn năng lượng, c&oacute; thể d&ugrave;ng để tạo ra điện bằng c&aacute;ch đun n&oacute;ng nước, sau đ&oacute; d&ugrave;ng hơi nước l&agrave;m quay turbine.</p>\r\n', 'as1623846246.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_product` varchar(200) NOT NULL,
  `price_product` varchar(100) NOT NULL,
  `desc_product` text NOT NULL,
  `quantity_product` int(11) NOT NULL,
  `image_product` varchar(100) NOT NULL,
  `id_category_product` int(11) UNSIGNED NOT NULL,
  `product_hot` int(11) NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_category_product` (`id_category_product`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `title_product`, `price_product`, `desc_product`, `quantity_product`, `image_product`, `id_category_product`, `product_hot`) VALUES
(2, 'product1', '1000000', 'as', 100, 'as.jpg', 23, 0),
(5, 'product3', '1000000', 'abc', 5, 'Fate1623134584.jpg', 25, 0),
(6, 'product4', '3000000', 'asfa', 12, 'alpha_Max1623135842.jpg', 25, 0),
(7, 'product2', '3000000', 'fggfa', 200, 'as1623137269.jpg', 25, 1),
(9, 'product6', '2000000', 'fff', 10, 'iphone11623481530.jpg', 25, 1),
(10, 'product7', '500000', '4cvcv', 100, 'Fate1623596600.jpg', 23, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`id_category_post`) REFERENCES `tbl_category_post` (`id_category_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `tbl_category_product` (`id_category_product`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
