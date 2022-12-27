-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 08:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBinhLuan` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `NgayBinhLuan` date NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaBinhLuan`, `TenDangNhap`, `MaSanPham`, `NgayBinhLuan`, `NoiDung`) VALUES
(1, 'hieu', 37, '2022-03-01', 'Sản phẩm dùng tạm được'),
(2, 'hieu', 45, '2022-04-01', 'Sản phẩm dùng tốt\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondat`
--

CREATE TABLE `ct_dondat` (
  `MaDonDat` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ct_dondat`
--

INSERT INTO `ct_dondat` (`MaDonDat`, `MaSanPham`, `SoLuong`) VALUES
(2, 41, 1),
(2, 47, 1),
(2, 53, 1),
(3, 38, 1),
(3, 46, 1),
(3, 54, 1),
(4, 35, 1),
(4, 44, 1),
(4, 55, 1),
(5, 39, 1),
(5, 46, 1),
(5, 54, 1),
(6, 37, 1),
(6, 45, 1),
(6, 52, 1),
(7, 47, 1),
(8, 35, 1),
(8, 36, 1),
(9, 34, 1),
(11, 36, 1),
(12, 36, 1),
(13, 36, 1),
(14, 39, 1),
(15, 35, 1),
(16, 47, 1),
(17, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSanPham` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`MaSanPham`, `TenDangNhap`, `NoiDung`) VALUES
(40, 'tho', '4'),
(41, 'tho', '3'),
(48, 'tho', '5');

-- --------------------------------------------------------

--
-- Table structure for table `dondat`
--

CREATE TABLE `dondat` (
  `MaDonDat` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TrangThai` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiGiao` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondat`
--

INSERT INTO `dondat` (`MaDonDat`, `TenDangNhap`, `MaNhanVien`, `TrangThai`, `NoiGiao`, `NgayDat`) VALUES
(2, 'duc', 1, '0', 'Hà Đông, Hà Nội', '2022-02-16'),
(3, 'hoan', 1, '0', 'Hà Đông, Hà Nội', '2021-10-14'),
(4, 'khoa', 1, '0', 'Hà Đông, Hà Nội', '2019-05-17'),
(5, 'tuan', 1, '0', 'Hà Đông, Hà Nội', '2022-01-10'),
(6, 'hieu', 3, '1', 'Hà Đông, Hà Nội', '2022-05-01'),
(7, 'hieu', 1, '0', 'HN', '2022-03-03'),
(8, 'dautuan', 1, '0', 'HN', '2022-05-07'),
(9, 'tho', 1, '0', 'đà nẵng', '2022-05-08'),
(11, 'ly', 1, '0', 'quảng nam', '2022-05-08'),
(12, 'tho', 1, '0', 'đà nẵng', '2022-05-08'),
(13, 'tho', 1, '0', 'đà nẵng', '2022-05-08'),
(14, 'tho', 1, '0', 'àasfas', '2022-05-08'),
(15, 'tho', 1, '0', 'đà nẵng', '2022-05-19'),
(16, 'tho', 1, '0', 'đà nẵng', '2022-05-20'),
(17, 'khoa', 1, '0', 'HN', '2022-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLoaiSP` int(11) NOT NULL,
  `TenLoai` text COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`MaLoaiSP`, `TenLoai`, `MoTa`) VALUES
(1, 'Thời Trang Nam', 'Thời Trang Nam'),
(2, 'Thời Trang Nữ', 'Thời Trang Nữ');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HoTen` text COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` text COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` text COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoTen`, `TenDangNhap`, `MatKhau`, `NgaySinh`, `GioiTinh`, `DienThoai`) VALUES
(1, 'Nguyễn Tấn Thọ', 'admin', '123456', '2000-03-15', 'M', '0123456789'),
(2, 'Huỳnh Thị Kim Ly', 'admin1', '123456', '2000-03-09', 'M', '0911234567'),
(3, 'Trần Văn A', 'duccop', '123456', '1998-06-18', 'M', '0911234567'),
(4, 'tho', 'tho', '123456', '2022-05-04', 'M', '0235836478'),
(5, 'ly', 'ly', '123456', '2022-05-20', 'F', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` text COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Anh` text COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThongTin` text COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` text COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiSP` int(11) NOT NULL,
  `Anh2` text COLLATE utf8_unicode_ci NOT NULL,
  `Anh3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `SoLuong`, `Anh`, `DonGia`, `ThongTin`, `TrangThai`, `MaLoaiSP`, `Anh2`, `Anh3`) VALUES
