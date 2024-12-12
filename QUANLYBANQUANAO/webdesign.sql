-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 09:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdesign`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `ma_dh` varchar(255) NOT NULL,
  `id_tk` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `giasp` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `phuongthucthanhtoan` varchar(255) NOT NULL,
  `diachi_ctdh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `ma_dh`, `id_tk`, `id_sp`, `tensp`, `giasp`, `size`, `soluong`, `tongtien`, `phuongthucthanhtoan`, `diachi_ctdh`) VALUES
(4, '78', 51, 27, 'LEVENTS® CITIES SHIRT/ WHITE', '420000', 'L', 1, '420000', 'Tiền mặt', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp'),
(5, '59', 51, 8, 'LEVENTS® KNIT POLO/ BROWN', '530000', 'L', 1, '530000', 'Chuyển khoản', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp'),
(6, '152', 51, 101, 'Levents® Play Logo Shortpant/ Green', '390000', 'L', 1, '390000', 'Tiền mặt', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp'),
(7, '60', 51, 9, 'LEVENTS® KNIT POLO/ BLACK', '530000', 'L', 1, '530000', 'Tiền mặt', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp'),
(8, '56', 51, 5, 'Levents® Classic Regular Polo', '420000', 'XL', 1, '420000', 'Tiền mặt', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diachi`
--

CREATE TABLE `tbl_diachi` (
  `id_dc` int(11) NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `htnew` varchar(255) NOT NULL,
  `sdtnew` varchar(10) NOT NULL,
  `dcnew` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_diachi`
--

INSERT INTO `tbl_diachi` (`id_dc`, `id_kh`, `htnew`, `sdtnew`, `dcnew`) VALUES
(26, 33, 'Bui Thi My Kim', '0344363127', 'Kênh Tây Cập');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `id_dh` int(10) NOT NULL,
  `ma_dh` varchar(255) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `ngaymua` datetime NOT NULL,
  `diachi` text NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `phuongthucthanhtoan` varchar(255) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`id_dh`, `ma_dh`, `id_tk`, `id_sp`, `ngaymua`, `diachi`, `tongtien`, `phuongthucthanhtoan`, `trangthai`) VALUES
(23, '78', 51, 27, '2024-01-18 06:13:59', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp', '420000', 'Tiền mặt', 'true'),
(24, '59', 51, 8, '2024-01-18 06:15:05', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp', '530000', 'Chuyển khoản ngân hàng', 'true'),
(26, '60', 51, 9, '2024-01-18 08:00:09', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp', '530000', 'Tiền mặt', 'false'),
(27, '56', 51, 5, '2024-01-18 08:32:15', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp', '420000', 'Tiền mặt', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_gh` int(10) NOT NULL,
  `id_tk` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_gh`, `id_tk`, `id_sp`, `sdt`, `soluong`, `size`) VALUES
(45, 51, 20, '0772522284', 1, 'L'),
(46, 51, 4, '0772522284', 1, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `id_kh` int(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`id_kh`, `hoten`, `sdt`, `email`, `diachi`) VALUES
(15, 'Bùi Ngọc Hải', '0344363127', '', 'Ấp 3, Xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp'),
(33, 'Bùi Thị Mỹ Kim', '0772522284', 'ngochai0957@gmail.com', 'Ấp 3, xã Phương Thịnh, Huyện Cao Lãnh, Đồng Tháp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `giasp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `duongdan` varchar(255) NOT NULL,
  `loaisp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sp`, `tensp`, `giasp`, `soluong`, `mota`, `duongdan`, `loaisp`) VALUES
(4, 'Levents® Classic Regular Polo', 420000, 10, 'LEVENTS® CLASSIC với mục tiêu trở thành dòng sản phẩm “EVERY WEAR” là sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại và form dáng cổ điển, tập trung về chất liệu và màu sắc đa dạng.', '1702083450 ClassicRegularWhite.jpg', 'aopolo'),
(5, 'Levents® Classic Regular Polo', 420000, 10, 'LEVENTS® CLASSIC với mục tiêu trở thành dòng sản phẩm “EVERY WEAR” là sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại và form dáng cổ điển, tập trung về chất liệu và màu sắc đa dạng.', '1702083437 ClassicRegularBlack.jpg', 'aopolo'),
(8, 'LEVENTS® KNIT POLO/ BROWN', 530000, 10, 'LEVENTS® KNIT POLO\r\nMATERIAL: KNIT', '1702083369 KnitBrown.jpg', 'aopolo'),
(9, 'LEVENTS® KNIT POLO/ BLACK', 530000, 10, 'LEVENTS® KNIT POLO\r\nMATERIAL: KNIT', '1702083351 KnitBlack.jpg', 'aopolo'),
(20, 'LEVENTS® KNIT POLO/ BABYBLUE', 530000, 10, 'LEVENTS® KNIT POLO\r\nMATERIAL: KNIT', '1704207505 KnitBabyBlue.jpg', 'aopolo'),
(22, 'LEVENTS® CINEMA SHIRT/ GREEN', 420000, 10, 'LEVENTS® CINEMA SHIRT\r\nChất liệu: 100% Cotton', '1701999645 CinemaShirtGreen.jpg', 'aosomi'),
(25, 'LEVENTS® CINEMA SHIRT/ BLACK', 420000, 10, 'LEVENTS® CINEMA SHIRT\r\nChất liệu: 100% Cotton', '1701999626 CinemaShirtBlack.jpg', 'aosomi'),
(26, 'LEVENTS® CITIES SHIRT/ BLACK', 420000, 10, 'LEVENTS® CITIES SHIRT\r\nChất liệu: Cotton', '1701999870 CitiesShirtBlack.jpg', 'aosomi'),
(27, 'LEVENTS® CITIES SHIRT/ WHITE', 420000, 10, 'LEVENTS® CITIES SHIRT\r\nChất liệu: Cotton', '1701999841 CitiesShirtWhite.jpg', 'aosomi'),
(28, 'LEVENTS® AIRPLANE TEE/ WHITE', 380000, 10, 'Áo oversize có độ dài phủ quá mông,phần tay áo rộng rãi, dài tay áo chạm khuỷu tay người mặc, form dáng thoải mái, rộng rãi khi mặc. \r\nPhù hợp cho những bạn không muốn khoe đường cong cơ thể, vì sự thoải mái cũng như tính năng tiện dụng khi có thể kết hợp', '1702083744 AirplaneTeeWhite.jpg', 'aothun'),
(29, 'LEVENTS® AIRPLANE TEE/ BLACK', 380000, 10, 'Áo oversize có độ dài phủ quá mông,phần tay áo rộng rãi, dài tay áo chạm khuỷu tay người mặc, form dáng thoải mái, rộng rãi khi mặc. \r\nPhù hợp cho những bạn không muốn khoe đường cong cơ thể, vì sự thoải mái cũng như tính năng tiện dụng khi có thể kết hợp', '1702083693 AirplaneTeeBlack.jpg', 'aothun'),
(30, 'Levents® Book Boxy Tee/ White', 430000, 10, 'Form BOXY khác biệt với form thường là áo được thiết kế chỉ dài đến thắt lưng, được tạo thành form cứng cáp, dạng như chiếc hộp vuông. Dễ phối đồ, giúp tôn dáng người được thon gọn và cao ráo.\r\nPhân chia lại tỉ lệ mặc đồ của người dùng – gọn gàng hơn, phầ', '1702000223 BookBoxyTeeWhite.jpg', 'aothun'),
(31, 'Levents® Book Boxy Tee/ Black', 430000, 10, 'Form BOXY khác biệt với form thường là áo được thiết kế chỉ dài đến thắt lưng, được tạo thành form cứng cáp, dạng như chiếc hộp vuông. Dễ phối đồ, giúp tôn dáng người được thon gọn và cao ráo.\r\nPhân chia lại tỉ lệ mặc đồ của người dùng – gọn gàng hơn, phầ', '1702000240 BookBoxyTeeBlack.jpg', 'aothun'),
(32, 'Levents® Something Boxy Tee', 380000, 10, 'Form BOXY khác biệt với form thường là áo được thiết kế chỉ dài đến thắt lưng, được tạo thành form cứng cáp, dạng như chiếc hộp vuông. Dễ phối đồ, giúp tôn dáng người được thon gọn và cao ráo.\r\nPhân chia lại tỉ lệ mặc đồ của người dùng – gọn gàng hơn, phầ', '1702000320 SomethingBoxyTee.jpg', 'aothun'),
(33, 'LEVENTS® FADED TEE/ BLACK', 390000, 10, 'LEVENTS® FADED TEE/ BLACK\r\nChất liệu: LÌ VEN WASH – chất vải mềm mịn, dày dặn và đặc biệt tạo nên những mảng màu loang cá tính.', '1702000411 FadedTeeBlack.jpg', 'aothun'),
(34, 'LEVENTS® FADED TEE/ YELLOW', 390000, 10, 'LEVENTS® FADED TEE/ BLACK\r\nChất liệu: LÌ VEN WASH – chất vải mềm mịn, dày dặn và đặc biệt tạo nên những mảng màu loang cá tính.', '1702000444 FadedTeeYellow.jpg', 'aothun'),
(35, 'LEVENTS® JOGGER TEE/ GREEN                                                      ', 390000, 10, 'Levents® Jogger Tee\r\nChất liệu: Lì Ven Compact', '1702083652 JoggerTeeGreen.jpg', 'aothun'),
(36, 'LEVENTS® JOGGER TEE/ WHITE', 390000, 10, 'Levents® Jogger Tee\r\nChất liệu: Lì Ven Compact', '1702083625 JoggerTeeWhite.jpg', 'aothun'),
(37, 'LEVENTS® JOGGER TEE/ BLUE', 390000, 10, 'Levents® Jogger Tee\r\nChất liệu: Lì Ven Compact', '1702083589 JoggerTeeBlue.jpg', 'aothun'),
(38, 'Levents® Bichontour Tee/ White', 390000, 10, 'Levents® Bichontour Tee\r\nChất liệu: Lì Ven Compact', '1702000731 BichontourTeeWhite.jpg', 'aothun'),
(39, 'Levents® Bichontour Tee/ Brown', 390000, 10, 'Levents® Bichontour Tee\r\nChất liệu: Lì Ven Compact', '1702000741 BichontourTeeBrown.jpg', 'aothun'),
(40, 'LEVENTS® | POPPOP CHAT TEE/ BLACK', 415000, 10, 'LEVENTS® | POPPOP CHAT TEE\r\nChất liệu: LÌ VEN FABRIC (Điểm nhấn – Decal Dạ quang)\r\nSản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS® | POPPOP “Make Poppop Famous” – Dự án kết hợp 2022', '1702000914 PoppopChatTeeBlack.jpg', 'aothun'),
(41, 'LEVENTS® | POPPOP CHAT TEE/ WHITE', 415000, 10, 'LEVENTS® | POPPOP CHAT TEE\r\nChất liệu: LÌ VEN FABRIC (Điểm nhấn – Decal Dạ quang)\r\nSản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS® | POPPOP “Make Poppop Famous” – Dự án kết hợp 2022', '1702000900 PoppopChatTeeWhite.jpg', 'aothun'),
(42, 'LEVENTS® | POPPOP FRIENDS TEE/ GREY', 375000, 10, 'LEVENTS® | POPPOP FRIENDS TEE\r\nChất liệu: LÌ VEN ORIGINAL 2.0 – In nổi\r\nSản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS® | POPPOP “Make Poppop Famous” – Dự án kết hợp 2022', '1702001142 PoppopFriendsTeeGrey.jpg', 'aothun'),
(43, 'LEVENTS® | POPPOP FRIENDS TEE/ BEIGE', 375000, 10, 'LEVENTS® | POPPOP FRIENDS TEE\r\nChất liệu: LÌ VEN ORIGINAL 2.0 – In nổi\r\nSản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS® | POPPOP “Make Poppop Famous” – Dự án kết hợp 2022', '1702001158 PoppopFriendsTeeBeige.jpg', 'aothun'),
(49, 'Levents® Classic ShortPants/ Cream', 390000, 10, 'Đây là sản phẩm thuộc dòng sản phẩm mới chưa từng có từ trước đến nay – LEVENTS® CLASSIC.\r\nLEVENTS® CLASSIC với mục tiêu trở thành dòng sản phẩm “EVERY WEAR” là sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại và form dáng cổ điển, tập trung về chất li', '1702001638 ClassicShortPantsCream.jpg', 'quanshort'),
(50, 'Levents® Classic ShortPants/ Black', 390000, 10, 'Đây là sản phẩm thuộc dòng sản phẩm mới chưa từng có từ trước đến nay – LEVENTS® CLASSIC.\r\nLEVENTS® CLASSIC với mục tiêu trở thành dòng sản phẩm “EVERY WEAR” là sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại và form dáng cổ điển, tập trung về chất li', '1702001653 ClassicShortPantsBlack.jpg', 'quanshort'),
(51, 'LEVENTS® BASIC TROUSERS/ BLACK', 490000, 10, 'LEVENTS® BASIC TROUSERS\r\nChất liệu: Cotton', '1702001722 BasicTrousersBlack.jpg', 'quanjean'),
(55, 'Levents® Classic Wash Straight Jeans/ Blue', 610000, 10, 'Quần Straight Jeans (hay còn gọi là quần jeans ống suông) được xem là kiểu quần cơ bản nhất. Dáng quần Straight có độ rộng trung bình và xấp xỉ nhau ở phần mông, đùi, ống quần tạo thành đường thẳng đứng suông từ trên xuống dưới.', '1702002106 ClassicWashStraightJeansBlue.jpg', 'quanjean'),
(56, 'LEVENTS® CRAYON JEANS/ BLUE', 590000, 10, 'LEVENTS® CRAYON JEANS Chất liệu: Jeans Sản phẩm quần Jeans thuộc Bộ sưu tập Thu/ Đông 2022 của Levents', '1702002164 CrayonJeansBlue.jpg', 'quanjean'),
(57, 'LEVENTS® CRAYON JEANS/ BLACK', 590000, 20, 'LEVENTS® CRAYON JEANS Chất liệu: Jeans Sản phẩm quần Jeans thuộc Bộ sưu tập Thu/ Đông 2022 của Levents', '1704674781 CrayonJeansBlack.jpg', 'quanjean'),
(58, 'Levents® Classic Wash Straight Jeans/ Black', 610000, 10, 'Quần Straight Jeans (hay còn gọi là quần jeans ống suông) được xem là kiểu quần cơ bản nhất. Dáng quần Straight có độ rộng trung bình và xấp xỉ nhau ở phần mông, đùi, ống quần tạo thành đường thẳng đứng suông từ trên xuống dưới.', '1702002082 ClassicWashStraightJeansBlack.jpg', 'quanjean'),
(96, 'Levents® Classic SweatPants/ Blue', 450000, 7, 'Quần thể thao SweatPants độ dài phù hợp, rộng rãi cùng dáng suông thẳng vừa, form rộng rãi thoải mái. Phù hợp cho hoạt động hằng ngày như đi tập thể thao, đi dạo, đi chơi', '1704697880 MT_09316532-71b1-4e97-8362-8316d7b6c9da_533x.webp', 'quanthun'),
(97, 'Levents® Classic SweatPants/ Grey', 450000, 12, 'Quần thể thao SweatPants độ dài phù hợp, rộng rãi cùng dáng suông thẳng vừa, form rộng rãi thoải mái. Phù hợp cho hoạt động hằng ngày như đi tập thể thao, đi dạo, đi chơi', '1704698270 MT_d4cd83bf-fb68-4b01-b0c5-8532afed7857_533x.webp', 'quanthun'),
(98, 'Levents® Classic SweatPants/ Red Coral', 450000, 10, 'Quần thể thao SweatPants độ dài phù hợp, rộng rãi cùng dáng suông thẳng vừa, form rộng rãi thoải mái. Phù hợp cho hoạt động hằng ngày như đi tập thể thao, đi dạo, đi chơi', '1704698278 MT_a3f5a23b-2d08-4672-8996-ec4ed83796ef_533x.webp', 'quanthun'),
(99, 'Levents® Classic Track Pants/ Black', 470000, 10, 'Track pants với độ dài phù hợp, rộng rãi tạo cảm giác thon gọn khi mặc. Dễ dàng sử dụng từ phòng gym đến những chuyến du lịch dài ngày.', '1704698330 BasicTrousersBlack.jpg', 'quanthun'),
(100, 'Levents® Classic Line Track Pants/ Black', 470000, 10, 'Track pants với độ dài phù hợp, rộng rãi tạo cảm giác thon gọn khi mặc. Dễ dàng sử dụng từ phòng gym đến những chuyến du lịch dài ngày.', '1704698310 TROUSERPANT_533x.webp', 'quanthun'),
(101, 'Levents® Play Logo Shortpant/ Green', 390000, 10, 'Form shortpants với độ dài trên đầu gối, độ rộng vừa phải, thoải mái vận động cả ngày dài. Dễ phối với mọi outfits, cho những buổi cafe với bạn bè hay thể dục hằng ngày', '1704868359 PlayLogoShortpantGreen.jpg', 'quanshort');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taikhoan`
--

CREATE TABLE `tbl_taikhoan` (
  `id_tk` int(10) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `mk` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taikhoan`
--

INSERT INTO `tbl_taikhoan` (`id_tk`, `sdt`, `mk`, `role`) VALUES
(33, '0344363127', '12345678', 'admin'),
(51, '0772522284', '12345678', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_diachi`
--
ALTER TABLE `tbl_diachi`
  ADD PRIMARY KEY (`id_dc`),
  ADD KEY `id_kh` (`id_kh`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`id_dh`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_gh`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_diachi`
--
ALTER TABLE `tbl_diachi`
  MODIFY `id_dc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `id_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_gh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `id_kh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  MODIFY `id_tk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_diachi`
--
ALTER TABLE `tbl_diachi`
  ADD CONSTRAINT `tbl_diachi_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `tbl_khachhang` (`id_kh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
