-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 09:26 AM
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
-- Database: `doanphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `image_album` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id_attri` int(11) NOT NULL,
  `color` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `number_atri` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id_banner` int(11) NOT NULL,
  `image_banner` varchar(256) NOT NULL,
  `title_banner` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  `look_banner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id_banner`, `image_banner`, `title_banner`, `id_product`, `look_banner`) VALUES
(6, 'banner.png', 'Siêu sale noel', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(256) NOT NULL,
  `parent_cate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id_cate`, `name_cate`, `parent_cate`) VALUES
(1, 'Áo', 1),
(2, 'Quần', 0),
(3, 'Giày', 0),
(10, 'Bộ', 1),
(11, 'Phụ kiện', 1),
(12, 'Váy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_cm` int(11) NOT NULL,
  `content_cm` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `parent_cm` int(11) NOT NULL DEFAULT 0,
  `hiden_cm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_cm`, `content_cm`, `product_id`, `user_id`, `date`, `parent_cm`, `hiden_cm`) VALUES
(66, 'xinh quá', 54, 43, '2023-12-05 11:41:36', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_histrory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_histrory`, `id_user`, `id_order`) VALUES
(20, 5, 56);

-- --------------------------------------------------------

--
-- Table structure for table `img_main`
--

CREATE TABLE `img_main` (
  `id` int(11) NOT NULL,
  `image_main` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img_main`
--

INSERT INTO `img_main` (`id`, `image_main`) VALUES
(1, 'main1.jpeg'),
(4, 'main2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `email_info` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `adress_info` varchar(256) NOT NULL,
  `phone_info` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `email_info`, `logo`, `adress_info`, `phone_info`) VALUES
(1, 'kiukukne21@gmail.com', 'logo.png', '79 Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội.', '0372163626');

-- --------------------------------------------------------

--
-- Table structure for table `loves`
--

CREATE TABLE `loves` (
  `id_love` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `phone_order` int(11) NOT NULL,
  `email_order` varchar(256) NOT NULL,
  `adress_order` varchar(256) NOT NULL,
  `name_order` varchar(256) NOT NULL,
  `content_order` text NOT NULL,
  `date_order` datetime NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `total_order`, `phone_order`, `email_order`, `adress_order`, `name_order`, `content_order`, `date_order`, `action`) VALUES
(56, 598500, 233444556, 'hoai@gmail.com', 'mai dịch', 'Nguyễn Thu Hoài', 'size bé nhất nha', '2023-12-05 11:20:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_detail` int(11) NOT NULL,
  `quantity_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_detail`, `quantity_detail`, `order_id`, `product_id`) VALUES
(82, 2, 56, 53),
(83, 1, 56, 54);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `title_pro` varchar(256) NOT NULL,
  `content_pro` text NOT NULL,
  `thongtin` varchar(256) NOT NULL,
  `image_pro` varchar(256) NOT NULL,
  `quantity_pro` int(11) NOT NULL,
  `price_pro` int(11) NOT NULL,
  `sale_pro` int(11) NOT NULL,
  `date_pro` datetime NOT NULL,
  `special_pro` int(11) NOT NULL DEFAULT 0,
  `view_pro` int(11) NOT NULL,
  `hiden_pro` int(11) NOT NULL DEFAULT 0,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_pro`, `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`, `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `view_pro`, `hiden_pro`, `cate_id`) VALUES