(34, 'Áo giữ nhiệt nam dài tay có cổ cao và cổ tròn co dãn 4 chiều, sang trọng.', 50, 'download (2).jpg', '160000', 'Áo thun nam dài tay, áo giữ nhiệt nam co dãn 4 chiều\r\nThông tin sản phẩm:Áo thun nam dài tay, áo giữ nhiệt nam co dãn 4 chiều\r\n•	Chất liệu : Áo chất thun cao cấp, co dãn 4 chiều.Rất thích hợp với thời tiết thu đông.Kiểu dáng thể thao khỏe khoắn năng động,phù hợp với mọi lứa tuổi. Riêng shop em luôn làm chất thun co dãn 4 chiều ạ, một số shop có thể rẻ hơn shop em vài nghìn nhưng toàn làm thun 2 chiều khô và không co dãn thôi ạ. \r\n\r\n•	Thiết kế : 4  size \r\nSize M : Từ 40 – 55 Kg\r\nSize L  : Từ 55 – 65 Kg\r\nSize XL: Từ 65– 75kg\r\nSize XXL:Từ 75-88kg', 'Mới', 1, 'download (2).jpg', 'download (2).jpg'),
(35, 'Áo sơ mi nam trơn vải kate lụa mịn LADOS - 2523 chất vải thấm hút tốt', 50, 'download (5).jpg', '160000', 'Chất liệu: vải kate lụa mịn mềm, thấm hút mồ hôi tốt.\r\nÍt nhăn, ít nhàu, vải đứng form\r\nChất vải đẹp, không xù lông, không phai màu\r\nĐường may cực tỉ mỉ cực đẹp\r\nCó thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc\r\nKiểu dáng: Thiết kế theo form ôm body trẻ trung lịch lãm', 'Mới', 1, 'download (5).jpg', 'download (5).jpg'),
(36, 'Áo thun nam Cotton Compact phiên bản Premium chống nhăn Coolmate', 50, 'download (16).jpg', '200000', 'Vẫn là Cotton, nhưng đây là Cotton Compact - với độ bền và mượt hơn gấp 2 lần cotton thường. Chỉ cần chạm vào là bạn sẽ cảm nhận ngay sự khác biệt: Mềm - Mát rõ rệt. Premium Tshirt Coolmate chống nhăn màu XANH LAM chính là chiếc áo thun dành cho bạn, một phiên bản áo thun hoàn toàn mới và đầy sự cải tiến được Coolmate team nghiên cứu kỹ lưỡng và ngày càng cải tiến hơn với chất liệu Cotton Compact chất lượng cao.', 'Mới', 1, 'download (16).jpg', 'download (16).jpg'),
(37, 'Áo sơ mi nam dài tay áo kiểu công sở hàn quốc đẹp, thanh lịch phù hợp mọi set đồ', 50, 'download (15).jpg', '280000', 'Áo sơ mi nam là mẫu thời trang không thể thiếu trong tủ quần áo của đấng mày râu. Những chiếc áo sơ mi luôn toát lên phong cách lịch sự, trang trọng rất phù hợp với quý ông làm việc ở văn phòng, công sở.\r\n Đặc biệt áo sơ mi còn xuất hiện trong những sự kiện sang trọng như là gặp đối tác, khách hàng.. Chính vì thế, mỗi bạn nam đều phải có ít nhất 2 chiếc áo sơ mi để biến hóa phong cách cho phù hợp. Với Hangcongty, bạn sẽ chọn được mẫu áo sơ mi nam đẹp, ưng ý với mẫu mã được cập nhật thường xuyên.\r\n1.	TÊN SẢN PHẨM:  Áo sơ mi Hàn, sơ mi hàn quốc\r\n	- Xuất xứ sản phẩm: Việt Nam\r\n	- Thương Hiệu: F8888\r\n        - Mã Sản Phẩm: SM001\r\n	- Màu sắc : Đen, Tím than, Xanh da trời, Xanh cô ban, Xanh rêu, Xanh nhạt, Tím hồng, Tím nhạt, sơ mi kẻ, Xanh ngọc.v.v trong đó áo sơ mi trắng nam là sản phẩm được ưa chuộng nhiều nhất.\r\n	Chất liệu: 100% chất cotton lụa, thấm hút mồ hôi, chất vải sờ mịn không bai, không nhăn, không xù ', 'Mới', 1, 'download (17).jpg', 'download (17).jpg'),
(38, 'Set vest ngắn 3 món đầy cá tính, dễ thương phù hợp với các nàng', 50, 'download (19).jpg', '280000', 'Set vest ngắn 3 món đầy cá tính nhưng không kém phần xinh xắn, dễ thương phù hợp với các nàng công sở & dự tiệc\r\n- CAM KẾT ĐỔI, TRẢ HÀNG TRONG VÒNG 3 NGÀY NẾU HÀNG BỊ LỖI DO NHÀ SẢN XUẤT, HOẶC SAI MẪU.\r\n  ĐẶC ĐIỂM    \r\n☘️Chất liệu: COTTON LẠNH\r\n☘️Màu sắc:  Xanh, CAm Nâu, Hồng\r\n☘️ Free Size: Dưới 55kg mặc vừa.Set vest ngắn 3 món đầy cá tính nhưng không kém phần xinh xắn, dễ thương phù hợp với các nàng công sở & dự tiệc được may từ vải cotton lạnh nên rất mềm mại, co giãn và thấm hút mồ hôi tốt mang lại sự thoáng mát khi mặc, phù hợp với những bạn cần phải vận động thường xuyên. \r\n- Chất liệu vải dễ giặt sạch bằng tay hoặc máy, rất nhanh khô, giúp bạn tiết kiệm thời gian giặt giũ.    ', 'Mới', 2, 'download (19).jpg', 'download (19).jpg'),
(39, 'Set đồ nữ sang chảnh đẹp cá tính nguyên bộ áo sơ mi quần dài ống suông ', 50, 'download (24).jpg', '320000', 'Set đồ nữ sang chảnh đẹp cá tính nguyên bộ áo sơ mi quần dài ống suông xinh xắn TJ1116\r\n\r\nChất liệu:   Vải Hồng Ngọc\r\nKích thước: Size M, Size L, Size XL, Size XXL\r\nSize M: Eo 66-71cm\r\nSize L: Eo 72-76cm\r\nSize XL: Eo 77-80cm\r\nSét Đồ Nữ Sang Chảnh Dự Tiệc Đi Chơi ,Dạo Phố Thời Trang Dáng Xinh\r\nChất liệu cao cấp. Dễ dàng phối đồ. Phù hợp đi chơi, đi làm. Phong cách trẻ trung năng động\r\n\r\nKiểu Dáng :Form chuẩn phù hợp với vóc dáng phụ nữ Việt Nam \r\nSản Xuất : Sản xuất trực tiếp tại xưởng - hàng Việt Nam Xuất Khẩu ', 'Mới', 2, 'download (24).jpg', 'download (24).jpg'),
(40, 'Đồ bộ nữ đồ mặc nhà thun cotton co giãn thể thao, sét đồ bộ nữ quần lửng', 50, 'download (22).jpg', '320000', 'Kích thước size :đồ bộ nữ được đánh giá là chất lượng khi nó ôm vừa vai và lưng của người mặc. Thêm nữa, hai bên nách đồ bộ nữ phải thật thoải mái, khi tham gia mọi hoạt động đều không cảm thấy bị kích, chật.\r\nChiều cao đồ bộ nữ cho cân nặng dưới đây là từ 1m55, các chị chọn đúng size giúp shop nhé, form shop may rất chuẩn size, rộng là rộng như mẫu mặc, ôm là ôm đúng như mẫu mặc, không phải hàng xưởng tiết kiệm may form nhỏ nhé ạ, vì shop hay phải đổi cho các chị tự cộng thêm size nên shop xin lưu ý ở đây luôn ạ, nên các chị đừng cộng thêm size mặc sẽ rộng không đẹp, có đồ bộ nữ đồ mặc nhà bigsize đến 85kg\r\nSize M: 43-55Kg \r\nSize XL: 56- 59kg \r\nSize XXL: 60kg-65kg \r\nSize 3XL: 66-75kg \r\nSize 4XL: 76-80kg \r\nSize 5XL: 80-85kg', 'Mới', 2, 'download (22).jpg', 'download (22).jpg'),
(41, 'Set bộ cánh tiên Shynstores , bộ xốp phối cúc cao cấp vải mềm', 50, 'download (20).jpg', '400000', '\r\nThông tin sản phẩm \r\n\r\nkiểu dáng : set cánh tiên\r\nxuất xứ : hàng việt nam\r\nchất liệu  : vải đũi xốp\r\nmàu sắc :   trắng / be \r\nhoa tiết : trơn\r\nform : Freesize form ~ 40 - 60kg \r\nchiều dài : áo ~ 60cm  \r\nquần ~ 35cm\r\n\r\nchi tiết : set bộ cánh tiên phối cúc hàng cao cấp bán shop , vải mềm mịn mát siêu chất lượng\r\nmặc đi biển đi chơi đều rất ok\r\n\r\nLưu ý , do ánh sáng điện thoại or góc chụp và mắt nhìn của từng người mà ảnh và màu thật có thể lệch nhau 1 chút và k đáng kể ', 'Mới', 2, 'download (20).jpg', 'download (20).jpg'),
(42, 'Áo Polo nam cổ bẻ phối vải cá sấu Cotton xuất xịn , chuẩn form', 50, 'download (14).jpg', '97000', ' * Chi tiết sản phẩm Áo thun POLO nam UCO :\r\n\r\n    + Chât vải 95% Cotton và 5 % Spandex cho độ  dày dặn,co giãn tốt và quan trọng độ bền màu cao\r\n\r\n    + Giặt ko đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động\r\n\r\n    + Thiết kế cấu trúc lỗ thoáng, mắt vải to tạo sự thoáng mát cho người mặc  \r\n\r\n    + Đặc biệt sợi Cotton pha Spandex đc xử lí giúp chống tia UV và kháng khuẩn.', 'Mới', 1, 'download (14).jpg', 'download (14).jpg'),
(43, 'Sét bộ nỉ COSMOS tay bồng in chữ kèm quần ống bom đủ màu, Bộ nỉ mùa đông Nam Nữ', 50, 'download (23).jpg', '120000', 'Chất nỉ dày đẹp ,phom to thụng \r\nFree size:40-70kg Nam/Nữ mặc oke?\r\nBảng màu:đen,xám,be\r\n\r\n\"\"SẢN XUẤT TẠI: XƯỞNG MAY ĐỖ THỊ LIÊN STORE, \r\nĐỊA CHỈ: YÊN DỤC_HIỆP THUẬN_PHÚC THỌ_HÀ NỘI\r\nXUẤT XỨ TẠI : VIỆT NAM\"', 'Mới', 2, 'download (23).jpg', 'download (23).jpg'),
(44, 'Đồ bộ nữ cotton quần caro áo thiêu chữ thoáng mát, đẹp phù hợp cho mọi kiểu phối đồ ', 50, 'download (21).jpg', '120000', 'THÔNG TIN SẢN PHẨM\r\nĐồ bộ nữ, bộ mặc nhà Bồ Công Anh\r\n- Đồ bộ nữ, bộ mặc nhà chất liệu thun cotton co dãn, vải dày, vải mền, vải mịn, thoáng mát, không xù lông (không nhàu)\r\n- Mực in/Thiêu chữ không bông tróc, sắc nét, không phai màu, không gây hại cho da, tốt cho sức khỏe nhé\r\n- Đường may tỉ mỉ, chắc chắn\r\n- Công dụng: Đồ bộ mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao\r\n- Thiết kế hiện đại, trẻ trung, năng động.\r\n - Xuất xứ: Việt nam', 'Mới', 2, 'download (21).jpg', 'download (21).jpg'),
(45, 'Thắt lưng nam da bò cao cấp, Dây nịt phong cách hàn quốc khóa tự động Full option', 50, '6CHANEL-REVIEW-1-jumbo.jpg', '160000', '1.Thông tin xuất xứ hàng hoá\r\n- Cơ Sở Sản Xuất: Xưởng da Sơn Bá\r\n- Chủ cơ sở : Tống Văn Thuỷ\r\n- Địa chỉ : Thôn Bồng Sơn, Xã Hà Tiến, Huyện Hà Trung,Tỉnh Thanh Hoá\r\n\r\na) Thành phần :  Mặt khóa Kim loại, Dây da PU, Dây Da Bò Mill\r\n\r\nb) Thông số kỹ thuật; \r\n\r\n♥️ Dây lưng da PU : 2 màu Nâu / Đen\r\n- Dây da PU: dài 120 cm; rộng 3,3 cm; độ dày 0,3 cm. Dây lưng da Pu được sản xuất  quy mô công nghiệp dựa trên dây chuyền công nghệ máy móc hiện đại. Nên dây rất đẹp, mềm, dẻo dai, độ bền cao.\r\n\r\n♥️ Dây lưng da bò Mill: 2 màu Nâu / Đen\r\n- Da bò nguyên miếng : dài 120 cm; rộng 3,3 cm; độ dày 0,3. Được làm từ lớp da bò chọn lọc hoàn toàn thủ công bởi những người thợ lành nghề. Giữ lại được vẻ đẹp tự nhiên, độ bền theo năm tháng.\r\n\r\nMặt khóa thắt lưng: 2 màu Vàng / Bạc\r\n-  Mặt khóa :  dài 8,5 cm ; rộng 4 cm ; độ dày 1,5 - 2 cm. Mặt khóa kim loại đúc nguyên khối không gỉ.\r\n\r\nLẫy khóa nam châm kết hợp rãnh răng cưa trên dây da tạo nên bộ thắt lưng nam trượt tự động thông minh.\r\n\r\nc) Thông tin cảnh báo;\r\n- Không để thắt lưng trong môi trường ẩm thấp. Không để ngoài  trời nắng', 'Mới', 1, '6CHANEL-REVIEW-1-jumbo.jpg', '6CHANEL-REVIEW-1-jumbo.jpg'),
(46, 'Thắt Lưng Nam Pagini Thiết Kế Khóa Cài Tự Động Da Thật Cao Cấp ', 50, 'that lung 2.jpg', '240000', 'Thắt Lưng Nam Pagini DL09 Thiết Kế Khóa Cài Tự Động Da Thật Cao Cấp Kiểu Dáng Trẻ Trung Sang Trọng \r\nThắt lưng là phụ kiện đóng vai trò quan trọng đối với nam giới. Chọn được một chiếc thắt lưng đẹp và phù hợp với trang phục, phong cách bản thân sẽ khiến bạn trông nam tính và lịch lãm hơn rất nhiều. Không những thế thắt lưng còn giúp việc xử lý kiểu dáng, màu sắc và kích cỡ của trang phục.\r\nChất liệu dây: Da cao cấp, kiểu dây trơn\r\nGiới tính: Nam\r\nMàu dây: đen\r\nChất liệu khóa: Hợp kim tròn chạm hình thời trang\r\nKích thước mặt: ~ đường kính 5.2cm\r\nKích thước dây : ~110-120cm x 3.6cm\r\nKiểu khóa: Khóa tự động, tiện lợi và thời trang', 'Mới', 1, 'that lung 2.jpg', 'that lung 2.jpg'),
(47, 'Thắt lưng nam da bò nguyên tấm L110 màu đen khoá tự động nhiều mặt', 50, '1c486924-3429-408a-a361-0074d97da857.jpg', '890000', 'THÔNG SỐ SẢN PHẨM: \r\nTên sản phẩm: Thắt lưng nam da bò nguyên tấm L110 màu đen khoá tự động nhiều mặt lựa chọn Bụi leather bảo hành 12 tháng\r\n1.  Phần dây:\r\n+ Chất liệu: Da bò THẬT\r\n+ Cấu trúc dây: da bò 1 lớp (LỚP CẬT TRÊN CÙNG) tách từ nguyên tấm da bò\r\n*Xin quý khách lưu ý: Shop chỉ bán dây da thật, khi sử dụng ở điều kiện bình thường, tuổi thọ dây không dưới 5 năm. Shop cam kết về chất lượng của dây da.\r\n+ Kiểu dây: Dây tăng- sử dụng khóa tự động\r\n+ Màu sắc: MÀU ĐEN\r\n+ KT dây: 120 x 3,5 cm\r\n\r\n2.  Mặt khóa:\r\n+ Chất liệu: hợp kim cao cấp\r\n+ Kiểu khóa: Khóa tăng tự động, nhiều mặt lựa chọn\r\nLưu ý: Với dây lưng nam da bò L110 quý khách được tùy chọn nhiều mặt khóa. Để chọn dây xin mời VÀO SHOP – Chọn DANH MỤC DÂY LƯNG để chọn lựa thêm các mẫu dây khác\r\n- Trọng lượng: 400g\r\nCÔNG DỤNG, TÍNH NĂNG\r\n✔ Thắt lưng được thiết kế mang tính tối giản nhất thể hiện sự tinh tế, lịch lãm, sang trọng của phái nam. \r\n✔ Thắt lưng dễ dàng kết hợp cùng quần jeans, kaki, âu… \r\n✔ Kiểu dáng khóa tự động giúp bạn điều chỉnh và cố định chiều dài thắt lưng dễ dàng hơn\r\n✔ Thiết kế khéo léo nhiều sự lựa chọn, tinh xảo tạo nên vẻ đẹp tinh tế, phong cách cho người sử dụng.\r\n✔ Sản phẩm có đầy đủ hộp, đóng gói cẩn thận, phù hợp làm quà tặng, quà sinh nhật, ngày lễ, tết', 'Mới', 1, '1c486924-3429-408a-a361-0074d97da857.jpg', '1c486924-3429-408a-a361-0074d97da857.jpg'),
(48, 'Thắt lưng bản 1,8cm dây nịt nữ suzystore, da thật.', 50, '1aed45538b0c3b2cf3df98f37456d0df.jpg', '950000', 'THÔNG TIN SẢN PHẨM ĐAI VÁY THẮT LƯNG NỮ DÂY NỊT NỮ BẢN 1,8CM\r\n- Kích thước: 1.8cm x độ dài có thể điều chỉnh, kích thước dài thắt lưng khoảng 105-110cm ạ\r\n-Phong cách: trẻ trung, năng động, cá tính\r\n-Chất liệu: da Bò 100%, chất da mềm và dày dặn. Bền bỉ với thời gian sử dụng\r\nShop có hỗ trợ ĐỤC THÊM LỖ nếu cả nhà cần nhé hãy INBOX cho shop ạ\r\n\r\n- Màu sắc: Đen, nâu đen, cà phê, be\r\n- Kiểu dáng thắt lưng nữ hiện đại, sang trọng ', 'Mới', 2, '1aed45538b0c3b2cf3df98f37456d0df.jpg', '1aed45538b0c3b2cf3df98f37456d0df.jpg'),
(49, 'Đai Váy Thắt Lưng Nữ Da Bò Cao Cấp Sang Trọng NUTUSHOP - NT315', 50, '7de5a54e8525773c81529c4556e374d5.jpg', '240000', '* Thông tin sản phẩm\r\n- Chất liệu: Da bò thật 100%, mặt khóa thép không rỉ\r\n- Kích thước: 2.3cmx 100cm\r\n- Màu sắc: đen\r\n- Bảo hành 1 năm\r\n- Kiểu dáng hiện đại, sang trọng\r\n- Sản phẩm gia công tỉ mỉ từng đường may, dùng hay làm quà tặng rất đẹp\r\n- Bộ sản phẩm: Thắt lưng x hộp x thẻ bảo hành\r\n* Chi tiết sản phẩm\r\n- Đai váy Nutushop là loại đai váy được làm và xử lý công nghệ hiện đại từ da bò thật 100%.\r\n- Da bò được xử lý đúng theo quy trình nên sử dụng càng lâu thì thắt lưng sẽ càng mềm mại, dẻo dai, bền màu và tăng độ bóng mịn.\r\n- Bề mặt thắt lưng, bề mặt da không bị rạn nứt hoặc bị gãy theo thời gian.\r\n- Thoải mái điều chỉnh kích cỡ thắt lưng theo số đo vòng 2.\r\n- Kiểu dáng sang trọng, màu sắc tinh tế, lịch lãm để bạn thoải mái lựa chọn.\r\n- Sản phẩm được làm bằng chất liệu da bò cao cấp tạo kiểu dáng lạ mắt, sang trọng.\r\n- Sản phẩm dễ dàng phối với các loại váy, đầm, quần... Mang lại vẻ thanh lịch, hiện đại và trẻ trung cho bạn.', 'Mới', 2, '7de5a54e8525773c81529c4556e374d5.jpg', '7de5a54e8525773c81529c4556e374d5.jpg'),
(50, 'Thắt lưng trẻ trung cho nữ kiểu dáng đẹp bản vừa mặt vuông hai màu đen', 50, 'O1CN011VO4r4vvAshvnt6_!!1042102642.jpg', '80000', 'Tên sản phẩm: Thắt lưng nữ kiểu dáng đẹp bản vừa mặt vuông hai màu đen nâu GUF\r\nThành phần: da PU, kim loại cao cấp\r\nThông số kỹ thuật: Chiều dài: 105cm, Chiều rộng: 2,5cm\r\nThông tin cảnh báo: không có\r\nHướng dẫn sử dụng, hướng dẫn bảo quản: không có\r\nXuất xứ: Việt Nam\r\nChịu trách nghiệm sản phẩm: Shop thời trang GUF Unisex\r\nNăm sản xuất: 2021', 'Mới', 2, 'O1CN011VO4r4vvAshvnt6_!!1042102642.jpg', 'O1CN011VO4r4vvAshvnt6_!!1042102642.jpg'),
(51, 'Thắt lưng da PU co giãn màu trơn thời trang năng động cho nữ', 50, 'That-lung-vuong-dong-2.8cm-TL015-08.png', '200000', '  Khối lượng: 50g\r\n  Chất liệu: PU đàn hồi\r\n  Đóng gói: Sản phẩm\r\n  Kích thước: Chiều dài khoảng 45-70cm và chiều rộng 2.5cm', 'Mới', 2, 'That-lung-vuong-dong-2.8cm-TL015-08.png', 'That-lung-vuong-dong-2.8cm-TL015-08.png'),
(52, 'Giày Thể Thao Nam MWC giày sneaker da nhám in chữ đế độn basic nam tính', 50, 'Mẫu-giày-nam-đẹp-nhất-giày-nam-công-sở-GD51G.jpg', '240000', '1. GIÀY THỂ THAO ĐẾ BẰNG: Thiết kế kiểu dáng sneaker cực ngầu, phong cách hiện đại in chữ độc đáo kết hợp với phần đế độn êm chân , màu sắc xám đậm - kem - đen khỏe khoắn, mang đến cho bạn 1 diện mạo hoàn toàn cá tính, Giày có tính năng thoáng khí, giúp cân bằng nhiệt và độ ẩm trong những điều kiện môi trường khác nhau.\r\n- Sản phẩm hướng theo phong cách hiện đại, khỏe khoắn, phù hợp với nhiều lứa tuổi và dáng người.\r\n- Sản phẩm có tính ứng dụng cao: thích hợp mang khi tập luyện thể thao, đi làm, đi chơi và tham gia các hoạt động thường ngày\r\n\r\n2. CHẤT LIỆU DA CAO CẤP: Vỏ ngoài thoáng khí, chất liệu da PU cao cấp phối lưới thông thoáng, tự tin di chuyển, Gam màu trắng basic dễ dàng kết hợp nhiều trang phục và phụ kiện. Đặc biệt loại da hạn chế nếp nhăn khi bạn di chuyển và không bong tróc. \r\n\r\n3. FORM DÁNG CHUẨN ÊM CHÂN: Giày thể thao MWC được Thiết kế ôm chân, đế đệm êm ái đem đến cảm giác thoải mái cho người dùng\r\n4. ĐẾ GIÀY CAO SU CHỐNG TRƯỢT:  Đế giày được thiết kế đặc biệt giúp bám vững trên nhiều bề mặt địa hình khác nhau, hạn chế trơn trượt. Đế  thấp nhẹ nhàng di chuyển, chịu ma sát tốt nhẹ, êm, cân bằng và thoáng khí. mang lại sự thoải mái tối đa cho người dùn', 'Mới', 1, 'Mẫu-giày-nam-đẹp-nhất-giày-nam-công-sở-GD51G.jpg', 'Mẫu-giày-nam-đẹp-nhất-giày-nam-công-sở-GD51G.jpg'),
(53, 'Giày tây nam công sở da mềm, đế cao khâu sẵng, size từ 38 đến 43 - T/N', 50, 'giay-tang-chieu-cao-7cm-gntatc123-d.jpg', '320000', '\r\n- Thành phần:\r\n+ Thân giày: Da PU\r\n+  Đế giày: Cao su PU siêu nhẹ ( đã khâu đế )\r\n- Thông số kỹ thuật:\r\n+ Size: 38 (22.5cm), 39 (23cm), 40 (24cm), 41 (25cm), 42 (26cm), 43 (27cm), 44 (28cm) \r\n( Bảng số đo chỉ mang tính chất tham khảo vì còn tùy thuộc vào bề ngang nữa của bàn chân, nên muốn chắn chắn bạn vui lòng chát với shop để được tư vấn kỹ hơn nhé )\r\n+ Kiểu dáng: giày xỏ\r\n+ Màu sắc: Đen, Nâu\r\n+ Mũi giày: mũi nhọn\r\n- Thông tin cảnh báo:\r\n+ Cấm lửa, lội nước, leo trèo\r\n- Hướng dẫn bảo quản:\r\n+ Sau khi sử dụng nếu muốn vệ sinh bạn chỉ cần dùng 1 mảnh vải mềm hoặc khăn giấy ướt lau nhẹ\r\n+ Giặt nhẹ với bàn chải mềm và nên đánh si sau mỗi lần vệ sinh để da giày luôn mới và bóng đẹp\r\n- Năm sản xuất: 2022\r\n- Xuất xứ: Việt Nam\r\n- Địa chỉ sản xuất: Hộ kinh doanh Giày Lê Sang - Số 1070, Quốc lộ 1A, Linh Trung, Thành phố Thủ Đức', 'Mới', 1, 'giay-tang-chieu-cao-7cm-gntatc123-d.jpg', 'giay-tang-chieu-cao-7cm-gntatc123-d.jpg'),
(54, 'Giày Thể Thao Nữ Độn Đế Màu Trắng Cao Cấp Kiểu Hàn Quốc Êm Chân', 50, '326574b60a034d654e863e86b86c5953.jpg', '240000', 'Giày Thể Thao Nữ Độn Đế Màu Trắng Cao Cấp Kiểu Hàn Quốc Êm Chân Thoáng Khí Tôn Dáng Cổ Vừa GTTN08\r\nTHÔNG SỐ SẢN PHẨM GIÀY THẾ THAO NỮ ĐỘN ĐẾ MÀU TRẮNG CAO CẤP KIỂU HÀN QUỐC\r\n_Chất liệu: bề mặt da PU+ Đế cao su\r\n_Màu sắc: trắng đen+ trắng nâu+trắng xám\r\n_Size: 36.37.38.39.40\r\n_Chiều cao: chiều cao đế 4.5cm\r\n_giày thể thao nữ độn đế là lựa chọn ưu tiên số 1 khi lựa chọn mua giày nữ bởi giày nữ độn đế màu trắng không những tôn dáng tăng chiều cao mà còn rất trẻ trung kiểu dáng rất hiện đại\r\n_giày thể thao nữ trắng được làm từ dòng da PU cao cấp độ bền cao .đế giày được cao sư êm chân thoải mái vận động cả ngày dài.\r\n_giày thể thao nữ độn đế cao 4,5cm dễ đi phù hợp cho nhiều người và nhiều lauwx tuổi khác nhau đi rất chắc chân không qua cao nên rất dễ phối đồ ,giày nữ màu trắng có thể mix với nhiều bộ đồ khác nhau như chân váy .quần jean,bộ thể thao đều rất đẹp và ấn tượng\r\n_giày thể thao nữ trắng bề mặt còn có các lỗ thông hơi làm cho đôi chân luôn thoáng không bị bí chân khi sử dụng', 'Mới', 2, '326574b60a034d654e863e86b86c5953.jpg', '326574b60a034d654e863e86b86c5953.jpg'),
(55, 'Giày thể thao nữ họa tiết gót pha sắc màu siêu hót, trẻ trung, năng động', 50, 'giay-sandal-nu-729215.jpg', '360000', '- hàng chất vải mềm mịn, êm chân\r\n-kiểu dáng thời trang\r\n-thiết kế hiện đại\r\n-đế cao su êm chân, cao 2-3cm\r\n-2 màu: trắng hồng và trắng xám ', 'Mới', 2, 'giay-sandal-nu-729215.jpg', 'giay-sandal-nu-729215.jpg'),
(56, 'Cà vạt nam nữ phi bóng chất đẹp, bản nhỏ 5cm dành cho chú rể, công sở', 50, 'afe03684be068a6075890a07e9d4168c.jpg', '450000', 'MÔ TẢ SẢN PHẨM: Cà vạt nam nữ phi bóng chất đẹp\r\n- Cà vạt nam nữ phi bóng chất đẹp, bản nhỏ 5cm dành cho chú rể, công sở, học sinh, chụp kỷ yếu\r\n- Kiểu dáng: cavat nam bản nhỏ thời trang được cắt may đúng chuẩn xuất khẩu, có nhiều màu sắc.\r\n- Bảo quản: sản phẩm có thể giặt nhẹ.\r\n-  Màu sắc: đen, xanh đen, đỏ đô\r\n-  Chất liệu: vải Slik Lụa cao cấp\r\n- Chiều dài: 150cm\r\n- Chiều rộng: 5cm', 'Mới', 1, 'afe03684be068a6075890a07e9d4168c.jpg', 'afe03684be068a6075890a07e9d4168c.jpg'),
(57, 'Cà vạt nam KING caravat hàn quốc công sở và chú rể cao cấp giá rẻ C54', 50, 'd1939ccc7566bfe6d2dc82d495eb45c5.jpg', '440000', 'Thông tin sản phẩm\r\nChất liệu gồm\r\n1. Vải silk lụa 100%\r\n2. Thiết kế 3 lớp\r\n3. Tự thắt\r\nKích thước cà vạt bản nhỏ màu đen\r\n1. Chiều dài : 147cm\r\n2. Chiều rộng : 6cm - 8cm', 'Mới', 1, 'd1939ccc7566bfe6d2dc82d495eb45c5.jpg', 'd1939ccc7566bfe6d2dc82d495eb45c5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` text COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` text COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`TenDangNhap`, `MatKhau`, `HoTen`, `NgaySinh`, `GioiTinh`, `DiaChi`, `DienThoai`, `Email`) VALUES
('adasdad', '12345', 'adasdsad', '2022-05-19', 'M', 'ádad', '123134124', 'adasda@gmail.com'),
('dautuan', '123456', 'Đâu Mạnh Tuấn', '1998-05-03', 'M', 'HN', '0981234567', 'tuandm@gmail.com'),
('duc', '123456', 'Trần Văn Đức', '1998-06-18', 'M', 'Huế', '0911234567', 'duc@gmail.com'),
('hieu', '123456', 'Phan Trung Hiếu', '1998-01-01', 'M', 'HN', '0911234567', 'hieuad@gmail.com'),
('hoan', '123456', 'Tống Đình Hoàn', '1998-03-09', 'M', 'HN', '0981234567', 'hoan@gmail.com'),
('khoa', '123456', 'Lê Ngọc Khoa', '1998-06-24', 'M', 'HN', '0981234567', 'khoa@gmail.com'),
('ly', '12345', 'ly', '2022-05-09', 'M', 'quảng nam', '0234567892', 'ly@gmail.com'),
('tho', '12345', 'thọ', '2022-05-17', 'M', 'đà nẵng', '0322822833', 'tho@gmail.com'),
('tuan', '123456', 'Trương Ngọc Tuấn', '1998-05-16', 'M', 'HN', '0981234567', 'tuan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBinhLuan`),
  ADD KEY `TenDangNhap` (`TenDangNhap`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Indexes for table `ct_dondat`
--
ALTER TABLE `ct_dondat`
  ADD PRIMARY KEY (`MaDonDat`,`MaSanPham`),
  ADD KEY `ctdondat_sanpham` (`MaSanPham`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaSanPham`,`TenDangNhap`),
  ADD KEY `danhgia_thanhvien` (`TenDangNhap`);

--
-- Indexes for table `dondat`
--
ALTER TABLE `dondat`
  ADD PRIMARY KEY (`MaDonDat`),
  ADD KEY `TenDangNhap` (`TenDangNhap`),
  ADD KEY `MaNhanVien` (`MaNhanVien`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaLoaiSP` (`MaLoaiSP`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`TenDangNhap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dondat`
--
ALTER TABLE `dondat`
  MODIFY `MaDonDat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `MaLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`),
  ADD CONSTRAINT `binhluan_thanhvien` FOREIGN KEY (`TenDangNhap`) REFERENCES `thanhvien` (`TenDangNhap`);

--
-- Constraints for table `ct_dondat`
--
ALTER TABLE `ct_dondat`
  ADD CONSTRAINT `ctdondat_dondat` FOREIGN KEY (`MaDonDat`) REFERENCES `dondat` (`MaDonDat`),
  ADD CONSTRAINT `ctdondat_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`),
  ADD CONSTRAINT `danhgia_thanhvien` FOREIGN KEY (`TenDangNhap`) REFERENCES `thanhvien` (`TenDangNhap`);

--
-- Constraints for table `dondat`
--
ALTER TABLE `dondat`
  ADD CONSTRAINT `dondat_nhanvien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `dondat_thanhvien` FOREIGN KEY (`TenDangNhap`) REFERENCES `thanhvien` (`TenDangNhap`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_loaisp` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisp` (`MaLoaiSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
