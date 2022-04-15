-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2022 lúc 09:36 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_nhan_su`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `machinhanh` int(11) NOT NULL,
  `tenchinhanh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethopdong`
--

CREATE TABLE `chitiethopdong` (
  `mahopdong` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngauketthuc` date NOT NULL,
  `ghichu` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkhenthuong`
--

CREATE TABLE `chitietkhenthuong` (
  `makhenthuong` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `ngaykhenthuong` date NOT NULL,
  `tienthuong` int(11) NOT NULL,
  `ghichu` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietngoaingu`
--

CREATE TABLE `chitietngoaingu` (
  `mangoaingu` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `thoigian` int(11) NOT NULL,
  `trinhdo` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ghichu` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `machucvu` int(11) NOT NULL,
  `tenchucvu` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phucap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhdaotao`
--

CREATE TABLE `chuongtrinhdaotao` (
  `id` int(11) NOT NULL,
  `manhanvien` int(11) DEFAULT NULL,
  `ten_kh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `doi_tuong_dt` enum('Toàn bộ nhân sự','Nhân viên phòng kinh doanh','Nhân viên phòng lập trình','Ban quản lý, giám đốc, lãnh đạo') COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `id_dm` int(11) NOT NULL,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhdaotao`
--

INSERT INTO `chuongtrinhdaotao` (`id`, `manhanvien`, `ten_kh`, `noi_dung`, `doi_tuong_dt`, `hinh_anh`, `id_dm`, `ngaybd`, `ngaykt`, `ghichu`) VALUES
(1, 33, 'Khóa Học Về Tuân Thủ', 'Khoá học nhằm giúp nhân viên hiểu hơn về các quy định tuân thủ của doanh nghiệp và luật pháp', 'Toàn bộ nhân sự', 'banner-nhansuleanh2.jpg', 1, '2022-04-30', '2022-04-30', NULL),
(2, NULL, 'Bảo Mật Thông Tin​', 'Khoá học giúp nâng cao kiến thức cho người học về các quy định bảo mật thông tin của doanh nghiệp', 'Toàn bộ nhân sự', 'khoa-hoc-luyen-thi-chung-chi-tin-hoc-van-phong.jpg', 1, '0000-00-00', '0000-00-00', NULL),
(3, NULL, 'Quan hệ khách hàng: xây dựng lòng tin', 'Áp dụng tốt bài học để có được lòng tin từ khách hàng.  Biết cách nâng cao hình ảnh của công ty, thiết lập liên lạc chặt chẽ với khách hàng và xác định cách quản lý các tình huống nhạy cảm.', 'Nhân viên phòng kinh doanh', 'z3207255565614-8965070ce5e22470b851f8e4fd1f1f23.jpg', 2, '0000-00-00', '0000-00-00', NULL),
(4, NULL, 'Chăm sóc khách hàng chuyên nghiệp', 'Hiểu được tầm quan trọng của dịch vụ khách hàng và sự cần thiết phải có dịch vụ chăm sóc khách hàng                                                                 - Nắm vững các lỹ năng dành cho người làm dịch vụ chăm sóc khách hàng                                                                                     - Xây dựng quy trình, chiến lược chăm sóc khách hàng', 'Nhân viên phòng kinh doanh', 'khoa-hoc-kiem-thu-phan-mem.jpg', 2, NULL, NULL, NULL),
(5, NULL, 'Khóa học Tin học cơ bản', 'Nhằm giúp nhân viên từ thấp đến cao có kiến thức đầy đủ về cơ sở công nghệ thông tin được sử dụng trong hệ thống kỹ thuật số và kiến thức về các thuật ngữ liên quan.', 'Toàn bộ nhân sự', 'khoa-hoc-tin-hoc-van-phong-min.jpg', 3, '0000-00-00', '0000-00-00', NULL),
(6, NULL, 'Khoá học về Phát triển hệ thống', 'Giúp nhân viên hiểu hơn về các phương pháp tiêu chuẩn, mới, kiến thức và thuật ngữ liên quan về Phát triển hệ thống máy tính.\r\n- Giải thích về Cơ sở của quản lý phát triển (PERT, phương pháp Thác nước, etc.)\r\n-Giải thích về các công cụ được sử dụng khi phát triển hệ thống (Công cụ xử lý ngôn ngữ, IDE, ICE)\r\n- Giải thích về quy trình phát triển tiêu chuẩn của phần mềm (Xác định yêu cầu, Thiết kế, etc)\r\n- Giải thích về hướng đối tượng (Khái niệm, Mô hình hoá, UML, etc)', 'Nhân viên phòng lập trình', 'khoa-hoc-kiem-thu-phan-mem.jpg', 3, NULL, NULL, NULL),
(7, NULL, 'Kỹ năng cảm xúc của nhà quản lý', 'Học cách trở thành người quản lý tốt hơn nhờ thành công quản lý cảm xúc chính mình.\r\nBằng cách xác định hồ sơ cảm xúc của bạn, sẽ có khả năng dự đoán các tình huống nhạy cảm chính xác hơn.\r\nVà bằng cách hiểu cách cảm xúc hoạt động, sẽ có thể xây dựng tốt hơn những tác động tích cực của cảm xúc.', 'Ban quản lý, giám đốc, lãnh đạo', 'banner-nhansuleanh2.jpg', 4, '0000-00-00', '0000-00-00', NULL),
(8, NULL, 'Bồi dưỡng và duy trì động lực', 'Học cách khai phá năng lượng nhóm để tăng hiệu suất tập thể.\r\nCó thể xác định các trình điều khiển động lực của đồng nghiệp và có hành động thích hợp để giữ cho động lực cho họ.\r\n Có khả năng thúc đẩy tiến độ của công việc ủy thác và ủy thác một cách hiệu quả.', 'Ban quản lý, giám đốc, lãnh đạo', 'khoa-hoc-kiem-thu-phan-mem.jpg', 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmon`
--

CREATE TABLE `chuyenmon` (
  `machuyenmon` int(11) NOT NULL,
  `tenchuyenmon` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tuoi` int(5) DEFAULT NULL,
  `gioi_tinh` enum('nam','nu') COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `dia_chi` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `qua_vong` enum('1','0') COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `mo_ta` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT 'meo.jpg',
  `hoc_van` enum('dh','cd','tc','khac') COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `chuc_vu` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `luong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `ho_ten`, `tuoi`, `gioi_tinh`, `gmail`, `sdt`, `dia_chi`, `qua_vong`, `mo_ta`, `hinh_anh`, `hoc_van`, `chuc_vu`, `luong`) VALUES
(15, 'Lê Văn Tích', 22, 'nam', 'tich@gmail.com', '0326589661', 'Diễn Châu - Nghệ An', '0', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'dh', 'giám đốc', 0),
(16, 'Nguyễn Văn Anh', 22, 'nam', 'vananhdc@gmail.com', '0326589662', 'Diễn Châu - Nghệ An', '1', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'cd', 'giám đốc', 0),
(17, 'Nguyễn Văn Sáng', 22, 'nam', 'vansang@gmail.com', '0326589663', 'Diễn Châu - Nghệ An', '0', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'dh', 'giám đốc', 0),
(18, 'Trần Văn Nguyên', 22, 'nam', 'vannguyen@gmail.com', '0326589664', 'Diễn Châu - Nghệ An', '1', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'dh', 'giám đốc', 0),
(19, 'Lê Văn Thiện', 22, 'nam', 'thien@gmail.com', '0326589665', 'Diễn Châu - Nghệ An', '0', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'dh', 'giám đốc', 0),
(20, 'Nguyễn Văn Linh', 22, 'nam', 'vanlinh@gmail.com', '0326589666', 'Diễn Châu - Nghệ An', '1', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 'meo.jpg', 'dh', 'giám đốc', 0),
(21, '', 22, 'nam', '', '0328563729', 'nghệ an ', '0', 'ehhee', NULL, 'dh', 'giám đốc', 10),
(23, 'Thái Bá Tuấn Em', 21, 'nam', 'tuaaa@gmail.com', '0326543226', 'Diễn Châu - Nghệ An nè', '1', 'aaaaaaaaaaaaa\r\n', NULL, 'dh', 'giám đốc nè', 100000),
(25, 'Trần Văn Bình', 50, 'nam', 'binh@gmail.com', '1111111111', 'Diễn Châu - Nghệ An nè', '1', 'ok', NULL, 'dh', 'giám đốc nè', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daotao`
--

CREATE TABLE `daotao` (
  `id` int(11) NOT NULL,
  `ten_dm` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `landaotao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `daotao`
--

INSERT INTO `daotao` (`id`, `ten_dm`, `landaotao`) VALUES
(1, 'Kỹ năng mềm', 0),
(2, 'Kỹ năng bán hàng', 0),
(3, 'Công nghệ thông tin', 0),
(4, 'Quản lý và Lãnh đạo', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdonglaodong`
--

CREATE TABLE `hopdonglaodong` (
  `mahopdong` int(11) NOT NULL,
  `tenhopdong` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loaihopdong` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khenthuong`
--

CREATE TABLE `khenthuong` (
  `makhenthuong` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `maphongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_04_14_175857_add_nhanvien', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngoaingu`
--

CREATE TABLE `ngoaingu` (
  `mangoaingu` int(11) NOT NULL,
  `tenngoaingu` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `machucvu` int(11) DEFAULT NULL,
  `machuyenmon` int(11) DEFAULT NULL,
  `mahedaotao` int(11) DEFAULT NULL,
  `maphongban` int(11) DEFAULT NULL,
  `machinhanh` int(11) DEFAULT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gioi_tinh` enum('nam','nữ') COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `dia_chi` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cmnd` varchar(9) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tuoi` int(5) DEFAULT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `qua_vong` enum('1','0') COLLATE utf8mb4_vietnamese_ci DEFAULT '0',
  `mo_ta` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hinh_anh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hoc_van` int(11) DEFAULT NULL,
  `chuc_vu` enum('dh','cd','tc','khac') COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `luong` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `machucvu`, `machuyenmon`, `mahedaotao`, `maphongban`, `machinhanh`, `ho_ten`, `gioi_tinh`, `dia_chi`, `cmnd`, `ghichu`, `tuoi`, `gmail`, `sdt`, `qua_vong`, `mo_ta`, `hinh_anh`, `hoc_van`, `chuc_vu`, `luong`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'Edyth Kutch', 'nam', '67005 Christy Cliff Suite 304\nPorterfort, MN 50850', '365133827', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 42, 'nmraz@yahoo.com', '429724731', '0', 'Numquam similique animi cupiditate aut et. A iusto nemo tempore.', 'meo.jpg', NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, 'Filomena Morar', 'nam', '81105 Haag Village Apt. 488\nKalemouth, KS 93487-9277', '795045148', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 47, 'pzulauf@schimmel.info', '609751724', '1', 'Neque saepe rerum dolor qui inventore eos tempora. Eos nulla quaerat cum quia vitae ad.', 'meo.jpg', NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, 'Jaylin Rohan', 'nam', '6679 Spinka Trafficway Apt. 672\nMalikahaven, NY 40640-6606', '243724116', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 24, 'luettgen.duane@schultz.com', '743621912', '1', 'Architecto explicabo corporis consectetur fugit voluptatum. Ratione ea soluta architecto est dolor.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(4, NULL, NULL, NULL, NULL, NULL, 'Stewart Lang', 'nam', '5040 Curt Courts Apt. 604\nEast Chadrick, DC 17257', '510597066', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 48, 'labernathy@oreilly.biz', '624155077', '1', 'Voluptatum assumenda quas unde pariatur quo. Quia amet in inventore vero. Quia quod tempora et ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(5, NULL, NULL, NULL, NULL, NULL, 'Torey Miller', 'nam', '1540 Kunde Valleys Suite 750\nOlenhaven, PA 20988-3089', '933504496', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 45, 'robyn90@oberbrunner.org', '945137434', '1', 'Eaque ipsam et sit sed debitis. Rerum tempora beatae molestias vel maxime aut at tenetur.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(6, NULL, NULL, NULL, NULL, NULL, 'Katelin Simonis', 'nam', '211 Darian Club Suite 267\nMarquardtport, NM 52052', '409650647', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 29, 'ajast@pollich.com', '640619250', '1', 'Voluptatem sed explicabo inventore ad qui cum dolorem. Officiis quia consequatur quo qui porro.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(7, NULL, NULL, NULL, NULL, NULL, 'Sandrine Tromp', 'nam', '252 Willie Ways Apt. 099\nNorth Addisonport, DE 52727', '597527153', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 38, 'ortiz.jacinto@luettgen.com', '592326633', '1', 'Et aut debitis quia voluptas explicabo. Facere nam aut architecto reiciendis non amet.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(8, NULL, NULL, NULL, NULL, NULL, 'Alec Emard', 'nam', '1501 Prohaska Prairie Suite 267\nLuettgenhaven, NV 37986', '947300976', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 39, 'rosenbaum.alexie@yahoo.com', '166367866', '1', 'Qui ut magni iusto. Magnam qui vel non dolorem. Omnis exercitationem rem aperiam non.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(9, NULL, NULL, NULL, NULL, NULL, 'Brycen Lowe', 'nam', '758 Kasandra Pass\nBridgetteburgh, HI 25118', '435912766', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 44, 'juwan56@wunsch.com', '810986382', '1', 'Voluptates ab aliquam sed ut amet. Officiis deleniti ad est ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(10, NULL, NULL, NULL, NULL, NULL, 'Bernice Powlowski', 'nam', '25133 Lonny Fields\nSouth Giuseppeport, PA 93470-2295', '124260812', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 26, 'hill.simone@yahoo.com', '606328843', '1', 'Eos ullam a vel. Necessitatibus ab aliquid pariatur. Nam nam inventore rerum omnis.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(11, NULL, NULL, NULL, NULL, NULL, 'Freeda Stokes', 'nam', '58477 Henderson Point Apt. 776\nWalshhaven, NM 04566-4063', '692024637', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 37, 'myrtie43@orn.org', '347538765', '1', 'Quaerat tempore est odit natus et. Aliquid sed possimus sunt.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(12, NULL, NULL, NULL, NULL, NULL, 'Benedict Moen', 'nam', '416 Cronin Stravenue Apt. 569\nGranttown, NV 81332', '577216548', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 24, 'yundt.ibrahim@padberg.com', '251813431', '1', 'Mollitia excepturi eos recusandae odit qui a aut. Sunt laudantium nobis dolor libero saepe.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(13, NULL, NULL, NULL, NULL, NULL, 'Anabel Hammes', 'nam', '1853 Kristian Light Suite 594\nDanefort, NM 91318-7605', '107824738', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 34, 'hackett.avery@yahoo.com', '255183454', '1', 'Blanditiis reprehenderit quia similique non. Et fugit officiis voluptatem voluptatem rerum.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(14, NULL, NULL, NULL, NULL, NULL, 'Moshe Kautzer', 'nam', '702 Hilma Ridge Suite 511\nEast Kelsibury, DC 48668-9071', '709946213', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 23, 'jaunita16@glover.biz', '195846284', '1', 'Et quis eligendi ab aut dolor ipsam. Omnis numquam alias enim sed excepturi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(15, NULL, NULL, NULL, NULL, NULL, 'Carlotta Pagac', 'nam', '645 Weber Plain\nNorth Dewayne, AZ 21312', '191642133', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 22, 'vklocko@hotmail.com', '981749890', '1', 'Quidem ut nulla ut consequatur. Eligendi at veniam consequuntur voluptatem et autem.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(16, NULL, NULL, NULL, NULL, NULL, 'Claudie Kertzmann', 'nam', '622 Aurelio Vista Suite 639\nNew Lonzoshire, ME 15649', '978737084', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 39, 'herzog.sidney@runolfsdottir.com', '201820770', '1', 'Eligendi fugiat maiores illo. Nemo quo aliquam ipsa sint explicabo sit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(17, NULL, NULL, NULL, NULL, NULL, 'Gail Crist', 'nam', '5007 Romaguera Union\nNew Wilhelm, WV 72096', '581034540', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 45, 'acollins@yahoo.com', '543544098', '1', 'Qui dolorem sunt nulla ea quis. Ullam quam beatae non quasi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(18, NULL, NULL, NULL, NULL, NULL, 'Elwin Will', 'nam', '69919 Ortiz Rest\nNorth Kennithburgh, DC 42134-1708', '121025997', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 32, 'madie02@gmail.com', '333847214', '1', 'Et eos aut voluptatem rerum saepe est et vero. Nihil quaerat nemo voluptas distinctio.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(19, NULL, NULL, NULL, NULL, NULL, 'Unique Schroeder', 'nam', '672 Dee Rapid\nEast Martinechester, ME 85479', '490944034', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 22, 'wwiegand@yahoo.com', '138084155', '1', 'Quisquam maiores enim est repellendus amet. Nemo nemo voluptas asperiores repellendus quos est.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(20, NULL, NULL, NULL, NULL, NULL, 'Gladyce Grady', 'nam', '391 Kemmer Mountains Suite 784\nLake Aurelio, ID 16558-8379', '945710826', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 35, 'nikolaus.seth@bernier.com', '644540557', '1', 'Iusto molestias harum accusantium qui rerum. Veniam earum quis in hic. Et beatae illo sit tempora.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(21, NULL, NULL, NULL, NULL, NULL, 'Fae Wyman', 'nam', '471 Rolfson Isle Suite 695\nFernestad, MA 30934-2595', '994726278', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 50, 'kassandra99@yahoo.com', '392184665', '1', 'Dolorem corrupti et ut odio nihil est. Quis est corporis qui omnis quod. Est amet dolore et nam.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(22, NULL, NULL, NULL, NULL, NULL, 'Stephon Waelchi', 'nam', '446 Amir Motorway Suite 316\nGermanbury, MI 92496', '761705142', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 30, 'mckenna95@gmail.com', '573842461', '1', 'Quae sed qui esse eius odio. Ut dolor quis et et.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(23, NULL, NULL, NULL, NULL, NULL, 'Velma Collier', 'nam', '39005 Caleb Ridge Apt. 126\nNathanialfurt, OK 26148', '354110016', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 43, 'abbie.waelchi@dare.com', '306201118', '1', 'Nam voluptatibus magni quam expedita. Placeat id et tempora rerum aspernatur aperiam.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(24, NULL, NULL, NULL, NULL, NULL, 'Freddie Fay', 'nam', '6113 Taylor Hills\nAlanberg, ME 42515-1964', '374275231', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 19, 'yparisian@hotmail.com', '329959041', '1', 'Qui facere ut aut qui eum. Rerum quis magnam qui libero. Et aut adipisci enim impedit et eaque.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(25, NULL, NULL, NULL, NULL, NULL, 'Davin Stamm', 'nam', '4032 Hollie Viaduct Apt. 806\nSouth Kaylie, MI 24988', '934879824', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 23, 'eliseo.grimes@gislason.com', '227331973', '1', 'Esse fugit vel possimus ut. Quia pariatur ducimus sequi totam non qui. Et est iure et.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(26, NULL, NULL, NULL, NULL, NULL, 'Solon Williamson', 'nam', '762 Wilderman Forges Apt. 307\nDachview, FL 71267-9761', '205677013', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 25, 'elijah.baumbach@mccullough.com', '622367824', '1', 'Eligendi omnis aut aut quasi. Dolores provident voluptate quaerat laboriosam perferendis similique.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(27, NULL, NULL, NULL, NULL, NULL, 'Marguerite Goldner', 'nam', '1917 Lucas Harbor\nCarterhaven, TX 26754', '919330251', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 44, 'grant.neoma@treutel.info', '187469259', '1', 'Voluptatibus sunt facere qui quisquam placeat aut et et. Vitae consequatur assumenda sit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(28, NULL, NULL, NULL, NULL, NULL, 'Rafael Marquardt', 'nam', '5716 Jenkins Gardens\nAnafort, TX 02225', '202914962', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 19, 'kiel65@hintz.com', '505088130', '1', 'Sed impedit nesciunt sint occaecati. Sapiente et rerum qui et magni ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(29, NULL, NULL, NULL, NULL, NULL, 'Jayden Nolan', 'nam', '984 Lemke Plains Suite 743\nNew Akeem, LA 56842-9989', '767695047', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 18, 'turcotte.timothy@kub.info', '928650453', '1', 'Vel quae et illo veniam nemo. Voluptatibus et et odio quae totam reprehenderit optio.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(30, NULL, NULL, NULL, NULL, NULL, 'Brandi Gerlach', 'nam', '1303 Bradtke Island Suite 959\nPort Franzside, MA 95444', '744162893', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 46, 'igutkowski@osinski.info', '212672837', '1', 'Ut officia cum aperiam quam accusantium ut. Ab consectetur debitis numquam delectus a quis.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(31, NULL, NULL, NULL, NULL, NULL, 'Mayra Swift', 'nam', '2365 Heathcote Mountain Apt. 192\nSouth Estelle, MI 04388-3675', '253635438', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 18, 'jschulist@yahoo.com', '299054327', '1', 'Eos ea tempore sapiente excepturi ut. Asperiores debitis aut et culpa qui.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(32, NULL, NULL, NULL, NULL, NULL, 'Aidan Swaniawski', 'nam', '386 Deshawn Hills\nAuerberg, CO 60425-8501', '772353532', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 37, 'qcorwin@hotmail.com', '828093425', '1', 'Eum laborum quis aspernatur officia maxime voluptates quia. Quia autem ipsa in.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(33, NULL, NULL, NULL, NULL, NULL, 'Abdiel Pfannerstill', 'nam', '306 Tremblay Centers\nJulesland, GA 07754', '839547392', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 34, 'clinton.dietrich@keeling.org', '877231055', '1', 'Explicabo quia voluptatum tenetur. Qui voluptas et veniam facilis eius.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(34, NULL, NULL, NULL, NULL, NULL, 'Clair Jenkins', 'nam', '44082 Carmelo Walk Suite 454\nPort Arne, AZ 70219-0453', '843428547', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 30, 'samara.altenwerth@jerde.biz', '395846835', '1', 'Quae delectus rerum qui est odio culpa. Sit ratione vel est beatae. Tempora ducimus illo id.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(35, NULL, NULL, NULL, NULL, NULL, 'Leonie Hegmann', 'nam', '70107 Blanda Fields\nKirlinmouth, PA 95665', '476057425', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 39, 'tobin63@koch.com', '319520394', '1', 'Nihil et itaque consequatur quasi iure numquam. Perferendis est dolores ut illum.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(36, NULL, NULL, NULL, NULL, NULL, 'Hal Schimmel', 'nam', '316 Blick Haven Suite 182\nLake Alexis, ME 92883-3961', '199956523', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 37, 'vgraham@gmail.com', '421652261', '1', 'Soluta quas rem eos rerum fuga suscipit. Aut eum sint dolorum nihil ut quo.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(37, NULL, NULL, NULL, NULL, NULL, 'Dorris Klocko', 'nam', '996 Shawn Throughway\nEast Daija, CO 34451-8606', '523546174', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 45, 'aurelio.hermiston@klein.com', '180167115', '1', 'Repellendus reiciendis et sint rerum qui est. Quis deleniti consequatur maxime nostrum fugiat.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(38, NULL, NULL, NULL, NULL, NULL, 'Tierra Kuhn', 'nam', '64155 Tromp Lights\nReedfort, KS 72940', '187404333', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 47, 'floy48@hotmail.com', '520905946', '1', 'Perferendis a sapiente qui est. Tenetur odit sit neque sed minima voluptatem alias sit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(39, NULL, NULL, NULL, NULL, NULL, 'Alexandre Senger', 'nam', '86666 Robb Ridges Apt. 755\nJoanyville, DE 07341-9989', '261434909', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 39, 'alvena64@padberg.com', '689675717', '1', 'Fuga nesciunt reiciendis qui harum praesentium. Repellat itaque nobis nesciunt ut fugiat at.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(40, NULL, NULL, NULL, NULL, NULL, 'Korey Murphy', 'nam', '70184 Vilma Groves\nSouth Brown, ID 56302-9437', '186896457', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 46, 'bhermann@hotmail.com', '192530323', '1', 'Quia vel provident nemo et commodi enim. Eos odio id deserunt consequuntur.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(41, NULL, NULL, NULL, NULL, NULL, 'Rafael Gusikowski', 'nam', '85435 Jacques Causeway Apt. 469\nHuldabury, TN 09668-2130', '840207323', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 36, 'jenifer.gislason@cummerata.net', '950908025', '1', 'Ut eius sint nam reprehenderit. Consequatur omnis ducimus dolor quod reprehenderit quo.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(42, NULL, NULL, NULL, NULL, NULL, 'Herman Graham', 'nam', '915 Valerie Green\nEast Linnea, VA 94182', '406177315', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 41, 'lilly.gutkowski@bosco.com', '708232309', '1', 'Dolorem vitae vel non quas illo eveniet qui accusamus. Quas quaerat laudantium sint.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(43, NULL, NULL, NULL, NULL, NULL, 'Aurelie Walker', 'nam', '647 Kassulke Garden Suite 738\nLowebury, TN 84271', '239381170', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 19, 'skiles.vinnie@yundt.com', '977815604', '1', 'Qui eos neque inventore fugiat commodi. Saepe consequatur dolore ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(44, NULL, NULL, NULL, NULL, NULL, 'Edgardo Luettgen', 'nam', '5696 Wintheiser Spurs Suite 952\nWest Savannaberg, NY 54443-5883', '537198987', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 30, 'jeffrey67@hotmail.com', '616565961', '1', 'In et autem magni velit qui. In suscipit modi dolor. Incidunt ad quidem eos omnis magnam.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(45, NULL, NULL, NULL, NULL, NULL, 'Clair Bergstrom', 'nam', '806 Cory Cove Suite 381\nSouth Cristianbury, KY 71620-1071', '796352878', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 46, 'tgrant@yahoo.com', '469193048', '1', 'Ut doloribus similique sed suscipit. Et quae dolores est deserunt possimus tempora quas aut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(46, NULL, NULL, NULL, NULL, NULL, 'Perry Koss', 'nam', '688 Alf Ramp Apt. 214\nTyrellborough, LA 88168', '131135716', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 30, 'cody57@yahoo.com', '333445030', '1', 'Rerum nemo molestiae rerum quia eos aut. Modi id accusamus magni est ut fuga et fugit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(47, NULL, NULL, NULL, NULL, NULL, 'Waino Stoltenberg', 'nam', '911 Roberts Avenue Apt. 250\nSouth Beulah, GA 38093', '690285560', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 24, 'lurline98@gmail.com', '762837405', '1', 'Et delectus incidunt sit aut. Eligendi autem perferendis maxime est voluptas sequi et.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(48, NULL, NULL, NULL, NULL, NULL, 'Rafael O\'Conner', 'nam', '891 O\'Hara Path\nStiedemannton, IA 78113-0294', '405526876', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 47, 'kkozey@jacobi.com', '476180069', '1', 'Non quam et quia voluptatum ipsum architecto sapiente incidunt. Ut earum sint esse quasi dolores.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(49, NULL, NULL, NULL, NULL, NULL, 'Laverne Prohaska', 'nam', '755 Collins Ports\nPort Amaritown, TX 45407-6662', '229953848', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 27, 'ricky.hand@gmail.com', '257947632', '1', 'Et et et ex. Ratione eum est nemo expedita. Cupiditate impedit rerum corporis aspernatur at.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(50, NULL, NULL, NULL, NULL, NULL, 'Angelo McLaughlin', 'nam', '8842 Flossie Landing Suite 306\nAdelineport, IA 42966-7058', '209078001', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 29, 'glen.littel@yahoo.com', '595037158', '1', 'Voluptatem et sit dicta qui repellendus ut. Incidunt facilis occaecati maxime qui.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(51, NULL, NULL, NULL, NULL, NULL, 'Donato Stark', 'nam', '671 Gerson Isle\nSouth Lindahaven, ND 04491', '528234179', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 21, 'ojacobs@gmail.com', '429031969', '1', 'Et porro est eligendi. Et minus amet minus facilis autem et. Assumenda veritatis qui in sint.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(52, NULL, NULL, NULL, NULL, NULL, 'Orin Reichert', 'nam', '913 Kolby Skyway\nWest Leoneton, NM 99421-1681', '180757777', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 28, 'kmueller@hotmail.com', '668856324', '1', 'Ut consectetur sed autem. Et quia officia et natus. Sed aut ad aperiam aut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:00:23', '2022-04-14 11:00:23'),
(53, NULL, NULL, NULL, NULL, NULL, 'Ambrose Gusikowski', 'nam', '719 Prohaska Road Apt. 171\nOrnside, TX 18053', '254760649', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 34, 'maymie.steuber@jakubowski.com', '272186563', '0', 'Incidunt dolore aut sunt. Dolorum consequatur quod et neque.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(54, NULL, NULL, NULL, NULL, NULL, 'Gisselle Hagenes', 'nam', '783 Emerson Squares\nSouth Shadbury, CO 40542-5699', '570729679', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 37, 'jaylin64@moen.com', '233094885', '0', 'Ex at voluptates debitis et dolorum ab eos. Et doloremque est qui fuga.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(55, NULL, NULL, NULL, NULL, NULL, 'Wilma Hermann', 'nam', '9025 Brekke Square\nPort Velva, FL 32454-5146', '193790154', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 45, 'abbigail.rippin@dietrich.com', '796878818', '0', 'Tempora minus sit maxime dignissimos beatae ea. Et facilis non tenetur in eveniet.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(56, NULL, NULL, NULL, NULL, NULL, 'Eulah Mante', 'nam', '6083 Johathan Square\nPort Mckenzie, NC 03465-0033', '114795480', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 28, 'sabryna26@gmail.com', '657010822', '0', 'Ut qui laborum excepturi vel. Ipsa sunt tenetur minus esse qui. Maxime quae commodi porro sequi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(57, NULL, NULL, NULL, NULL, NULL, 'Ottilie Koelpin', 'nam', '932 Lou Flat Apt. 166\nWest Nyahmouth, FL 66811', '892659061', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 21, 'dooley.gordon@yahoo.com', '466701294', '0', 'Accusantium ut ab voluptas sed quam labore tempore. Fugit ut dolor nisi et laboriosam doloremque.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(58, NULL, NULL, NULL, NULL, NULL, 'Grace Greenholt', 'nam', '72266 Dicki Inlet\nHeidenreichtown, MS 10233', '564522408', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 19, 'cornelius.murphy@hotmail.com', '886355811', '0', 'Quaerat labore magnam ut dolores. Qui quia voluptatum autem. Ut ut est voluptas ea ipsum.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(59, NULL, NULL, NULL, NULL, NULL, 'Terrell Rogahn', 'nam', '849 Helene Harbors\nWest Makenzie, DC 70787', '791282823', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 50, 'lemke.jake@hotmail.com', '645763021', '0', 'Debitis aut ullam quisquam id dolor sit. Totam nobis soluta qui corporis.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(60, NULL, NULL, NULL, NULL, NULL, 'Maegan Rutherford', 'nam', '113 Gerda Inlet Suite 619\nBenton, DE 32396', '932668829', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 48, 'littel.royal@bahringer.net', '478665326', '0', 'Eveniet veritatis perferendis iste repudiandae. Tempore assumenda harum ex sint laborum.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(61, NULL, NULL, NULL, NULL, NULL, 'Reanna Rau', 'nam', '145 Murazik Mall Apt. 937\nReichertview, CO 90397', '658628401', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 27, 'gbrakus@hotmail.com', '232846931', '0', 'Aliquid iste deleniti est perferendis dolores. Voluptate velit sint ea omnis nisi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(62, NULL, NULL, NULL, NULL, NULL, 'Enola Bruen', 'nam', '98458 Parisian Station\nEast Easton, MD 76549', '337561300', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 46, 'ybatz@yahoo.com', '179211498', '0', 'Vero sed qui omnis omnis. Repellendus veniam iure iste dolores.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(63, NULL, NULL, NULL, NULL, NULL, 'Perry Lind', 'nam', '5344 Emmy Corner\nNorth Amirachester, HI 76365-5486', '353373495', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 46, 'chase35@stanton.com', '713673718', '0', 'Et veritatis ut et natus rerum. Facilis adipisci totam consequatur ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(64, NULL, NULL, NULL, NULL, NULL, 'Alec Boyle', 'nam', '288 Wilfred Mills\nMaudiefort, NC 48216-8311', '755186658', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 34, 'suzanne.kemmer@medhurst.info', '387136893', '0', 'Atque aut porro ut et suscipit consequuntur. Est ipsam dolore facere nobis quia.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(65, NULL, NULL, NULL, NULL, NULL, 'Palma Haag', 'nam', '5117 Windler Shoals\nWest Tod, NM 49015-4282', '333261336', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 44, 'daugherty.noemi@dibbert.biz', '870907100', '0', 'Quae corrupti et et dolorem aliquid. Cupiditate qui quo tenetur et minima harum ut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(66, NULL, NULL, NULL, NULL, NULL, 'Una Stanton', 'nam', '51494 Serenity Motorway Apt. 898\nMannburgh, MO 40224', '684012364', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 20, 'gmante@gmail.com', '148281311', '0', 'Est culpa quia velit aut voluptatem in explicabo. Ut numquam impedit quam nulla.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(67, NULL, NULL, NULL, NULL, NULL, 'Margarette Nitzsche', 'nam', '572 Rohan Mission Suite 912\nEast Jermain, NJ 16757-3245', '358892161', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 35, 'tzboncak@hotmail.com', '434017126', '0', 'Cum et eligendi minus eos. Expedita quia impedit dolor. Nam et quia itaque mollitia.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(68, NULL, NULL, NULL, NULL, NULL, 'Jaycee Collier', 'nam', '68355 Lockman Knoll\nNew Howard, OH 81538-2091', '111579765', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 39, 'neil.gerhold@yahoo.com', '998855124', '0', 'Consequuntur praesentium sint eaque et iure. Aut possimus iusto aut quis ut totam ducimus.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(69, NULL, NULL, NULL, NULL, NULL, 'Misael McClure', 'nam', '192 Schumm Vista\nNew Rickeyville, CT 06777', '195822146', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 35, 'ygorczany@hotmail.com', '798549755', '0', 'Mollitia ad recusandae in ex et accusamus. Et ut magni nostrum autem illo commodi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(70, NULL, NULL, NULL, NULL, NULL, 'Lauryn Bode', 'nam', '6563 Mittie Harbors Suite 596\nPort Marshallmouth, AZ 98699', '613216457', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 48, 'kasey.anderson@gmail.com', '813571349', '0', 'Quia ducimus explicabo omnis. Doloribus animi sunt perferendis velit quasi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(71, NULL, NULL, NULL, NULL, NULL, 'Susan Larkin', 'nam', '5666 Wiza Street\nNew Aimee, WI 28086', '922949853', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 28, 'grady.eugenia@yahoo.com', '490736211', '0', 'Labore sint dolores eius nemo illum assumenda. Blanditiis voluptatem vitae temporibus et itaque.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(72, NULL, NULL, NULL, NULL, NULL, 'Monique Tillman', 'nam', '621 Shania Squares\nAntwanland, RI 11112', '735233215', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 27, 'sarina28@gmail.com', '842969209', '0', 'Quibusdam accusamus aut hic hic odio quas vel. Est rem pariatur id eum rem incidunt sit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(73, NULL, NULL, NULL, NULL, NULL, 'Zackery Shields', 'nam', '80310 Parker Light\nEulaliafurt, AZ 21542', '440110901', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 32, 'shyann.stehr@hotmail.com', '837017193', '0', 'Veniam quam et unde ut. Assumenda dolores et aut consequatur. Ut reprehenderit et alias molestiae.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(74, NULL, NULL, NULL, NULL, NULL, 'Brown Ondricka', 'nam', '11517 Anita Stream Suite 487\nZemlakmouth, MO 73717-6477', '994413626', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 30, 'pbarrows@price.com', '753143765', '0', 'Id reiciendis tenetur magni laudantium aut aut. Et vitae sit blanditiis sed. Et beatae qui sit.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(75, NULL, NULL, NULL, NULL, NULL, 'Mark Bernier', 'nam', '5891 Velma Trail\nNew Raul, KS 49128', '864649692', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 27, 'mackenzie51@okuneva.info', '539268310', '0', 'Enim quia incidunt officia laboriosam enim sunt. Et facere fuga alias aut.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31'),
(76, NULL, NULL, NULL, NULL, NULL, 'Odessa Block', 'nam', '856 Ullrich Dam Apt. 674\nCynthiaport, AZ 24564-0203', '403442411', 'Vui tính, hòa đồng, năng động, có trách nhiệm cao trong công việc. ', 26, 'yhermann@goyette.com', '910107597', '0', 'Vel doloribus ad voluptas atque. Quae eligendi nam autem expedita commodi.', 'meo.jpg', NULL, NULL, NULL, '2022-04-14 11:01:31', '2022-04-14 11:01:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien_danh_gia`
--

CREATE TABLE `nhan_vien_danh_gia` (
  `id` int(11) NOT NULL,
  `id_nv` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `danh_gia` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien_danh_gia`
--

INSERT INTO `nhan_vien_danh_gia` (`id`, `id_nv`, `id_kh`, `danh_gia`, `sao`) VALUES
(1, 33, 2, 'Khóa học tuyệt vời, mọi thứ dễ dàng để xây dựng 1 website hoàn thiện trong thời gian ngắn, cảm ơn thầy vì khóa học ạ &lt;3 , khóa học tuyệt vời!', 5),
(2, 18, 2, 'Khóa học quá là ok. Nội dung ngắn gọn xúc tích, rõ ràng. Đây là điều rất nhiều người đang cần để tránh khỏi sự mơ hồ khi tự lang thang mày mò trên mạng. Khóa học không những mang lại kiến thức mà còn tạo ra rất nhiều động lực. Xin cám ơn Anh Cương rất nhiều về sự tận tâm.Chúc mọi người học tốt', 5),
(3, 35, 2, 'Bạn mình học code bên NN, mất 3th để tự code bài đầu tay. Tư vấn cho mình: \"mày phải học offline, online chỉ đóng tiền ngu thôi\". Giờ mình học xong khóa này, mới thấy bạn mình thật sai lầm(mình mất 10 ngày cho giao diện đầu). Học online có thể học bất cứ lúc nào mình thích, xem lại những chỗ chưa hiểu. Có thể kéo dài hay rút ngắn thời gian do mình chủ động, không cần phải xách xe đi học. Nhưng quan trọng nhất, là được thầy hỗ trợ gần như 24/7 (5h sáng tới 23h đêm), cực kỳ nhiệt tình và tận tâm. Đó là lý do mình đăng ký full option với thầy Cương ^^.', 4),
(4, 36, 2, 'Khóa học rất tuyệt vời, cảm ơn thầy Cương đã cho em những kiến thức và những trải nghiệm bổ ích. Nó là một khóa học không thể bỏ qua. Chúc thầy nhiều sức khỏe!', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuluong`
--

CREATE TABLE `phieuluong` (
  `maphieuluong` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `luongcoban` int(11) NOT NULL,
  `hesoluong` int(11) NOT NULL,
  `tienthuong` int(11) NOT NULL,
  `phucap` int(11) NOT NULL,
  `baohiem` int(11) NOT NULL,
  `tonglinh` int(11) NOT NULL,
  `ngaylinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `maphongban` int(11) NOT NULL,
  `tenphongban` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinhdohocvan`
--

CREATE TABLE `trinhdohocvan` (
  `mahedaotao` int(11) NOT NULL,
  `tenhedaotao` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `namtotnghiep` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` enum('admin','nv','hlv') COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'tuhan123', 'Han123123', 'admin'),
(2, 'tuananh123', 'Tuan123123', 'hlv');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`machinhanh`);

--
-- Chỉ mục cho bảng `chitiethopdong`
--
ALTER TABLE `chitiethopdong`
  ADD PRIMARY KEY (`mahopdong`),
  ADD KEY `fk_hopdong_nhanvien` (`manhanvien`);

--
-- Chỉ mục cho bảng `chitietkhenthuong`
--
ALTER TABLE `chitietkhenthuong`
  ADD PRIMARY KEY (`makhenthuong`),
  ADD KEY `fk_khenthuong_nhanvien` (`manhanvien`);

--
-- Chỉ mục cho bảng `chitietngoaingu`
--
ALTER TABLE `chitietngoaingu`
  ADD PRIMARY KEY (`mangoaingu`),
  ADD KEY `fk_ngoaingu_nhanvien` (`manhanvien`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`machucvu`);

--
-- Chỉ mục cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dm` (`id_dm`),
  ADD KEY `fk_daotao_nhanvien` (`manhanvien`);

--
-- Chỉ mục cho bảng `chuyenmon`
--
ALTER TABLE `chuyenmon`
  ADD PRIMARY KEY (`machuyenmon`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sdt` (`sdt`),
  ADD UNIQUE KEY `gmail` (`gmail`);

--
-- Chỉ mục cho bảng `daotao`
--
ALTER TABLE `daotao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hopdonglaodong`
--
ALTER TABLE `hopdonglaodong`
  ADD PRIMARY KEY (`mahopdong`);

--
-- Chỉ mục cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  ADD PRIMARY KEY (`makhenthuong`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ngoaingu`
--
ALTER TABLE `ngoaingu`
  ADD PRIMARY KEY (`mangoaingu`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chuyenmon` (`machuyenmon`),
  ADD KEY `fk_chucvu` (`machucvu`),
  ADD KEY `fk_chinhanh` (`machinhanh`),
  ADD KEY `fk_phongban` (`maphongban`),
  ADD KEY `fk_trinhdo` (`mahedaotao`);

--
-- Chỉ mục cho bảng `nhan_vien_danh_gia`
--
ALTER TABLE `nhan_vien_danh_gia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danhgia_nv` (`id_nv`),
  ADD KEY `fk_danhgia_kh` (`id_kh`);

--
-- Chỉ mục cho bảng `phieuluong`
--
ALTER TABLE `phieuluong`
  ADD PRIMARY KEY (`maphieuluong`),
  ADD KEY `fk_phieuluong` (`manhanvien`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`maphongban`);

--
-- Chỉ mục cho bảng `trinhdohocvan`
--
ALTER TABLE `trinhdohocvan`
  ADD PRIMARY KEY (`mahedaotao`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `machinhanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiethopdong`
--
ALTER TABLE `chitiethopdong`
  MODIFY `mahopdong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietkhenthuong`
--
ALTER TABLE `chitietkhenthuong`
  MODIFY `makhenthuong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietngoaingu`
--
ALTER TABLE `chitietngoaingu`
  MODIFY `mangoaingu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `machucvu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `chuyenmon`
--
ALTER TABLE `chuyenmon`
  MODIFY `machuyenmon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `daotao`
--
ALTER TABLE `daotao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hopdonglaodong`
--
ALTER TABLE `hopdonglaodong`
  MODIFY `mahopdong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  MODIFY `makhenthuong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ngoaingu`
--
ALTER TABLE `ngoaingu`
  MODIFY `mangoaingu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `nhan_vien_danh_gia`
--
ALTER TABLE `nhan_vien_danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phieuluong`
--
ALTER TABLE `phieuluong`
  MODIFY `maphieuluong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phongban`
--
ALTER TABLE `phongban`
  MODIFY `maphongban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `trinhdohocvan`
--
ALTER TABLE `trinhdohocvan`
  MODIFY `mahedaotao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethopdong`
--
ALTER TABLE `chitiethopdong`
  ADD CONSTRAINT `fk_hopdong` FOREIGN KEY (`mahopdong`) REFERENCES `hopdonglaodong` (`mahopdong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hopdong_nhanvien` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietkhenthuong`
--
ALTER TABLE `chitietkhenthuong`
  ADD CONSTRAINT `fk_khenthuong` FOREIGN KEY (`makhenthuong`) REFERENCES `khenthuong` (`makhenthuong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_khenthuong_nhanvien` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietngoaingu`
--
ALTER TABLE `chitietngoaingu`
  ADD CONSTRAINT `fk_ngoaingu` FOREIGN KEY (`mangoaingu`) REFERENCES `ngoaingu` (`mangoaingu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ngoaingu_nhanvien` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  ADD CONSTRAINT `fk_daotao_nhanvien` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dm` FOREIGN KEY (`id_dm`) REFERENCES `daotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_chinhanh` FOREIGN KEY (`machinhanh`) REFERENCES `chinhanh` (`machinhanh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chucvu` FOREIGN KEY (`machucvu`) REFERENCES `chucvu` (`machucvu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chuyenmon` FOREIGN KEY (`machuyenmon`) REFERENCES `chuyenmon` (`machuyenmon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_phongban` FOREIGN KEY (`maphongban`) REFERENCES `phongban` (`maphongban`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_trinhdo` FOREIGN KEY (`mahedaotao`) REFERENCES `trinhdohocvan` (`mahedaotao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhan_vien_danh_gia`
--
ALTER TABLE `nhan_vien_danh_gia`
  ADD CONSTRAINT `fk_danhgia_kh` FOREIGN KEY (`id_kh`) REFERENCES `chuongtrinhdaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_danhgia_nv` FOREIGN KEY (`id_nv`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieuluong`
--
ALTER TABLE `phieuluong`
  ADD CONSTRAINT `fk_phieuluong` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