(4, 'Giày Thể Thao Bé Trai Biti\'s Hunter Junior x THE BATMAN - MID-KNIGHT BLACK COLLECTION - Fan edition|Giày BATMAN', '<ul>\r\n<li>Màu sắc: Đen</li>\r\n<li>Chào đón tượng đài siêu phẩm The Batman 2022 tới Việt Nam, Biti’s Hunter ra mắt BST 04 phiên bản giày: The Batman Collection vinh danh nhân vật anh hùng nổi tiếng nhất thế giới truyện tranh và phim ảnh.</li>\r\n<li>-Thiết kế dễ mang & dễ phối đồ </li>\r\n<li>- Thiết kế lấy cảm hứng từ Batmobile – các đường nét cut out mạnh mẽ, tấm chắn thép & chi tiết đinh tán; với điểm nhấn chi tiết trang trí hậu là ‘trang bị’ súng ống đặc trưng của Batmobile</li>\r\n<li>- Mũ quai lưỡi gà rời với Bát cài tiện dụng</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'giay1.jpeg', 300, 950000, 10, '2023-12-02 00:00:00', 0, 46, 0, 3),
(47, 'Áo Bae| Áo Len Hàn Quốc', '<p>Một chiếc áo len chuẩn gu Hàn nhà Uttetkids. Áo rất mềm và rất đẹp 2 tông màu này thi cực kỳ dễ phối đồ. Mùa thu đông chuẩn bị tới để tránh hết size các mẹ đặt liền ạ. Áo len thì cực kỳ dễ mixed đồ. Có thể làm thành 1 chiếc áo khoác bên ngoài cũng đủ xinh xỉu luôn ạ Áo này form chuẩn size nên các mẹ lưu ý đặt đúng chiều cao cân nặng giúp shop với ạ. Áo form chuẩn size nên các mẹ đặt ghi size bé với ạ. Đừng trừ hao kẻo bị rộng ^^</p><p>- Màu sắc &amp; sản phẩm có thể khác biệt 5%</p><p>8 (14-19kg) dài áo 47cm, ngang 40cm</p><p>10 (18-24kg) dài áo 52cm, ngang 43cm</p><p>12 (23-30kg) dài áo 55cm, ngang 46cm</p><p>14 (29-37kg) dài áo 56cm, ngang 50cm</p><p>16 (36-43kg) dài áo 62cm, ngang 52cm</p><p>Sai số 1-2cm</p>', 'Size cho bé 80-120:  Size 80: 8-12kg (tầm 1-2 tuổi)     > Cao 75-84cm  Size 90: 12-14kg ( tầm 2-3 tuổi    > Cao 85-94cm  Size 100: 14-17kg (tầm 3-4 tuổi)  >Cao 95-104cm  Size 110: 17-20kg (tầm 4-5 tuổi)  >Cao 105-114 cm  Size 120: 20-25kg (tầm 5-6 tuổi)   ', 'ao5.jpg', 100, 300000, 5, '2023-12-04 15:14:25', 0, 0, 0, 1),
(48, 'iKICHI| Đầm Công Chúa Lưới Tay Dài ', '<p>Váy bé gái với thiết kế xinh xắn dễ thương cùng chất liệu mềm mịn cho bé iu tha hồ diện đi học hay đi chơi đều xinh&nbsp;</p><p>Full:10-38kg cao từ 80-1m40cm</p>', 'Size 80: 8-12kg (tầm 1-2 tuổi)     > Cao 75-84cm  Size 90: 12-14kg ( tầm 2-3 tuổi    > Cao 85-94cm  Size 100: 14-17kg (tầm 3-4 tuổi)  >Cao 95-104cm  Size 110: 17-20kg (tầm 4-5 tuổi)  >Cao 105-114 cm  Size 120: 20-25kg (tầm 5-6 tuổi)   >Cao 115-125cm', 'vay1.jpg', 1000, 450000, 5, '2023-12-04 15:20:27', 0, 1, 0, 1),
(49, 'DISTINCT HADY| Áo khoác bomber bé trai bé gái 0376 size đại dù 2 lớp cho bé unisex basic cá tính form 14 43kg FIVEBE', '<p>Form áo khoác thích hợp cho cả bé TRAI và bé GÁI.</p><p>Sản Xuất tại Việt Nam</p><p>Chất liệu dù 2 lớp mềm nhẹ, thoải mái cho bé vận động</p><p>Có 2 túi 2 bên hông tiện lợi.</p><p>- Màu sắc &amp; sản phẩm có thể khác biệt 5%</p><p>8 (14-19kg) dài áo 47cm, ngang 40cm</p><p>10 (18-24kg) dài áo 52cm, ngang 43cm</p><p>12 (23-30kg) dài áo 55cm, ngang 46cm</p><p>14 (29-37kg) dài áo 56cm, ngang 50cm</p><p>16 (36-43kg) dài áo 62cm, ngang 52cm</p><p>Sai số 1-2cm</p>', 'Màu sắc & sản phẩm có thể khác biệt 5%  8 (14-19kg) dài áo 47cm, ngang 40cm  10 (18-24kg) dài áo 52cm, ngang 43cm  12 (23-30kg) dài áo 55cm, ngang 46cm  14 (29-37kg) dài áo 56cm, ngang 50cm  16 (36-43kg) dài áo 62cm, ngang 52cm  Sai số 1-2cm', 'ao6.jpg', 1000, 400000, 3, '2023-12-04 19:38:10', 0, 1, 0, 1),
(50, 'FIVEBE| Bộ đồ ngủ pijama cho bé gái size đại 0317 form 14 đến 40kg in hình mèo dễ thương', '<p>????Thông tin sản phẩm</p><p>pizama cho bé đồ ngủ cho bé gái size đại form 14 đến 40kg in hình mèo dễ thương HD247 0317</p><p>+Kate lụa vải không bóng (ko gây kích ứng da cho bé)</p><p>+ Vải mát thoải mái cho bé vận động</p><p>???? Bảng SIZE: đồ bộ pijama cho bé trai và bé gái vải kate lụa xinh xắn thiết kế đáng yêu và cá tính</p><p>Size 8 từ 14kg đến 18kg áo dài 42 rộng 36 quần dài 60</p><p>Size 10 từ 19kg đến 24kg áo dài 44 rộng 37 quần dài 63</p><p>Size 12 từ 25kg đến 29kg áo dài 47 rộng 40 quần dài 70</p><p>Size 14 từ 30kg đến 35kg áo dài 49 rộng 42 quần dài 75</p><p>&nbsp;Size 16 từ 36kg đến 40kg áo &nbsp;dài 51 rộng 44 quần dài 80</p><p>đơn vị cm&nbsp;</p><p>sai số 1-2cm</p><p>???? Đối với bé nào trộm vía bụ bẫm các Mom hãy chọn size nhỉnh hơn một chút so với size thật của bé để bé được mặc thoải mái nhất ạ ????.</p>', 'ib để lựa size nha các mom', 'Bộ', 1000, 200000, 10, '2023-12-05 10:33:01', 0, 0, 0, 10),
(51, 'FIVEBE| Đồ bộ pijama bé gái bé trai mặc ngủ mặc nhà vải kate lụa xinh xắn thiết kế đáng yêu và cá tính 0193 ', '<p>????Thông tin sản phẩm</p><p>đồ bộ pijama bé gái bé trai mặc ngủ mặc nhà vải kate lụa xinh xắn thiết kế đáng yêu và cá tính 0193</p><p>Chất liệu:</p><p>+Kate lụa vải không bóng (ko gây kích ứng da cho bé)</p><p>+ Vải mát thoải mái cho bé vận động</p><p>???? Bảng SIZE: đồ bộ pijama cho bé trai và bé gái vải kate lụa xinh xắn thiết kế đáng yêu và cá tính</p><p>Size 8 từ 14kg đến 18kg áo dài 42 rộng 36 quần dài 60</p><p>Size 10 từ 19kg đến 24kg áo dài 44 rộng 37 quần dài 63</p><p>Size 12 từ 25kg đến 29kg áo dài 47 rộng 40 quần dài 70</p><p>Size 14 từ 30kg đến 35kg áo dài 49 rộng 42 quần dài 75</p><p>&nbsp;Size 16 từ 36kg đến 40kg áo &nbsp;dài 51 rộng 44 quần dài 80</p><p>đơn vị cm&nbsp;</p><p>sai số 1-2cm</p>', 'ib để tư vấn và lấy size nha các mom', 'bo2.jpg', 500, 200000, 10, '2023-12-05 10:35:19', 0, 1, 0, 10),
(52, 'G Igirls| Đầm Công Chúa Xanh Lá Mùa Hè Cao Cấp Cho Bé Gái', '<p>* Kích thước Trọng lượng Chiều dài Ngực Quần dài</p><p>&nbsp;100 20-26kg 40,5cm 34cm 56cm</p><p>&nbsp;110 27-34kg 44,0cm 36cm 62cm</p><p>&nbsp;120 35-40kg 47,5cm 38cm 68cm</p><p>&nbsp;130 41-50kg 51,0cm 40cm 74cm</p><p>&nbsp;140 51-60kg 55,0cm 42cm 80cm</p><p>&nbsp;150 61-80kg 59,0cm 44cm 86cm</p><p>&nbsp;160 81-100kg 62,0cm 48cm 93cm</p><p>&nbsp;170 101-120kg 66,0cm 52cm 96cm</p><p>* Lưu ý: Kích thước được đo bằng tay sẽ có sai số đối tượng thực tế sẽ được ưu tiên.</p>', 'ib để tư vấn và lấy size nha các mom', 'vay2.jpg', 300, 300000, 5, '2023-12-05 10:40:33', 1, 0, 0, 12),
(53, 'LYLY| Đầm Công Chúa elsa Mỏng Nhiều Màu Sắc Thời Trang Mùa Hè Mới Dành Cho Bé Gái', '<p>Kích thước Trọng lượng Chiều dài Ngực Quần dài&nbsp;</p><p>100 20-26kg 40,5cm 34cm 56cm</p><p>110 27-34kg 44,0cm 36cm 62cm&nbsp;</p><p>120 35-40kg 47,5cm 38cm 68cm&nbsp;</p><p>130 41-50kg 51,0cm 40cm 74cm</p><p>&nbsp;140 51-60kg 55,0cm 42cm 80cm&nbsp;</p><p>150 61-80kg 59,0cm 44cm 86cm&nbsp;</p><p>160 81-100kg 62,0cm 48cm 93cm&nbsp;</p><p>170 101-120kg 66,0cm 52cm 96cm&nbsp;</p><p>* Lưu ý: Kích thước được đo bằng tay sẽ có sai số đối tượng thực tế sẽ được ưu tiên.&nbsp;</p><p>Thương hiệu: nhà gỗ gỗ Vải&nbsp;</p><p>Chất liệu: Lưới&nbsp;</p><p>Mô hình: Hoạt hình hoạt hình&nbsp;</p><p>Số mảnh: một mảnh&nbsp;</p><p>Chiều dài tay áo: tay áo ngắn&nbsp;</p><p>Loại cổ áo: Cổ tròn Loại váy: váy công chúa&nbsp;</p><p>Chiều dài váy: Váy giữa&nbsp;</p><p>Nhóm tuổi áp dụng: 3 tuổi (bao gồm) - 6 tuổi (độc quyền) 6 tuổi (bao gồm) - 8 tuổi (độc quyền) 8 tuổi (bao gồm) - 14 tuổi (độc quyền)&nbsp;</p><p>Phong cách: phong cách công chúa</p>', 'ib để tư vấn và lấy size nha các mom', 'VAY3.jpg', 97, 220000, 5, '2023-12-05 10:58:28', 0, 3, 0, 12),
(54, 'CICI| Áo Khoác Len Công Chúa Mùa Thu Và Mùa Đông Thêu Hoa Cổ Lá Sen Đa Năng Cho Bé Gái', '<p>Kích thước Trọng lượng Chiều dài Ngực Quần dài&nbsp;</p><p>100 20-26kg 40,5cm 34cm 56cm&nbsp;</p><p>110 27-34kg 44,0cm 36cm 62cm</p><p>120 35-40kg 47,5cm 38cm 68cm&nbsp;</p><p>130 41-50kg 51,0cm 40cm 74cm&nbsp;</p><p>140 51-60kg 55,0cm 42cm 80cm</p><p>&nbsp;150 61-80kg 59,0cm 44cm 86cm</p><p>&nbsp;160 81-100kg 62,0cm 48cm 93cm&nbsp;</p><p>170 101-120kg 66,0cm 52cm 96cm&nbsp;</p><p>Lưu ý: Kích thước được đo bằng tay sẽ có sai số đối tượng thực tế sẽ được ưu tiên. Màu be [Mẫu hoa ngôi sao cô gái KF376]</p>', 'ib để tư vấn và lấy size nha các mom', 'AO7.jpg', 48, 190000, 5, '2023-12-05 11:00:55', 0, 3, 0, 1),
(55, 'CICI| Set Áo Len Dài Tay + Quần Dài Phong Cách Hàn Quốc Thời Trang Mùa Thu Mới Cho Bé Gái', '<p>Kích thước Trọng lượng Chiều dài Ngực Quần dài&nbsp;</p><p>100 20-26kg 40,5cm 34cm 56cm&nbsp;</p><p>110 27-34kg 44,0cm 36cm 62cm&nbsp;</p><p>120 35-40kg 47,5cm 38cm 68cm&nbsp;</p><p>130 41-50kg 51,0cm 40cm 74cm</p><p>140 51-60kg 55,0cm 42cm 80cm&nbsp;</p><p>150 61-80kg 59,0cm 44cm 86cm&nbsp;</p><p>160 81-100kg 62,0cm 48cm 93cm&nbsp;</p><p>170 101-120kg 66,0cm 52cm 96cm&nbsp;</p><p>Lưu ý: Kích thước được đo bằng tay sẽ có sai số đối tượng thực tế sẽ được ưu tiên.</p><p>&nbsp;Bộ đồ (bộ hai mảnh) Áo len xanh Quần màu be</p>', 'ib để tư vấn và lấy size nha các mom', 'bo4.jpg', 50, 400000, 10, '2023-12-05 11:03:02', 1, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `role` int(11) NOT NULL,
  `look` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `email`, `phone`, `name`, `adress`, `pass`, `avatar`, `role`, `look`) VALUES
(2, 'vuthikieucuc21@gmail.com', 398076287, 'Vũ Thị Kiều Cúc', 'Mai Dịch, Cầu Giấy, Hà Nội', '1234', 'anhdaidien2.jpg', 1, 0),
(4, 'nhung@gmail.com', 355222666, 'Vũ Phương Nhung', 'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '123', 'anhdaidien4.jpg', 0, 0),
(5, 'hoai@gmail.com', 233444556, 'Nguyễn Thu Hoài', 'mai dịch', '123', 'anhdaidien4.jpg', 0, 0),
(43, 'thuhuyen@gmail.com', 828112610, 'Nguyễn Thu Huyền', 'Hà Nội', '1234', 'anhdaidien4.jpg', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_histrory`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `histrorys_ibfk_2` (`id_user`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `loves`
--
ALTER TABLE `loves`
  ADD PRIMARY KEY (`id_love`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_histrory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loves`
--
ALTER TABLE `loves`
  MODIFY `id_love` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loves`
--
ALTER TABLE `loves`
  ADD CONSTRAINT `loves_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id_cate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
