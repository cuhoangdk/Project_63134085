USE [master]
GO
/****** Object:  Database [Project_63134085]    Script Date: 23/11/2023 22:12:06 ******/
CREATE DATABASE [Project_63134085]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_63134085', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Project_63134085.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_63134085_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Project_63134085_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Project_63134085] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_63134085].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_63134085] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_63134085] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_63134085] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_63134085] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_63134085] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_63134085] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Project_63134085] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_63134085] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_63134085] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_63134085] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_63134085] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_63134085] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_63134085] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_63134085] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_63134085] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_63134085] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_63134085] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_63134085] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_63134085] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_63134085] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_63134085] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_63134085] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_63134085] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project_63134085] SET  MULTI_USER 
GO
ALTER DATABASE [Project_63134085] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_63134085] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_63134085] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_63134085] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_63134085] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_63134085] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Project_63134085] SET QUERY_STORE = ON
GO
ALTER DATABASE [Project_63134085] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Project_63134085]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietGioHang]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietGioHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGioHang] [char](25) NULL,
	[MaSanPham] [char](25) NULL,
	[SoLuong] [int] NULL,
	[NgayThem] [datetime] NULL,
	[Gia] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [char](25) NOT NULL,
	[MaSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TenSP] [nvarchar](150) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[CanNang] [float] NULL,
	[DoNoi] [float] NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tGioHang]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tGioHang](
	[MaGioHang] [char](25) NOT NULL,
	[MaKhachHang] [char](25) NULL,
	[NgayCapNhat] [datetime] NULL,
	[TongTienHD] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tGioHang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [char](25) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[MaKhachHang] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[Ten] [nvarchar](150) NULL,
	[TrangThai] [nvarchar](100) NULL,
	[DienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[password] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[password] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 23/11/2023 22:12:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-135.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-156.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-170.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-21.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-289.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-297.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-318.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-450.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-471.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-53.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-640.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-678.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-684.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-738.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-819.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-827.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-882.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-9.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-953.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirbl             ', N'balo-can-keo-roncato-ironik-black-977.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-180.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-207.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-282.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-347.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-38.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-384.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-396.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-435.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-477.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-5.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-529.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-589.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-659.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-717.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-742.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-803.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-842.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-85.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-910.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'bacakeroirgr             ', N'balo-can-keo-roncato-ironik-green-941.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-172.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-179.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-264.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-347.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-416.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-51.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-624.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-663.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-673.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-79.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroru3do                ', N'balo-roncato-runaway-03-do-819.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-144.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-295.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-297.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-311.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-354.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-501.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-513.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-529.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-634.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorude                 ', N'balo-roncato-runway-den-751.jpg                                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-138.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-191.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-343.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-393.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-594.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-623.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-665.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-715.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'baroruho                 ', N'balo-roncato-runaway-hong-767.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-111.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-261.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-434.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-472.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-48.jpg                                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-496.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-550.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-756.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-810.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'barorutr                 ', N'balo-roncato-runaway-trang-925.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-970.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'boduxaphlencl            ', N'bo-dung-xa-phong-lewis-n-clark-979.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-148.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-635.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'botududolencl            ', N'bo-3-tui-dung-do-lewis-n-clark-987.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-108.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-295.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-332.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-516.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-578.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-730.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagede               ', N'cap-da-nam-gentle-den-924.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-392.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-433.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-622.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-641.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-713.jpg                                                                       ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-810.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagena               ', N'cap-da-nam-gentle-nau-907.jpg                                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-218.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-324.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-368.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-633.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-928.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'cadanagenadabo           ', N'cap-da-nam-gentle-nau-da-bo-970.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'caditunhgolencl          ', N'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'caditunhgolencl          ', N'can-dien-tu-nho-gon-lewis-n-clark-757.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-282.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-305.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-306.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-382.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-390.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-408.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-414.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-464.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-464-1455597014.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-48.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-540.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-570.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-736.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-738.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-816.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-829.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-83.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-871.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'carohe6de                ', N'cap-roncato-heritage-15-6-den-996.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'dadavakhtsde             ', N'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'dadavakhtslencl          ', N'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-381.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-499.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecogelamacode         ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-834.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecohicalencl          ', N'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gokecokikolencl          ', N'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-460.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-709.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'gicaditocalencl          ', N'giac-cam-dien-toan-cau-lewis-n-clark-756.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmadelencl            ', N'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmadelencl            ', N'mieng-che-mat-den-lewis-n-clark-686.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmadolencl            ', N'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmadolencl            ', N'mieng-che-mat-do-lewis-n-clark-547.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmaxanalencl          ', N'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'michmaxanalencl          ', N'mieng-che-mat-xanh-navy-lewis-n-clark-615.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-957.jpg                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-261.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-68.jpg                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tubatudupavemaba         ', N'tui-bao-tu-dung-passport-ve-may-bay-xanh-lewis-n-clark-833.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-70.jpg                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-798.jpg                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-100.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-287.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-498.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudecodupavemaba         ', N'tui-deo-co-dung-passport-ve-may-bay-xanh-lewis-n-clark-588.jpg                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-772.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-783.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudodudolencl            ', N'tui-doi-dung-do-lewis-n-clark-796.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududithchthnule         ', N'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-531.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-730.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosilodelen          ', N'tui-dung-do-size-lon-den-lewis-n-clark-998.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-826.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-855.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosiloxalen          ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-930.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-303.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-675.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-72.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tududosinhdelen          ', N'tui-dung-do-size-nho-den-lewis-n-clark-957.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-168.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-340.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-410.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-575.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphnalencl          ', N'tui-dung-my-pham-nau-lewis-n-clark-948.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-159.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-476.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-852.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-906.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tudumyphxalencl          ', N'tui-dung-my-pham-xam-lewis-n-clark-945.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-134.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-141.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-26.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-328.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-355.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-39.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-421.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-463.jpg                                                  ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-48.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-49.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-619.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-626.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-699.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-722.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-727.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-75.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-818.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-891.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukepesprohovaxa         ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-988.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-131.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-154.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-165.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-198.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-326.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-520.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-541.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-554.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-584.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-591.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-610.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-665.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-716.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-745.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-757.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-769.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-784.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-868.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimabainbl           ', N'tui-keo-ricardo-malibu-bay-indigo-blue-99.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimavide             ', N'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimavixadu           ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tukerimavixadu           ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-937.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-275.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-290.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-302.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-41.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-438.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-481.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-511.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-517.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-561.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-574.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-692.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-701.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-78.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-8.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-844.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-962.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turoboboxare             ', N'tui-roncato-borsa-boston-xanh-reu-991.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-316.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-387.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-469.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-476.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-544.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-764.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-767.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-881.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turobopotana             ', N'tui-roncato-borsello-porta-tablet-nau-905.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-120.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-263.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-265.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-488.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-54.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-561.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-597.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-633.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-702.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-774.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-781.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-977.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacode               ', N'tui-roncato-cartella-2-comparti-den-999.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-200.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-263.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-269.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-367.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-388.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-498.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-55.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-564.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-597.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-632.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-698.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-752.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-852.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocacona               ', N'tui-roncato-cartella-2-comparti-nau-930.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-20.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-307.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-321.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-327.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-417.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-480.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-486.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-509.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-515.jpg                                                            ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-517.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-627.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-661.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-664.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-705.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-730.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-765.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-785.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-806.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-881.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahade               ', N'tui-roncato-cartella-harvard-den-992.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-108.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-135.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-135-1466050239.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-162.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-192.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-392.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-394.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-443.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-458.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-458-1466050239.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-463.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-489.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-49.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-555.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-612.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-631.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-692.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-750.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-778.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turocahana               ', N'tui-roncato-cartella-harvard-nau-967.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-122.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-171.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-264.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-282.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-433.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-446.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-558.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-581.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-609.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-620.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-657.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-666.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-667.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-685.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-709.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-782.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-821.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turohede                 ', N'tui-roncato-heritage-15-4-den-876.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-105.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-112.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-120.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-232.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-403.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-418.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-453.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-470.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-486.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-528.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-591.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-622.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-655.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-665.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-713.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-717.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-802.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-876.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-935.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'turowina                 ', N'tui-roncato-wireless-nau-941.jpg                                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tutrdotrtodelen          ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tutrdotrtodelen          ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-841.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-558.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'tuxadechbalencl          ', N'tui-xach-deo-cheo-balo-lewis-n-clark-894.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-203.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-216.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-224.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-330.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-439.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-49.jpg                                                       ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-494.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-500.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-503.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-614.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-747.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-755.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-913.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-922.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-925.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-932.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-945.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-982.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tado          ', N'vali-keo-ricardo-san-clemente-6-tac-do-984.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-15.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-170.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-181.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-289.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-30.jpg                                              ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-300.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-388.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-419.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-448.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-571.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-575.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-581.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-588.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-601.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-64.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-739.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-779.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-849.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6tamo          ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-895.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-287.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-296.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-31.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-336.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-389.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-392.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-414.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-555.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-625.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-677.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-765.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-797.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-821.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-876.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-90.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-92.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-922.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-934.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vakerisacl6taxa          ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-964.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-12.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-152.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-169.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-289.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-305.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-33.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-332.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-427.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-451.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-491.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-50.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-582.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-632.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-732.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-737.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-762.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-773.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-953.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapesk5tahovaxa          ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-991.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-161.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-183.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-187.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-229.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-242.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-25.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-258.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-323.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-347.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-446.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-461.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-5.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-584.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-596.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-645.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-752.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-788.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-924.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vapespro6tahova          ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-934.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-145.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-220.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-25.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-343.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-401.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-447.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-456.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-471.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-473.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-491.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-574.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-696.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-778.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-8.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-852.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-913.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-980.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-984.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tagr            ', N'vali-ricardo-malibu-bay-5-tac-grey-986.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-163.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-178.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-201.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-21.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-319.jpg                                                   ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-33.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-334.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-366.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-414.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-447.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-589.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-671.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-69.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-750.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-753.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-765.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-826.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-885.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-922.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-929.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-976.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba5tainbl          ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-981.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-143.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-163.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-170.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-195.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-22.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-297.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-340.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-391.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-409.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-435.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-469.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-484.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-534.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-58.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-69.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-725.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-768.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-825.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-844.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-856.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-882.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimaba6tainbl          ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-938.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-440.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-518.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide6ta            ', N'vali-ricardo-mar-vista-2-0-den-6-tac-73.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-631.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-751.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavide7ta            ', N'vali-ricardo-mar-vista-2-0-den-7-tac-844.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-573.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu5            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-625.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-419.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-581.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varimavixadu7            ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-611.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold1652.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold167.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold2682.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold4442.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold514.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold5167.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold558.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold5662.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6616.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6804.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold6888.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold7363.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold7796.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8332.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8866.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold8888.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold9187.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'variocdr5tago            ', N'vali-riacrdo-ocean-drive-5-tac-gold983.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-145.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-192.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-194.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-210.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-226.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-29.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-331.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-348.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-36.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-371.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-440.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-479.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-494.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-569.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-577.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-615.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-643.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-716.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tado            ', N'vali-ricardo-san-clemente-5-tac-do-772.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-258.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-315.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-345.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-366.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-405.jpg                                                 ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-460.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-522.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-543.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-563.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-596.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-63.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-664.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-686.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-877.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-883.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-912.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-914.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-970.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5tamosi          ', N'vali-ricardo-san-clemente-5-tac-moon-silver-981.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-217.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-252.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-386.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-417.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-43.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-444.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-471.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-514.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-537.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-56.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-659.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-706.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-725.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-754.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-789.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-840.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-842.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-874.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varisacl5taxa            ', N'vali-ricardo-san-clemente-5-tac-xanh-897.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-324.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-371.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-387.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-41.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-488.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-600.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-727.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-78.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-80.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-825.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-827-1473693199.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-835.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-848.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-884.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-902.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-904.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varish5tade              ', N'vali-ricardo-sherwood-5-tac-den-971.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-263.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-274.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-385.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-385-1468413241.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-407.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-43.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-460.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-477.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-515.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-529.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-536.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-583.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-622.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-760.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-815.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-867.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-891.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-903.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-950.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobobl6ta              ', N'vali-roncato-box-blue-6-tac-98.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-13.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-29.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-32.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-323.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-347.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-347-1467270947.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-399.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-470.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-488.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-573.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-6.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-634.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-648.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-834.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-850.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-909.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-936.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-941.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxadu6ta            ', N'vali-roncato-box-xanh-duong-6-tac-971.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-132.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-242.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-339.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-343.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-386.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-394.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-432.jpg                                                            ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-445.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-518.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-537.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-612.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-642.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-681.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-699.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-787.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-80.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-867.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-891.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoboxang6ta            ', N'vali-roncato-box-xanh-ngoc-6-tac-911.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-14.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-164.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-363.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-392.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-401.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-486.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-521.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-53.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-625.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-636.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-673.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-708.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-734.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-764.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-847.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varobr7taho              ', N'vali-roncato-breeze-7-tac-hong-888.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-109.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-225.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-267.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-328.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-340.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-380.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-455.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-539.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-611.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-612.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-625.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-637.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-693.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-700.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-772.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-828.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-95.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirbl5ta              ', N'vali-roncato-ironik-black-5-tac-974.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1424.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1620.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac1756.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac177.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac2071.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac3414.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac4763.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac5054.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac590.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac5986.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac7415.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac7553.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac780.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac800.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-green-5-tac9630.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-109.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-246.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-249.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-336.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-400.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-467.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-503.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-506.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-540.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-552.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-617.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-633.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-688.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-70.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-777.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-779.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-895.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoirgr5ta              ', N'vali-roncato-ironik-grey-5-tac-989.jpg                                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-145.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-19.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-282.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-33.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-36.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-40.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-452.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-512.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-570.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-597.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-642.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-726.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-765.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-769.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-832.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-91.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-920.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-947.jpg                                                     ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech5ta            ', N'vali-roncato-uno-deluxe-champagne-5-tac-953.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-120.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-142.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-171.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-228.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-246.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-386.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-396.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-418.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-600.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-631.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-631-1451900346.jpg                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-664.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-671.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-706.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-807.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-873.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-925.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech6ta            ', N'vali-roncato-uno-deluxe-champagne-6-tac-983.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-266.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-299.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-309.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-314.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-355.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-364.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-393.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-534.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-641.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-650.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-673.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-681.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-690.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-742.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-772.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-865.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-89.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-895.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundech7ta            ', N'vali-roncato-uno-deluxe-champagne-7-tac-972.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-124.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-33.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-346.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-379.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-421.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-432.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-45.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-458.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-492.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-631.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-645.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-672.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-697.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-865.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-866.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-88.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-89.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-911.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl5          ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-980.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-195.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-245.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-247.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-280.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-295.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-343.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-449.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-467.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-528.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-557.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-636.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-68.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-685.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-703.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-810.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-84.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-840.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-87.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl6          ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-966.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-240.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-314.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-355.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-425.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-551.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-560.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-595.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-657.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-668.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-669.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-702.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-760.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-773.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-8.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-857.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-928.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-952.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-953.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoundezicabl7          ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-958.jpg                                              ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1972.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl2388.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl3410.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl397.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl406.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl4106.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl4776.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl5028.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl5394.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl6083.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl669.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl6752.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl7197.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl7592.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8066.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8129.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl8908.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl9391.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide5tape          ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl9620.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl1302.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl1526.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl2422.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl248.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3024.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3624.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl3719.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl4818.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl5094.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl5314.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl6444.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7793.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7860.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl7961.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl8740.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl8808.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9511.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9673.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide6tape          ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl9685.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1541.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl2447.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3612.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3695.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl3805.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl4614.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl484.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl4959.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl5726.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl5823.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl7114.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl7253.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8099.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8612.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8630.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8852.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl8939.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl9032.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzide7tape          ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl9109.jpg                                                     ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-164.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-229.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-266.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-3.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-311.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-360.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-374.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-391.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-404.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-418.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-425.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-460.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-641.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-660.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-665.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-700.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-716.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-799.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprbl5ta          ', N'vali-roncato-uno-zsl-premium-black-5-tac-8.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-172.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-177.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-240.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-266.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-380.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-447.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-530.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-535.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-573.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-64.jpg                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-643.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-738.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-748.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-759.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varounzsprsiwibl         ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-881.jpg                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-157.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-240.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-253.jpg                                                            ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-270.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-295.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-301.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-367.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-424.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-528.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-541.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-566.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-607.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-669.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-763.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-794.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-844.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-863.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-885.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varovesl5tati            ', N'vali-roncato-venice-sl-5-tac-tim-897.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-100.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-13.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-18.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-20.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-22.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-246.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-275.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-291.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-428.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-449.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-551.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-714.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-734.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-745.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-77.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-915.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-921.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tade            ', N'vali-roncato-zero-gravity-5-tac-den-973.jpg                                                         ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-233.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-239.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-442.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-472.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-493.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-507.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-508.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-59.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-654.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-678.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-780.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-828.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-852.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-90.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-911.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-951.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-973.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr5tado            ', N'vali-roncato-zero-gravity-5-tac-do-982.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-144.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-210.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-217.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-257.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-261.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-351.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-376.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-409.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-421.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-535.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-6.jpg                                                          ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-629.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-647.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-737.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-827.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-835.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-867.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-927.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varozegr6tabl            ', N'vali-roncato-zero-gravity-6-tac-blue-989.jpg                                                        ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue1713.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3200.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3312.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3582.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue3799.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue4683.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5042.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5205.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue5235.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue6347.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue6804.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue8133.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue8343.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabl          ', N'vali-roncato-zip-premium-carbon-5-tac-blue9458.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux173.jpg                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1856.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux2749.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux3358.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux4712.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux5053.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux5313.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux6103.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux63.jpg                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux6836.jpg                                              ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux7392.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8336.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8673.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca5tabo          ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux8953.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue2282.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue2845.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue3656.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue3951.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4139.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4550.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue472.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue4960.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue5938.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue6923.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue7141.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue7249.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue8881.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabl          ', N'vali-roncato-zip-premium-carbon-6-tac-blue9615.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4063.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4530.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux4998.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux6990.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7166.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7515.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7518.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7694.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux7805.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8158.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8569.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux8982.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux9800.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca6tabo          ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux9833.jpg                                              ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue2782.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue2839.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue3325.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5186.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5586.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue5908.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue607.jpg                                                   ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6242.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6679.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6723.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6943.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue6950.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue7679.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'varoziprca7tabl          ', N'vali-roncato-zip-premium-carbon-7-tac-blue9615.jpg                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-257.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-291.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-320.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-405.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-623.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-631.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-671.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-68.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-68-1437530249.jpg                                                      ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-776.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxa              ', N'vali-skyway-nimbus-5-tac-xam-792.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-212.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-23.jpg                                                             ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-379.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-466.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-493.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-493-1437530045.jpg                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-539.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-688.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-779.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-785.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni5taxala            ', N'vali-skyway-nimbus-5-tac-xanh-la-862.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-145.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-182.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-267.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-267-1445250373.jpg                                                    ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-322.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-410.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-417.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-435.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-466.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-497.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-51.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-526.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-637.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-698.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-917.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taho              ', N'vali-skyway-nimbus-6-tac-hong-951.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-230.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-391.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-445.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-500.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-531.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-591.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-704.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-707.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-788.jpg                                                               ')
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-799.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-805.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-926.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-929.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-93.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-941.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni6taxa              ', N'vali-skyway-nimbus-6-tac-xanh-957.jpg                                                               ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-209.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-216.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-324.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-377.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-505.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-526.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-532.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-564.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-625.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-653.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-778.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-842.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-85.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-902.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-93.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vaskni7tade              ', N'vali-skyway-nimbus-7-tac-den-995.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-491.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-604.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-823.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-839.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidadupalencl            ', N'vi-da-dung-passport-lewis-n-clark-912.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-226.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-342.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-498.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-742.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-750.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1dude            ', N'vi-da-nam-fredo-01-dung-den-847.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-139.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-190.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-230.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-577.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-733.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1duna            ', N'vi-da-nam-fredo-01-dung-nau-868.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-317.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-415.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-447.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-621.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-931.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngde            ', N'vi-da-nam-fredo-01-ngang-den-98.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-216.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-607.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-671.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-695.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr1ngna            ', N'vi-da-nam-fredo-01-ngang-nau-782.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-232.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-499.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-507.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-835.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-872.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngde            ', N'vi-da-nam-fredo-02-ngang-den-874.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-606.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-64.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-71.jpg                                                                 ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-715.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-823.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr2ngna            ', N'vi-da-nam-fredo-02-ngang-nau-920.jpg                                                                ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-205.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-457.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-570.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-826.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-904.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'vidanafr3ngxare          ', N'vi-da-nam-fredo-03-ngang-xanh-reu-931.jpg                                                           ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-324.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-396.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-448.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-449.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-578.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-621.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-780.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-838.jpg                                                            ')
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh]) VALUES (N'viroornadabo             ', N'vi-roncato-orizzontale-nau-da-bo-92.jpg                                                             ')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n                        ', N'Nhựa cứng')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'string                   ', N'string')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'v                        ', N'Vải')
GO
SET IDENTITY_INSERT [dbo].[tChiTietHDB] ON 

INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (1, N'HD001                    ', N'bacakeroirbl             ', 4, 8000000.0000, NULL, N'Balo Cán Kéo Roncato Ironik Green', N'balo-roncato-runaway-trang-111.jpg                                                                  ', N'Ba lô')
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (2, N'HD002                    ', N'baroru3do                ', 3, 6000000.0000, NULL, N'Balo Roncato Runaway 03 Đỏ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ', N'Ba lô')
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (3, N'HD003                    ', N'botududolencl            ', 4, 8000000.0000, NULL, N'bộ túi đựng đồ lewis n clark', N'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ', N'Bộ')
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (4, N'HD004                    ', N'bacakeroirbl             ', 1, 2000000.0000, NULL, N'Balo Cán Kéo Roncato Ironik Green', N'balo-roncato-runaway-trang-111.jpg                                                                  ', N'Ba lô')
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (5, N'HD004                    ', N'gicaditocalencl          ', 1, 2000000.0000, NULL, N'giac cam dien toan cau lewis n clark', N'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ', N'Giắc cắm điện')
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GhiChu], [TenSP], [AnhDaiDien], [Loai]) VALUES (6, N'HD004                    ', N'barorude                 ', 1, 2000000.0000, NULL, N'Balo Roncato Runway Đen', N'balo-roncato-runway-den-144.jpg                                                                     ', N'Ba lô')
SET IDENTITY_INSERT [dbo].[tChiTietHDB] OFF
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'bacakeroirbl             ', N'Balo Cán Kéo Roncato Ironik Black', N'v                        ', 3, 3, N'rbh                      ', N'my                       ', 2, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'nd                       ', N'balo-roncato-runway-den-501.jpg                                                                     ', 2000000.0000, 2500000.0000, 95)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'bacakeroirgr             ', N'Balo Cán Kéo Roncato Ironik Green', N'n                        ', 4, 5, N'rbh                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'nd                       ', N'balo-can-keo-roncato-ironik-green-180.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'baroru3do                ', N'Balo Roncato Runaway 03 Đỏ', N'v                        ', 3.8, 5, N'rbh                      ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'ls                       ', N'balo-roncato-runaway-03-do-1.jpg                                                                    ', 2000000.0000, 2500000.0000, 97)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'barorude                 ', N'Balo Roncato Runway Đen', N'n                        ', 3.8, 5, N'rbh                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'nd                       ', N'balo-roncato-runway-den-144.jpg                                                                     ', 2000000.0000, 2500000.0000, 99)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'baroruho                 ', N'Balo Roncato Runaway Hồng', N'n                        ', 3.8, 5, N'rbh                      ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'ls                       ', N'balo-roncato-runaway-hong-138.jpg                                                                   ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'barorutr                 ', N'balo roncato runaway trắng', N'v                        ', 3.8, 5, N'rbh                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'balo                     ', N'nd                       ', N'balo-roncato-runaway-trang-111.jpg                                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'boduxaphlencl            ', N'bộ đựng xà phòng lewis n clark', N'n                        ', 3.8, 5, N'rbh                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'bo                       ', N'nd                       ', N'bo-dung-xa-phong-lewis-n-clark-200.jpg                                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'botududolencl            ', N'bộ túi đựng đồ lewis n clark', N'v                        ', 3.8, 5, N'rbh                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'bo                       ', N'nd                       ', N'bo-3-tui-dung-do-lewis-n-clark-10.jpg                                                               ', 2000000.0000, 2500000.0000, 96)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'cadanagede               ', N'cặp da nam gentle đen', N'n                        ', 3.8, 5, N'sky                      ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'cap                      ', N'dn                       ', N'cap-da-nam-gentle-den-108.jpg                                                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'cadanagena               ', N'cặp da nam gentle nâu', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'cap                      ', N'nd                       ', N'cap-da-nam-gentle-nau-392.jpg                                                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'cadanagenadabo           ', N'cặp da nam gentle nâu da bò', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'cap                      ', N'nd                       ', N'cap-da-nam-gentle-nau-da-bo-192.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'caditunhgolencl          ', N'Cân điện tử nhỏ gọn lewis n clark', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'can                      ', N'nd                       ', N'can-dien-tu-nho-gon-lewis-n-clark-109.jpg                                                           ', 700000.0000, 1000000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'carohe6de                ', N'cặp roncato heritage 15 6 đen', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'cap                      ', N'nd                       ', N'cap-roncato-heritage-15-6-den-197.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'dadavakhtsde             ', N'dây đai vali khoá tsa đen', N'n                        ', 3.8, 5, N'rbh                      ', N'dc                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'day                      ', N'dl                       ', N'day-dai-vali-khoa-tsa-den-50.jpg                                                                    ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'dadavakhtslencl          ', N'dây đai vali khoá tsa lewis n clark', N'v                        ', 3.8, 5, N'rbh                      ', N'dc                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'day                      ', N'dl                       ', N'day-dai-vali-khoa-tsa-lewis-n-clark-813.jpg                                                         ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'gokecogelamacode         ', N'gối kê cổ gel làm mát cổ đen lewis n clark', N'v                        ', 3.8, 5, N'rbh                      ', N'dc                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'goi                      ', N'dl                       ', N'goi-ke-co-gel-lam-mat-co-den-lewis-n-clark-226.jpg                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'gokecohicalencl          ', N'gối kê cổ hình cá lewis n clark', N'v                        ', 3.8, 5, N'rbh                      ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'goi                      ', N'dn                       ', N'goi-ke-co-hinh-ca-lewis-n-clark-624.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'gokecokikolencl          ', N'gối kê cổ king kong lewis n clark', N'n                        ', 3.8, 5, N'rbh                      ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'goi                      ', N'dn                       ', N'goi-ke-co-king-kong-lewis-n-clark-799.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'gicaditocalencl          ', N'giác cắm điện toàn cầu lewis n clark', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'giac                     ', N'nd                       ', N'giac-cam-dien-toan-cau-lewis-n-clark-437.jpg                                                        ', 2000000.0000, 2500000.0000, 99)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'michmadelencl            ', N'Miếng che mắt đen lewis n clark', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'mieng                    ', N'nd                       ', N'mieng-che-mat-den-lewis-n-clark-504.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'michmadolencl            ', N'miếng che mắt đỏ lewis n clark', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'mieng                    ', N'nd                       ', N'mieng-che-mat-do-lewis-n-clark-444.jpg                                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'michmaxanalencl          ', N'miếng che mắt xanh navy lewis n clark', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'mieng                    ', N'nd                       ', N'mieng-che-mat-xanh-navy-lewis-n-clark-112.jpg                                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tubatudupavemaba         ', N'túi bao tư dụng passport vé máy bay xanh lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-bao-tu-dung-passport-ve-may-bay-den-lewis-n-clark-847.jpg                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tudecodupavemaba         ', N'túi đeo cổ đựng passport vé máy bay xanh lewis n clark', N'n                        ', 3.8, 5, N'sky                      ', N'vn                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'ls                       ', N'tui-deo-co-dung-passport-ve-may-bay-den-lewis-n-clark-237.jpg                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tudodudolencl            ', N'túi đôi đựng đò lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'ls                       ', N'tui-doi-dung-do-lewis-n-clark-247.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tududithchthnule         ', N'túi đựng điện thoại chống thấm nước lewis n clark', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-dung-dien-thoai-chong-tham-nuoc-lewis-n-clark-232.jpg                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tududosilodelen          ', N'túi đựng đồ size lớn đen lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-dung-do-size-lon-den-lewis-n-clark-236.jpg                                                      ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tududosiloxalen          ', N'túi đựng đồ size lớn xanh lewis n clark', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-dung-do-size-lon-xanh-lewis-n-clark-695.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tududosinhdelen          ', N'túi đựng đồ size nhỏ đen lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-dung-do-size-nho-den-lewis-n-clark-150.jpg                                                      ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tudumyphnalencl          ', N'túi đựng mỹ phẩm nâu lewis n clark', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-dung-my-pham-nau-lewis-n-clark-120.jpg                                                          ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tudumyphxalencl          ', N'túi đựng mỹ phẩm xám lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dn                       ', N'tui-dung-my-pham-xam-lewis-n-clark-151.jpg                                                          ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tukepesprohovaxa         ', N'túi kéo pendleton spider rock hoa văn xanh', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-keo-pendleton-spider-rock-hoa-van-xanh-10.jpg                                                   ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tukerimabainbl           ', N'túi kéo ricardo malibu bay indigo blue', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-keo-ricardo-malibu-bay-indigo-blue-127.jpg                                                      ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tukerimavide             ', N'túi kéo ricardo mar vista đen', N'n                        ', 3.8, 5, N'sky                      ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dn                       ', N'tui-keo-ricardo-mar-vista-2-0-den-953-1476159762.jpg                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tukerimavixadu           ', N'túi kéo ricardo mar vista xanh dương', N'v                        ', 3.8, 5, N'sky                      ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dl                       ', N'tui-keo-ricardo-mar-vista-2-0-xanh-duong-889.jpg                                                    ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turoboboxare             ', N'túi roncato borsa boston xanh rêu', N'n                        ', 3.8, 5, N'sky                      ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dl                       ', N'tui-roncato-borsa-boston-xanh-reu-27.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turobopotana             ', N'túi roncato borsello porta tablet nâu', N'v                        ', 3.8, 5, N'sky                      ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dl                       ', N'tui-roncato-borsello-porta-tablet-nau-231.jpg                                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turocacode               ', N'túi roncato cartella comparti đen', N'n                        ', 3.8, 5, N'sky                      ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dn                       ', N'tui-roncato-cartella-2-comparti-den-102.jpg                                                         ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turocacona               ', N'túi roncato cartella comparti nâu', N'v                        ', 3.8, 5, N'sky                      ', N'ita                      ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'dn                       ', N'tui-roncato-cartella-2-comparti-nau-192.jpg                                                         ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turocahade               ', N'túi roncato cartella harvard đen', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-roncato-cartella-harvard-den-20.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turocahana               ', N'túi roncato cartella harvard nâu', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-roncato-cartella-harvard-nau-108.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turohede                 ', N'túi roncato heritage đen', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-roncato-heritage-15-4-den-122.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'turowina                 ', N'túi roncato wireless nâu', N'v                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-roncato-wireless-nau-105.jpg                                                                    ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tutrdotrtodelen          ', N'túi treo đồ trong toilet đen lewis n clark', N'n                        ', 3.8, 5, N'sky                      ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'nd                       ', N'tui-treo-do-trong-toilet-den-lewis-n-clark-123.jpg                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'tuxadechbalencl          ', N'túi xach đeo chéo balo lewis n clark', N'v                        ', 3.8, 5, N'sky                      ', N'vn                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'tui                      ', N'ls                       ', N'tui-xach-deo-cheo-balo-lewis-n-clark-41.jpg                                                         ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vakerisacl6tado          ', N'vali kéo ricardo san clemente 6 tac đỏ', N'n                        ', 3.8, 5, N'pd                       ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'ls                       ', N'vali-keo-ricardo-san-clemente-6-tac-do-16.jpg                                                       ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vakerisacl6tamo          ', N'vali kéo ricardo san clemente 6 tac moon silver', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-keo-ricardo-san-clemente-6-tac-moon-silver-10.jpg                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vakerisacl6taxa          ', N'vali kéo ricardo san clemente 6 tac xanh', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-keo-ricardo-san-clemente-6-tac-xanh-192.jpg                                                    ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vapesk5tahovaxa          ', N'vali pendleton skywalkers 5 tac hoa văn xanh', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-pendleton-skywalkers-5-tac-hoa-van-xanh-105.jpg                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vapespro6tahova          ', N'vali pendleton spider rock 6 tac hoa văn xanh', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-pendleton-spider-rock-6-tac-hoa-van-xanh-16.jpg                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimaba5tagr            ', N'vali ricardo malibu bay 5 tac grey', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-ricardo-malibu-bay-5-tac-grey-128.jpg                                                          ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimaba5tainbl          ', N'vali ricardo malibu bay 5 tac indigo blue', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-ricardo-malibu-bay-5-tac-indigo-blue-115.jpg                                                   ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimaba6tainbl          ', N'vali ricardo malibu bay 6 tac indigo blue', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-ricardo-malibu-bay-6-tac-indigo-blue-138.jpg                                                   ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimavide6ta            ', N'vali ricardo mar vista 2 0 đen 6 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-6-tac-143.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimavide7ta            ', N'vali ricardo mar vista 2 0 đen 7 tac', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimavideta             ', N'vali ricardo mar vista đen 7 tac', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-ricardo-mar-vista-2-0-den-7-tac-592.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimavixadu5            ', N'vali ricardo mar vista  xanh dương 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-ricardo-mar-vista-2-0-xanh-duong-5-tac-388.jpg                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varimavixadu7            ', N'vali ricardo mar vista  xanh dương 7 tac', N'n                        ', 3.8, 5, N'pd                       ', N'dc                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-ricardo-mar-vista-2-0-xanh-duong-7-tac-209.jpg                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'variocdr5tago            ', N'vali ricardo ocean drive 5 tac gold', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-riacrdo-ocean-drive-5-tac-gold1404.jpg                                                         ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varisacl5tado            ', N'vali ricardo san clemente 5 tac đỏ', N'v                        ', 3.8, 5, N'pd                       ', N'dc                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-ricardo-san-clemente-5-tac-do-119.jpg                                                          ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varisacl5tamosi          ', N'vali ricardo san clemente 5 tac moon silver', N'n                        ', 3.8, 5, N'pd                       ', N'dc                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-ricardo-san-clemente-5-tac-moon-silver-256.jpg                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varisacl5taxa            ', N'vali ricardo san clemente 5 tac xanh', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-ricardo-san-clemente-5-tac-xanh-162.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varish5tade              ', N'vali ricardo sherwood 5 tac đen', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varishtade               ', N'vali ricardo sherwood 5 tac đen', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-ricardo-sherwood-5-tac-den-166.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varobobl6ta              ', N'vali roncato box blue 6 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-box-blue-6-tac-263.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoboxadu6ta            ', N'vali roncato box xanh dương 6 tac', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-box-xanh-duong-6-tac-118.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoboxang6ta            ', N'vali roncato box xanh ngọc 6 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-box-xanh-ngoc-6-tac-100.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varobr7taho              ', N'vali roncato breeze 7 tac hồng', N'v                        ', 3.8, 5, N'pd                       ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varobrtaho               ', N'vali roncato breeze 7 tac hồng', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-breeze-7-tac-hong-10.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoirbl5ta              ', N'vali roncato ironik black 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-ironik-black-5-tac-109.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoirgr5ta              ', N'vali roncato ironik green 5 tac', N'n                        ', 3.8, 5, N'pd                       ', N'dc                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoirgrta               ', N'vali roncato ironik green 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-ironik-green-5-tac1402.jpg                                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundech5ta            ', N'vali roncato uno deluxe champagne 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-roncato-uno-deluxe-champagne-5-tac-139.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundech6ta            ', N'vali roncato uno deluxe champagne 6 ta', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-roncato-uno-deluxe-champagne-6-tac-101.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundech7ta            ', N'vali roncato uno deluxe champagne 7 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundechta             ', N'vali roncato uno deluxe champagne 7 tac', N'n                        ', 3.8, 5, N'pd                       ', N'vn                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'ls                       ', N'vali-roncato-uno-deluxe-champagne-7-tac-260.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundezicabl5          ', N'vali roncato uno deluxe zip carbon black 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'vn                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'ls                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-5-tac-101.jpg                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundezicabl6          ', N'vali roncato uno deluxe zip carbon black 6 tac', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-6-tac-1000.jpg                                             ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoundezicabl7          ', N'vali roncato uno deluxe zip carbon black 7 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-deluxe-zip-carbon-black-7-tac-237.jpg                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzide5tape          ', N'vali roncato uno zip deluxe 5 tac pearl', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-5-tac-pearl1811.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzide6tape          ', N'vali roncato uno zip deluxe 6 tac pearl', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-roncato-uno-zip-deluxe-6-tac-pearl115.jpg                                                      ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzide7tape          ', N'vali roncato uno zip deluxe 7 tac pearl', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzidetape           ', N'vali roncato uno zip deluxe 7 tac pearl', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-zip-deluxe-7-tac-pearl1130.jpg                                                     ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzsprbl5ta          ', N'vali roncato uno zsl premium black 5 tac', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-zsl-premium-black-5-tac-140.jpg                                                    ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varounzsprsiwibl         ', N'vali roncato uno zsl premium silver with black line 5 tac', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-uno-zsl-premium-silver-with-black-line-5-tac-136.jpg                                   ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varovesl5tati            ', N'vali roncato venice sl 5 tac tím', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-venice-sl-5-tac-tim-145.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegr5tade            ', N'vali roncato zero gravity 5 tac đen', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-5-tac-den-0.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegr5tado            ', N'vali roncato zero gravity 5 tac đỏ', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-5-tac-do-215.jpg                                                          ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegr6tabl            ', N'vali roncato zero gravity 6 tac blue', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegrtabl             ', N'vali roncato zero gravity 6 tac blue', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegrtade             ', N'vali roncato zero gravity 5 tac đen', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varozegrtado             ', N'vali roncato zero gravity 5 tac đỏ', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zero-gravity-6-tac-blue-114.jpg                                                        ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoziprca5tabl          ', N'vali roncato zip premium carbon 5 tac blue', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-5-tac-blue1631.jpg                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoziprca5tabo          ', N'vali roncato zip premium carbon 5 tac bordeaux', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-roncato-zip-premium-carbon-5-tac-bordeaux1201.jpg                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoziprca6tabl          ', N'vali roncato zip premium carbon 6 tac blue', N'v                        ', 3.8, 5, N'pd                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-6-tac-blue1649.jpg                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoziprca6tabo          ', N'vali roncato zip premium carbon 6 tac bordeaux', N'n                        ', 3.8, 5, N'pd                       ', N'my                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'nd                       ', N'vali-roncato-zip-premium-carbon-6-tac-bordeaux3911.jpg                                              ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'varoziprca7tabl          ', N'vali roncato zip premium carbon 7 tac blue', N'v                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-roncato-zip-premium-carbon-7-tac-blue1719.jpg                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vaskni5taxa              ', N'vali skyway nimbus 5 tac xám', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-skyway-nimbus-5-tac-xam-24.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vaskni5taxala            ', N'vali skyway nimbus 5 tac xanh lá', N'v                        ', 3.8, 5, N'pd                       ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-5-tac-xanh-la-180.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vaskni6taho              ', N'vali skyway nimbus 6 tac hồng', N'n                        ', 3.8, 5, N'pd                       ', N'dc                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-6-tac-hong-121.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vaskni6taxa              ', N'vali skyway nimbus 6 tac xanh', N'v                        ', 3.8, 5, N'pd                       ', N'dc                       ', 10, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dl                       ', N'vali-skyway-nimbus-6-tac-xanh-177.jpg                                                               ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vaskni7tade              ', N'vali skyway nimbus 7 tac đen', N'n                        ', 3.8, 5, N'pd                       ', N'ita                      ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vali                     ', N'dn                       ', N'vali-skyway-nimbus-7-tac-den-164.jpg                                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidadupalencl            ', N'ví da đựng passport lewis n clark', N'v                        ', 3.8, 5, N'rc                       ', N'ita                      ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'dn                       ', N'vi-da-dung-passport-lewis-n-clark-244.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr1dude            ', N'ví da nam fredo 01 dung đen', N'n                        ', 3.8, 5, N'rc                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-dung-den-165.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr1duna            ', N'ví da nam fredo 01 dung nâu', N'v                        ', 3.8, 5, N'rc                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-dung-nau-120.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr1ngde            ', N'ví da nam fredo 01 ngang đen', N'n                        ', 3.8, 5, N'rc                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-ngang-den-115.jpg                                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr1ngna            ', N'ví da nam fredo 01 ngang nâu', N'v                        ', 3.8, 5, N'rc                       ', N'my                       ', 3, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-01-ngang-nau-1.jpg                                                                  ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr2ngde            ', N'ví da nam fredo 02 ngang đen', N'n                        ', 3.8, 5, N'rc                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-da-nam-fredo-02-ngang-den-13.jpg                                                                 ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr2ngna            ', N'ví da nam fredo 02 ngang nâu', N'v                        ', 3.8, 5, N'rc                       ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'ls                       ', N'vi-da-nam-fredo-02-ngang-nau-332.jpg                                                                ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'vidanafr3ngxare          ', N'ví da nam fredo 03 ngang xanh rêu', N'n                        ', 3.8, 5, N'rc                       ', N'vn                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'ls                       ', N'vi-da-nam-fredo-03-ngang-xanh-reu-140.jpg                                                           ', 2000000.0000, 2500000.0000, 100)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [ThoiGianBaoHanh], [GioiThieuSP], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat], [SoLuong]) VALUES (N'viroornadabo             ', N'ví roncato orizzontale nâu da bò', N'v                        ', 3.8, 5, N'rc                       ', N'my                       ', 5, N'Chịu va đập cực mạnh dù bị xe ô tô cán hay rơi từ trên cao...chiếc vali vẫn nguyên vẹn. Polycarbonate được sản xuất theo công nghệ Châu Âu giúp trọng lượng vali về con số nhỏ nhất.', N'vi                       ', N'nd                       ', N'vi-roncato-orizzontale-nau-da-bo-222.jpg                                                            ', 2000000.0000, 2500000.0000, 100)
GO
INSERT [dbo].[tGioHang] ([MaGioHang], [MaKhachHang], [NgayCapNhat], [TongTienHD], [GhiChu]) VALUES (N'GH00001                  ', N'KH00001                  ', CAST(N'2023-11-23T16:42:20.880' AS DateTime), 0.0000, NULL)
INSERT [dbo].[tGioHang] ([MaGioHang], [MaKhachHang], [NgayCapNhat], [TongTienHD], [GhiChu]) VALUES (N'GH00002                  ', N'KH00002                  ', CAST(N'2023-11-23T16:46:29.847' AS DateTime), 0.0000, NULL)
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX]) VALUES (N'pd                       ', N'Pendleton                                                                                           ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX]) VALUES (N'rbh                      ', N'Ricardo Beverly Hills                                                                               ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX]) VALUES (N'rc                       ', N'Roncato                                                                                             ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX]) VALUES (N'sky                      ', N'Skyway                                                                                              ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GhiChu], [Ten], [TrangThai], [DienThoai], [DiaChi]) VALUES (N'HD001                    ', CAST(N'2023-11-21T17:40:56.337' AS DateTime), N'KH00001                  ', 8000000.0000, NULL, N'Nguyễn Đình Hiệu', N'Đã giao', N'0906440738     ', N'Đăk Lăk')
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GhiChu], [Ten], [TrangThai], [DienThoai], [DiaChi]) VALUES (N'HD002                    ', CAST(N'2023-11-23T16:37:20.613' AS DateTime), N'KH00001                  ', 6000000.0000, NULL, N'Nguyễn Đình Hiệu', N'Đã giao', N'0906440738     ', N'Đăk Lăk')
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GhiChu], [Ten], [TrangThai], [DienThoai], [DiaChi]) VALUES (N'HD003                    ', CAST(N'2023-11-23T16:42:29.897' AS DateTime), N'KH00001                  ', 8000000.0000, NULL, N'Nguyễn Đình Hiệu', N'Giao không thành công', N'0906440738     ', N'Đăk Lăk')
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GhiChu], [Ten], [TrangThai], [DienThoai], [DiaChi]) VALUES (N'HD004                    ', CAST(N'2023-11-23T16:46:39.220' AS DateTime), N'KH00002                  ', 6000000.0000, NULL, N'Nguyễn Trần Việt Hoàng', N'Đang giao', N'0906440738     ', N'Khánh Hoà')
GO
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00001                  ', N'dinhhieu123                                                                                         ', N'5c729e9f1b736ac6e135f6fedafae0e2                                                                    ', N'Nguyễn Đình Hiệu', NULL, N'0906440738     ', N'Đăk Lăk', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00002                  ', N'admin                                                                                               ', N'21232f297a57a5a743894a0e4a801fc3                                                                    ', N'Nguyễn Trần Việt Hoàng', NULL, N'0906440738     ', N'Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00003                  ', N'hatuhuy                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Hà Tứ Huy', CAST(N'2003-05-20' AS Date), N'0450450456     ', N'1000 đường 23/10, Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00004                  ', N'doanhaiduy                                                                                          ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Đoàn Hải Duy', CAST(N'2003-08-15' AS Date), N'546005460456   ', N'1001 đường 23/10, Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00005                  ', N'xuanan                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Xuân An', CAST(N'2003-10-06' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00006                  ', N'vietanh                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Trần Văn Việt Anh', CAST(N'2003-10-05' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00007                  ', N'giabao                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Huỳnh Gia Bảo', CAST(N'2003-09-14' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00008                  ', N'ducduy                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Đức Duy', CAST(N'2003-04-09' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00009                  ', N'tiendat                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Tiến Đạt', CAST(N'2003-07-13' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00010                  ', N'hoadat                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Hoà Đạt', CAST(N'2003-12-18' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00011                  ', N'vandong                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Bùi Văn Đồng', CAST(N'2003-03-31' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00012                  ', N'minhduc                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Minh Đức', CAST(N'2003-08-10' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00013                  ', N'anhhao                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Anh Hào', CAST(N'2003-09-26' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00014                  ', N'hoanghung                                                                                           ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Lê Hoàng Hưng', CAST(N'2003-04-06' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00015                  ', N'phuchien                                                                                            ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Lương Phúc Hiền', CAST(N'2003-03-03' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00016                  ', N'tronghieu                                                                                           ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Đỗ Trọng Hiếu', CAST(N'2003-01-24' AS Date), N'0908070605     ', N'Ninh Hoà, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00017                  ', N'ngochuy                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Huỳnh Đỗ Ngọc Huy', CAST(N'2003-04-04' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00018                  ', N'baokhoa                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Lê Bảo Khoa', CAST(N'2003-09-02' AS Date), N'0908070605     ', N'Ninh Hoà, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00019                  ', N'giakiet                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Huỳnh Gia Kiệt', CAST(N'2003-08-15' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00020                  ', N'hailam                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Phan Châu Hải Lâm', CAST(N'2003-08-15' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00021                  ', N'khailinh                                                                                            ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Vũ Đồng Khải Linh', CAST(N'2003-09-29' AS Date), N'0908070605     ', N'Hà Nam, Hà Nội', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00022                  ', N'nhatlong                                                                                            ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Nhật Long', CAST(N'2003-01-02' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00023                  ', N'thanhmy                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Dương Thị Thanh Mỹ', CAST(N'2003-03-15' AS Date), N'0908070605     ', N'Ninh Hoà, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00024                  ', N'vannam                                                                                              ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Trương Văn Nam', CAST(N'2003-04-25' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00025                  ', N'ducnghia                                                                                            ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Hoàng Đức Nghĩa', CAST(N'2002-04-26' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00026                  ', N'anhngoc                                                                                             ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Như Ánh Ngọc', CAST(N'2003-08-25' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00027                  ', N'trungnguyen                                                                                         ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Phan Trung Nguyên', CAST(N'2003-12-14' AS Date), N'0908070605     ', N'Diên Khánh, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00028                  ', N'hungphat                                                                                            ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Hùng Phát', CAST(N'2003-04-05' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00029                  ', N'thaoquyen                                                                                           ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Như Thảo Quyên', CAST(N'2003-06-03' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [password], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [AnhDaiDien], [GhiChu]) VALUES (N'KH00030                  ', N'thienquan                                                                                           ', N'e10adc3949ba59abbe56e057f20f883e                                                                    ', N'Nguyễn Thiện Quân', CAST(N'2003-07-10' AS Date), N'0908070605     ', N'Nha Trang, Khánh Hoà', NULL, NULL)
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dl                       ', N'Du lịch                                                                                             ')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dn                       ', N'Doanh nhân                                                                                          ')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'ls                       ', N'Lịch sự')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'nd                       ', N'Năng động')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'balo                     ', N'Ba lô')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'bo                       ', N'Bộ')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'can                      ', N'Cân điện tử')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'cap                      ', N'Cặp')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'day                      ', N'Dây đai')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'goi                      ', N'Gối')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'giac                     ', N'Giắc cắm điện')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'mieng                    ', N'Miếng che mắt')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'tui                      ', N'Túi')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'vali                     ', N'Va li')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'vi                       ', N'Ví')
GO
INSERT [dbo].[tNhanVien] ([MaNhanVien], [username], [password], [TenNhanVien], [NgaySinh], [SoDienThoai], [DiaChi], [ChucVu], [GhiChu]) VALUES (N'123                      ', N'admin                                                                                               ', N'21232f297a57a5a743894a0e4a801fc3                                                                    ', N'Việt Hoàng', CAST(N'2003-02-13' AS Date), N'0901983502     ', N'Nha Trang, Khánh Hoà', N'Quản lý dự án', NULL)
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'dc                       ', N'Đức                                               ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'ita                      ', N'Italia                                            ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'my                       ', N'Mỹ                                                ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'string                   ', N'string')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'tq                       ', N'Trung Quốc                                        ')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'vn                       ', N'Việt Nam                                          ')
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietGioHang_tGioHang] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[tGioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[tChiTietGioHang] CHECK CONSTRAINT [FK_tChiTietGioHang_tGioHang]
GO
ALTER TABLE [dbo].[tChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietGioHang_tSanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietGioHang] CHECK CONSTRAINT [FK_tChiTietGioHang_tSanPham]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tChatLieu]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tHangSX] FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[tHangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tHangSX]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[tLoaiDT] ([MaDT])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiDT]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tQuocGia] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[tQuocGia] ([MaNuoc])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tQuocGia]
GO
ALTER TABLE [dbo].[tGioHang]  WITH CHECK ADD  CONSTRAINT [FK_tGioHang_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tGioHang] CHECK CONSTRAINT [FK_tGioHang_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
USE [master]
GO
ALTER DATABASE [Project_63134085] SET  READ_WRITE 
GO
