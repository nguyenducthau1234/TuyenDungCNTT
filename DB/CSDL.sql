USE [master]
GO
/****** Object:  Database [Career]    Script Date: 2/17/2023 10:16:24 AM ******/
CREATE DATABASE [Career]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Career', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Career.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Career_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Career_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Career] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Career].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Career] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Career] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Career] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Career] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Career] SET ARITHABORT OFF 
GO
ALTER DATABASE [Career] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Career] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Career] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Career] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Career] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Career] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Career] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Career] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Career] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Career] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Career] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Career] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Career] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Career] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Career] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Career] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Career] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Career] SET RECOVERY FULL 
GO
ALTER DATABASE [Career] SET  MULTI_USER 
GO
ALTER DATABASE [Career] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Career] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Career] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Career] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Career] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Career] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Career', N'ON'
GO
ALTER DATABASE [Career] SET QUERY_STORE = ON
GO
ALTER DATABASE [Career] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Career]
GO
/****** Object:  Table [dbo].[tbl_BaiViet]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BaiViet](
	[PK_iMaBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[sTenBaiViet] [nvarchar](200) NULL,
	[sTieuDe] [nvarchar](100) NULL,
	[sAnhChinh] [nvarchar](200) NULL,
	[sNoiDung] [ntext] NULL,
	[FK_iMaTaiKhoan] [int] NULL,
	[dThoiGian] [datetime] NULL,
	[iLuotXem] [int] NULL,
	[sGhiChu] [nvarchar](500) NULL,
	[bTrangThai] [bit] NULL,
 CONSTRAINT [PK_tbl_BaiViet] PRIMARY KEY CLUSTERED 
(
	[PK_iMaBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CapBac]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CapBac](
	[PK_sMaCapBac] [nvarchar](50) NOT NULL,
	[sTenCapBac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_CapBac] PRIMARY KEY CLUSTERED 
(
	[PK_sMaCapBac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChuyenNganh]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChuyenNganh](
	[PK_sMaCN] [nvarchar](50) NOT NULL,
	[sTenCN] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[PK_sMaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DiaChi]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DiaChi](
	[PK_sMaDiaChi] [nvarchar](50) NOT NULL,
	[sTenDiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_DiaChi] PRIMARY KEY CLUSTERED 
(
	[PK_sMaDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoSoXinViec]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoSoXinViec](
	[PK_iMaHoSo] [int] IDENTITY(1,1) NOT NULL,
	[sTenHoSo] [nvarchar](200) NULL,
	[FK_iMaUngVien] [int] NOT NULL,
	[FK_sMaCN] [nvarchar](50) NOT NULL,
	[FK_sMaLoaiCV] [nvarchar](50) NULL,
	[FK_sMaCapBac] [nvarchar](50) NOT NULL,
	[sMucTieuNgheNghiep] [ntext] NULL,
	[sKinhNghiem] [ntext] NULL,
	[sKyNang] [nvarchar](200) NULL,
	[sHocVan] [ntext] NULL,
	[sKyNangMem] [nvarchar](200) NULL,
	[sGiaiThuong] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_HoSoXinViec_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaHoSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiCongViec]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiCongViec](
	[PK_sMaLoaiCV] [nvarchar](50) NOT NULL,
	[sTenLoaiCV] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_LoaiCongViec] PRIMARY KEY CLUSTERED 
(
	[PK_sMaLoaiCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MucLuong]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MucLuong](
	[PK_sMaMucLuong] [nvarchar](50) NOT NULL,
	[sTenMucLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_MucLuong] PRIMARY KEY CLUSTERED 
(
	[PK_sMaMucLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaTuyenDung]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaTuyenDung](
	[PK_iMaNTD] [int] NOT NULL,
	[sTenNTD] [nvarchar](200) NULL,
	[sTenNDD] [nvarchar](100) NULL,
	[sChucVuNDD] [nvarchar](50) NULL,
	[sSoDienThoai] [nvarchar](10) NULL,
	[sAnhBia] [nvarchar](200) NULL,
	[sAnhDaiDien] [nvarchar](200) NULL,
	[sQuyMo] [nvarchar](50) NULL,
	[sMoTa] [nvarchar](250) NULL,
	[sDiaChi] [nvarchar](250) NULL,
	[sWebsite] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_NhaTuyenDung] PRIMARY KEY CLUSTERED 
(
	[PK_iMaNTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Quyen]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Quyen](
	[PK_iMaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[sTenQuyen] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_Quyen] PRIMARY KEY CLUSTERED 
(
	[PK_iMaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[PK_iMaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[sEmail] [nvarchar](100) NULL,
	[sMatKhau] [nvarchar](100) NULL,
	[FK_iMaQuyen] [int] NULL,
	[dNgayTao] [datetime] NULL,
	[bTrangThai] [bit] NULL,
 CONSTRAINT [PK_tbl_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TinTuyenDung]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TinTuyenDung](
	[PK_iMaTTD] [int] IDENTITY(1,1) NOT NULL,
	[FK_iMaNTD] [int] NOT NULL,
	[FK_sMaCN] [nvarchar](50) NOT NULL,
	[FK_sMaLoaiCV] [nvarchar](50) NOT NULL,
	[FK_sMaMucLuong] [nvarchar](50) NOT NULL,
	[FK_sMaCapBac] [nvarchar](50) NOT NULL,
	[FK_sMaDiaChi] [nvarchar](50) NULL,
	[sTenCongViec] [nvarchar](250) NULL,
	[sDiaChiLamViec] [nvarchar](250) NULL,
	[iSoLuong] [int] NULL,
	[sGioiTinhYC] [nvarchar](50) NULL,
	[sMoTaCongViec] [ntext] NULL,
	[sYeuCauUngVien] [ntext] NULL,
	[sKyNangLienQuan] [ntext] NULL,
	[sQuyenLoi] [ntext] NULL,
	[dNgayDang] [datetime] NULL,
	[dHanNop] [datetime] NULL,
	[iLuotXem] [int] NULL,
	[sGhiChu] [nvarchar](500) NULL,
	[bTrangThai] [bit] NULL,
 CONSTRAINT [PK_tbl_TinTuyenDung] PRIMARY KEY CLUSTERED 
(
	[PK_iMaTTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UngTuyen]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UngTuyen](
	[PK_iMaUngVien] [int] NOT NULL,
	[FK_iMaTTD] [int] NOT NULL,
	[sLinkHoSo] [nvarchar](150) NULL,
	[dNgayUngTuyen] [datetime] NULL,
	[sTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_UngTuyen] PRIMARY KEY CLUSTERED 
(
	[PK_iMaUngVien] ASC,
	[FK_iMaTTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UngVien]    Script Date: 2/17/2023 10:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UngVien](
	[PK_iMaUngVien] [int] NOT NULL,
	[sTenUngVien] [nvarchar](200) NULL,
	[sSoDienThoai] [nvarchar](10) NULL,
	[sGioiTinh] [nvarchar](3) NULL,
	[dNgaySinh] [date] NULL,
	[sAnhDaiDien] [nvarchar](200) NULL,
	[sAnhBia] [nvarchar](200) NULL,
	[sDiaChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_tbl_UngVien_1] PRIMARY KEY CLUSTERED 
(
	[PK_iMaUngVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_BaiViet] ADD  CONSTRAINT [DF_tbl_BaiViet_iLuotXem]  DEFAULT ((0)) FOR [iLuotXem]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] ADD  CONSTRAINT [DF_tbl_TinTuyenDung_dNgayDang]  DEFAULT (getdate()) FOR [dNgayDang]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] ADD  CONSTRAINT [DF_tbl_TinTuyenDung_iLuotXem]  DEFAULT ((0)) FOR [iLuotXem]
GO
ALTER TABLE [dbo].[tbl_BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_BaiViet_tbl_TaiKhoan] FOREIGN KEY([FK_iMaTaiKhoan])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan])
GO
ALTER TABLE [dbo].[tbl_BaiViet] CHECK CONSTRAINT [FK_tbl_BaiViet_tbl_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_CapBac] FOREIGN KEY([FK_sMaCapBac])
REFERENCES [dbo].[tbl_CapBac] ([PK_sMaCapBac])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_CapBac]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_ChuyenNganh] FOREIGN KEY([FK_sMaCN])
REFERENCES [dbo].[tbl_ChuyenNganh] ([PK_sMaCN])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_ChuyenNganh]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_LoaiCongViec] FOREIGN KEY([FK_sMaLoaiCV])
REFERENCES [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_LoaiCongViec]
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoSoXinViec_tbl_UngVien] FOREIGN KEY([FK_iMaUngVien])
REFERENCES [dbo].[tbl_UngVien] ([PK_iMaUngVien])
GO
ALTER TABLE [dbo].[tbl_HoSoXinViec] CHECK CONSTRAINT [FK_tbl_HoSoXinViec_tbl_UngVien]
GO
ALTER TABLE [dbo].[tbl_NhaTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhaTuyenDung_tbl_TaiKhoan] FOREIGN KEY([PK_iMaNTD])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan])
GO
ALTER TABLE [dbo].[tbl_NhaTuyenDung] CHECK CONSTRAINT [FK_tbl_NhaTuyenDung_tbl_TaiKhoan]
GO
ALTER TABLE [dbo].[tbl_TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TaiKhoan_tbl_Quyen] FOREIGN KEY([FK_iMaQuyen])
REFERENCES [dbo].[tbl_Quyen] ([PK_iMaQuyen])
GO
ALTER TABLE [dbo].[tbl_TaiKhoan] CHECK CONSTRAINT [FK_tbl_TaiKhoan_tbl_Quyen]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_CapBac] FOREIGN KEY([FK_sMaCapBac])
REFERENCES [dbo].[tbl_CapBac] ([PK_sMaCapBac])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_CapBac]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_ChuyenNganh] FOREIGN KEY([FK_sMaCN])
REFERENCES [dbo].[tbl_ChuyenNganh] ([PK_sMaCN])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_ChuyenNganh]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_DiaChi] FOREIGN KEY([FK_sMaDiaChi])
REFERENCES [dbo].[tbl_DiaChi] ([PK_sMaDiaChi])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_DiaChi]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_LoaiCongViec] FOREIGN KEY([FK_sMaLoaiCV])
REFERENCES [dbo].[tbl_LoaiCongViec] ([PK_sMaLoaiCV])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_LoaiCongViec]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_MucLuong] FOREIGN KEY([FK_sMaMucLuong])
REFERENCES [dbo].[tbl_MucLuong] ([PK_sMaMucLuong])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_MucLuong]
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinTuyenDung_tbl_NhaTuyenDung] FOREIGN KEY([FK_iMaNTD])
REFERENCES [dbo].[tbl_NhaTuyenDung] ([PK_iMaNTD])
GO
ALTER TABLE [dbo].[tbl_TinTuyenDung] CHECK CONSTRAINT [FK_tbl_TinTuyenDung_tbl_NhaTuyenDung]
GO
ALTER TABLE [dbo].[tbl_UngTuyen]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UngTuyen_tbl_TinTuyenDung1] FOREIGN KEY([FK_iMaTTD])
REFERENCES [dbo].[tbl_TinTuyenDung] ([PK_iMaTTD])
GO
ALTER TABLE [dbo].[tbl_UngTuyen] CHECK CONSTRAINT [FK_tbl_UngTuyen_tbl_TinTuyenDung1]
GO
ALTER TABLE [dbo].[tbl_UngTuyen]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UngTuyen_tbl_UngVien] FOREIGN KEY([PK_iMaUngVien])
REFERENCES [dbo].[tbl_UngVien] ([PK_iMaUngVien])
GO
ALTER TABLE [dbo].[tbl_UngTuyen] CHECK CONSTRAINT [FK_tbl_UngTuyen_tbl_UngVien]
GO
ALTER TABLE [dbo].[tbl_UngVien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UngVien_tbl_TaiKhoan] FOREIGN KEY([PK_iMaUngVien])
REFERENCES [dbo].[tbl_TaiKhoan] ([PK_iMaTaiKhoan])
GO
ALTER TABLE [dbo].[tbl_UngVien] CHECK CONSTRAINT [FK_tbl_UngVien_tbl_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [Career] SET  READ_WRITE 
GO
