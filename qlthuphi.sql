USE [QLThuPhi]
GO
ALTER TABLE [dbo].[KP_HK] DROP CONSTRAINT [FK_KHOANPHI_HOKHAU]
GO
ALTER TABLE [dbo].[HOKHAU] DROP CONSTRAINT [FK_HOKHAU_NHANKHAU]
GO
ALTER TABLE [dbo].[DG_HK] DROP CONSTRAINT [FK_DG_HK_HOKHAU]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USER]') AND type in (N'U'))
DROP TABLE [dbo].[USER]
GO
/****** Object:  Table [dbo].[NHANKHAU]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NHANKHAU]') AND type in (N'U'))
DROP TABLE [dbo].[NHANKHAU]
GO
/****** Object:  Table [dbo].[KP_HK]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KP_HK]') AND type in (N'U'))
DROP TABLE [dbo].[KP_HK]
GO
/****** Object:  Table [dbo].[KHOANPHI]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KHOANPHI]') AND type in (N'U'))
DROP TABLE [dbo].[KHOANPHI]
GO
/****** Object:  Table [dbo].[HOKHAU]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HOKHAU]') AND type in (N'U'))
DROP TABLE [dbo].[HOKHAU]
GO
/****** Object:  Table [dbo].[DONGGOP]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DONGGOP]') AND type in (N'U'))
DROP TABLE [dbo].[DONGGOP]
GO
/****** Object:  Table [dbo].[DG_HK]    Script Date: 12/22/2020 6:00:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DG_HK]') AND type in (N'U'))
DROP TABLE [dbo].[DG_HK]
GO
/****** Object:  Table [dbo].[DG_HK]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DG_HK](
	[DONGGOPID] [varchar](50) NOT NULL,
	[HOKHAUID] [char](7) NOT NULL,
	[SOTIENDONG] [numeric](18, 0) NULL,
	[NGAYDONG] [date] NULL,
	[NGUOIDONG] [nvarchar](100) NULL,
	[IDNGUOITHU] [numeric](18, 0) NULL,
	[NAM] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_DG_HK] PRIMARY KEY CLUSTERED 
(
	[DONGGOPID] ASC,
	[HOKHAUID] ASC,
	[NAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONGGOP]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONGGOP](
	[DONGOPID] [char](7) NOT NULL,
	[TENDOTDONGGOP] [nvarchar](200) NOT NULL,
	[NAM] [int] NOT NULL,
 CONSTRAINT [PK_DONGGOP] PRIMARY KEY CLUSTERED 
(
	[DONGOPID] ASC,
	[NAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOKHAU]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOKHAU](
	[HOKHAUID] [char](7) NOT NULL,
	[IDCHUHO] [numeric](18, 0) NOT NULL,
	[DIACHI] [nvarchar](200) NOT NULL,
	[NGAYLAP] [date] NULL,
	[IDNGUOILAP] [numeric](18, 0) NULL,
	[NGAYXOA] [date] NULL,
	[IDNGUOIXOA] [numeric](18, 0) NULL,
	[LYDOXOA] [nvarchar](500) NULL,
 CONSTRAINT [PK_HOKHAU] PRIMARY KEY CLUSTERED 
(
	[HOKHAUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOANPHI]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOANPHI](
	[NAM] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_KHOANPHI_1] PRIMARY KEY CLUSTERED 
(
	[NAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KP_HK]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KP_HK](
	[NAM] [numeric](18, 0) NOT NULL,
	[HOKHAUID] [char](7) NOT NULL,
	[DADONG] [bit] NOT NULL,
	[NGAYDONG] [date] NOT NULL,
	[NGUOIDONG] [nvarchar](100) NOT NULL,
	[IDNGUOITHU] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_KHOANPHI] PRIMARY KEY CLUSTERED 
(
	[NAM] ASC,
	[HOKHAUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANKHAU]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANKHAU](
	[NHANKHAUID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CMT] [numeric](18, 0) NOT NULL,
	[HOKHAUID] [char](7) NULL,
	[QUANHEVOICHUHO] [nvarchar](10) NULL,
	[HOTEN] [nvarchar](100) NOT NULL,
	[GIOITINH] [nvarchar](3) NOT NULL,
	[NGAYSINH] [date] NULL,
	[NGUYENQUAN] [nvarchar](200) NOT NULL,
	[DIACHIHIENTAI] [nvarchar](200) NOT NULL,
	[DANTOC] [nvarchar](10) NOT NULL,
	[TONGIAO] [nvarchar](10) NOT NULL,
	[QUOCTICH] [nvarchar](50) NOT NULL,
	[NGHENGHIEP] [nvarchar](50) NOT NULL,
	[NOILAMVIEC] [nvarchar](50) NOT NULL,
	[NGAYTAO] [date] NULL,
	[IDNGUOITAO] [numeric](18, 0) NOT NULL,
	[NGAYXOA] [date] NULL,
	[IDNGUOIXOA] [numeric](18, 0) NULL,
	[LYDOXOA] [nvarchar](500) NULL,
 CONSTRAINT [PK_NHANKHAU] PRIMARY KEY CLUSTERED 
(
	[NHANKHAUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 12/22/2020 6:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[USERID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DG_HK] ([DONGGOPID], [HOKHAUID], [SOTIENDONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU], [NAM]) VALUES (N'LL     ', N'NTC0002', CAST(600000 AS Numeric(18, 0)), CAST(N'2020-12-22' AS Date), N'Vũ Thùy Dương', CAST(1 AS Numeric(18, 0)), CAST(2020 AS Numeric(18, 0)))
INSERT [dbo].[DG_HK] ([DONGGOPID], [HOKHAUID], [SOTIENDONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU], [NAM]) VALUES (N'LL     ', N'NTC0003', CAST(50000 AS Numeric(18, 0)), CAST(N'2020-12-21' AS Date), N'Phạm Tuấn Hiên', CAST(1 AS Numeric(18, 0)), CAST(2020 AS Numeric(18, 0)))
INSERT [dbo].[DG_HK] ([DONGGOPID], [HOKHAUID], [SOTIENDONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU], [NAM]) VALUES (N'TN     ', N'NTC0004', CAST(250000 AS Numeric(18, 0)), CAST(N'2020-12-22' AS Date), N'Nguyễn Quỳnh Anh', CAST(1 AS Numeric(18, 0)), CAST(2020 AS Numeric(18, 0)))
GO
INSERT [dbo].[DONGGOP] ([DONGOPID], [TENDOTDONGGOP], [NAM]) VALUES (N'LL     ', N'Ủng hộ đồng bào lũ lụt', 2020)
INSERT [dbo].[DONGGOP] ([DONGOPID], [TENDOTDONGGOP], [NAM]) VALUES (N'TBLS   ', N'Ủng hộ ngày thương binh liệt sĩ 27/07', 2020)
INSERT [dbo].[DONGGOP] ([DONGOPID], [TENDOTDONGGOP], [NAM]) VALUES (N'TN     ', N'Quốc tế thiếu nhi 1/6', 2020)
GO
INSERT [dbo].[HOKHAU] ([HOKHAUID], [IDCHUHO], [DIACHI], [NGAYLAP], [IDNGUOILAP], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (N'NTC0001', CAST(3 AS Numeric(18, 0)), N'122 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[HOKHAU] ([HOKHAUID], [IDCHUHO], [DIACHI], [NGAYLAP], [IDNGUOILAP], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (N'NTC0002', CAST(5 AS Numeric(18, 0)), N'124 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[HOKHAU] ([HOKHAUID], [IDCHUHO], [DIACHI], [NGAYLAP], [IDNGUOILAP], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (N'NTC0003', CAST(8 AS Numeric(18, 0)), N'127 Ngõ Trại Cá, Hai Bà Trưng, Hà Nội', CAST(N'2020-12-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[HOKHAU] ([HOKHAUID], [IDCHUHO], [DIACHI], [NGAYLAP], [IDNGUOILAP], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (N'NTC0004', CAST(22 AS Numeric(18, 0)), N'150 Ngõ Trại Cá, Hai Bà Trưng, Hà Nội', CAST(N'2020-12-15' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[KHOANPHI] ([NAM]) VALUES (CAST(2020 AS Numeric(18, 0)))
GO
INSERT [dbo].[KP_HK] ([NAM], [HOKHAUID], [DADONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU]) VALUES (CAST(2020 AS Numeric(18, 0)), N'NTC0001', 1, CAST(N'2020-12-20' AS Date), N'Nguyễn Trung Anh', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[KP_HK] ([NAM], [HOKHAUID], [DADONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU]) VALUES (CAST(2020 AS Numeric(18, 0)), N'NTC0002', 1, CAST(N'2020-12-17' AS Date), N'Vũ Thùy Dương', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[KP_HK] ([NAM], [HOKHAUID], [DADONG], [NGAYDONG], [NGUOIDONG], [IDNGUOITHU]) VALUES (CAST(2020 AS Numeric(18, 0)), N'NTC0004', 1, CAST(N'2020-12-22' AS Date), N'Nguyễn Quỳnh Anh', CAST(1 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[NHANKHAU] ON 

INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(125923637 AS Numeric(18, 0)), N'NTC0001', N'Chủ hộ', N'Ngô Đức Dương', N'Nam', CAST(N'2000-02-01' AS Date), N'Bắc Ninh', N'122 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Mường', N'Không', N'Việt Nam', N'Kiến trúc sư', N'AHT', CAST(N'2020-12-01' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(125923737 AS Numeric(18, 0)), N'NTC0001', N'Vợ', N'Nguyễn Trung Anh', N'Nữ', CAST(N'2000-03-27' AS Date), N'Bắc Ninh', N'122 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Tày', N'Nho giáo', N'Việt Nam', N'Kế toán', N'HT', CAST(N'2020-12-01' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1231456710 AS Numeric(18, 0)), N'NTC0002', N'Chủ hộ', N'Nguyễn Duy Tú', N'Nam', CAST(N'2000-05-04' AS Date), N'Bắc Ninh', N'124 ngõ Trại Cá', N'H''Mông', N'Không', N'Việt Nam', N'Thu họ', N'HBT', CAST(N'2020-12-01' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(125998721 AS Numeric(18, 0)), N'NTC0003', N'Chủ hộ', N'Phạm Tuấn Hiên', N'Nam', CAST(N'2000-02-06' AS Date), N'Ninh Bình', N'127 Ngõ Trại Cá, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'HUST', CAST(N'2020-12-10' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(123456790 AS Numeric(18, 0)), N'NTC0002', N'Con ', N'Nguyễn Hoàng Anh', N'Nam', CAST(N'2000-09-15' AS Date), N'Lào Cai', N'124 ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Phò', N'Động Thăng Thiên', CAST(N'2020-12-10' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(123344550 AS Numeric(18, 0)), N'NTC0002', N'Vợ', N'Vũ Thùy Dương', N'Nữ', CAST(N'1997-10-18' AS Date), N'Bắc Ninh', N'124 ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'FTU', CAST(N'2020-12-10' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(125923636 AS Numeric(18, 0)), NULL, NULL, N'Trần Thị Khả Ngân', N'Nữ', CAST(N'1997-09-10' AS Date), N'Hồ Chí Minh', N'128 ngõ Trại Cá, Trương Đinh, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giáo viên', N'Tiểu học Trần Quốc Toản', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(123456890 AS Numeric(18, 0)), NULL, N'Con', N'Ngô Hồng Nhung', N'Nữ', CAST(N'2002-10-12' AS Date), N'Hà Nội', N'168 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Diễn Viên', N'VTV', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(125923634 AS Numeric(18, 0)), NULL, N'Chủ hộ', N'Vũ Hoàng Phúc', N'Nam', CAST(N'2000-10-15' AS Date), N'Bắc Ninh', N'168 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Viettel', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(123456709 AS Numeric(18, 0)), NULL, NULL, N'Nguyễn Anh Tuấn', N'Nam', CAST(N'1996-07-14' AS Date), N'Bạc Liêu', N'128 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giáo viên', N'Tiểu học Trần Quốc Toản', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(123456712 AS Numeric(18, 0)), NULL, N'Vợ', N'Ngô Hồng Hà', N'Nữ', CAST(N'2001-02-01' AS Date), N'Bắc Ninh', N'142 Ngõ Trại Cá, Trương Định, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'MV Bank', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(123456789 AS Numeric(18, 0)), N'NTC0004', N'Chủ hộ', N'Đỗ Duy Mạnh', N'Nam', CAST(N'1997-05-08' AS Date), N'Hà Nội', N'150 Ngõ Trại Cá', N'Kinh', N'Không', N'Việt Nam', N'Cầu thủ', N'Hà Nội FC', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(123456210 AS Numeric(18, 0)), N'NTC0004', N'Vợ', N'Nguyễn Quỳnh Anh', N'Nữ', CAST(N'1997-03-24' AS Date), N'Hà Nội', N'150 Ngõ Trại Cá', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'150 Ngõ Trại Cá', CAST(N'2020-12-12' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(122122113 AS Numeric(18, 0)), NULL, NULL, N'Nguyễn Hoàng Anh', N'Nữ', CAST(N'1997-07-31' AS Date), N'Hà Nội', N'1 Tạ Quang Bửu, Hai Bà Trưng, Hà Nội', N'Kinh', N'Không', N'Lào', N'Giáo viên', N'nhà Phúc', CAST(N'2020-12-14' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[NHANKHAU] ([NHANKHAUID], [CMT], [HOKHAUID], [QUANHEVOICHUHO], [HOTEN], [GIOITINH], [NGAYSINH], [NGUYENQUAN], [DIACHIHIENTAI], [DANTOC], [TONGIAO], [QUOCTICH], [NGHENGHIEP], [NOILAMVIEC], [NGAYTAO], [IDNGUOITAO], [NGAYXOA], [IDNGUOIXOA], [LYDOXOA]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(125923738 AS Numeric(18, 0)), NULL, NULL, N'Hoàng Kim Chi', N'Nữ', CAST(N'2000-12-12' AS Date), N'Bắc Ninh', N'Ba Đình, Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kế toán', N'MB Bank', CAST(N'2020-12-16' AS Date), CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHANKHAU] OFF
GO
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([USERID], [USERNAME], [PASSWORD]) VALUES (CAST(1 AS Numeric(18, 0)), N'root2', N'0')
INSERT [dbo].[USER] ([USERID], [USERNAME], [PASSWORD]) VALUES (CAST(2 AS Numeric(18, 0)), N'root', N'2')
SET IDENTITY_INSERT [dbo].[USER] OFF
GO
ALTER TABLE [dbo].[DG_HK]  WITH CHECK ADD  CONSTRAINT [FK_DG_HK_HOKHAU] FOREIGN KEY([HOKHAUID])
REFERENCES [dbo].[HOKHAU] ([HOKHAUID])
GO
ALTER TABLE [dbo].[DG_HK] CHECK CONSTRAINT [FK_DG_HK_HOKHAU]
GO
ALTER TABLE [dbo].[HOKHAU]  WITH CHECK ADD  CONSTRAINT [FK_HOKHAU_NHANKHAU] FOREIGN KEY([IDCHUHO])
REFERENCES [dbo].[NHANKHAU] ([NHANKHAUID])
GO
ALTER TABLE [dbo].[HOKHAU] CHECK CONSTRAINT [FK_HOKHAU_NHANKHAU]
GO
ALTER TABLE [dbo].[KP_HK]  WITH CHECK ADD  CONSTRAINT [FK_KHOANPHI_HOKHAU] FOREIGN KEY([HOKHAUID])
REFERENCES [dbo].[HOKHAU] ([HOKHAUID])
GO
ALTER TABLE [dbo].[KP_HK] CHECK CONSTRAINT [FK_KHOANPHI_HOKHAU]
GO
