USE [OJTManagement]
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccount](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[avatar] [varchar](200) NULL,
	[isAdmin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblApplication]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplication](
	[applicationID] [int] IDENTITY(1,1) NOT NULL,
	[attachmentPath] [varchar](200) NOT NULL,
	[expected_Job] [nvarchar](50) NOT NULL,
	[technology] [nvarchar](50) NOT NULL,
	[experience] [nvarchar](30) NOT NULL,
	[foreign_Language] [nvarchar](50) NOT NULL,
	[otherSkills] [nvarchar](50) NOT NULL,
	[evaluation] [nvarchar](500) NULL,
	[grade] [decimal](3, 1) NULL,
	[is_Pass] [int] NULL,
	[student_Confirm] [bit] NULL,
	[school_Confirm] [int] NULL,
	[company_Confirm] [int] NULL,
	[studentCode] [varchar](8) NOT NULL,
	[postID] [int] NOT NULL,
	[semesterID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[applicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompany]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompany](
	[companyID] [varchar](10) NOT NULL,
	[address] [nvarchar](100) NULL,
	[city] [nvarchar](30) NULL,
	[phone] [varchar](10) NULL,
	[company_Description] [nvarchar](2000) NULL,
	[is_Signed] [bit] NULL,
	[username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompany_Post]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompany_Post](
	[postID] [int] IDENTITY(1,1) NOT NULL,
	[title_Post] [nvarchar](100) NOT NULL,
	[job_Description] [nvarchar](2000) NOT NULL,
	[job_Requirement] [nvarchar](2000) NOT NULL,
	[remuneration] [nvarchar](2000) NULL,
	[workLocation] [nvarchar](100) NOT NULL,
	[quantityInterns] [int] NOT NULL,
	[postingDate] [date] NOT NULL,
	[expirationDate] [date] NOT NULL,
	[school_confirm] [bit] NULL,
	[statusPost] [int] NULL,
	[companyID] [varchar](10) NOT NULL,
	[majorID] [int] NOT NULL,
	[vacancy] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[postID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFollowing_Post]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFollowing_Post](
	[studentCode] [varchar](8) NOT NULL,
	[postID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[studentCode] ASC,
	[postID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMajor]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMajor](
	[majorID] [int] IDENTITY(1,1) NOT NULL,
	[majorName] [nvarchar](50) NOT NULL,
	[categoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[majorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSemester]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSemester](
	[semesterID] [int] IDENTITY(1,1) NOT NULL,
	[semesterName] [varchar](20) NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[semesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSemester_Student]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSemester_Student](
	[recordSemesterID] [int] IDENTITY(1,1) NOT NULL,
	[semesterID] [int] NOT NULL,
	[studentCode] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[recordSemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 7/30/2022 1:43:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[studentCode] [varchar](8) NOT NULL,
	[birthDay] [date] NULL,
	[address] [nvarchar](100) NULL,
	[gender] [bit] NULL,
	[phone] [varchar](10) NULL,
	[is_Intern] [int] NULL,
	[numberOfCredit] [int] NULL,
	[major] [nvarchar](30) NULL,
	[username] [varchar](50) NOT NULL,
	[is_Disabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'anhdlpss150308@fpt.edu.vn', NULL, N'Đoàn Lương Phương Anh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'anhdpse151396@fpt.edu.vn', NULL, N'Đặng Phương Anh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'anhnpqse140645@fpt.edu.vn', N'123456', N'Nguyễn Phan Quỳnh Anh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'anhpnhse160891@fpt.edu.vn', NULL, N'Phạm Ngọc Hoàng Anh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'anhpvhe169016@fpt.edu.vn', NULL, N'Phạm Việt Anh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'automailer.ojt.fpthcm@gmail.com', N'gahkznymghgiyiov', N'Automailer FPT HCM', NULL, 4)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'baonpgse160426@fpt.edu.vn', NULL, N'Nguyễn Phước Gia Bảo', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'baonqse151333@fpt.edu.vn', NULL, N'Nguyễn Quốc Bảo', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'chihlse150666@fpt.edu.vn', NULL, N'Hồ Linh Chi', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'dacntse150063@fpt.edu.vn', NULL, N'Nguyễn Tâm Đắc', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'dainxse150683@fpt.edu.vn', NULL, N'Lê Xuân Đại', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'datdtse160187@fpt.edu.vn', NULL, N'Đỗ Tiến Đạt', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'datlnse160491@fpt.edu.vn', NULL, N'Lê Ngọc Đạt', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'dongpdse160168@fpt.edu.vn', NULL, N'Phạm Đông Đông', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'ducntss150375@fpt.edu.vn', NULL, N'Nguyễn Tiến Đức', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'giangpvhss150333@fpt.edu.vn', NULL, N'Phạm Vũ Huỳnh Giang', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'hainnse150752@fpt.edu.vn', NULL, N'Nguyễn Ngọc Hải', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'haitrpse130636@fpt.edu.vn', NULL, N'Trần Phương Hải', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'huunlse150800@fpt.edu.vn', NULL, N'Nguyễn Lê Hữu', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'huybnse150819@fpt.edu.vn', NULL, N'Bùi Nhật Huy', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'huynnse150807@fpt.edu.vn', NULL, N'Nguyễn Nhật Huy', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'huyvqse160332@fpt.edu.vn', NULL, N'Vũ Quốc Huy', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'khaphpse151400@fpt.edu.vn', NULL, N'Phạm Huỳnh Phương Kha', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'khattse160885@fpt.edu.vn', NULL, N'Trương Tử Kha', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'kienpxse151212@fpt.edu.vn', NULL, N'Phạm Xuân Kiên', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'lamdnse160243@fpt.edu.vn', NULL, N'Đặng Ngọc Lâm', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'lamhtse161077@fpt.edu.vn', NULL, N'Hoàng Thanh Lâm', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'minhnhse130243@fpt.edu.vn', NULL, N'Nguyễn Hồng Minh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'minhnhse160041@fpt.edu.vn', NULL, N'Nguyễn Hoàng Minh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'ngocnhss150008@fpt.edu.vn', NULL, N'Nguyễn Hồng Ngọc', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'nhathlmse161034@fpt.edu.vn', NULL, N'Hồ Lê Minh Nhật', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage1@gmail.com', N'123456', N'AMERICAN STUDY', N'FPT001_AmericanStudy.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage10@gmail.com', N'123456', N'THẾ GIỚI DI ĐỘNG', N'FPT010_TheGioiDiDong.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage11@gmail.com', N'123456', N'Pan Pacific', N'FPT011_PanPacific.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage12@gmail.com', N'123456', N'FPT TELECOM', N'FPT012_FPTTelecom.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage13@gmail.com', N'123456', N'ĐẤT XANH ', N'FPT013_DatXanh.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage14@gmail.com', N'123456', N'ELCA VIỆT NAM', N'FPT014_ELCA.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage15@gmail.com', N'123456', N'HYBRID TECHNOLOGY ', N'FPT015_HYBRID.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage16@gmail.com', N'123456', N'NETCOMPANY VIỆT NAM', N'FPT016_Netcompany.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage17@gmail.com', N'123456', N'KMS TECHNOLOGY', N'FPT017_KMS.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage18@gmail.com', N'123456', N'FPT SOFTWARE', N'FPT018_FPTSoftware.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage19@gmail.com', N'123456', N'CHUBB LIFE', N'FPT019_Chubb.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage2@gmail.com', N'123456', N'ANH NGỮ ÚC CHÂU', N'FPT002_AnhNguUcChau.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage20@gmail.com', N'123456', N'SMARTLAND', N'FPT020_SmartLand.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage21@gmail.com', N'123456', N'CK HR CONSULTING', N'FPT021_CKHR.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage22@gmail.com', N'123456', N'DATACARE', N'FPT022_DATACARE.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage23@gmail.com', N'123456', N'SAMSUNG', N'FPT023_SAMSUNG.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage24@gmail.com', N'123456', N'NASHTECH', N'FPT024_NASHTECH.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage25@gmail.com', N'123456', N'JOBTEST', N'FPT025_JOBTEST.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage26@gmail.com', N'123456', N'MANULIFE', N'FPT026_MANULIFE.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage27@gmail.com', N'123456', N'TẬP ĐOÀN VIỆT THÁI QUỐC TẾ', N'FPT027_VietThai.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage28@gmail.com', N'123456', N'HCL VIỆT NAM', N'FPT028_HCL.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage29@gmail.com', N'123456', N'NGOẠI NGỮ KHÔNG GIAN', N'FPT029_NgoaiNguKhongGian.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage3@gmail.com', N'123456', N'Công ty Cổ phần VTI', N'FPT003_VTI.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage30@gmail.com', N'123456', N'GNT VN Co., Ltd', N'FPT030_GNT.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage4@gmail.com', N'123456', N'BAP GROUP', N'FPT004_BapGroup.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage5@gmail.com', N'123456', N'DI ĐỘNG TRỰC TUYẾN M_SERVICE (MOMO)', N'FPT005_MoMo.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage6@gmail.com', N'123456', N'ANH VĂN HỘI VIỆT MỸ (VUS)', N'FPT006_Vus.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage7@gmail.com', N'123456', N'TẬP ĐOÀN CÔNG NGHỆ UNICLOUD', N'FPT007_Unicloud.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage8@gmail.com', N'123456', N'CÔNG TY HỆ THỐNG THÔNG TIN FPT (FPT IS)', N'FPT008_FPTIS.jpg', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'OjtManage9@gmail.com', N'123456', N'MCV GROUP', N'FPT009_MCV.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phathtse151391@fpt.edu.vn', NULL, N'Huỳnh Tấn Phát', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phithse161058@fpt.edu.vn', NULL, N'Trương Hoàng Phi', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phittse161036@fpt.edu.vn', NULL, N'Trương Tuấn Phi', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phongdaotaoojt@gmail.com', N'ynokfpspbtmmoffh
', N'FPT University', N'fptlogo.png', 1)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phongltse130240@fpt.edu.vn', NULL, N'Lê Tiến Phong', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'phuongbthse160434@fpt.edu.vn', NULL, N'Bùi Thanh Phương', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'th.ty6701@gmail.com', N'123456', N'Dominos Pizza', N'0906908824_Dominos-Jobs.png', 3)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thanhbdse161005@fpt.edu.vn', NULL, N'Bùi Đức Thành', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thanhnvse140079@fpt.edu.vn', NULL, N'Nguyễn Viết Thanh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thanhnvss150713@fpt.edu.vn', NULL, N'Nguyễn Văn Thanh', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thanhtxse160972@fpt.edu.vn', NULL, N'Trần Xuân Thành', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thienpvtse160542@fpt.edu.vn', NULL, N'Phạm Việt Thuận Thiên', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thongndse160449@fpt.edu.vn', NULL, N'Nguyễn Đình Thông', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thublmss150067@fpt.edu.vn', NULL, N'Bùi Lê Minh Thư', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thuplhss150341@fpt.edu.vn', NULL, N'Hoàng Lê Huyền Thư', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'thupmss150398@fpt.edu.vn', NULL, N'Phạm Minh Thư', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'tralvse160069@fpt.edu.vn', NULL, N'Lê Văn Trà', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'trangcttss150343@fpt.edu.vn', NULL, N'Cao Thị Thu Trang', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'trangvvse160531@fpt.edu.vn', NULL, N'Vũ Văn Tráng', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'trietdpmse151375@fpt.edu.vn', NULL, N'Dương Phạm Minh Triết', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'trinhtnse160554@fpt.edu.vn', NULL, N'Trần Nhật Trình', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'tronghttse151306@fpt.edu.vn', NULL, N'Huỳnh Trần Thế Trọng', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'trongndse160931@fpt.edu.vn', NULL, N'Nguyễn Đức Trọng', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'truonglpmse160054@fpt.edu.vn', NULL, N'Lê Phạm Đức Trường', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'truyenmvkse160428@fpt.edu.vn', NULL, N'Mai Vương Khánh Truyền', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'tumntse140277@fpt.edu.vn', NULL, N'Mai Nguyễn Tuấn Tú', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'tymtse151170@fpt.edu.vn', NULL, N'Mai Thanh Tỷ', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'vantthe150001@fpt.edu.vn', NULL, N'Thái Tú Vân', NULL, 2)
INSERT [dbo].[tblAccount] ([username], [password], [name], [avatar], [isAdmin]) VALUES (N'vuphse151183@fpt.edu.vn', NULL, N'Phan Hạ Vũ', NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[tblApplication] ON 

INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (24, N'353-SS150375-Cv.pdf', N'Begin a good sale', N'Tinh học văn phòng nâng cao', N'1 năm', N'Tiếng anh cơ bản', N'Design web basic', N'Đỉnh', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150375', 353, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (26, N'367-SS150343-Cv.pdf', N'Good busiessman', N'Execl, Word', N'1 năm', N'Tiếng anh + Tiếng trung căn bản', N'Design web', N'Good', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150343', 367, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (31, N'378-SS150341-Cv.pdf', N'Sales manager', N'Tinh học văn phòng', N'Chưa có kinh nghiệm', N'Tiếng anh căn bản', N'Profesional mailing', N'Not performent at work', CAST(4.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SS150341', 378, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (33, N'371-SS150333-Cv.pdf', N'Customer Support', N'Tinh học văn phòng', N'1 năm', N'Tiếng anh + tiếng trung cơ bản', N'Can slove problems easy', N'Good performent', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150333', 371, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (34, N'369-SS150308-Cv.pdf', N'Customer services', N'Tinh học văn phòng ', N'1 năm', N'Tiếng anh giao tiếp ', N'Có kinh nghiệm giao tiếp tốt', N'Good communication', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150308', 369, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (38, N'384-SS150173-Cv.pdf', N'Customer service', N'Tinh học văn phòng căn bản', N'1 năm', N'Tiếng anh + tiếng trung căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'More practice ', CAST(5.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150173', 384, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (39, N'356-SS150067-Cv.pdf', N'Market research', N'Tinh học văn phòng', N'2 năm', N'Tiếng anh', N'Self learning', N'Good', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150067', 356, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (41, N'382-SS150008-Cv.pdf', N'Market research', N'Tinh học văn vòng + Profesional Mailing', N'1 năm', N'Tiếng trung + tiếng anh', N'8.0 IELST', N'Friendly and good performent', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150008', 382, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (43, N'351-SE160542-Cv.pdf', N'BA', N'Tinh học văn phòng', N'1 năm', N'Tiếng trung', N'Team work, Time manager', N'Make good deals, Good ', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160542', 351, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (44, N'381-SE151400-Cv.pdf', N'Java Webdeveloper', N'JSP Servlet, HTML', N'1 năm', N'Tiếng nhật căn bản', N'Self learning', N'Bad teamword', CAST(4.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE151400', 381, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (46, N'354-SE151396-Cv.pdf', N'All levels', N'Java Servlet', N'1 năm ', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151396', 354, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (49, N'385-SE151391-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Need more practice', CAST(5.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151391', 385, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (50, N'381-SE151375-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151375', 381, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (51, N'369-SE151333-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good teamwork', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151333', 369, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (52, N'358-SE151306-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good performent', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151306', 358, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (53, N'361-SE151212-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Bad', CAST(3.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE151212', 361, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (58, N'360-SE150819-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150819', 360, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (59, N'359-SE150807-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150807', 359, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (67, N'359-HE169016-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(5.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'HE169016', 359, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (88, N'357-SE150752-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Always late', CAST(1.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE150752', 357, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (89, N'358-SE151183-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Done all job well', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151183', 358, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (91, N'360-SE160041-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160041', 360, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (94, N'354-SE160054-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Bad teamwork', CAST(3.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE160054', 354, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (96, N'373-SE160069-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160069', 373, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (97, N'385-SE160168-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160168', 385, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (98, N'363-SE160187-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160187', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (99, N'364-SE160243-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Bad work', CAST(2.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE160243', 364, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (100, N'366-SE160332-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Perfect', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160332', 366, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (102, N'364-SE160426-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Perfect', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160426', 364, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (103, N'364-SE160428-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good team mate', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160428', 364, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (104, N'365-SE160434-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Bad teammate', CAST(3.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE160434', 365, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (105, N'366-SE160449-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Absent OJT', CAST(1.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE160449', 366, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (106, N'368-SE160491-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Done deadline well', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160491', 368, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (107, N'371-SE160531-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good work', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160531', 371, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (108, N'351-SE160554-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good dealer', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160554', 351, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (109, N'354-SE160885-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good performent', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160885', 354, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (110, N'354-SE160891-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Absent OJT', CAST(1.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE160891', 354, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (111, N'352-SE160931-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Exellent', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160931', 352, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (112, N'367-SE160972-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Exellent', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160972', 367, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (114, N'368-SE161005-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Bad teamwork', CAST(4.0 AS Decimal(3, 1)), -1, 1, 1, 1, N'SE161005', 368, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (115, N'363-SE161034-Cv.pdf', N'Java Webdeveloper', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE161034', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (116, N'366-SE161036-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good teammate', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE161036', 366, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (117, N'365-SE161058-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Need more practice', CAST(5.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE161058', 365, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (118, N'363-SE161077-Cv.pdf', N'All levels', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kính nghiệm  giao tiếp với khách hàng', N'Good OT', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE161077', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (123, N'356-SE150063-Cv.pdf', N'All levels', N'Java, C#, HTML', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kinh nghiệm giao tiếp với khách hàng', N'Good performent', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150063', 356, 5)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (124, N'360-SE130636-Cv.pdf', N'All levels', N'Java, C#', N'1 năm', N'Tiếng anh + Tiếng Nhật căn bản', N'Có kinh nghiệm làm team project', N'Good knowlegde', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE130636', 360, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (125, N'361-SE140645-Cv.pdf', N'Backend developer', N'Java, HTML/CSS', N'1 năm', N'Tiếng anh + Tiếng Nhật căn bản', N'Có kinh nghiệm làm việc nhóm', N'Good teamwork', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE140645', 361, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (126, N'364-HE150001-Cv.pdf', N'Marketing/Sales', N'Tinh học văn phòng', N'1 năm', N'Tiếng anh + Tiếng trung căn bản', N'Có kinh nghiệm giao tiếp với khách hàng', N'Good dealer, giao tiếp tốt với khách hàng ', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'HE150001', 364, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (127, N'365-SE130243-Cv.pdf', N'Backed developer', N'Java, C#', N'1 năm', N'Tiếng anh + tiếng nhật căn bả', N'Có kinh nghiệm làm việc nhóm', N'Good team work', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE130243', 365, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (131, N'363-SE150683-Cv.pdf', N'Backen deverloper', N'Java, C#', N'1 năm', N'Tiếng anh + tiếng nhật căn bản', N'Có kinh nghiệm tham gia các cuộc thi về Code', N'Good knowlegde', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150683', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (132, N'363-SE150800-Cv.pdf', N'Backend developer', N'Java, C#', N'1 năm', N'Tiếng anh+ tiếng nhật căn bản', N'Có kinh nghiệm làm project nhóm', N'Good performent', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150800', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (133, N'363-SE130240-Cv.pdf', N'Backend developer', N'Java Spring', N'1 năm', N'Tiếng anh + tiếng Nhật căn bản', N'Từng làm partime FPT Software', N'Good ', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE130240', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (136, N'366-SE140079-Cv.pdf', N'Backend deverloper', N'Java Srping Boots', N'1 năm ', N'Tiếng anh + Tiếng Nhật căn bản', N'Có kinh nghiệm làm việc nhóm', N'Good Teamwork', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE140079', 366, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (140, N'364-SS150398-Cv.pdf', N'Nhân viên Sales', N'Tinh học văn phòng', N'1 năm', N'Tiếng anh + tiếng Trung căn bản', N'Có kinh nghiệm làm sales part-time', N'Good communicate', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150398', 364, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (142, N'362-SE150666-Cv.pdf', N'Data sience', N'TensorFlow', N'1 năm', N'Tiếng anh + Tiếng Nhật căn bản', N'Quickly understand the business domain', N'Good knowlegde', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150666', 362, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (143, N'367-SE140277-Cv.pdf', N'UX/UI Designer', N'Adobe Premie, Photoshop', N'1 năm', N'Tiếng anh căn bản', N'Design on Figma', N'Need speend time for softskill', CAST(5.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE140277', 367, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (145, N'360-SS150341-Cv.pdf', N'Business Analyst ', N'Jira', N'1 năm', N'Tiếng anh + tiếng Nhật căn bản', N'Strong communications', N'Good', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SS150341', 360, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (146, N'361-SE160054-Cv.pdf', N'Backend Developer', N'C#, Java', N'1 năm', N'Tiếng Anh + tiếng Nhật căn bản', N'Good teamwork', N'Exellent', CAST(9.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160054', 361, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (147, N'362-SE160434-Cv.pdf', N'Backend Developer', N'Java Spring', N'1 năm', N'Tiếng Anh + tiếng Nhật căn bản', N'Can use Photoshop', N'Good', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160434', 362, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (150, N'357-SE160891-Cv.pdf', N'Web developer', N'Java, PHP', N'1 năm', N'Tiếng Anh', N'Can use Photoshop', N'Good', CAST(6.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160891', 357, 4)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (151, N'363-SE151212-Cv.pdf', N'Web developer', N'Java', N'1 năm', N'Tiếng Anh + tiếng Nhật căn bản', N'Can use Figma', N'Good knowlegde', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151212', 363, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (152, N'366-SE150752-Cv.pdf', N'Backend developer', N'.NET, JavaScrip', N'1 năm', N'Tiếng Anh + tiếng Nhật căn bản', N'HTML/CSS', N'Good performent', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE150752', 366, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (155, N'366-SE160243-Cv.pdf', N'Backend developer', N'.NET, ASP.NET', N'1 năm', N'Tiếng Anh căn bản', N'Angular', N'Good teamwork', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160243', 366, 3)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (156, N'370-SE151400-Cv.pdf', N'Fontend developer', N'Angular, Figma', N'1 năm', N'Tiếng Anh giao tiếp', N'Adobe permier', N'Good design', CAST(8.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151400', 370, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (157, N'367-SE160449-Cv.pdf', N'Fontend developer', N'Adobe Premier, AI', N'1 năm', N'8.0 IELTS', N'Figma', N'Good design', CAST(7.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE160449', 367, 1)
INSERT [dbo].[tblApplication] ([applicationID], [attachmentPath], [expected_Job], [technology], [experience], [foreign_Language], [otherSkills], [evaluation], [grade], [is_Pass], [student_Confirm], [school_Confirm], [company_Confirm], [studentCode], [postID], [semesterID]) VALUES (158, N'415-SE151170-Cv.pdf', N'Backend Developer', N'Java, C#, HTML/CSS', N'1 năm', N'Tiếng anh cơ bản', N'Photoshop, Adobe Premier', N'Perfect', CAST(10.0 AS Decimal(3, 1)), 1, 1, 1, 1, N'SE151170', 415, 2)
SET IDENTITY_INSERT [dbo].[tblApplication] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (2, N'Quản trị kinh doanh')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (3, N'Ngôn ngữ học')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT001', N'Tòa nhà Viettel, Hẻm 285 Cách Mạng Tháng Tám, Phường 12, Quận 10, Thành phố Hồ Chí Minh 740428', N'TP.HCM', N'0779935090', N'<p>American Study l&agrave; tổ chức chuy&ecirc;n luyện thi v&agrave; tư vấn du học h&agrave;ng đầu Việt Nam. Với đội ngũ gi&aacute;o vi&ecirc;n v&agrave; chuy&ecirc;n gia tư vấn người Mỹ đến từ c&aacute;c trường đại học h&agrave;ng đầu Hoa Kỳ, American Study tự h&agrave;o đ&atilde; gi&uacute;p cho h&agrave;ng ng&agrave;n học sinh Việt Nam chinh phục những kỳ thi quốc tế như TOEFL, SAT, ACT để bước v&agrave;o c&aacute;nh cổng c&aacute;c trường đại học danh tiếng tại Mỹ v&agrave; Canada với những suất học bổng trị gi&aacute; h&agrave;ng tỷ đồng. Năm 2020 ch&uacute;ng t&ocirc;i đ&atilde; gi&uacute;p hơn 200 học sinh Việt Nam v&agrave;o c&aacute;c trường đại học Mỹ với tổng trị gi&aacute; học bổng l&ecirc;n tới 1000 tỷ đồng.</p>', 1, N'OjtManage1@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT002', N'182 – 184 – 186 Lê Văn Việt, P. Tăng Nhơn Phú B, TP. Thủ Đức, TP. HCM.
', N'TP.HCM', N'0216512564', N'- Hệ thống Anh Ngữ Úc Châu hơn 15 năm hình thành và phát triển là một trong những Trung tâm Anh ngữ uy tín và quy mô hàng đầu tại Việt Nam với các chương trình đào tạo chất lượng cao đạt chuẩn Quốc tế: 

Anh văn chứng chỉ Quốc tế: IELTS –TOEIC
Anh văn chứng chỉ Cambridge: STARTERS – MOVERS – LYERS – KET – PET
- Hệ thống Anh ngữ Úc Châu là nơi hội tụ đội ngũ Giáo Viên, Chuyên Viên chuyên nghiệp, có trình độ chuyên môn cao.

- Phương châm hoạt động “Dịch vụ hoàn hảo –Chất lượng cam kết”, môi trường làm việc năng động, thân thiện, theo định hướng phát triển bền vững lâu dài và liên tục mở rộng quy mô, tìm kiếm nhân tài cho sự phát triển của Hệ thống trong thời gian tới.', 1, N'OjtManage2@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT003', N'TP.HCM', N'TP.HCM', N'0165452189', N'Công ty VTI là công ty công nghệ trẻ với sứ mệnh mang công nghệ Việt ra Thế giới . Đặc biệt, thị trường chính của chúng tôi là Nhật Bản.VTI tự hào là công ty có tốc độ tăng trường nhanh nhất Hà Nội năm 2019. VTI chuyên cung cấp dịch vụ cho các tập đoàn hàng đầu Nhật Bản trong lĩnh vực tài chính , bảo hiểm và sản xuất. Bên cạnh đó, VTI Japan là công ty có số lượng nhân lực BrSE đông đảo hàng đầu trong các công ty Việt Nam tại Nhật Bản. Hàng năm, VTI tạo nhiều cơ hội cho nhiều người sang Nhật làm việc đối với cả các ứng viên chưa có tiếng Nhật.

Chúng tôi rất mong muốn tiềm kiếm cho mình đội ngũ nhân sự tiềm năng lẫn tài năng để cùng đồng hành với công ty trong nhiều sự án lớn và nhỏ cho các doanh nghiệp Nhật Bản.

VTI luôn chào đón bạn!', 1, N'OjtManage3@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT004', N'17F Viettel Complex Building, 285 Cach Mang Thang 8, District 10, HCM', N'TP.HCM', N'0085479818', N'BAP Solutions, which is a subsidiary of the BAP IT Group, was established in 2016. It consists of more than 5 branches with experts in business, technology, marketing & innovation. We offer a diversified portfolio of services and products in various industries such as Fintech, SAP/Salesforce, Retail & E-commerce, Education and Healthcare.

BAP Solutions is a technology solutions company. We update regularly the latest technologies to provide the best solutions to clients.', 1, N'OjtManage4@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT005', N'lầu 6, Tòa nhà Phú Mỹ Hưng, số 8 Hoàng Văn Thái, khu phố 1, phường Tân Phú, quận 7, TP.HCM', N'TP.HCM', N'0541162162', N'Công ty Cổ phần dịch vụ Di Động Trực Tuyến (viết tắt M_Service) hoạt động chính trong lĩnh vực thanh toán trên di động (mobile payment) dưới thương hiệu MoMo. Công ty đã được Ngân hàng Nhà nước Việt Nam cấp phép cung cấp dịch vụ Ví điện tử và dịch vụ chuyển tiền, thu hộ/chi hộ…

Đặc biệt, MoMo sở hữu mạng lưới điểm giao dịch tài chính trải rộng khắp các tỉnh thành trên cả nước, cho phép hàng triệu khách hàng tại các vùng sâu vùng xa, nơi dịch vụ ngân hàng và điện thoại thông minh vẫn chưa phổ biến, được tiếp cận với các dịch vụ tài chính. 

MoMo là ứng dụng Ví điện tử trên điện thoại thông minh đã có mặt trên 2 hệ điều hành iOS và Android với hơn 23 triệu người tin dùng. Là nền tảng thanh toán di động, Ví MoMo thúc đẩy nền kinh tế không tiền mặt và cung cấp cho khách hàng trải nghiệm thanh toán một chạm (One Touch Payment) với hơn hàng trăm tiện ích dịch vụ, bao gồm Chuyển tiền, Thanh toán hóa đơn, Mua vé máy bay, Mua vé xe lửa, Vé xem phim, Thu-Chi hộ và Thương mại trên di động.', 1, N'OjtManage5@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT006', N'189 Nguyễn Thị Minh Khai, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', N'TP.HCM', N'0476354515', N'VUS là một trong những trung tâm Anh ngữ lâu đời, tự hào trở thành đơn vị đào tạo Anh ngữ đạt tiêu chuẩn toàn cầu được công nhận bởi NEAS, tổ chức độc lập quản lý chất lượng các trung tâm giảng dạy Anh ngữ quốc tế. Suốt 25 năm qua, chứng nhận Chất lượng NEAS đã xác nhận tiêu chuẩn cho nhiều trung tâm giảng dạy tiếng Anh hàng đầu thế giới.

Trên hành trình hơn 20 năm hình thành và vươn lên trở thành đơn vị đào tạo Anh ngữ hàng đầu Việt Nam, VUS luôn tâm niệm rằng con người là yếu tố quyết định đối với sự thành công và phát triển của doanh nghiệp. Với trên 40 trung tâm hiện đại đạt chuẩn quốc tế NEAS trên toàn quốc, VUS rộng cửa đón chào những thành viên muốn gia nhập tổ chức bằng tài năng, trí tuệ, phẩm chất đạo đức và lòng say mê công việc.', 1, N'OjtManage6@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT007', N'Block 5, Đường N6, Khu Công Nghệ Cao, phường Tân Phú, TP Thủ Đức, TP.HCM', N'TP.HCM', N'0414074626', N'Công ty Cổ phần Tập đoàn Công nghệ Unicloud sở hữu một hệ sinh thái Công nghệ toàn diện ứng dụng phủ khắp các lĩnh vực trọng yếu của nền kinh tế như Tài chính Ngân hàng, Chứng khoán, Bất động sản, Smart & IoT, Kinh tế chia sẻ, Chính phủ điện tử, Unicloud luôn trăn trở với các thách thức thực tế và luôn cải tiến và cập nhật các giải pháp hàng ngày.

Tầm nhìn hướng đến Top 10 SEA và TOP 500 Tập đoàn Công nghệ Thế giới với 5,000 nhân sự tại ít nhất 10 quốc giatrên toàn cầu. Unicloud Group xây dựng môi trường khuyến khích nhân sự tìm tòi, chủ động nghiên cứu phát triển bản thân, người Unicloud không ngừng học hỏi để thích nghi với mọi thay công nghệ để luôn ở vị trí dẫn đầu. Mọi giải pháp Unicloud đưa ra luôn đề cao sự sáng tạo, sở hữu nhiều sáng chế tầm cỡ thế giới.

Unicloud chờ đón các nhân sự tiềm năng cùng tham gia giảiquyết các bài toán khó, mang đến giá trị thực cải thiện chất lượng sống không chỉ của người Việt mà của toàn Thế giới.', 1, N'OjtManage7@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT008', N'Đường Sáng Tạo, KCX Tân Thuận, Quận 7,  HCM', N'TP.HCM', N'0341462464', N'Trong suốt hơn 20 năm phát triển, Công ty Hệ thống Thông tin FPT (FPT Information System - FPT IS) là nhà tích hợp hệ thống, cung cấp giải pháp hàng đầu Việt Nam và khu vực. Sở hữu năng lực công nghệ được thừa nhận bởi các khách hàng và đối tác toàn cầu, FPT IS mang đến những dịch vụ và giải pháp phục vụ các lĩnh vực trọng yếu của từng quốc gia, như: Viễn thông, Ngân hàng - Tài chính, Y tế, Giao thông vận tải, Tài chính công, Điện, Nước, Gas và Doanh nghiệp.', 1, N'OjtManage8@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT009', N'MCV COMPLEX – số 19A khu E – Office Park, khu chế xuất Tân Thuận Đông, quận 7, TP. HCM', N'TP.HCM', N'0654216715', N'Tập đoàn MCV ra đời năm 2007 với kinh nghiệm dày dặn trong sản xuất chương trình truyền hình & phim và sở hữu dung lượng nội dung khổng lồ. Tập đoàn MCV là nhà phát hành các chương trình thực tế, talkshow, game show truyền hình trên nền tảng digital qua hệ thống fanpage và kênh YouTube trực thuộc MCV Network. Tập đoàn MCV cũng phân phối và phát hành nội dung của các nhà sản xuất khác, khai thác thương mại và hoạt động kinh doanh dựa trên big data. Song song đó, MCV cũng sản xuất nội dung, tổ chức các sự kiện và buổi biểu diễn âm nhạc, kinh doanh thương mại điện tử.', 1, N'OjtManage9@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT010', N'Lầu 7, Tòa nhà MWG Lô T2-1.2, Đường D1, Khu Công Nghệ Cao, Phường Tân Phú, Quận 9, Hồ Chí Minh', N'TP.HCM', N'0465597979', N'Công ty Cổ phần Đầu tư Thế Giới Di Động (MWG) là nhà bán lẻ số 1 Việt Nam về doanh thu và lợi nhuận, với mạng lưới hơn 4.500 cửa hàng trên toàn quốc. MWG vận hành các chuỗi bán lẻ thegioididong.com, Điện Máy Xanh, Bách Hoá Xanh. Ngoài ra, MWG còn mở rộng ra thị trường nước ngoài với chuỗi bán lẻ thiết bị di động và điện máy tại Campuchia cũng như đầu tư vào chuỗi nhà thuốc An Khang. Năm 2020, thành viên mới của MWG là 4KFarm ra đời với mục tiêu cung cấp cho người tiêu dùng thực phẩm an toàn theo chuẩn 4 không (không thuốc trừ sâu, không chất bảo quản, không chất tăng trưởng, không sử dụng giống biến đổi gen)', 0, N'OjtManage10@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT011', N'TP.HCM', N'TP.HCM', N'0120432462', N'Khách sạn tọa lạc tại vị trí đắc địa ngay số 1 đường Thanh Niên, Hà Nội với thiết kế bậc thang nổi bật gồm 20 tầng, hướng thẳng ra hồ Tây.

Tiền thân là Khách sạn Sofitel Plaza Hà Nội, một trong những biểu tượng của thành phố, tòa nhà thuộc sở hữu của Tập đoàn Khách sạn Pan Pacific (PPHG) từ năm 2001 thông qua liên doanh với Tổng công ty Xây dựng Hà Nội. Từ ngày 1/10, khách sạn sẽ đổi thương hiệu thành Pan Pacific Hà Nội sau quá trình cải tạo, nâng cấp sảnh, quầy bar sảnh, nhà hàng và phòng họp. Không chỉ mang lại cảm giác thanh bình, khách sạn mới sẽ mang thông điệp của thương hiệu Pan Pacific "Trải nghiệm Thái Bình Dương mới mẻ" qua sự hòa trộn giữa văn hóa và di sản của các quốc gia khu vực vành đai Thái Bình Dương.

Với 273 phòng khách và 56 căn hộ dịch vụ, khách sạn tọa lạc tại vị trí đắc địa gần khu phố cổ và mở ra khung cảnh thơ mộng của hồ Tây và sông Hồng. Khách cũng có thể dễ dàng di chuyển đến khu trung tâm thành phố, nơi tập trung các văn phòng doanh nghiệp.', 1, N'OjtManage11@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT012', N' Tầng 9, Block A, tòa nhà FPT Cầu Giấy, số 10 Phạm Văn Bạch, quận Cầu Giấy, TP. Hà Nội', N'TP.HCM', N'0462174616', N'Công ty Cổ phần Viễn thông FPT (tên gọi tắt là FPT Telecom) hiện là một trong những nhà cung cấp dịch vụ Viễn thông và Internet hàng đầu khu vực.

Thành lập ngày 31/01/1997, khởi nguồn từ Trung tâm Dịch vụ Trực tuyến do 4 thành viên sáng lập cùng sản phẩm mạng Intranet đầu tiên của Việt Nam mang tên “Trí tuệ Việt Nam – TTVN”, sản phẩm được coi là đặt nền móng cho sự phát triển của Internet tại Việt Nam.

Với sứ mệnh tiên phong mang Internet, mang kết nối đến với người dân Việt Nam cùng mong muốn lớn lao mỗi gia đình Việt Nam đều sử dụng ít nhất một dịch vụ của Công ty, FPT Telecom đang nỗ lực thực thi Chiến lược “Mang đến trải nghiệm tuyệt vời cho khách hàng” trên cơ sở phát huy giá trị văn hóa cốt lõi “Lấy khách hàng làm trọng tâm” và nền tảng sức mạnh công nghệ FPT, từ đó tiên phong trở thành Nhà cung cấp dịch vụ số có trải nghiệm khách hàng vượt trội, tốt nhất tại Việt Nam.', 1, N'OjtManage12@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT013', N'2W Ung Văn Khiêm, P.25, Q.Bình Thạnh, TP.HCM', N'TP.HCM', N'0460247607', N'Dat Xanh Services đơn vị nắm giữ mảng dịch vụ bất động sản của Tập đoàn Đất Xanh. Quản trị xuyên suốt hoạt động của hệ thống các công ty BĐS từ Bắc chí Nam: Đất Xanh Miền Bắc, Đất Xanh Miền Trung, Đất Xanh Miền Nam, Đất Xanh Miền Đông, Đất Xanh Miền Tây, Đất Xanh Nam Trung Bộ, Đất Xanh Đông Nam Bộ, Nam Bộ Invest, Dat Xanh Premium, Dat Xanh Plus, Dat Xanh Services – International,… cùng hàng chục công ty thành viên trực thuộc các công ty con các vùng miền trên toàn quốc.', 1, N'OjtManage13@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT014', N'N1 Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Tp. HCM', N'TP.HCM', N'0657076217', N'ELCA is one of the biggest independent Swiss IT solutions providers and partners with Fortune 500 companies to provide intelligently designed software solutions using Agile methodology and distributed teams approach. Innovation in product development is our core strength.', 1, N'OjtManage14@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT015', N'90 Nguyễn Đình Chiểu, P Đa Kao, Q1, TPHCM', N'TP.HCM', N'0430762170', N'Hybrid technologies là công ty công nghệ phần mềm liên doanh Nhật - Việt, chính thức thành lập vào tháng 4/2016 với tiền thân là Evolable Asia Solutions Co., Ltd., phát triển các dịch vụ và mô hình làm việc đa dạng trong lĩnh vực công nghệ phần mềm như mô hình hybrid, mô hình ủy thác hay lĩnh vực trí tuệ nhân tạo.

Đến nay, trải qua 6 năm phát triển không ngừng nghỉ và gặt hái được những thành tựu nhất định,  hiện có 5 trụ sở văn phòng tại Việt Nam và Nhật Bản, với gần 700 nhân viên cùng hàng trăm các dự án, khách hàng trong nhiều lĩnh vực công nghệ khác nhau.

Đóng vai trò cung cấp các giải pháp toàn diện cho khách hàng và là đối tác đồng hành bền vững,  tự hào và tin tưởng sẽ tiếp tục phát triển song hành với sự thành công của khách hàng để cùng nhau vươn tới một tầm cao mới!', 1, N'OjtManage15@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT016', N'26,Ung Văn Khiêm, phường 25, quận Bình Thạnh, TP.HCM', N'TP.HCM', N'0654568542', N'Netcompany is one of Northern Europe’s most successful IT Companies, with offices in Vietnam, UK, Norway, Poland, the Netherlands, and headquarters in Copenhagen, Denmark. Globally Netcompany employs more than 3000 of the most skilled IT Consultants and Developers. We have strong and dedicated teams in Ho Chi Minh City, and you will have the opportunity to work with some of the most skilled IT people in Vietnam.

We believe that responsibility improves your abilities. Whether you have recently graduated from university or have many years of experience, you get a lot of responsibility from the moment you start at Netcompany. You’ll be working on some of the largest, most complex and technically innovative IT solutions and projects for some of the most prestigious organizations in the world.', 1, N'OjtManage16@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT017', N'2 Tan Vien Street Ward 2, Tan Binh District Ho Chi Minh City', N'TP.HCM', N'0432065560', N'KMS Technology is a leading provider of offshore software development, testing services, and consulting. Based out of Atlanta, GA with offices in California and Vietnam, we accelerate the delivery of innovative software solutions through our customer-centric approach. Our engineers bring organizations faster speed to market so they can stay focused on growing their core business.', 1, N'OjtManage17@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT018', N'Lô T2, Đường D1, Khu Công Nghệ Cao, Phường Tân Phú,Thành phố Thủ Đức, Hồ Chí Minh', N'TP.HCM', N'0659615261', N'FPT Software thành lập năm 1999, là công ty thành viên của FPT, Tập đoàn Công nghệ hàng đầu của Việt Nam. Sau 17 năm thành lập FPT Software hiện đang là công ty phần mềm lớn nhất của Việt Nam và đứng trong Top 100 Nhà cung cấp dịch vụ Outsourcing toàn cầu do International Association of Outsourcing Professionals (IAOP) đánh giá.

Là công ty chuyên xuất khẩu dịch vụ phần mềm, FPT Software cung cấp các dịch vụ phát triển phần mềm và bảo trì, triển khai ERP, QA, chuyển đổi ứng dụng, hệ thống nhúng, điện toán di động, điện toán đám mây… trong nhiều lĩnh vực như: Tài chính ngân hàng, Viễn thông, Y tế, Chế tạo, Công nghiệp xe hơi, Dịch vụ công… Hiện FPT Software đang tập trung nghiên cứu và phát triển dịch vụ CNTT dựa trên những nền tảng công nghệ mới như IoT, S.M.A.C, cho các lĩnh vực sản xuất máy bay, sản xuất ô tô, ngân hàng, truyền hình vệ tinh, viễn thông trên phạm vi toàn cầu. Công ty hiện đã và đang cung cấp dịch vụ cho khoảng 450 khách hàng là các tập đoàn lớn trên thế giới, trong đó có 43 khách hàng nằm trong danh sách Fortune Global 500.

Từ 13 lập trình viên với giấc mơ đưa trí tuệ Việt Nam đi khắp năm châu, đội quân FSOFT ở tuổi 18 với hơn 10.000 người, doanh thu hơn 230 triệu USD, tiếp tục biến giấc mơ biến Việt Nam trở thành điểm sáng về CNTT trên bản đồ thế giới thành hiện thực với mục tiêu đạt 1 tỉ USD doanh số năm 2020 và 30.000 người.

Sau 17 năm phát triển thị trường toàn cầu, đến nay FPT Software đã có 23 văn phòng tại 14 quốc gia bao gồm Việt Nam, Nhật Bản, Singapore, Mỹ, Pháp, Đức, Slovakia, Malaysia, Úc, Trung Quốc, Hàn Quốc, Myanmar, Philippines, Thái Lan.', 1, N'OjtManage18@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT019', N'CHUBB Tower II, số 369 Nguyễn Trãi, phường Nguyễn Cư Trinh, Quận 1, TP.HCM', N'TP.HCM', N'0564231561', N'Chubb Life là khối kinh doanh Bảo hiểm Nhân thọ (BHNT) toàn cầu của Tập đoàn Chubb. Tại Châu Á, Chubb Life đã thành lập các đơn vị thành viên với 100% vốn sở hữu tại Hong Kong SAR, Indonesia, Hàn Quốc, Myanmar, Đài Loan, Thái Lan, Việt Nam và một công ty liên doanh BHNT tại Trung Quốc. Chubb Life Việt Nam bắt đầu hoạt động kinh doanh tại Việt Nam vào năm 2005 và thành lập Công ty TNHH Một thành viên Quản lý Quỹ Chubb Life (Chubb Life FMC) vào năm 2013. Để đáp ứng nhu cầu bảo vệ và an toàn tài chính cho đa dạng các nhóm khách hàng tại thị trường Việt Nam, Chubb Life Việt Nam cung cấp một danh mục các sản phẩm và dịch vụ về bảo hiểm nhân thọ, sức khỏe và đầu tư toàn diện thông qua mạng lưới văn phòng rộng khắp trên toàn quốc.', 1, N'OjtManage19@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT020', N'Sai Gon Pearl, số 92 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, TPHCM', N'TP.HCM', N'0563215645', N'Smartland là đơn vị phân phối dự án bất động sản ,có trụ sở chính tại TP.Hồ Chí Minh. Các lĩnh vực mà công ty đã và đang phát triển bao gồm: Tư vấn dự án, phân phối dự án; tư vấn phát triển, hỗ trợ chủ đầu tư kết nối với khách hàng.

Với 18 năm kinh nghiệm chuyên sâu trong lĩnh vực Bất động sản, Smartland là một thương hiệu hàng đầu tại thị trường Việt Nam về phân phối, tư vấn và quản lý các dự án Bất động sản cao cấp tại Trung tâm TP.HCM và các dự án nghỉ dưỡng tại các thị trường như Phú Quốc, Đà Nẵng, Huế, Hồ Tràm,… Hiện nay Smartland đang là cầu nối đắc lực của nhiều chủ đầu tư lớn như Masteri Homes, Vingroup, Kepple Land, Phú Long, Refico,…CharmGroup…vv. Cùng với phương pháp quản lý hiện đại, chuyên nghiệp Smartland tin rằng đây sẽ là môi trường làm việc có thể giúp các bạn trở thành những nhà kinh doanh giỏi trong tương lai.', 1, N'OjtManage20@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT021', N'Tầng 1, Tòa nhà The Address, 60 Nguyễn Đình Chiểu, Đa Kao, Quận 1', N'TP.HCM', N'0568975249', N'CK HR Consulting được ra đời vào tháng 9/2018 với sứ mệnh góp phần hỗ trợ các doanh nghiệp tháo gỡ những khó khăn, giảm tải công việc và nâng cao hiệu quả của công tác quản trị nguồn nhân lực.

CK HR Consulting là đơn vị đối tác của nhiều Doanh nghiệp lớn và uy tín, góp phần mang đến nhiều cơ hội việc làm đến với các nguồn nhân lực tiềm năng.', 1, N'OjtManage21@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT022', N'Tầng 1, 205/14 Cách Mạng Tháng 8, P4, Q3, TP.HCM', N'TP.HCM', N'0567498189', N'Công ty Datacare làm việc trong lĩnh vực Digital Marketing bao gồm các dịch vụ về digital:

Các khóa học đào tạo về quảng cáo Facebook, Google và Dịch vụ chăm sóc & Content Website (Học viện Datacare) Dịch vụ chăm sóc & content Fanpage đa lĩnh vực, dịch vụ xây dựng gian hàng trên sàn TMĐT (Digitalcare.vn)

Tuy DATACARE mới là công ty startup nhưng chúng tôi đã khẳng định vị trí của mình trong ngành Digital Marketing. Điển hình công ty là đối tác chiến lược với công ty Adsplus-Đối tác cấp cao của Google. Ngoài ra đã hợp tác với 68,800 người với hơn 100 ngành nghề đang sử dụng Tool quản lý Data, email & sms auto của Datacare.vn để chăm sóc khách hàng tự động. Với những nội dung Fanpage & website phong phú, những buổi học Digital marketing, cùng những Tool chăm sóc khách hàng từ Datacare.vn. Chúng tôi tin với sức trẻ và lòng nhiệt huyết trao đồi không ngừng, hứa hẹn có sự phát triển lâu dài, giúp tất cả các bạn sinh viên có cơ hội trải nghiệm việc làm, tạo môi trường năng động giúp các bạn phát triển đúng năng lực chuyên môn.
', 1, N'OjtManage22@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT023', N'Lot I-11, D2 Road, SHTP, Tang Nhon Phu B Ward, Thu Duc City, Ho Chi Minh City', N'TP.HCM', N'0225412106', N'Samsung Electronics HCMC CE Complex (SEHC) project with a total investment of US $ 2 billion is located in Saigon Hi-tech Park with a total area of up to 122ha, which began operation in early 2016. This is one of the key factories of Samsung Group''s high-end consumer electronics manufacturing. Beside that, in early 2017 the largest Executive Briefing Center (EBC) in Southeast Asia and R&D Center (SHRC) established at the SEHC complex.', 1, N'OjtManage23@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT024', N'364 Cộng Hòa, Quận Tân Bình, TP. Hồ Chí Minh', N'TP.HCM', N'0654897452', N'NashTech là một thành viên thuộc tập đoàn Harvey Nash đến từ Anh Quốc và là công ty công nghệ lớn nhất Việt Nam. Năm 2021, NashTech vinh dự đạt giải nơi làm việc tốt nhất châu Á do tạp chí nhân sự hàng đầu châu Á HR Asia trao tặng. Với quy mô lên đến 1700 nhân viên tại 3 thành phố lớn - Hà Nội, Hồ Chí Minh, Đà Nẵng, NashTech tự hào là môi trường để các tài năng IT tối đa hoá tiềm năng, xây dựng sự tự tin để sẵn sàng bước vào con đường nghề nghiệp đầy thách thức, thú vị và vô vàn cơ hội phát triển. Đội ngũ nhân sự giàu năng lực và dày dặn kinh nghiệm của NashTech luôn đặt tâm trí và nhiệt huyết vào từng dự án, từ đơn giản đến phức tạp, tại Việt Nam và trên toàn thế giới.
', 1, N'OjtManage24@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT025', N'The Prince Residence, 17-19-21 Nguyễn Văn Trỗi, P12, Phú Nhuận, TPHCM.', N'TP.HCM', N'0654165746', N'JobTest.vn tự hào là Đối tác Chiến lược của các Công ty Tư vấn Nhân sự và Công nghệ hàng đầu TG:

IBM Kenexa, xếp hạng 3 thế giới về chuẩn khung năng lực và đánh giá tài năng với IBM Watson Talent AI dành cho hơn 21+ lĩnh vực ngành nghề ở hơn 150 quốc gia trên toàn thế giới.
Everything DiSC - Nhà cung cấp hàng đầu thế giới cho giải pháp đánh giá DISC cá nhân, doanh nghiệp
Center For Creative Leadership (CCL), xếp hạng 5 thế giới về các chương trình phát triển lãnh đạo
Connect Energy, dẫn đầu khu vực Châu Á về giải pháp nhân lực ngành Dầu khí và Điều hành
Với sứ mệnh Kiến Tạo Sự Nghiệp Mơ Ước cho thế hệ trẻ Việt Nam, JobTest cung cấp hệ thống đánh giá năng lực khoa học, tiên tiến nhất hiện nay với độ chính xác cao và đang được ứng dụng rộng rãi vào quá trình tuyển sinh, tư vấn hướng nghiệp, đào tạo, tuyển dụng cho tất cả đối tượng từ học sinh, sinh viên, phụ huynh, người đi làm.

JobTest hy vọng tiếp tục là cầu nối để hỗ trợ cho các Đơn vị Giáo dục, Trường Đại học, Cao đẳng, Trường Trung học phổ thông trong việc định hướng nghề nghiệp cho học sinh sinh viên. Đồng thời, góp phần xây dựng một hệ thống hướng nghiệp toàn diện cho xã hội, cải thiện nguồn nhân lực thông minh trong tương lai.', 1, N'OjtManage25@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT026', N'102AB Cống Quỳnh, Quận 1, TP.HCM', N'TP.HCM', N'0654657983', N'Đội ngũ chiến thắng – Kênh đại lý Manulife Việt Nam

Là đội ngũ dẫn đầu thị phần Bảo hiểm nhân thọ, nắm giữ 21% thị phần về Tổng doanh thu phí mới (tính đến hết tháng 12/2020)
Tiên phong triển khai chương trình Master Financial Advisor (MFA) thuộc Hiệp hội huấn luyện hàng đầu thế giới LIMRA dành cho đội ngũ Tư vấn viên xuất sắc được tuyển chọn
Dẫn đầu bảng xếp hạng về MDRT 2021 tại Việt Nam và 3 năm liên tiếp duy trì vị trí thứ 3 về MDRT Toàn cầu.
Kênh Đại lý Manulife Việt Nam luôn phát triển theo phương châm “lớn mạnh cùng chất lượng” và luôn đặt khách hàng làm trọng tâm.

Chúng tôi luôn tìm kiếm những người có hoài bão, năng động, tài năng gia nhập đội ngũ chiến thắng.', 1, N'OjtManage26@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT027', N'119 – 127 Nguyễn Cơ Thạch, Phường An Lợi Đông, Quận 2, TP. HCM', N'TP.HCM', N'0296841652', N'Tập Đoàn Việt Thái Quốc Tế (VTI) được thành lập từ năm 1998 bởi David Thái, mang đến một môi trường làm việc năng động và đầy thử thách song song với các cơ hội lớn để có thể phát triển bản thân. Hiện nay VTI đã phát triển thành một trong những nhà kinh doanh hàng đầu trong thị trường bán lẻ và tiếp thị hàng tiêu dùng/ thời trang.

VTI cam kết “Mang những gì tốt đẹp nhất của Việt Nam ra Thế Giới và mang những gì tốt đẹp nhất của Thế Giới đến Việt Nam”.Với các thương hiêu: Highlands Coffee, Phở 24, ALDO, The Coffee Bean & Tea Leaf.

Là một trong những Tập đoàn kinh doanh chuỗi cửa hàng bán lẻ lớn nhất Việt Nam, VTI luôn thấu hiểu và xem trọng vai trò của từng cá nhân trong tổ chức và là tài sản quý cần được bảo toàn và phát triển. Tất cả các mục tiêu đều hướng đến lợi ích của con người bởi lẽ thành công của công ty không chỉ được đo lường bằng những chỉ số về doanh thu mà còn là giá trị, ý nghĩa công việc mà công ty xây dựng và mang đến cho con người, đặc biệt là người lao động tại công ty.', 1, N'OjtManage27@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT028', N'28Bis Mạc Đĩnh Chi, ĐaKao, Q1, HCM', N'TP.HCM', N'0654564798', N'HCL Technologies là tập đoàn công nghệ tân tiến toàn cầu với sứ mệnh giúp đỡ doanh nghiệp tái thiết lại nghiệp vụ kinh doanh trong kỷ nguyên số, là 1 trong 3 công ty công nghệ lớn nhất của Ấn Độ với doanh thu đạt 10.8 tỷ USD (2021). Với mạng lưới R&D toàn cầu, phòng thí nghiệp đổi mới và trung tâm phát triển toàn thế giới, cùng hơn 187.000 nhân tài làm việc tại 52 quốc gia, HCL phục vụ các doanh nghiệp hàng đầu trong các lĩnh vực kinh doanh trọng điểm bao gồm 250 doanh nghiệp trong top 500 và 650 doanh nghiệp trong danh sách Global 2000.

HCL bắt đầu hành trình tại Việt Nam vào tháng 10 năm 2019, hiện tại, HCL Việt Nam đang cung cấp các giải pháp công nghệ đa ngành các khách hàng lớn bao gồm: Sản xuất, Hàng tiêu dùng đóng gói (CPG), Bán lẻ,…Với khát khao mở rộng và hiện thực hoá những mục tiêu to lớn trong tương lai, HCL Vietnam hy vọng có được sự đồng hành, góp sức của 8000 những nhân tài kỹ thuật trẻ tuổi nhằm mang đến sức mạnh công nghệ mạnh mẽ lan toả ra khu vực và thế giới', 1, N'OjtManage28@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT029', N'104 Cao Thắng, Phường 4, Quận 3', N'TP.HCM', N'0165415674', N'Hệ thống liên trường Ngoại Ngữ TP.HCM là hệ thống lớn mạnh với hơn 70 trường dạy anh ngữ cho thiếu nhi và người lớn bao gồm:
- Trường Ngoại Ngữ Không Gian
- Trường Ngoại Ngữ Thần Đồng
- Trường Anh Ngữ ISC Leecam
- Trường Anh Ngữ London
- Trường Anh Ngữ Thượng Đỉnh Premier
- Trường Ngoại Ngữ Tiếng Mỹ Giao Tiếp CAE Leaders
- Trường Ngoại Ngữ Hồng Hạc Flamingo
- Trường Nhật Ngữ Cố Đô Kyoto
- Trường Mầm Non Quốc Tế Cánh Thiên Thần
- Trường Toán Tích Hợp Mỹ - Việt iMath', 1, N'OjtManage29@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT030', N'46-48-50-52 B4 Street, Sala Urban Area, An Loi Dong Ward, Thu Duc City, Ho Chi Minh City', N'TP.HCM', N'0654651089', N'GNT Vietnam được thành lập mang sứ mệnh của Global Group tới Việt Nam. Với việc thành lập trung tâm nghiên cứu và phát triển phần mềm, GNT Vietnam đưa trí tuệ của người Việt ra toàn thế giới thông qua các sản phẩm và dịch vụ của Global Group. 

Đồng thời, GNT Vietnam cũng đem tới các mô hình kinh doanh mới nhất mà Global Group đang dẫn đầu, góp phần đưa Việt Nam hoà nhập, đưa người dùng internet và mobile tại Việt Nam tới một thế giới không có sự cách biệt.

Với kinh nghiệm hoạt động gần 10 năm, Global Group đã khẳng định vị thế thuộc top ba tập đoàn kinh doanh dịch vụ ứng dụng trên mobile tại Nhật. Trong thời gian tiếp theo, Global Group sẽ tiếp tục kiên trì thực hiện các giải pháp chiến lược để từng bước trở thành tập đoàn số một tại Nhật và mở rộng phạm vi hoạt động tại Việt Nam và quốc tế. Phát triển nguồn nhân lực thông qua các giải pháp đào tạo, tuyển dụng nguồn nhân tài cũng như thu hút chất xám từ các khu vực kinh tế phát triển là một mục tiêu của tập đoàn.

Mission (Sứ mệnh):
Tạo dựng một xã hội công bằng, một thế giới xóa bỏ sự cách biệt.

Vision (Tầm nhìn):
Xây dựng công ty toàn cầu hóa và đa dạng hóa với mục tiêu đứng hàng đầu về các dịch vụ mobile và internet.

Value (Giá trị):
Con người là giá trị cốt lõi của công ty.', 0, N'OjtManage30@gmail.com')
INSERT [dbo].[tblCompany] ([companyID], [address], [city], [phone], [company_Description], [is_Signed], [username]) VALUES (N'FPT031', N'335A Le Van Sy', N'TP.HCM', N'0906908824', N'<p>Domino&rsquo;s began humbly in 1960, with a history of starting small but dreaming big, which remains at the core of our brand. Hard work, ambition and a passion for pizza have always fed the power of what&rsquo;s possible at Domino&rsquo;s. We are a company built on innovative solutions and a belief that we are never done getting better, we embrace change and the potential it unlocks for everyone.</p><p>We are focused on developing an inclusive culture, with dignity and respect for all, where team members can grow, thrive and bring their best selves to work every day. The diversity of our workforce is what helps to make us an enduring brand, where we can grow and thrive together.&nbsp;</p>', 1, N'th.ty6701@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[tblCompany_Post] ON 

INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (351, N' Trợ giảng - Teaching Assistant (part-time/full-time)', N'<p>Chuẩn bị t&agrave;i liệu v&agrave; ph&ograve;ng học trước giờ v&agrave;o lớp Viết b&aacute;o c&aacute;o theo d&otilde;i t&igrave;nh h&igrave;nh học tập của học sinh trong lớp Cầu nối giữa học sinh v&agrave; gi&aacute;o vi&ecirc;n Gi&uacute;p đỡ học sinh v&agrave; gi&aacute;o vi&ecirc;n trong giờ học Ứng vi&ecirc;n sẽ được ph&acirc;n c&ocirc;ng c&aacute;c lớp học theo năng lực, ưu ti&ecirc;n c&aacute;c bạn nhận lớp trong khung giờ tối (17h-21h) Thời gian l&agrave;m việc: ưu ti&ecirc;n khung giờ buổi tối S&aacute;ng : 8h30-12h30 Chiều : 14h-18h Tối : 17h-21h (ưu ti&ecirc;n)</p>', N'<p>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; chứng chỉ IELTS từ 6.0 hoặc TOEFL từ 80 trở l&ecirc;n C&oacute; khả năng giao tiếp lưu lo&aacute;t bằng tiếng Anh (ưu ti&ecirc;n c&aacute;c bạn đ&atilde; c&oacute; kinh nghiệm với c&aacute;c kỳ thi IELTS, TOEFL, SAT, ACT...) T&iacute;nh t&igrave;nh h&ograve;a nh&atilde;, cởi mở, y&ecirc;u th&iacute;ch trẻ em v&agrave; thiếu ni&ecirc;n Cẩn thận, trung thực v&agrave; c&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc C&oacute; kỹ năng giao tiếp v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng</p>', N'<p>Mức lương: 3.500.000/th&aacute;ng (26 ca l&agrave;m việc tương đương 104 giờ) Cơ hội được l&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động, chuy&ecirc;n nghiệp Cơ hội được tăng lương nếu c&oacute; khả năng dạy k&egrave;m học sinh Được thưởng trong c&aacute;c dịp Lễ, Tết đặc biệt</p>', N'TP.HCM', 11, CAST(N'2020-12-31' AS Date), CAST(N'2022-12-12' AS Date), 0, 1, N'FPT001', 12, N'Trợ giảng')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (352, N' Trợ giảng - Teaching Assistant (part-time/full-time)', N'<p>Chuẩn bị t&agrave;i liệu v&agrave; ph&ograve;ng học trước giờ v&agrave;o lớp Viết b&aacute;o c&aacute;o theo d&otilde;i t&igrave;nh h&igrave;nh học tập của học sinh trong lớp Cầu nối giữa học sinh v&agrave; gi&aacute;o vi&ecirc;n Gi&uacute;p đỡ học sinh v&agrave; gi&aacute;o vi&ecirc;n trong giờ học Ứng vi&ecirc;n sẽ được ph&acirc;n c&ocirc;ng c&aacute;c lớp học theo năng lực, ưu ti&ecirc;n c&aacute;c bạn nhận lớp trong khung giờ tối (17h-21h) Thời gian l&agrave;m việc: ưu ti&ecirc;n khung giờ buổi tối S&aacute;ng : 8h30-12h30 Chiều : 14h-18h Tối : 17h-21h (ưu ti&ecirc;n)</p>', N'<p>Chuẩn bị t&agrave;i liệu v&agrave; ph&ograve;ng học trước giờ v&agrave;o lớp Viết b&aacute;o c&aacute;o theo d&otilde;i t&igrave;nh h&igrave;nh học tập của học sinh trong lớp Cầu nối giữa học sinh v&agrave; gi&aacute;o vi&ecirc;n Gi&uacute;p đỡ học sinh v&agrave; gi&aacute;o vi&ecirc;n trong giờ học Ứng vi&ecirc;n sẽ được ph&acirc;n c&ocirc;ng c&aacute;c lớp học theo năng lực, ưu ti&ecirc;n c&aacute;c bạn nhận lớp trong khung giờ tối (17h-21h) Thời gian l&agrave;m việc: ưu ti&ecirc;n khung giờ buổi tối S&aacute;ng : 8h30-12h30 Chiều : 14h-18h Tối : 17h-21h (ưu ti&ecirc;n)</p>', N'<p>Chuẩn bị t&agrave;i liệu v&agrave; ph&ograve;ng học trước giờ v&agrave;o lớp Viết b&aacute;o c&aacute;o theo d&otilde;i t&igrave;nh h&igrave;nh học tập của học sinh trong lớp Cầu nối giữa học sinh v&agrave; gi&aacute;o vi&ecirc;n Gi&uacute;p đỡ học sinh v&agrave; gi&aacute;o vi&ecirc;n trong giờ học Ứng vi&ecirc;n sẽ được ph&acirc;n c&ocirc;ng c&aacute;c lớp học theo năng lực, ưu ti&ecirc;n c&aacute;c bạn nhận lớp trong khung giờ tối (17h-21h) Thời gian l&agrave;m việc: ưu ti&ecirc;n khung giờ buổi tối S&aacute;ng : 8h30-12h30 Chiều : 14h-18h Tối : 17h-21h (ưu ti&ecirc;n)</p>', N'TP.HCM', 10, CAST(N'2021-01-01' AS Date), CAST(N'2021-04-30' AS Date), 0, 3, N'FPT001', 12, N'Trợ giảng')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (353, N'Nhân viên đào tạo (full-time)', N'<p>Nghi&ecirc;n cứu soạn chương tr&igrave;nh dạy học tiếng Anh ph&ugrave; hợp với c&aacute;c lứa tuổi từ trẻ em đến người lớn Quản l&yacute;, sắp xếp lịch l&agrave;m việc của gi&aacute;o vi&ecirc;n nước ngo&agrave;i v&agrave; trợ giảng Quản l&yacute;, gi&aacute;m s&aacute;t chất lượng c&aacute;c lớp học tiếng Anh mọi tr&igrave;nh độ L&ecirc;n kế hoạch học tập, thời kh&oacute;a biểu cho học sinh; theo d&otilde;i v&agrave; b&aacute;o c&aacute;o t&igrave;nh h&igrave;nh học tập của học sinh theo tuần/ th&aacute;ng/ kh&oacute;a; hỗ trợ &ocirc;n b&agrave;i cho học sinh ngo&agrave;i giờ l&ecirc;n lớp Theo d&otilde;i v&agrave; cập nhật thường xuy&ecirc;n c&aacute;c th&ocirc;ng tin của phụ huynh v&agrave; học sinh l&ecirc;n hệ thống: t&ecirc;n, tuổi, địa chỉ, học ph&iacute;, phản hồi&hellip;. Thực hiện c&aacute;c b&aacute;o c&aacute;o thường xuy&ecirc;n v&agrave; đột xuất phục vụ việc quản l&yacute;: số học sinh, t&igrave;nh h&igrave;nh học tập, t&igrave;nh trạng học ph&iacute;, th&ocirc;ng tin gia đ&igrave;nh L&agrave;m cầu nối trao đổi th&ocirc;ng tin giữa gi&aacute;o vi&ecirc;n nước ngo&agrave;i, gia đ&igrave;nh v&agrave; học sinh để đưa ra giải ph&aacute;p hỗ trợ việc học tập hiệu quả nhất Hỗ trợ đăng k&yacute; thi SAT, SSAT, TOEFL, SAT SUBJECTS ..&hellip; Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan đến chuy&ecirc;n m&ocirc;n theo chỉ thị của ban l&atilde;nh đạo Thời gian l&agrave;m việc: Ứng vi&ecirc;n lựa chọn 1 trong 2 khung giờ linh hoạt Khung giờ 1 (S&aacute;ng-chiều): 8h30-18h30 Khung giờ 2 (Chiều-tối): 12h30-21h Thời gian nghỉ trưa: 12h-14h 6 ng&agrave;y / tuần &amp; 1 ng&agrave;y nghỉ tự chọn</p>', N'<p>Tốt nghiệp Đại học hoặc c&aacute;c chứng chỉ đ&agrave;o tạo tương đương trở l&ecirc;n Ứng vi&ecirc;n c&oacute; chứng chỉ IELTS 6.5+ hoặc TOEFL 90+ ; ưu ti&ecirc;n c&aacute;c bạn c&oacute; chuy&ecirc;n m&ocirc;n hoặc kinh nghiệm chuy&ecirc;n ng&agrave;nh sư phạm, chuy&ecirc;n ng&agrave;nh về Tiếng Anh C&oacute; kỹ năng giao tiếp, đ&agrave;m ph&aacute;n, giải quyết vấn đề tốt C&oacute; niềm đam m&ecirc; l&agrave;m việc với học sinh C&oacute; &yacute; thức x&acirc;y dựng văn h&oacute;a l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện v&agrave; mang t&iacute;nh sư phạm, năng động, s&aacute;ng tạo</p>', N'<p>Mức thu nhập: 15 triệu &ndash; 30 triệu / th&aacute;ng Cơ hội thăng tiến l&ecirc;n cấp quản l&yacute; Thường xuy&ecirc;n đi du lịch trong nước, nước ngo&agrave;i (thưởng team) Chế độ bảo hiểm, nghỉ lễ, nghỉ ph&eacute;p theo quy định nh&agrave; nước Thưởng th&aacute;ng, thưởng qu&yacute;, thưởng th&aacute;ng 13 cuối năm M&ocirc;i trường l&agrave;m việc trẻ trung, năng động, tương trợ lẫn nhau c&ugrave;ng ph&aacute;t triển</p>', N'TP.HCM', 10, CAST(N'2021-01-10' AS Date), CAST(N'2021-04-25' AS Date), 0, 3, N'FPT001', 12, N'Thực tập sinh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (354, N'Tuyển kỹ sư phần mềm (full-time)', N'Hỗ trợ học sinh hoàn thiện sản phẩm thuộc lĩnh vực Computer Science (CS)
Tham gia xây dựng giáo trình, bài giảng về chuyên ngành Computer Science (CS) cho học sinh có nguyện vọng du học
Sáng tạo ý tưởng về các sản phẩm Computer Science (CS)
Làm việc, phối hợp theo nhóm dưới sự điều phối của Trưởng Bộ phận
Thời gian làm việc: Ứng viên lựa chọn 1 trong 2 khung giờ linh hoạt
Khung giờ 1 (Sáng-chiều): 8h30-18h30
Khung giờ 2 (Chiều-tối): 12h30-21h
Thời gian nghỉ trưa: 12h-14h
6 ngày / tuần & 1 ngày nghỉ tự chọn Tythnh', N'Ứng viên tốt nghiệp từ Đại học trở lên.
Yêu cầu chuyên môn:
Thành thạo lập trình NodeJS
Có kinh nghiệm về Web API, Web Services REST.
Có kiến thức cơ bản về Front-End, như HTML5, CSS3.
Hiểu biết tốt về ngôn ngữ tạo server-side template.
Có khả năng đọc hiểu tiếng Anh chuyên ngành Computer Science (CS)
Có kỹ năng làm việc nhóm, phối hợp làm việc theo team hiệu quả', N'Mức thu nhập: 10 - 15 triệu / tháng
Môi trường làm việc dân chủ, hiện đại, chuyên nghiệp, có cơ hội thăng tiến và ổn định lâu dài. 
Được đóng BHXH, BHYT, BH thất nghiệp theo quy định của nhà nước. 
Được hưởng các quyền lợi khác theo chính sách của công ty.', N'TP.HCM', 10, CAST(N'2021-01-12' AS Date), CAST(N'2021-04-29' AS Date), 0, 3, N'FPT001', 1, N'Java developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (355, N'Tuyển giáo viên tiếng anh', N'Giảng dạy tiếng Anh các cấp thiếu nhi, thiếu niên, giao tiếp, bằng cấp quốc tế (TOEIC/IELTS);
Theo sát quá trình học tập của học viên;
Gửi báo cáo học tập về từng học viên cuối khóa cho bộphậnđào tạo khi khóa học kết thúc;
Giao và chấm bài tập, bài kiểm tra của học viên.', N'Đã tốt nghiệp Đại học hoặc Cao đẳng, chuyên ngành tiếng Anh là một lợi thế;
Kỹ năng giao tiếp tiếng Anh trôi chảy;
Yêu thích trẻ em, năng động, sáng tạo, kiên nhẫn;
Có kinh nghiệm giảng dạy từ 6 tháng trởlên;
Có bằng cấp TOEIC/IELTS là một lợi thế.', N'Lương thưởng thỏa thuận theo năng lực (trao đổi cụthểkhi phỏng vấn).
Được đào tạo, hỗ trợ chuyên môn thường xuyên.
Công việc ổn định, lâu dài khi trở thành thành viên của Trung tâm.
Môi trường làm việc chuyên nghiệp, đề cao tính nhân văn và tôn trọng quyền nhân sự.
Chính sách đãi ngộ: khen thưởng, team building, du lịch thường niên', N'TP.HCM', 10, CAST(N'2021-01-13' AS Date), CAST(N'2021-04-26' AS Date), 0, 3, N'FPT002', 12, N'Giáo viên, Giảng viên')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (356, N'Blockchain/ AI intern', N'Web: Java/PHP/ Java/ NodeJS/ ReactJS/ Vuejs
Key Responsibilities
- Attend BAP’s Internship training.
- For the intern: you will join a 2 months internship then 2 months on the job training
(open for fulltime or partime )
- Get support and training from our talent Trainer
- Opportunity to join our High Tech or software development team
- Get the chance to work in a professional environment and join all our events
- Opportunity to become an official employee of BAP', N'Be a third/ Final year or graduated student with background in IT/ Software Engineer/Electronics and Telecommunication

- Or software development course from IT center Aptech, Codegym, Cybersoft, Funix....
- GPA from 3.0 for AI/ Blockchain intern
- GPA from 2.8 for PHP, Nodejs, Reactjs intern
- Passionate about Blockchain/ AI/ Machine Learning/ Deep Learning/ PHP/ JavaScript
- Have good basic knowledge of programing language, Database, OOP
- Good at Match/ Logic is preferred
- Willing to learn and desire to work at BAP after graduation/ internship', N'- Internship allowance
- Technical workshop training
- Opportunity to join in a diversity projects
- Promotion opportunities
- Team-building, kickoff, release funds
- Gifts for family: Tet, E:E Day, Mid-Autumn Festival
- Diverse company culture activities: Company trip, Christmas night, Year end party,
Women’s day, Men’s day...
- International environment with colleagues from different countries (Vietnam, Japan,
Australia, Singapore, etc.)', N'TP.HCM', 10, CAST(N'2021-01-30' AS Date), CAST(N'2021-04-27' AS Date), 1, 3, N'FPT004', 1, N'AI Developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (357, N'Java/PHP/ Java/ NodeJS/ ReactJS/ Vuejs intern', N'Web: Java/PHP/ Java/ NodeJS/ ReactJS/ Vuejs', N'- Attend BAP’s Internship training.
- For the intern: you will join a 2 months internship then 2 months on the job training (open for fulltime or partime )
- Get support and training from our talent Trainer
- Opportunity to join our High Tech or software development team
- Get the chance to work in a professional environment and join all our events
- Opportunity to become an official employee of BAP Key Skills and Qualifications
- Be a third/ Final year or graduated student with background in IT/ Software Engineer/Electronics and Telecommunication...
- Or software development course from IT center Aptech, Codegym, Cybersoft, Funix....
- GPA from 3.0 for AI/ Blockchain intern
- GPA from 2.8 for PHP, Nodejs, Reactjs intern
- Passionate about Blockchain/ AI/ Machine Learning/ Deep Learning/ PHP/ JavaScript
- Have good basic knowledge of programing language, Database, OOP
- Good at Match/ Logic is preferred
- Willing to learn and desire to work at BAP after graduation/ internship', N'- Internship allowance
- Technical workshop training
- Opportunity to join in a diversity projects
- Promotion opportunities
- Team-building, kickoff, release funds
- Gifts for family: Tet, Children’s Day, Mid-Autumn Festival
- Diverse company culture activities: Company trip, Christmas night, Year end party,
Women’s day, Men’s day...
- International environment with colleagues from different countries (Vietnam, Japan,
Australia, Singapore, etc.)', N'TP.HCM', 10, CAST(N'2021-04-30' AS Date), CAST(N'2021-08-30' AS Date), 0, 3, N'FPT004', 1, N'Front-end developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (358, N'Data Engineer', N'Build pipelines that aggregate data from many different sources, provide valuable insights for the business;
Design solutions that provide analytics in real-time;
Grow our Data Platform so that new data requirements can be done quickly;
Create more tools and frameworks for processing big data;
Build metrics and monitoring system to keep data platform within SLAs;
Collaborate with our AI & Business Intelligence teams;
Contribute to a data-driven culture.', N'Have 1+ years experience in React Native;
Have experience with Android/iOS;
Have communication and research skills;
Be able to learn new technologies quickly.', N'Love of data. You run “SELECT COUNT(SHEEP) FROM BACKYARD” during your sleep!
Strong programming skill (Java/Python);
Problem solving skills;
Teamwork spirit;
(Bonus) Experience with cloud platforms such as Google Cloud Platform or Amazon Web Service.', N'TP.HCM', 10, CAST(N'2021-04-30' AS Date), CAST(N'2021-08-26' AS Date), 0, 3, N'FPT005', 1, N'Kỹ sư phân tích dữ liệu')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (359, N' Mobile Developer', N'Develop new module for company’s product: MoMo E-Wallet;
Contribute new ideas and finish tasks timely and accurately;
Follow strictly all regulations of Mobile Payment development and user’s information security;
Look for optimized solution for MoMo App and Support operation Team in execution stage;
Mainly use Java, Objective-C and open source technology as assigned by team leader.', N'Have 1+ years experience in React Native;
Have experience with Android/iOS;
Have communication and research skills;
Be able to learn new technologies quickly.', N'To work at “Best companies to work for in Asia”, the only Vietnamese Fintech company in “Top 50 leading companies” 2019, Fintech 100 – Leading Global Fintech Innovators, and Top 1 of “Top 10 leading financial applications in Vietnam 2020” according to monthly active users from App Annie.
Attractive salary, bonus, and benefit.
Many training, self-development programs with a clear career development path.
Comprehensive health insurance packages for you and your family members.
Yearly team-building at famous resorts/ tourist destinations', N'TP.HCM', 10, CAST(N'2021-04-30' AS Date), CAST(N'2021-08-24' AS Date), 0, 3, N'FPT005', 1, N'Back-end developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (360, N'IT Business Analyst', N'IT Business Analyst', N'Good documentation and presentation skills;
Modeling and Designing business processes;
Can read and design in UML language, familiar with at least one: Use-cases diagram, Activity Diagram, State Diagram, Sequence Diagram, able to understand and design a Relation Entity Diagram;
Data-driven, have experience in SQL, Data Model;
Having knowledge in banking or financial company is a plus;
Having a willing-to-learn spirit.', N'To work at “Best companies to work for in Asia”, the only Vietnamese Fintech company in “Top 50 leading companies” 2019, Fintech 100 – Leading Global Fintech Innovators, and Top 1 of “Top 10 leading financial applications in Vietnam 2020” according to monthly active users from App Annie.
Attractive salary, bonus, and benefit.
Many training, self-development programs with a clear career development path.
Comprehensive health insurance packages for you and your family members.
Yearly team-building at famous resorts/ tourist destinations', N'TP.HCM', 10, CAST(N'2021-05-01' AS Date), CAST(N'2021-07-30' AS Date), 0, 3, N'FPT005', 1, N'Kỹ sư phân tích phần mềm')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (361, N'Tuyển .Net Developer', N'Develop high volume, highly scalable server-side features;
Work closely with internal departments to build web applications/systems;
Research and apply new technology to improve customer experience;
Ensure the assigned tasks are performed on time and with high quality.', N'Bachelor’s Degree in Software Engineering, Information Technology or relevant;
1 year experience in C#, .NET;
Experience in design and building Modules, API;
Knowledge of OOP and Design Patterns;
Knowledge of databases (SQL, Oracle);
Good time management, communication, and problem-solving skills;
Good teamwork spirit and logical thinking;
Proactive, well self-organized, and responsible in work;
Able to quickly manage new technologies.', N'To work at “Best companies to work for in Asia”, the only Vietnamese Fintech company in “Top 50 leading companies” 2019, Fintech 100 – Leading Global Fintech Innovators, and Top 1 of “Top 10 leading financial applications in Vietnam 2020” according to monthly active users from App Annie.
Attractive salary, bonus, and benefit.
Many training, self-development programs with a clear career development path.
Comprehensive health insurance packages for you and your family members.
Yearly team-building at famous resorts/ tourist destinations', N'TP.HCM', 10, CAST(N'2021-05-06' AS Date), CAST(N'2021-08-20' AS Date), 0, 3, N'FPT005', 1, N'.Net developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (362, N' Data Scientist/Machine Learning Engineer', N'Building Machine Learning models using your core expertise;
Collaborate with Product and Business to define the Machine Learning product, focus on Personalization and Financial Services;
Collecting, cleaning, preparing data at large scale for modeling;
Adding new features, exploring new approaches to keep pushing the model performance;
Participating in productionizing Machine Learning models for live production;
Designing, conducting A/B tests and analyzing the results for experiment insights;
Building pipelines for continuously validating and updating models.', N'1 year working experience with ML;
Good understanding of mathematical foundations of Machine Learning algorithms;
Have practical experience in applying Machine Learning in personalization, credit scoring or user behavior analysis;
A builder. You go the extra mile to bring your prototypes to production;
Experience with credit scoring or financial service models is a plus;
If you are looking for a place to grow your career and impact millions of people, MoMo might be just the right place for you.', N'To work at “Best companies to work for in Asia”, the only Vietnamese Fintech company in “Top 50 leading companies” 2019, Fintech 100 – Leading Global Fintech Innovators, and Top 1 of “Top 10 leading financial applications in Vietnam 2020” according to monthly active users from App Annie.
Attractive salary, bonus, and benefit.
Many training, self-development programs with a clear career development path.
Comprehensive health insurance packages for you and your family members.
Yearly team-building at famous resorts/ tourist destinations', N'TP.HCM', 10, CAST(N'2021-08-31' AS Date), CAST(N'2021-12-30' AS Date), 0, 3, N'FPT005', 3, N' Data Scientist/Machine Learning Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (363, N'Java Developer', N'Develop and enhance large-scale systems using Java technologies: Collection/Insurance feature,
Loan/Saving/Investing feature, Mobile App Platform, Delivery Services. Contribute to all phases of
the development lifecycle;
Write well-designed, testable, efficient code;
Ensure designs are in compliance with specifications;
Identify bottlenecks and bugs, and devise solutions to these problems;
Researching and developing new technologies, focusing on mobile payments;
Communicate with other Divisions in support of production issues and bug fixing;
Identify major areas of systems improvement and drive results, by being able to quickly translate new
ideas into solid implementations;
Provide ad hoc support and advocacy to business subject specialists;
Application support with a heavy emphasis on problem identification, diagnosis, and resolution;
Other assignments from the line manager.', N'Have a Degree in Computer Science or related fields;
1+ years experience in server-side languages such as Java;
Good knowledge of data structures, system design, and algorithms;
Experience with Spring framework (Spring Bean, Spring AOP, Spring Data, Spring MVC), Spring Boot, Hibernate;
Experience with web servers, caching solutions such as Redis;
Be familiar with RDBMS such as MySQL/PostgreSQL or NoSQL databases such as Cassandra, MongoDB is a plus;
Knowledge of multiple front-end languages and libraries such as HTML/ CSS, JavaScript, jQuery is a plus;
Be familiar with Git', N'To work at “Best companies to work for in Asia”, the only Vietnamese Fintech company in “Top 50 leading companies” 2019, Fintech 100 – Leading Global Fintech Innovators, and Top 1 of “Top 10 leading financial applications in Vietnam 2020” according to monthly active users from App Annie.
Attractive salary, bonus, and benefit.
Many training, self-development programs with a clear career development path.
Comprehensive health insurance packages for you and your family members.
Yearly team-building at famous resorts/ tourist destinations.', N'TP.HCM', 10, CAST(N'2021-08-31' AS Date), CAST(N'2021-12-31' AS Date), 0, 3, N'FPT005', 1, N'Java Developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (364, N'NHÂN VIÊN TƯ VẤN TUYỂN SINH (ASA OFFICER)', N'Conduct full cycle recruitment and selection processes for teaching assistant & teacher of English positions. Recruitment process includes sourcing, screening and selection, interviewing, offer and on-boarding.
Build, develop & maintain pools of teaching candidates through networking so that efforts are not limited to job sites, employment agencies, and internet sites.
Manage and update recruitment content and communication messages on different platforms including website, external sourcing channels, Facebook fanpage, Linkedin, etc.
Work collaboratively with other HR Teachers Department staff and Campus Managers to ensure employment offers and other HR administration for teaching staff is completed. 
Support analysis and reporting on different HR metrics including but not limited to sourcing channels, recruitment pipelines, onboarding, turnover rate, etc. 
Contribute to recruitment budget planning activities as required. 
Work on other tasks and projects as assigned.', N'Bachelor degree qualification in fields relevant to Human Resources (recruitment) and/or English Teaching is preferred
Experience in recruitment. One - two years of experience in Education or Teaching is a plus
Advanced English level, proficient MS Office skills
Pro-active and independent
Customer service mindset
Ability to work under high pressure and fast paced working environment
Excellent interpersonal skills, teamwork spirit', N'Hưởng lương 100% giai đoạn thử việc
Thực hiện đầy đủ các chính sách BHXH, BHYT, BHTN và Thuế TNCN
Học bổng VUS dành cho nhân viên và người thân
Thưởng Tháng 13, KPI bonus · Team building, Company trip….', N'TP.HCM', 10, CAST(N'2021-09-01' AS Date), CAST(N'2021-12-30' AS Date), 0, 3, N'FPT006', 8, N'Nhân viên tư vấn tuyển sinh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (365, N'DIGITAL MARKETING EXECUTIVE (PAID MEDIA)', N'Thực thi các chiến dịch quảng cáo Google / Facebook nhằm thu Lead chất lượng.
Theo dõi và gia tăng hiệu quả các chiến dịch mỗi ngày.
Phân tích, đánh giá và đưa ra các đề xuất cho từng kênh, từng chiến dịch.
Phối hợp với bộ phận thiết kế & xây dựng nội dung để đạt mục tiêu chung.
Thực hiện các công việc khác theo sự điều động của phòng ban', N'Skills and Qualifications/ Kỹ năng Nghiệp vụ:
Am hiểu sâu về hệ thống Google Ad, Facebook Ad.
Kỹ năng phân tích số liệu, đánh giá hiệu quả từng chiến dịch.
Hiểu biết tổng quan về Digital, marketing performance
Education: Cử nhân - chuyên ngành marketing, IT hoặc liên quan.
Experience: Trên 3 năm làm việc. Có kinh nghiệm thực thi chiến dịch quảng cáo trả phí hiệu quả.
Attitude: ham học hỏi, năng nổ, nhiệt tình, linh hoạt, năng động, cởi mở, làm việc nhóm, chủ động trong công việc.
Language: tiếng Anh giao tiếp.
Computer skills: thành thạo các phần mềm văn phòng.', N'Hưởng lương 100% giai đoạn thử việc
Thực hiện đầy đủ các chính sách BHXH, BHYT, BHTN và Thuế TNCN
Học bổng VUS dành cho nhân viên và người thân
Thưởng Tháng 13, KPI bonus · Team building, Company trip….', N'TP.HCM', 10, CAST(N'2021-09-02' AS Date), CAST(N'2021-12-31' AS Date), 0, 3, N'FPT006', 7, N'DIGITAL MARKETING EXECUTIVE ')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (366, N'CHUYÊN VIÊN LẬP TRÌNH', N'Hỗ trợ phần mềm
Xử lý sự cố, khắc phục lỗi phần mềm khi có yêu cầu.
Xây dựng thêm chức năng, report cho phần mềm dựa trên tài liệu phân tích nghiệp vụ.
Xây dựng và phát triển phần mềm cho hệ thống.
Kinh nghiệm đọc và xử lí, tổ chức code tốt, nắm bắt yêu cầu nghiệp vụ nhanh.
Tham gia xây dựng lại phần mềm lõi, xây dựng report, vận hành phần mềm mới trên nền công nghệ mới.
Tạo giao diện trang web/giao diện người dùng bằng cách sử dụng các HTML/CSS/API''s. · Kiểm định chất lượng phần mềm trước khi chuyển sang SIT, UAT, đảm bảo phần mềm triển khai đúng thiết kế và phù hợp với tài liệu thiết', N'Bằng cấp: Đại học.
Chuyên môn: Công nghệ thông tin, công nghệ phần mềm,…
Số năm kinh nghiệm: từ 2 năm trở lên
Trình độ Anh văn: Level B.
Có kinh nghiệm lập trình từ 2 năm trở lên với các ứng dụng Web và các ngôn ngữ: .Net, ASP.Net, C#, JavaScript, Angular JS, HTML5 và JQuery.
Ưu tiên ứng viên có kinh nghiệp lập trình trên công nghệ Net Core. Có kinh nghiệm viết SQL scripts (store, view, function).
Thái độ tích cực, tư duy cởi mở, sẵn sàng học hỏi.
Trang bị kiến thức chuyên môn nâng cao nhằm hoàn thành tốt công việc.
Ham học hỏi và tìm hiểu công nghệ mới nhằm đáp ứng công việc tốt hơn.
Có khả năng thuyết trình, giao tiếp tốt, có khả năng làm việc nhóm.', N'Hưởng lương 100% giai đoạn thử việc
Thực hiện đầy đủ các chính sách BHXH, BHYT, BHTN và Thuế TNCN
Học bổng VUS dành cho nhân viên và người thân
Thưởng Tháng 13, KPI bonus · Team building, Company trip….', N'TP.HCM', 10, CAST(N'2021-09-01' AS Date), CAST(N'2021-12-29' AS Date), 0, 3, N'FPT006', 1, N'CHUYÊN VIÊN LẬP TRÌNH')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (367, N'Thực Tập Sinh UI/UX Designer', N'Thiết kế giao diện website, mobile apps .
Tham gia vào quy trình phát triển phần mềm trong các dự án thực tế của công ty
Nhận được hướng dẫn từ Manager cũng như các case study từ dự án.
Những công việc khác được giao bởi Manager..', N'Sinh viên năm cuối hoặc sắp/mới tốt nghiệp chuyên ngành Thiết kế, Đồ họa.
Kiến thức nền tảng về các công cụ thiết kế: Photoshop, AI, Adobe Premiere, Adobe After Effects.
Biết công cụ thiết kế về giao diện web, apps như Figma là 1 lợi thế.
Có kiến thức cơ bản về UI.
Kỹ năng: làm việc nhóm, tư duy logic, khả năng học hỏi cao.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2021-12-31' AS Date), CAST(N'2022-04-30' AS Date), 0, 3, N'FPT007', 6, N'Thực Tập Sinh UI/UX Designer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (368, N'Thực tập sinh Kinh doanh', N'Hỗ trợ tìm kiếm thu thập thông tin, tư vấn và chăm sóc khách hàng.
Phối hợp với BP Marketing tham gia phát triển các chương trình khuyến mãi theo từng thời điểm.
Hỗ trợ làm hồ sơ, hợp đồng, dữ liệu bán hàng.', N'Sinh viên năm cuối hoặc sắp tốt nghiệp chuyên ngành Kinh doanh hoặc các chuyên ngành khác nhưng có yêu thích lĩnh vực kinh doanh.
Có kỹ năng giao tiếp diễn đạt, thuyết phục tốt.
Yêu thích và có định hướng tìm hiểu, làm việc ở vị trí kinh doanh.
Chủ động, nhiệt tình và có trách nhiệm cao trong công việc.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2021-12-31' AS Date), CAST(N'2022-04-26' AS Date), 0, 3, N'FPT007', 8, N'Thực tập sinh Kinh doanh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (369, N'Thực tập sinh Marketing', N'Hỗ trợ Quản lý, chăm sóc các trang mạng xã hội của Công ty (Chuyên về sản phẩm Smart Living, Thiết bị điện tử IoT,...).
Biên tập nội dung truyền thông trên các kênh truyền thông của
Công ty (Tin tức nội dung trên Website, Mạng xã hội, Email, Nội dung PR bên ngoài, Nội dung seeding,...)
Tham gia vào các hoạt động brainstorm, lên ý tưởng, nghiên cứu và tìm kiếm thông tin, thiết kế proposal,...
Tham gia vào sản xuât nội dung truyên thông cho sản phẩm (Digital/Offline,...) nhu bài viết, idea video /hình ảnh,...', N'Sinh viên năm cuối hoặc sắp tốt nghiệp chuyên ngành
Marketing, Quản trị kinh doanh hoặc có liên quan.
Biết nắm bắt xu hướng, có tương tác tốt trên cộng đồng mạng: Facebook, Instagram,...
Sử dụng thành thạo công cụ Microsoft Office (Word, Excel, Power Point)
Có khả năng viết tốt, khả năng sáng tạo nội dung, lên ý tưởng hình ảnh.
Tiếng Anh đọc viết tốt.
Thái độ tích cực, cẩn thận và tỉ mỉ.
Chăm chỉ và trách nhiệm với công việc được giao phó.
Tư duy cởi mở và chịu khó học hỏi những kiến thức mới.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-01-01' AS Date), CAST(N'2022-04-28' AS Date), 0, 3, N'FPT007', 7, N'Thực tập sinh Marketing')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (370, N'Thực Tập Sinh Thiết Kế Đồ Họa (Graphic Designer)', N'Thiết kế các hạng mục offline: Logo, Brochure, poster, tờ rơi, standee, backdrop, các ấn phẩm POSM,…(Lĩnh vực công ty Công nghệ phát triển giải pháp ứng dụng các lĩnh vực Banking-Fintech, Chứng khoán, Quản lý BĐS, IoT & Smart Living, Smart Home, Kinh tế chia sẻ, Chính phủ điện tử)
Thiết kế banners để chạy quảng cáo online : Facebook, Zalo, Google, banner website, giao diện website.
Những công việc khác được giao bởi Manager.', N'Đang là sinh viên năm cuối hoặc sắp tốt nghiệp chuyên ngành Thiết kế, Đồ họa.
Có kiến thức về các công cụ thiết kế: Photoshop, AI, Adobe Premiere, Adobe After Effects.
Có kiến thức về thương hiệu và bộ nhận diện thương hiệu là một lợi thế.
Có sự sáng tạo đổi mới, tính thẩm mỹ tốt, cẩn thận, tỉ mỉ, cập nhật các xu hướng thiết kế mới.
Kỹ năng: làm việc nhóm, tư duy logic, khả năng học hỏi cao.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-01-03' AS Date), CAST(N'2022-04-30' AS Date), 0, 3, N'FPT007', 6, N'Thực Tập Sinh Thiết Kế Đồ Họa (Graphic Designer)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (371, N'Thực tập sinh Thiết kế công nghiệp', N'Lên ý tưởng, phác thảo vỏ ngoài mẫu sản phẩm công nghệ
Tham gia quá trình thảo luận làm kết cấu và dựng 3d
In 3d mẫu sản phẩm', N'Đang là sinh viên năm cuối hoặc sắp tốt nghiệp chuyên ngành Thiết kế công nghiệp…
Có tư duy thiết kế, thẩm mỹ khối
Sử dụng cơ bản phần mềm 3D: Solidworks
Sáng tạo, chủ động với công việc được giao, đam mê thiết kế sản phẩm.
Kỹ năng quản lý công việc và lập kế hoạch. Khả năng làm việc độc lập và phối hợp nhóm tốt.
Thái độ tích cực, cẩn thận và tỉ mỉ.
Chăm chỉ và cầu thị, trách nhiệm với công việc được giao phó.
Năng động, tích cực, chủ động, trách nhiệm cao trong công việc.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-01-02' AS Date), CAST(N'2022-04-30' AS Date), 0, 3, N'FPT007', 6, N'Thực tập sinh Thiết kế công nghiệp')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (372, N'Thực tập sinh Embedded', N'Phát triển firmware trên các thiết bị IoT trong hệ sinh thái smart-living của Sunshine.
Xây dựng các thư viện, framework có thể sử dụng lại
Tối ưu hoá hiệu năng các ứng dụng
Kiến trúc viết mã một cách chuyên nghiệp', N'Đang là sinh viên năm cuối hoặc sắp tốt nghiệp các ngành Công nghệ thông tin.
Khả năng tư duy, học hỏi nhanh, sẵn sàng giải quyết các vấn đề khó khăn.Chấp nhận các sinh viên chưa có kinh nghiệm, công ty sẽ đào tạo thêm
Có khả năng đọc và nghiên cứu tài liệu tiếng Anh.
Ưu tiên các bạn có GPA từ 8.0 trở lên hoặc có tham gia các dự án mã nguồn mở trên github.
Yêu thích công nghệ và không ngừng học hỏi cái mới để phát triển bản thân.
Năng động, tích cực, chủ động, trách nhiệm cao trong công việc', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-06-10' AS Date), CAST(N'2022-07-20' AS Date), 1, 3, N'FPT007', 1, N'Thực tập sinh Embedded')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (373, N'Thực tập sinh Unity Developer (C#)', N'Lập trình phát triển các ứng dụng 3D tương tác trên PC, Web,
Điện thoại, Máy tính bảng, GearVR, HTC Vive sử dung các game engine Untiy3D, CryEngine, Unreal.
Phát triển ứng dụng cho di động sử dụng Unity3D hoặc Native Code.', N'Đang là sinh viên năm cuối hoặc sắp tốt nghiệp các ngành Công nghệ thông tin.
Thành thạo ngôn ngữ C#.
Có kiến thức tốt về cơ sở dữ liệu
Có từng tham gia dự án lập trình web, di động, flash là một lợi thế.
Có kinh nghiệm sử dụng 1 trong các game engine như Unity3D, CRYENGINE, Unreal là một lợi thế.
Có kinh nghiệm sử dụng Git là 1 lợi thế.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-06-11' AS Date), CAST(N'2022-07-21' AS Date), 1, 3, N'FPT007', 1, N'Thực tập sinh Unity Developer (C#)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (374, N'Thực tập sinh AI Engineer', N'Đưa ra các giải pháp AI/ML giải quyết vấn đề từ đơn giản đến phức tạp.
Sử dụng và bổ sung các thư viện để xây dựng mô hình AI đặc biệt trên các hệ thống nhúng.
Hiểu rõ các kiến trúc DL/ML để tối ưu trên nguồn tài nguyên hạn chế.
Khai phá, giám sát và thu thập thêm dữ liệu nếu cần thiết.
Tận dụng các nguồn dữ liệu có sẵn để huấn luyện các mô hình.
Xây dựng quy trình và khai phá các đặc trưng cần thiết từ bộ dữ liệu.
Ứng dụng các kỹ thuật làm giàu dữ liệu.
Phát triển các hệ thống giám sát và phân tích dữ liệu để đánh giáhiệu năng và độ chính xác của mô hình.
Thường xuyên cập nhật những papers mới liên quan để đưa ra những ý tưởng mới phù hợp hơn.
Huấn luyện và tinh chỉnh các tham số cho mô hình.
Triển khai các mô hình lên các nền tảng đám mây.', N'Sinh viên CĐ/ĐH chuyên ngành CNTT, trí tuệ nhân tạo, khoa học máy tính,...
Có hiểu biết, kiến thức cơ bản về Machine Learning/Deep Learning/Xử lý ảnh,...
Có đam mê và định hướng phát triển trên con đường trở thành 1 Kỹ sư AI.
Khả năng tư duy, học hỏi nhanh, sẵn sàng giải quyết các vấn đề khó khăn.Chấp nhận các sinh viên chưa có kinh nghiệm, công ty sẽ đào tạo thêm.
Có khả năng đọc và nghiên cứu tài liệu tiếng Anh.
Ưu tiên các bạn có GPA từ 8.0 trở lên hoặc có tham gia các dự án mã nguồn mở trên github.
Ưu tiên ứng viên có thể thực tập fulltime.', N'Chứng chỉ: Người tham gia sẽ nhận được chứng chỉ hoàn thành chương trình/xác nhận thực tập.
Lộ trình nghề nghiệp: Rõ ràng và linh hoạt, đáp ứng nhu cầu của mỗi cá nhân.
Kiến thức chuyên ngành: Đào tạo từ cơ bản đến chuyên sâu về kỹ năng, kiến thức theo từng lĩnh vực. Các buổi đào tạo bài bản kèm theo kinh nghiệm thực tế khi làm việc trong các dự án thực tế của Unicloud.
Phụ cấp và phúc lợi: Thực tập hỗ trợ lương từ 3,000,0000 - 4,000,000 VNĐ; Phụ cấp ăn trưa và gửi xe được cung cấp trong thời gian đào tạo; Chế độ đãi ngộ hấp dẫn cho các ứng viên được chọn nếu được Unicloud tuyển dụng chính thức.
Môi trường làm việc: Môi trường trẻ, năng động, ngoài làm việc thì hoạt động văn hóa đoàn thể cũng được đẩy mạnh.
Cơ hội việc làm: Trở thành kỹ sư phần mềm tại Unicloud, được thử sức với nhiều dự án mới, làm việc với những kỹ sư hàng đầu tại VN.', N'TP.HCM', 10, CAST(N'2022-06-12' AS Date), CAST(N'2022-07-22' AS Date), 1, 3, N'FPT007', 3, N'Thực tập sinh AI Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (375, N'Thực Tập Tư Vấn Triển Khai ERP', N'Khảo sát và thu thập yêu cầu từ khách hàng.
Phân tích yêu cầu, phân tích và giải quyết GAP, đề xuất giải pháp nhằm đáp ứng tốt nhất yêu cầu của khách hàng.
Xây dựng giải pháp, thực hiện và kiểm tra giải pháp trên hệ thống.
Kiểm thử hệ thống và đào tạo người dùng kiểm thử, sử dụng hệ thống.
Hướng dẫn, hỗ trợ khách hàng vận hành hệ thống.
Tư vấn, trực tiếp xử lý các vấn đề và tham gia vào quá trình triển khai dự án theo phân công của quản trị dự án.', N'Sinh viên sắp tốt nghiệp hoặc đã tốt nghiệp Đại học/Cao đẳng chuyên ngành: Hệ Thống Thông Tin Quản Lý, Quản lý Công Nghiệp, Nhân sự tiền lương, Kế toán – Tài chính, CNTT…
Yêu thích và định hướng trở thành chuyên gia trong lĩnh vực ERP
Có khả năng trình bày, thuyết trình để hướng dẫn đào tạo khách hàng, làm việc độc lập, nhóm
Có khả năng nghiên cứu cao
Tiếng Anh: đọc hiểu tài liệu chuyên ngành, giao tiếp tốt', N'Được đào kiến thức, quy trình chuyên sâu về các modules ERP để trở thành một Chuyên gia Tư vấn triển Khai ERP
Được học hỏi, đào tạo và tham gia vào các dự án phần mềm lớn theo xu hướng công nghệ 4.0 trong lĩnh vực: Chính phủ, Y tế 4.0, SmartCity, Doanh nghiệp, Ngân hàng…
Được đào tạo, hướng dẫn bởi các chuyên gia hàng đầu của FPT Information System
Được hỗ trợ lương tùy theo năng lực trong quá trình đào tạo
Được tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.
Được xem xét tuyển chính thức sau giai đoạn đào tạo', N'TP.HCM', 10, CAST(N'2022-06-13' AS Date), CAST(N'2022-07-23' AS Date), 1, 3, N'FPT008', 4, N'Thực Tập Tư Vấn Triển Khai ERP')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (376, N'Thực Tập Lập Trình', N'Tham gia phát triển các ứng dụng trên các nền tảng
Tham gia phân tích nghiệp vụ, yêu cầu từ khách hàng
Kiểm tra, fix bug sản phẩm
Nguyên cứu các công nghệ, giải pháp mới
Chi tiết sẽ được trao đổi trong buổi phỏng vấn', N'Sinh viên sắp tốt nghiệp hoặc đã tốt nghiệp các chuyên ngành: CNTT, Hệ thống thông tin, Khoa học máy tính…
Có kiến thức về lập trình (OOP) và truy vấn database
Có kiến thức lập trình bất kỳ ngôn ngữ nào
Có tư duy logic, tư duy lập trình tốt
Có thể đọc hiểu được tài liệu tiếng Anh
Có thể tham gia khóa học fulltime trong 03 tháng', N'Được đào tạo chuyên sâu 02 - 03 tháng để trở thành Chuyên viên Lập trình ABAP trên sản phẩm bao gồm:
Được đào tạo phát triển các ứng dụng về ERP;
Được đào tạo quy trình phát triển phần mềm chuyên nghiệp;
Được tham gia vào các dự án, khác hàng lớn trong nhiều lĩnh vực: Chính phủ, Y tế 4.0, SmartCity, Doanh nghiệp, Ngân hàng…
Tham gia thiết kế kiến trúc hệ thống và chức năng;
Ứng dụng công nghệ khác như (Java, .Net, Mobile Appp) để phát triển các ứng dụng hay hệ thống vệ tinh.
Làm việc trong môi trường chuyên nghiệp, năng động, nhiều hoạt động thể thao, nghệ thuật và teambuilding;
Có cơ hội trở thành nhân viên chính thức tại FPT Information System', N'TP.HCM', 10, CAST(N'2022-06-14' AS Date), CAST(N'2022-07-24' AS Date), 1, 3, N'FPT008', 1, N'Thực Tập Lập Trình')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (377, N'Sales Executive (B2B)', N'Mở rộng khách hàng, giới thiệu tới khách hàng các giải pháp phần mềm trong lĩnh vực Chính phủ điện tử, Bank, Smart City và các dịch vụ quản trị hệ thống và hạ tầng CNTT.
Tìm hiểu, phân tích yêu cầu của khách hàng, thuyết trình, tư vấn, đưa ra các giải pháp phù hợp dựa trên công nghệ của các hãng đối tác và các sản phẩm dịch vụ của công ty.
Thực hiện các hoạt động đấu thầu, quản trị dự án
Đàm phán hợp đồng, thực hiện các thủ tục ký kết hợp đồng dịch vụ.
Quản lý, chăm sóc khách hàng hiện có và khách hàng tiềm năng
Đề xuất và thực hiện các kế hoạch, chiến lược kinh doanh để quảng bá thương hiệu công ty
Công việc sẽ trao đổi chi tiết thêm trong quá trình phỏng vấn.', N'Tốt nghiệp ĐH chuyên ngành Kinh tế, Quản trị Kinh doanh, Ngoại ngữ, Công nghệ Thông tin…
Đam mê kinh doanh, chủ động trong công việc.
Ưu tiên có hiểu biết, kiến thức về Công nghệ thông tin
Ưu tiên đã có kinh nghiệm Sales về CNTT
Kỹ năng trình bày/thuyết trình tốt, kỹ năng đàm phán
thuyết phục khách hàng tốt; nhiệt tình năng nổ;
Tiếng anh tốt là một lợi thế
Kỹ năng quản lý công việc và lập kế hoạch tốt.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn theo xu hướng công nghệ 4.0 trong lĩnh vực: Chính phủ, Y tế 4.0, SmartCity, Doanh nghiệp, Ngân hàng..
Môi trường làm việc thân thiện, năng động
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.
Được tham gia bảo hiểm FPTCare cho bản thân và gia đình;
Được khám sức khỏe định kỳ;
Du lịch/nghỉ mát cùng công ty hàng năm.
15 ngày phép/năm và các ngày nghỉ Lễ theo quy định;
Lương tháng 13 và thưởng KPI;
Xem xét tăng lương hàng năm;
Tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', N'TP.HCM', 10, CAST(N'2022-06-15' AS Date), CAST(N'2022-07-25' AS Date), 1, 3, N'FPT008', 8, N'Sales Executive (B2B)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (378, N'Intern Blue Team (Phòng thủ)', N'- Triển khai các dự án SOC
- Phân tích, điều tra và phản ứng với các sự cố bảo mật hoặc các cuộc tấn công đang xảy ra
- Mô phỏng lại các cuộc tấn công trên thế giới (các nhóm APT) để cải thiện năng lực phát hiện tấn công
- Xây dựng các kịch bản giám sát và năng lực phát hiện tấn công dựa trên framework MITRE ATT&CK
- Vận hành tối ưu và cập nhật nội dung trên SIEM của hệ thống giám sát.D28', N'- Lập trình: Python cơ bản; Các khái niệm lập trình phổ biến (OOP, API, Stack, Queue...)
- Security Fundamental: Network Security, SIEM
- Chơi CTF, hackthebox, Boss the SOC
- Khác: Khả năng đọc hiểu, tự nghiên cứu; Ngoại ngữ; Đã từng tham gia các Câu lạc bộ/Project về Hacking ở trường; Tham gia cộng đồng ATTT trên các mạng xã hội.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.
Được tham gia bảo hiểm FPTCare cho bản thân và gia đình;
Được khám sức khỏe định kỳ;
Du lịch/nghỉ mát cùng công ty hàng năm.
15 ngày phép/năm và các ngày nghỉ Lễ theo quy định;
Lương tháng 13 và thưởng KPI;
Xem xét tăng lương hàng năm;
Tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', N'TP.HCM', 10, CAST(N'2022-06-16' AS Date), CAST(N'2022-07-26' AS Date), 1, 3, N'FPT008', 5, N'Intern Blue Team')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (379, N'Intern Red Team (Tấn công)', N'- Triển khai các dự án Pentest (kiểm thử tấn công xâm nhập) cho khách hàng để khách hàng biết được các điểm yếu đang tồn tại trên hệ thống/ứng dụng, từ đó đưa ra phương án/khuyến nghị khắc phục, nâng cao ATTT cho khách hàng;
- Nghiên cứu các lỗ hổng bảo mật (0-day/1-day)', N'- Lập trình: lập trình web; lập trình công cụ detect/exploit lỗ hổng
- Security fundamental: Phương pháp luận kiểm thử bảo mật; OWASP Top 10; Công cụ thực hiện pentest
- Chơi CTF, hackthebox...
- Kiến thức khác: Network, OS, DB, Ngoại ngữ
- Khác: Khả năng đọc hiểu, tự nghiên cứu; Đã từng tham gia các Câu lạc bộ/Project về Hacking ở trường; Tham gia cộng đồng ATTT trên các mạng xã hội.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.
Được tham gia bảo hiểm FPTCare cho bản thân và gia đình;
Được khám sức khỏe định kỳ;
Du lịch/nghỉ mát cùng công ty hàng năm.
15 ngày phép/năm và các ngày nghỉ Lễ theo quy định;
Lương tháng 13 và thưởng KPI;
Xem xét tăng lương hàng năm;
Tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', N'TP.HCM', 10, CAST(N'2022-06-17' AS Date), CAST(N'2022-07-27' AS Date), 1, 3, N'FPT008', 5, N'Intern Red Team (Tấn công)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (380, N'Intern Development (Phát triển)', N'- Phát triển bộ phần mềm liên quan tới vận hành và giám sát An toàn thông tin (Fullstack).
- Phát triển phần mềm/công cụ để tự động hóa, hỗ trợ các công việc của Trung tâm', N'- Lập trình: Có kinh nghiệm làm việc với Python và các web framework (hoặc mong muốn học ngôn ngữ này); Có kiến thức về RESTFUL API, về các cơ chế xác thực giữa Frontend (Web) với API; Có kiến thức và hiểu biết về database; thành thạo SQL, PostgreSQL.C31
- Khác: Ngoại ngữ; Khả năng đọc hiểu, tự nghiên cứu, làm việc độc lập.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.
Được tham gia bảo hiểm FPTCare cho bản thân và gia đình;
Được khám sức khỏe định kỳ;
Du lịch/nghỉ mát cùng công ty hàng năm.
15 ngày phép/năm và các ngày nghỉ Lễ theo quy định;
Lương tháng 13 và thưởng KPI;
Xem xét tăng lương hàng năm;
Tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', N'TP.HCM', 10, CAST(N'2022-06-18' AS Date), CAST(N'2022-07-28' AS Date), 1, 3, N'FPT008', 5, N'Intern Development (Phát triển)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (381, N' Intern Compliance (Tuân thủ)', N'- Nghiên cứu các tiêu chuẩn bảo mật quốc tế và phương pháp đảm bảo tuân thủ các tiêu chuẩn này.
- Tư vấn, đánh giá, cấp chứng nhận tuân thủ các tiêu chuẩn bảo mật quốc tế.
- Quản lý rủi ro bảo mật thông tin.', N'- Lập trình cơ bản và tư duy logic, tuy duy lập trình.
- Security Fundamental: Network, OS, DB, Risk Management, Security Policy
- Kiến thức khác: Ngoại ngữ; Tin học văn phòng cơ bản
- Khác: Khả năng đọc hiểu, tự nghiên cứu, làm việc độc lập; Đã từng tham gia các Câu lạc bộ/Project về Hacking ở trường; Tham gia cộng đồng ATTT trên các mạng xã hội.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm.
Được tham gia bảo hiểm FPTCare cho bản thân và gia đình;
Được khám sức khỏe định kỳ;
Du lịch/nghỉ mát cùng công ty hàng năm.
15 ngày phép/năm và các ngày nghỉ Lễ theo quy định;
Lương tháng 13 và thưởng KPI;
Xem xét tăng lương hàng năm;
Tham gia các hoạt động văn hoá, sự kiện hấp dẫn của Công ty FPT IS và Tập đoàn FPT.', N'TP.HCM', 10, CAST(N'2022-06-19' AS Date), CAST(N'2022-07-29' AS Date), 1, 3, N'FPT008', 5, N' Intern Compliance (Tuân thủ)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (382, N'CTV Truyền thông và Điều phối dự án', N'Thu thập thông tin về các sáng kiến tại các dự án, đơn vị đội nhóm trong Công ty;
Viết tin bài truyền thông cho chương trình Sáng kiến nội bộ;
Điều phối viên diễn đàn Sáng kiến của Công ty.
Thực hiện một số nhiệm vụ truyền thông khác của dự án.', N'Đang là SV năm cuối hoặc đã tốt nghiệp các chuyên ngành, có ưu tiên các ngành báo chí, truyền thông;
Có khả năng nhanh nhạy nắm bắt thông tin, có kỹ năng viết bài đưa tin tốt;
Tin học văn phòng thành thạo, tiếng Anh sử dụng được trong công việc;
Ưu tiên ứng viên có hiểu biết kinh nghiệm trong việc đưa tin bài lĩnh vực CNTT;', N'Được đào tạo, nâng cao kiến thức chuyên môn và kỹ năng nghề nghiệp;
Được trải nghiệm với môi trường chuyên nghiệp, hoạt động văn hóa sôi nổi;
Được ưu tiên xét tuyển dụng trực tiếp khi đơn vị có chỉ tiêu.', N'TP.HCM', 10, CAST(N'2022-06-20' AS Date), CAST(N'2022-07-30' AS Date), 1, 2, N'FPT008', 11, N'CTV Truyền thông và Điều phối dự án')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (383, N'Nhân viên/TTS Dựng phim digital', N'Cắt, dựng, chỉnh sửa, biên tập các nội dung như trailer, BTS, Vlog, Best cut,...và nhiều các chương trình khác theo sắp xếp của trưởng bộ phận
Phối hợp cùng biên tập duyệt file, sửa file theo phản hồi
Phối hợp thường xuyên với phòng Sáng tạo trong suốt quá trình dựng phim để hoàn thiện sản phẩm: chỉnh sửa, kiểm tra nội dung và hình ảnh của phim.
Thống kê và báo cáo định kỳ tài chính hoạt động hợp tác', N'Sinh viên năm cuối hoặc vừa tốt nghiệp ngành Truyền thông đa phương tiện, Dựng phim, Thiết kế đồ họa,… hoặc các ngành có liên quan.
Ưu tiên có kinh nghiệm làm việc trong môi trường truyền thông, quảng cáo, làm phim và các chương trình truyền hình….
Thành thạo phần mềm Adobe Premier, biết sử dụng thêm Adobe Photoshop, After Effect là một lợi thế
Cẩn thận và có trách nhiệm với công việc
Có tinh thần làm việc nhóm', N'Chế độ đãi ngộ siêu tốt...
Có hỗ trợ chi phí, lương trong quá thời gian thực tập
Được làm việc trong môi trường trẻ, năng động và đầy nhiệt huyết.
Được đào tạo chuyên môn nghiệp vụ
Được đóng BHXH, BHYT, BH thất nghiệp theo quy định của nhà nước.
Được hưởng các quyền lợi khác theo chính sách của công ty.', N'TP.HCM', 10, CAST(N'2022-06-21' AS Date), CAST(N'2022-07-31' AS Date), 1, 2, N'FPT009', 5, N'Nhân viên/TTS Dựng phim digital')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (384, N'JD – Java Backend Developer', N'Develop and maintain apps
Practice disciplined software engineering (e.g. unit test, code reviews, gitflow)', N'BA in Computer Science, Information Systems, or related field
At least 6 months working experience as a Mobile Developer in any platform or language
Knowledge about OOP, code versioning tools and Gitflow.
Experience with iOS/Android native app development is a plus', N'Dynamic, technological and Agile working environment
Self-development: online technical seminar, career talk and various trainings on hot-trend technologies, languages and soft-skills
Talented and enthusiastic fellows
Creative office spaces with free coffee, snacks and table tennis, billiards
13th month salary, Annual salary raise review', N'TP.HCM', 10, CAST(N'2022-06-22' AS Date), CAST(N'2022-08-01' AS Date), 1, 2, N'FPT009', 1, N'JD – Java Backend Developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (385, N'QC Engineer', N'Responsible for test strategy, test plan, test data
Build automated testing tools and scripts on platform web, mobile base on manual test cases
Design & execute manual & automation test scripts
Design & Execute API testing, Performance testing', N'BA in Computer Science, Information Systems, or related field
1+ years working experience as a Automation QC Engineer
2+ years working experience as a Manual QC Engineer
1+ years practicing Agile methodologies
Know how to code in either: Java, Python, NodeJS, Go, PHP or any other language
Familiarity with Selenium, Appium, Jmeter, Postman, SQL', N'Dynamic, technological and Agile working environment
Self-development: online technical seminar, career talk and various trainings on hot-trend technologies, languages and soft-skills
Talented and enthusiastic fellows
Creative office spaces with free coffee, snacks and table tennis, billiards
13th month salary, Annual salary raise review', N'TP.HCM', 10, CAST(N'2022-06-23' AS Date), CAST(N'2022-08-02' AS Date), 1, 2, N'FPT009', 1, N'QC Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (386, N'Lập Trình Viên', N'Server, Network, Security, Callcenter', N'Là sinh viên Đại học năm cuối hoặc vừa mới tốt nghiệp các ngành Công nghệ thông tin; Toán – Tin; Hệ thống thông tin quản lý hoặc các ngành có liên quan khác.
Thời gian thực tập tối thiểu 04 tháng, làm việc tối thiểu 04 ngày/tuần (tương đương trên 100 giờ công/ tháng).
Có khả năng quan sát, có tư duy logic tốt.
Là bạn trẻ có thái độ tốt, ham học hỏi và yêu thích nghề CNTT.
Có mục tiêu nghề nghiệp rõ ràng trong ngành CNTT.', N'Học bổng đào tạo lên đến 20 triệu/4 tháng (~ 5 triệu/tháng) và cơ hội lên nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-06-24' AS Date), CAST(N'2022-08-03' AS Date), 1, 2, N'FPT010', 4, N'Lập Trình Viên')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (387, N' LẬP TRÌNH VIÊN', N'Sử dụng đa dạng ngôn ngữ, C#, .NET 4+, ASP.NET MVC 4+, Java, Javascript, C/C++, C#, SQL, Node JS…
Kỹ thuật lập trình OPP, Webservice, WCF Service, Web API,…
Phục vụ cho nhiều sản phẩm: WEB , ERP, CRM, HRM, Logistic, PIM, Promotion, Loyalty,…', N'Là sinh viên Đại học năm cuối hoặc vừa mới tốt nghiệp các ngành Công nghệ thông tin; Toán – Tin; Hệ thống thông tin quản lý hoặc các ngành có liên quan khác.
Thời gian thực tập tối thiểu 04 tháng, làm việc tối thiểu 04 ngày/tuần (tương đương trên 100 giờ công/ tháng).
Có khả năng quan sát, có tư duy logic tốt.
Là bạn trẻ có thái độ tốt, ham học hỏi và yêu thích nghề CNTT.
Có mục tiêu nghề nghiệp rõ ràng trong ngành CNTT.', N'Học bổng đào tạo lên đến 20 triệu/4 tháng (~ 5 triệu/tháng) và cơ hội lên nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-06-25' AS Date), CAST(N'2022-08-04' AS Date), 1, 2, N'FPT010', 1, N' LẬP TRÌNH VIÊN')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (388, N'Business Analyst (ERP/Web-App), QA/QC/Tester, Technical Analyst', N'Business Analyst (ERP/Web-App), QA/QC/Tester, Technical Analyst', N'Là sinh viên Đại học năm cuối hoặc vừa mới tốt nghiệp các ngành Công nghệ thông tin; Toán – Tin; Hệ thống thông tin quản lý hoặc các ngành có liên quan khác.
Thời gian thực tập tối thiểu 04 tháng, làm việc tối thiểu 04 ngày/tuần (tương đương trên 100 giờ công/ tháng).
Có khả năng quan sát, có tư duy logic tốt.
Là bạn trẻ có thái độ tốt, ham học hỏi và yêu thích nghề CNTT.
Có mục tiêu nghề nghiệp rõ ràng trong ngành CNTT.', N'Học bổng đào tạo lên đến 20 triệu/4 tháng (~ 5 triệu/tháng) và cơ hội lên nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-06-26' AS Date), CAST(N'2022-08-05' AS Date), 1, 2, N'FPT010', 1, N'Business Analyst (ERP/Web-App), QA/QC/Tester, Technical Analyst')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (389, N' Backend Developer Intern', N'Làm việc trong nhóm phát triển các ứng dụng và dịch vụ theo phương pháp Agile.
Đóng góp cho bộ phận và tổ chức để nâng cao quy trình, hiệu quả công việc.
Xây dựng giao diện người dùng (đối với frontend developer) và giao diện dịch vụ/API (đối với backend developer).
Code, test và vận hành các dịch vụ.', N'Kiến thức tốt về HTML/CSS, AJAX và các framework liên quan.
Thành thạo Javascript (Node.js hoặc React).
Thành thạo SQL/NoSQL.
Đọc hiểu tài liệu tiếng Anh chuyên ngành.
Có kỹ năng phân tích và giải quyết vấn đề.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động', N'TP.HCM', 10, CAST(N'2022-06-27' AS Date), CAST(N'2022-08-06' AS Date), 1, 2, N'FPT012', 1, N' Backend Developer Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (390, N'Thực tập sinh An toàn thông tin', N'Tham gia tìm hiểu, đánh giá lỗ hổng bảo mật
Giám sát, phát hiện các sự kiện ATTT
Quản trị các hệ thống thu thập log, SIEM (Splunk, Kibana, …)', N'Có kiến thức cơ bản về tấn công mạng, các lỗ hổng trên ứng dụng web (OWASP Top 10)
Có các nghiên cứu, dự án liên quan ATTT.
Đã hoặc đang tham giam các chương trình bug bounty, CTF là một lợi thế.
Có khả năng làm việc nhóm hoặc nghiên cứu độc lập.', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động', N'TP.HCM', 10, CAST(N'2022-06-28' AS Date), CAST(N'2022-08-07' AS Date), 1, 2, N'FPT012', 5, N'Thực tập sinh An toàn thông tin')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (391, N'TTS lập trình Ví điện tử và Cổng thanh toán.', N'- Đọc tài liệu mô tả về Ví điện tử
- Tham gia vào các dự án làm cùng team có kinh nghiệm
- Làm thử các task đơn giản với sự trợ giúp của team lead/Senior
- Kiểm thử và bàn giao task', N'- Nhiệt tình, có tinh thần ham học hỏi', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động', N'TP.HCM', 10, CAST(N'2022-06-29' AS Date), CAST(N'2022-08-08' AS Date), 1, 2, N'FPT012', 1, N'TTS lập trình Ví điện tử và Cổng thanh toán.')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (392, N'DevOps Intern', N'Thực hiện các công cụ và khung tự động hóa (CI/CD pipelines).
Thiết kế, phát triển và triển khai tích hợp phần mềm dựa trên phản hồi của người dùng.
Khắc phục sự cố sản xuất và phối hợp với nhóm phát triển để hợp lý hóa việc triển khai mã.
Phân tích Code và truyền đạt các đánh giá chi tiết cho team developer để đảm bảo sự cải thiện trong các ứng dụng và hoàn thành kịp thời các dự án.
Phối hợp với các thành viên trong nhóm để cải thiện công cụ, hệ thống và quy trình kỹ thuật và bảo mật dữ liệu.
Tối ưu hóa kiến trúc điện toán.
Phát triển và duy trì tài liệu thiết kế và xử lý sự cố.', N'Có kiến thức về Network, server và giám sát trạng thái ứng dụng
Kiến thức tốt về ngôn ngữ lập trình
Kỹ năng giải quyết vấn đề
Có thể làm việc độc lập và là một phần của nhóm', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động', N'TP.HCM', 10, CAST(N'2022-06-30' AS Date), CAST(N'2022-08-09' AS Date), 1, 2, N'FPT012', 1, N'DevOps Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (393, N'Frontend Intern', N'Tham gia phát triển các dự án về Web, xây dựng các chức năng front-end của Website, Web application.
Triển khai giao diện HTML/CSS Javascript theo yêu cầu của khách hàng trên hệ thống website xây dựng sẵn
Phối hợp với các back-end developers và web designers để cải thiện tính khả dụng
Đảm bảo tiêu chuẩn đồ họa chất lượng cao và sự thống nhất trong brand
Thu thập ý kiến phản hồi và xây dựng các hướng giải quyết cho người sử dụng và khách hàng
Nghiên cứu, tìm hiểu các công nghệ về HTML/CSS Javascript mới nhất để áp dụng cái tiến sản phẩm', N'Đọc hiểu tiếng anh tốt
Có kiến thức về các quy tắc trong SEO
Có kiến thức cơ bản về UX/UI
Có kiến thức về Responsive Design
Khả năng làm việc tốt trong môi trường tốc độ cao', N'Thời gian làm việc: Thứ Hai – Thứ Sáu
Được làm việc với các doanh nghiệp, tập đoàn trong và ngoài nước ở nhiều lĩnh vực khác nhau
Được học hỏi, đào tạo và tham gia vào các dự án lớn 
Môi trường làm việc thân thiện, năng động', N'TP.HCM', 10, CAST(N'2022-07-01' AS Date), CAST(N'2022-08-10' AS Date), 1, 2, N'FPT012', 1, N'Frontend Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (394, N'THỰC TẬP SINH', N'Thực tập sinh Marketing
Thực tập sinh Market Research
Thực tập Kế toán – Tài chính', N'Nam/Nữ, Tuổi từ 20-35, Ngoại hình dễ nhìn,
Sức khỏe tốt - Tinh thần đồng đội
Kỹ năng sắp xếp công việc, quản lý thời gian
Khả năng sáng tạo trong công việc.', N'Được đào tạo nghiệp vụ chuyên môn toàn diện
Đầy đủ chế độ phúc lợi: HBYT, BHXH, thưởng Lễ/Tết, Vinh danh Qúy/Năm, du lịch, teambuilding,…
Được làm việc tại Top những doanh nghiệp có môi trường làm việc tốt nhất Châu Á
Hỗ trợ data khách hàng tiềm năng, hướng dẫn chi tiết trong công việc', N'TP.HCM', 10, CAST(N'2022-07-02' AS Date), CAST(N'2022-08-11' AS Date), 1, 2, N'FPT013', 7, N'THỰC TẬP SINH')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (395, N'Fresher (Java/.NET/CRM & SharePoint/Manual Test/Automation Test/ DevOps)', N'As a Fresher, you will:
Participate in developing innovative software following agile methodologies.
Involve in some parts or full software development life cycle.
Produce clean and efficient code based on specifications with established coding quality of the company.
Perform unit testing and other activities defined in assigned tasks.
Troubleshoot coding problems and devise solutions.', N'Bachelor degree in Information System / Information Technology / Computer Sciences.
Good understanding of object-oriented programming, data modelling.
Passionate about technology and software engineering.
Ability to work both independently and collaboratively.
Good English reading skills.
Pro-active attitude, keen to learn new technologies.', N'ELCA is growing fast with many new and great projects. We provide a supportive workplace and opportunities to unlock your potential:

International & collaborative working environment
Learning culture & English classes empowered by our ELCAdemy
Attractive salary & benefits package, 13th-month salary
Performance bonus for excellent staff 
Professional software development process to balance your work & life
Lunch & clothes allowances
Travel/Luxury Dinner/Technology equipment/Gift Vouchers
WFH 1 day/week', N'TP.HCM', 10, CAST(N'2022-07-03' AS Date), CAST(N'2022-08-12' AS Date), 1, 2, N'FPT014', 1, N'Fresher (Java/.NET/CRM & SharePoint/Manual Test/Automation Test/ DevOps)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (396, N'Fresher Front-End (VueJS) Fulltime', N'Được đào tạo, hướng dẫn các kiến thức chuyên môn và kĩ năng làm việc dành cho người mới trong 3 tháng.
Tham gia phát triển sản phẩm, dự án theo quy trình chuẩn của công ty từ thiết kế, code, test.
Phân tích nghiệp vụ, thiết kế, và xây dựng hệ thống dưới sự hướng dẫn của các MENTOR chuyên nghiệp.', N'Đang học / Tốt nghiệp đại học có chuyên ngành Toán - Tin - Công nghệ
Có kiến thức tốt về cấu trúc dữ liệu, giải thuật, design pattern
Tư duy logic, tỉ mỉ, cẩn thận, khả năng tự học tốt, kỹ năng giao tiếp làm việc nhóm tốt
Nhanh nhẹn, siêng năng, trung thực, có tinh thần trách nhiệm
Đọc hiểu tốt tiếng Anh
Có kinh nghiệm làm việc team / thực tập là lợi thế
Có sản phẩm demo / đồ án thực tế là lợi thế
Có kiến thức cơ bản về lập trình C++ hoặc Java hoặc Python
Có kiến thức cơ bản về Go: Keyword, Statement, Operator, Control-of-flow, Concurrency Primitive ...
Có kiến thức về các kiểu dữ liệu cơ bản của Go: Primitive types, Pointer, Struct ...', N'Hỗ trợ 100% học phí 
Trợ cấp hàng tháng (cụ thể sẽ trao đổi trong phỏng vấn)
Vừa học vừa làm 8 tiếng/ngày (Fresher) hoặc tối thiểu 4 tiếng/ngày (Intern).
Nghỉ thứ 7 và Chủ Nhật.
Cung cấp máy tính & trang thiết bị hiện đại
Được tham gia các Câu lạc bộ dưới sự tài trợ chính thức của Công ty: CLB Bóng đá, cầu lông, tiếng anh …
Tiếp xúc dự án phát triển sản phẩm nội bộ của công ty với quy trình chuẩn và kỹ thuật phổ biến nhất hiện nay.
Ưu tiên ứng tuyển, phỏng vấn chính thức vào các dự án lớn của công ty với mức lương khởi điểm hấp dẫn.', N'TP.HCM', 10, CAST(N'2022-07-04' AS Date), CAST(N'2022-08-13' AS Date), 1, 2, N'FPT015', 1, N'Fresher Front-End (VueJS) Fulltime')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (397, N'Fresher PHP (Fulltime)', N'Được đào tạo, hướng dẫn các kiến thức chuyên môn và kĩ năng làm việc dành cho người mới trong 3 tháng.
Tham gia phát triển sản phẩm, dự án theo quy trình chuẩn của công ty từ thiết kế, code, test.
Phân tích nghiệp vụ, thiết kế, và xây dựng hệ thống dưới sự hướng dẫn của các MENTOR chuyên nghiệp.', N'Đang học / Tốt nghiệp đại học có chuyên ngành Toán - Tin - Công nghệ
Có kiến thức tốt về cấu trúc dữ liệu, giải thuật, design pattern
Tư duy logic, tỉ mỉ, cẩn thận, khả năng tự học tốt, kỹ năng giao tiếp làm việc nhóm tốt
Nhanh nhẹn, siêng năng, trung thực, có tinh thần trách nhiệm
Đọc hiểu tốt tiếng Anh
Có kinh nghiệm làm việc team / thực tập là lợi thế
Có sản phẩm demo / đồ án thực tế là lợi thế
Biết lâp trình ngôn ngữ PHP, ưu tiên đã từng sử dụng các framework Php như Laravel, Yii2, Cake2
Có kiến thức cơ bản về Html, Css, Javascript (Jquery library)
Có kiến thức cơ bản về database, restful API', N'Hỗ trợ 100% học phí 
Trợ cấp hàng tháng (cụ thể sẽ trao đổi trong phỏng vấn)
Vừa học vừa làm 8 tiếng/ngày (Fresher) hoặc tối thiểu 4 tiếng/ngày (Intern).
Nghỉ thứ 7 và Chủ Nhật.
Cung cấp máy tính & trang thiết bị hiện đại
Được tham gia các Câu lạc bộ dưới sự tài trợ chính thức của Công ty: CLB Bóng đá, cầu lông, tiếng anh …
Tiếp xúc dự án phát triển sản phẩm nội bộ của công ty với quy trình chuẩn và kỹ thuật phổ biến nhất hiện nay.
Ưu tiên ứng tuyển, phỏng vấn chính thức vào các dự án lớn của công ty với mức lương khởi điểm hấp dẫn.', N'TP.HCM', 10, CAST(N'2022-07-05' AS Date), CAST(N'2022-08-14' AS Date), 1, 2, N'FPT015', 1, N'Fresher PHP (Fulltime)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (398, N'Tuyển dụng và đào tạo Fresher', N'Java/ .NET/ NodeJS Software Engineer và Test/QA/QC Engineer', N'Java/ .NET/ NodeJS Software Engineer và Test/QA/QC Engineer', N'Môi trường làm việc năng động, chuyên nghiệp
Có mức thu nhập hấp dẫn
Có cơ hội tham gia các hoạt động đào tạo nâng cao trình độ
Được đóng BHXH, BHYT, BHTN… theo quy định của Nhà nước
Các quyền lợi khác: du lịch nghỉ mát hàng năm, tham gia các hoạt động vui chơi giải trí…', N'TP.HCM', 10, CAST(N'2022-07-06' AS Date), CAST(N'2022-08-15' AS Date), 1, 2, N'FPT017', 1, N'Fresher')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (399, N'Fresher/Junior SAP ABAP Tiếng Nhật', N'ABAP (Advance Business Application Programming) là ngôn ngữ lập trình phát triển ứng dụng Quản trị doanh nghiệp cấp cao trên nền tảng hệ thống SAP của tập đoàn SAP (Đức) – một trong bốn tập đoàn công nghệ lớn nhất thế giới. Hiện có hơn 91 ngàn bản SAP đã được cài đặt tại hơn 28 ngàn công ty trên 120 nước trên thế giới.
Tham gia đào tạo chuyên sâu về ngôn ngữ lập trình ABAP trên nền tảng hệ thống SAP (Systems, Applications and Products data in process), bao gồm: Technical Design, Coding & Unit Test
Tham gia các dự án phát triển phần mềm với các khách hàng lớn của Công ty sau khi đào tạo
Địa điểm làm việc: Hồ Chí Minh', N'Là sinh viên sắp tốt nghiệp/ Cử nhân/ Kỹ sư chuyên ngành: Công nghệ Phần mềm, Công nghệ thông tin, Hệ thống thông tin quản lý, Khoa học máy tinh…
Có kinh nghiệm customize, lập trình ERP là một lợi thế (Odoo, ABAP, C/AL, X++)
Có khả năng tự học tốt, tư duy logic tốt
Khả năng phân tích và làm tài liệu tốt, chủ động trong công việc
Nắm chắc kiến thức Lập trình hướng đối tượng (OOP) và Cơ sở dữ liệu
Tiếng Anh giao tiếp cơ bản
Sử dụng thành thạo Ms. Excel, Ms. Word, Ms. Powerpoint
Có khả năng làm việc trong môi trường áp lực cao
Có khả năng đi công tác xa, dài ngày trong nước hoặc nước ngoài.
Thời gian làm việc: Toàn thời gian (từ 8:00 – 17:00 thứ 02 đến thứ 06 hằng tuần)', N'Phụ cấp đào tạo: khoảng 10.000.000 – 15.000.000 VNĐ/khoá
Cơ hội phát triển bản thân và làm việc cùng các dự án lớn
Có cơ hội đi onsite Singapore, Nhật Bản…
Được tham gia các khóa đào tạo về chuyên môn, ngoại ngữ, quản trị dự án do FSOFT tổ chức
Được hưởng các chế độ của FPT Software sau khi trở thành nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-07-07' AS Date), CAST(N'2022-08-16' AS Date), 1, 2, N'FPT018', 1, N'Fresher/Junior SAP ABAP Tiếng Nhật')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (400, N'Fresher/JuniorJava', N'Tham gia khóa đào tạo chuyên sâu về lập trình từ1-3 tháng;
Trở thành nhân viên chính thức, tham gia các dự án phát triển phần mềm với các khách hàng lớn của Công ty sau khi được đào tạo.', N'Có kiến thức cơ bản và mong muốn học hỏi về ngôn ngữ lập trình ứng tuyển;
Nắm vững kiến thức Lập trình hướng đối tượng (OOP).
Ứng viên sẽ có lợi thế nếu:
Đã hoàn thành chương trình GST;
Có trình độ tiếng Anh/tiếng Nhật khá.', N'Trợ cấp đào tạo lên đến 15.000.000/khóa;
Sau đào tạo sẽ được đánh giá lại năng lực và thỏa thuận lương;
Có cơ hội đi on site tại Singapore, Malaysia, Mỹ, Nhật Bản, châu Âu...;
Được hưởng các chế độ đãi ngộ đặc biệt của FPT Software khi trở thành nhân viên chính thức.', N'TP.HCM', 10, CAST(N'2022-07-08' AS Date), CAST(N'2022-08-17' AS Date), 1, 2, N'FPT018', 1, N'Fresher/JuniorJava')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (401, N'Fresher/Junior Embedded', N'FPT Software HCM đang tìm kiếm các bạn sinh viên sắp ra trường để tham gia vào dự án phát triển phần mềm. Có cơ hội học tập và làm việc trong các dự án thực tế về Tự động hóa với các khách hàng lớn của công ty
Được học hỏi về mô hình và phương pháp phát triển phần mềm như Waterfall, Agile, Scrum…
Học thêm về Tự động hóa, Cloud computing, Big Data, Data Mining, …', N'Sinh viên đã hoặc sắp tốt nghiệp và có thể đi làm ít nhất 5 buổi/tuần
Đã/đang theo học ở Hệ thống nhúng, Khoa học máy tính, điện tử, tự động hóa, hoặc các chuyên ngành liên quan
Có background về C/C++/Embedded tốt, biết về GPIO, I2C, SIP, SPI có lợi thế
Tiếng Anh hoặc tiếng Nhật tốt là 1 lợi thế', N'Trợ cấp đào tạo lên đến 15 triêu/khóa
Sau đào tạo có cơ hội trở thành nhân viên chính thức tại FPT Software;
Có cơ hội đi onsite tại Singapore, Malaysia, Mỹ, Nhật Bản, châu Âu…;
Được hưởng các chế độ đãi ngộ đặc biệt của FPT Software khi trở thành nhân viên chính thức.', N'TP.HCM', 10, CAST(N'2022-07-09' AS Date), CAST(N'2022-08-18' AS Date), 1, 2, N'FPT018', 1, N'Fresher/Junior Embedded')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (402, N'Fresher/ Junior Automation/Manual Test', N'Được đào tạo chuyên sâu về ngôn ngữ lập trình Java, kỹ năng kiểm thử phần mềm (Manual Testing & Automation Testing) với chương trình Fresher trong vòng từ 1- 3 tháng.
Sau đào tạo: Tham gia làm việc trực tiếp cùng các đơn vị trong lĩnh vực Software Testing. Theo sát quá trình Scrum, giao tiếp và làm việc trực tiếp với khách hàng nước ngoài.
Về nội dung đào tạo: Chuyên sâu các giai đoạn kiểm thử, phân tích requirement với khách hàng, cách viết testcase và log bug, thực hiện report hàng tuần.
Đào tạo các kỹ năng mềm, ngoại ngữ, các quy trình phát triển dự án và cách thực hiện các chuẩn kiểm thử quốc tế đối với dự án phần mềm.', N'Là sinh viên sắp ra trường/ mới ra trường có thể đi làm FULL-TIME, học ngành CNTT- ĐTVT- KHMT hoặc các ngành liên quan.
Hiểu biết cơ bản về các giai đoạn kiểm thử (Unit Test, Integration Test, Fuctional Test,…).
Có kinh nghiệm về Selenium Web Driver hoặc các automation tool khác.
Có nền tảng về Javacore, SQL, OOP, REST-based APIs and Services
Có kiến thức về HTML, CSS, Javascript, Git, VSTS hoặc SVN.
Biết về SOAP và REST
Có khả năng đọc hiểu tài liệu, giao tiếp Tiếng Anh cơ bản.
Có thể làm việc full-time từ thứ 2- thứ 6 (8h00-17h00).', N'Trợ cấp đào tạo từ 5M- 15M/ tháng.
Có xe đưa đón, hỗ trợ ăn trưa.
Được hưởng các chế độ đãi ngộ của FPT Software khi trở thành nhân viên chính thức: Xét tăng lương 01 lần/năm theo năng lực và signing bonus hiệu quả công việc trong tháng.
Được đóng BHXH, BHYT, BHTN theo quy định của nhà nước.
Bảo hiểm FPT Care và chế độ nghỉ mát đặc biệt dành riêng cho nhân viên công ty.
Sử dụng các dịch vụ của công ty như sân Bóng đá, bóng chuyển, sân tennis, phòng gym, yoga…', N'TP.HCM', 10, CAST(N'2022-07-10' AS Date), CAST(N'2022-08-19' AS Date), 1, 2, N'FPT018', 1, N'Fresher/ Junior Automation/Manual Test')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (403, N'Fresher/ Junior.Net', N'Tham gia chương trình đào tạo và làm việc chuyên sâu trong vòng 2 –3 tháng về C#/.Net để chuẩn bị các kiến thức và hoàn thiện kỹ năng trước khi tham gia vào làm', N'Là sinh viên đã/sắp tốt nghiệp ngành Công nghệ thông tin hoặc các chuyên ngành có liên quan và có thể đi làm full time từ thứ 2 đến thứ 6
Nắm vững kiến thức cơ bản về lập trình hướng đối tượng và C#/.Net, cụ thể như sau:
Có khả năng sử dụng và phát triển phần mềm cơ bản (ứng dụng console) sử dụng C#/.NET (cú pháp cơ bản, xây dựng hàm/ phương thức và truyền tham số, quản lí flow,...)
 Quản lí và sử dụng Generic & Collection, Khai báo và sử dụng delegate, event, Xử lí bất đồng bộ, Quản lí bộ nhớ bằng GC
Có kỹ năng đọc hiểu thiết kế CSDL, viết và biểu diễn các câu lệnh truy vấn SQL, khả năng viết các đối tượng dùng cho thao tác dữ liệu. Không bị mắc lỗi cơ bản
Có kiến thức chuyên môn về: OOP, Database & Code Design, kiến trúc phần mềm (client-server, MVC), Microservices và Object-oriented analysis and design (OOAD), SQL, Html5, Css3, Javascript, Jquery, Bootstrap 4
 Có thể sử dụng được ORM Framework, xây dựng được Software Application cơ bản sử dụng các công nghệ phát triển web với C#/.NET
Có Tiếng anh giao tiếp tốt (hoặc chứng chỉ TOIEC từ IIG với số điểm 600 trở lên)', N'Làm việc trực tiếp với khách hàng quốc tế
Được hỗ trợ đào tạo lên đến 20.000.000VND/khóa 3 tháng và tham gia các hoạt động, lớp học miễn phí nhằm nâng cao khả năng ngoại ngữ, kĩ thuật chuyên môn và kĩ năng mềm
Trở thành nhân viên chính thức của FPT Software sau đào tạo và làm việc trong môi trường chuyên nghiệp, năng động
Hỗ trợ xe đưa đón nhân viên, cơm trưa,... và được sử dụng các cơ sở vật chất của công ty (phòng GYM, sân bóng đá, bóng rổ,...)', N'TP.HCM', 10, CAST(N'2022-07-11' AS Date), CAST(N'2022-08-20' AS Date), 1, 2, N'FPT018', 1, N'Fresher/ Junior.Net')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (404, N'THỰC TẬP SINH KINH DOANH', N'Tìm kiếm khách hàng tiềm năng.
Tư vấn và thiết kế sản phẩm phù hợp với từng đối tượng khách hàng.
Chủ động làm việc thời gian tự do linh động trong tuần.
Giúp khách hàng làm hồ sơ yêu cầu bảo hiểm online.
Chăm sóc khách hàng trước trong và sau bán hàng.', N'Từ 21 tuổi trở lên
Có tinh thần trách nhiệm cao.
Kỹ năng giao tiếp tốt, kỹ năng trình bày tốt.', N'Thu nhập: hoa hồng từ 35-40% + thưởng (Tổng TN lên đến 40 triệu)
Thưởng: tháng lên đến 40% , quý 25%, quý 4 gấp đôi 3 quý trước
Được linh hoạt về thời gian làm việc
Được gia nhập vào công ty miễn phí sau khi học 3 ngày và được Bộ Tài Chính cấp chứng chỉ.
Được tham gia các khóa đào tạo phát triển kỹ năng bán hàng và phát triển bản thân', N'TP.HCM', 10, CAST(N'2022-07-12' AS Date), CAST(N'2022-08-21' AS Date), 1, 2, N'FPT019', 8, N'THỰC TẬP SINH KINH DOANH')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (405, N'Thực tập sinh Marketing ( Ngành Thiết Kế Đồ Họa, Dựng clip Video..)', N'Thiết kế các ấn phẩm nội bộ công ty ( như thiệp mời tham gia event, dự án….)
Tạo dựng video, clip…
Theo chỉ đạo của Trưởng phòng…', N'Sinh viên năm cuối
Có sự sáng tạo
Đam mê, nhiệt huyết
Có sự cầu tiến', N'Lương khởi điểm từ 4tr/ tháng
Được nhận chính thức sau thời gian thực tập
Chế độ lương thưởng tăng lên sau khi xem xét nhận chính thức
Các chế độ HDLD, BHXH… đầy đủ
Các chương trình trao giải cho các cá nhân xuất sắc hàng tháng, quý, năm,…
Teambuilding, du lịch nghỉ dưỡng hàng năm,… Quà tặng 8/3, 20/10, sinh nhật,…', N'TP.HCM', 10, CAST(N'2022-07-13' AS Date), CAST(N'2022-08-22' AS Date), 1, 2, N'FPT020', 7, N'Thực tập sinh Marketing ( Ngành Thiết Kế Đồ Họa, Dựng clip Video..)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (406, N'Thực tập sinh kinh doanh', N'Tham gia dào tạo thông tin dự án theo lịch đào tạo của công ty và Chủ đầu tư.
Tham gia đào tạo theo lộ trình của Nhân viên mới
Thuyết trình về dự án đã học.
Cung cấp thông tin, tư vấn và hỗ trợ khách hàng lựa chọn những sản phẩm phù hợp nhất với nhu cầu.
Chăm sóc, khai thác nguồn khách hàng Marketing công ty phân bổ xuống.
Tìm kiếm, phát triển nguồn khách hàng tiềm năng
Đàm phán chốt giao dịch
Cập nhật, nâng cao các kỹ năng, kiến thức liên quan đến sản phẩm, thị trường Bất động sản.', N'Sinh viên năm 3, năm 4 hoặc các bạn sinh viên mới ra trường chưa có kinh nghiệm.
Năng động, kiên trì, ham học hỏi, có tinh thần trách nhiệm với công việc.
Có khát khao làm giàu từ Bất động sản, đam mê kinh doanh', N'Thu nhập như nhân viên chính thức.
Lương khởi điểm từ 3.000.000 vnd luỹ tiến đến 10.000.000 vnd/ tháng
Hoa hồng : Từ 50 triệu – 300 tr/ 1 sản phẩm bán ra.
Thưởng : Từ chính sách công ty + Chủ đầu tư ( Thời từng thời điểm bán hàng )
Được nhận nhân viên chính thức sau 2 tháng thử việc, và hưởng các chế độ quyền lợi đi kèm của nhân viên chính thức ( Như đóng BHXH,… Thăng tiến ,,,vv) 
Quyền lợi chung:

Được cung cấp số liệu thực hiện báo cáo thực tập
Được đào tạo các kiến thức chuyên sâu về lĩnh vực Bất động sản.
Được tham gia các khóa đào tạo kỹ năng tư vấn, nắm bắt tâm lý và nhu cầu của khách hàng, kỹ năng chốt sales phù hợp với mọi ngành nghề kinh doanh.
Được hỗ trợ nguồn khách hàng tiềm năng từ Marketing.
Các chương trình trao giải cho các cá nhân xuất sắc hàng tháng, quý, năm,…
Teambuilding, du lịch nghỉ dưỡng hàng năm,… Quà tặng 8/3, 20/10, sinh nhật,…
Được tham gia trải nghiệm thực tế các dự án siêu cao cấp của Công ty thường xuyên tại Sài gòn, Phú Quốc, Hồ Tràm, Đà nẵng…..vv', N'TP.HCM', 10, CAST(N'2022-07-14' AS Date), CAST(N'2022-08-23' AS Date), 1, 2, N'FPT020', 8, N'Thực tập sinh kinh doanh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (407, N'NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG ', N'Tìm kiếm khách hàng, tư vấn, giới thiệu Sản phẩm Thẻ đến khách hàng. 
Thu thập thông tin Khách hàng, hướng dẫn Khách hàng hoàn tất hồ sơ đăng ký mở thẻ theo quy định.
Theo dõi, tổng hợp và báo cáo kết quả thực hiện hàng ngày của cá nhân cho quản lý trực tiếp.
Tham gia thực hiện các công việc khác theo sự phân công của Trưởng bộ phận, Trưởng đơn vị.', N'Tiếng Anh tốt 4 kỹ năng (làm việc 100% tiếng Anh)
Có khả năng xử lý tình huống linh hoạt
Tư duy chăm sóc khách hàng', N'Thu nhập trung bình: 10.000.000 – 14.000.000 VNĐ/tháng.
Lương cơ bản: 7.500.000 VNĐ/tháng.
Trợ cấp ăn uống: 500.000 VNĐ/tháng.
Phụ cấp thêm: 1.000.000 VNĐ/tháng (Áp dụng sau 2 tháng thử việc).
Thưởng KPI hàng tháng: 900.000 – 1.200.000 VNĐ/tháng
Tham gia các chế độ bảo hiểm theo quy định của Luật Lao động.
Bảo hiểm tai nạn 24/7.
14 ngày phép năm.
Lương tháng thứ 13.
Khám sức khoẻ định kỳ hàng năm.
Làm việc trong môi trường năng động, chuyên nghiệp với nhiều cơ hội thăng tiến.', N'TP.HCM', 10, CAST(N'2022-07-15' AS Date), CAST(N'2022-08-24' AS Date), 1, 2, N'FPT021', 8, N'NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG ')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (408, N'Content Website Intern', N'Phát triển và xây dựng nội dung website đa lĩnh vực theo yêu cầu của khách hàng; áp dụng các công cụ, kỹ thuật yêu cầu vào bài viết.
Biên soạn và lên kế hoạch xây dựng nội dung chuẩn SEO cho website khách hàng.
Hỗ trợ các hạng mục liên quan cho khách hàng.
Tham gia xây dựng chiến lược nội dung, đóng góp ý tưởng nội dung cho nhóm và phòng.
Mở rộng và xây dựng hệ thống khách hàng tiềm năng.
Đảm bảo deadline theo kế hoạch đặt ra.
Xử lý và hoàn thành các công việc được giao.
Báo cáo kết quả đến cấp quản lý trực tiếp.', N'Là sinh viên năm 2, 3, 4 hoặc đang đợi tốt nghiệp các trường ĐH, CĐ.
Ưu tiên các bạn đã từng làm việc ở những vị trí như content, copywriter,.. hoặc những công việc liên quan đến phát triển nội dung.
Có khả năng viết văn, tư duy câu chữ
Hiểu biết cơ bản về nền tảng social media đối với từng ngành, có khả năng viết lách đa lĩnh vực cũng là một lợi thế
Có khả năng chịu áp lực công việc, sáng tạo và lắng nghe ý kiến khách hàng
Có khả năng sắp xếp thời gian phù hợp
Có laptop làm việc.
Có tinh thần trách nhiệm cao. ', N'Được đào tạo cụ thể về cách viết bài chuẩn SEO cho website và các công cụ hỗ trợ liên quan trong công việc.
Được làm việc trong môi trường agency chuyên nghiệp, năng động, trẻ và nhiệt huyết, làm việc tại văn phòng Công ty không gian mở. Đồng nghiệp trẻ trung, hòa đồng, thân thiện.
Được training nếu chưa có kinh nghiệm về lĩnh vực Quảng cáo (các kiến thực cũng như các kỹ năng cần thiết). Được đào tạo chuyên sâu kỹ năng giao tiếp và quy trình làm việc với khách hàng.
Được hưởng các phúc lợi theo quy định của công ty.
Được hỗ trợ dấu mộc công ty cho các bạn trong quá trình thực tập.
Được tham gia các hoạt động dã ngoại định kỳ của Công ty, các hoạt động gắn kết nhân viên.', N'TP.HCM', 10, CAST(N'2022-07-16' AS Date), CAST(N'2022-08-25' AS Date), 1, 2, N'FPT022', 11, N'Content Website Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (409, N'Content Fanpage Intern', N'Phát triển nội dung kênh Facebook đa lĩnh vực theo xu hướng mới; áp dụng các công cụ, kỹ thuật digital vào chiến lược
Biên soạn và lên kế hoạch thiết kế nội dung cho Fanpage khách hàng
Design hình sản phẩm cho khách 
Tham gia xây dựng chiến lược nội dung, đóng góp ý tưởng nội dung cho digital marketing
Thực hiện báo cáo tiến độ và kết quả định kỳ', N'Có kinh nghiệm là một lợi thế
Ưu tiên biết sử dụng phần mềm Ai, Ps, Powerpoint....
Hiểu biết cơ bản về nền tảng social media đối với từng ngành, có khả năng viết lách đa lĩnh vực cũng là một lợi thế
Có Laptop để làm việc
Có khả năng chịu áp lực công việc, sáng tạo và lắng nghe ý kiến khách hàng', N'Được training cụ thể về phương pháp viết Content chuẩn, kỹ năng thiết kế hình ảnh, cách viết lách hiệu quả
Môi trường làm việc thân thiện, hoà đồng
Được hỗ trợ dấu mộc xác nhận thực tập
Được hỗ trợ đào tạo khóa học chuyên sâu về Digital Marketing (Facebook Ads, Google Ads,..)
Có cơ hội trở thành nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-07-17' AS Date), CAST(N'2022-08-26' AS Date), 1, 2, N'FPT022', 11, N'Content Fanpage Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (410, N'Sale Marketing Intern', N'Tìm kiếm khách hàng mới trên social media
Chủ động liên hệ với khách hàng tiềm năng để giới thiệu các dịch vụ, ưu điểm và đãi ngộ của công ty
Viết Content Marketing về sản phẩm, dịch vụ được giao trên account làm việc
Xây dựng hệ thống dữ liệu khách hàng tiềm năng hoặc tìm kiếm data khách hàng mới), và hunter trên các kênh truyền thông, mạng xã hội khi có nhu cầu, phát triển kiến thức liên quan đến Social Ads
Gửi thông tin dịch vụ đến khách hàng tham khảo', N'Là sinh viên năm 3, 4 hoặc vừa mới tốt nghiệp các trường ĐH, CĐ
Có laptop làm việc
Hiểu biết cơ bản về nền tảng social media
Đáp ứng thời gian làm việc tối thiểu 6 buổi/tuần từ Thứ 2 - Thứ 6 (được đăng ký thời gian làm việc linh hoạt)
Quan tâm, yêu thích và định hướng về sales
Năng động, sáng tạo, có tinh thần học hỏi, cầu tiến và linh hoạt trong công việc
Có khả năng chịu được áp lực công việc', N'Có cơ hội được đào tạo chuyên sâu về nghiệp vụ và tham gia các khóa đào tạo Digital Marekting trị giá đến 9,600,000 VNĐ của công ty
Thu nhập theo năng lực (sẽ đưa chính sách khi phỏng vấn)
Môi trường làm việc chuyên nghiệp, năng động, trẻ và nhiệt huyết, đồng nghiệp hòa đồng, thân thiện, có leader hướng dẫn
Team building, du lịch cùng công ty
Hỗ trợ vừa học vừa làm
Hỗ trợ tài liệu, báo cáo thực tập mẫu, đóng mộc
Bạn đang lo lắng về kiến thức chuyên môn? Yên tâm nào, bạn sẽ được đào tạo
Được training các kỹ năng tư vấn, giới thiệu, chăm sóc, mở rộng tập khách hàng.
Chính sách thăng tiến và KPIs minh bạch theo cấp bậc TTS/CTV → NVCT → TNKD → TPKD
Cơ hội được trở thành nhân viên chính thức', N'TP.HCM', 10, CAST(N'2022-07-18' AS Date), CAST(N'2022-08-27' AS Date), 1, 2, N'FPT022', 7, N'Sale Marketing Intern')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (411, N'Embedded Software Engineer', N'Develop and maintain S/W applications for embedded MCU on High Resolution Monitors, Digital Appliance Products like Refrigerator, Washing Machine, Air Conditioner, Kitchen Prouducts,…
Understanding the requirements needed to perform the software development work required by each project.
Researching, designing, implementing and managing software programs based on company’s procedures.
Execute jobs assigned by Group Leader based on job-demands.', N'University graduated with computer science, software, application programming related major
Good at logical thinking, problem-solving, collaboration, and communication skills.
Strong knowledge of basic data structures and algorithms.
Industriousness, result-oriented, high energy, self-motivated, and creativeindividual.
Being able to use English for working.', N'Intensive training programs for Freshers
13th Month + Performance Bonus - Twice a year (Up to 3 months)
Flexible working time
Dynamic & friendly working environment
Udemy license is provided
Premium healthcare package
100% Salary in probation and join Social Insurance.
Shuttle bus to factory
Team Building quarterly
GWP Gifts quarterly
Free Luncheon
Training Opportunities in Headquarter – Korea
Enjoy various activities such as SEHC Events, Town Hall Meeting, Liên Quân Mobile Champion, SEHC Marathon, SEHC Hackathon, SEHC Home Town,....', N'TP.HCM', 10, CAST(N'2022-07-19' AS Date), CAST(N'2022-08-28' AS Date), 1, 2, N'FPT023', 1, N'Embedded Software Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (412, N'Web App Developer (Front-End)', N'Develop and maintain mobile application base on Web Framework (Angular, Java Script, CSS, HTML5).
Understanding the requirements needed to perform the software/application development work required by each project.
Be responsible for building attractive, efficient, and responsive applications for tablet and smartphones.
Be involved in the complete project life cycle from requirements to final delivery.
Researching, designing, implementing and managing software programs based on company’s procedures.', N'University graduated with computer science, software, application programming related major.
Good background knowledge about Design pattern, Data structures and Algorithms.
Good for logical thinking and problem-solving.
Ability to self-learn and adapt to new technologies quickly.
Being able to use the English for working.
Freshers are welcome.', N'Intensive training programs for Freshers
13th Month + Performance Bonus - Twice a year (Up to 3 months)
Flexible working time
Dynamic & friendly working environment
Udemy license is provided
Premium healthcare package
100% Salary in probation and join Social Insurance.
Shuttle bus to factory
Team Building quarterly
GWP Gifts quarterly
Free Luncheon
Training Opportunities in Headquarter – Korea
Enjoy various activities such as SEHC Events, Town Hall Meeting, Liên Quân Mobile Champion, SEHC Marathon, SEHC Hackathon, SEHC Home Town,....', N'TP.HCM', 10, CAST(N'2022-07-20' AS Date), CAST(N'2022-08-29' AS Date), 1, 2, N'FPT023', 1, N'Web App Developer (Front-End)')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (413, N'Mobile Developer (Android/iOS)', N'Develop and maintain mobile applications base on Android/iOS platform (Kotlin/Java/Swift,Objective-C)
Understand the requirement needed to perform the software/applications development work required by each project
Be responsible for building attractive, efficient and responsive applications for tablets and smartphones
Be involved in the complete project lifecycle from recquirements to final delivery', N'Fresh Graduates from Computer Science, Software Engineering, IT or related fields.
Good logical thinking and problems solving skills
Ability to self-learning and adapt to new technology
Basic English for working', N'Intensive training programs for Freshers
13th Month + Performance Bonus - Twice a year (Up to 3 months)
Flexible working time
Dynamic & friendly working environment
Udemy license is provided
Premium healthcare package
100% Salary in probation and join Social Insurance.
Shuttle bus to factory
Team Building quarterly
GWP Gifts quarterly
Free Luncheon
Training Opportunities in Headquarter – Korea
Enjoy various activities such as SEHC Events, Town Hall Meeting, Liên Quân Mobile Champion, SEHC Marathon, SEHC Hackathon, SEHC Home Town,....', N'TP.HCM', 10, CAST(N'2022-07-21' AS Date), CAST(N'2022-08-30' AS Date), 1, 2, N'FPT023', 1, N'Mobile developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (414, N'Fresher DevOps Engineer', N'Đào tạo full-time 8 tuần về DevOps Fundamental với các bộ tool cơ bản như Git, Docker, Jenkin, CI/CD SVN, sử dụng public cloud basic như AWS, Azure, Google Cloud Platform
Củng cố kiến thức về việc tham gia dự án với mô hình Scrum/Agile một cách chuyên nghiệp theo tư tưởng DevOps.
Được hướng dẫn bài bản và làm việc cùng đội ngũ technical mentors cũng là những technical architect gạo gội DevOps tại NashTech.
Tham gia thực chiến trong các dự án toàn cầu (UK, US, Sydney) với mô hình chuẩn Agile', N'Sinh viên năm cuối hoặc đã tốt nghiệp các chuyên ngành CNTT, An toàn thông tin, Hệ thống thông tin, Toán Tin tại các trường Đại học.
Khả năng đọc hiểu & giao tiếp tốt tiếng Anh. Ưu tiên ứng viên có trình độ tương đương từ TOEIC 600 trở lên.
Tham gia đào tạo và làm việc Full-time từ thứ 2 - thứ 6 ( Thời gian bắt đầu: 20/06/2022)
Có kỹ năng lập trình tốt. Ưu tiên ứng viên có kỹ năng về các ngôn ngữ như: Python, Java, .NET hoặc Golang…
Có định hướng, yêu thích và đam mê phát triển về DevOps.
Có kiến thức về một trong những lĩnh vực sau là một lợi thế: Networking, Cloud Computing, các hệ điều hành Linux/Window, Docker, CI/CD tool, Git…
Sẵn sàng học hỏi kiến thức mới.
Khả năng giao tiếp tốt và tư duy sáng tạo, giải quyết vấn đề. Có ý thức cầu tiến, trung thực, trách nhiệm với công việc chung', N'Được ký hợp đồng chính thức trở thành 1 Nasher.
Tham gia chương trình đào tạo devOps và trải nghiệm thực chiến trong các dự án.
Tham gia làm việc tại các dự án lớn với khách hàng là các tập đoàn hàng đầu thế giới trong nhiều lĩnh vực: Thương mại điện tử, Fintech, Y tế - Sức khỏe,, E-commerce, Education…
Hoàn thiện kỹ năng mềm và nâng tầm khả năng ngoại ngữ chỉ sau .
Được tham gia bảo hiểm đầy đủ theo quy định của pháp luật & Khám sức khỏe định kỳ hàng năm, bảo hiểm sức khỏe NashTech cho bản thân.
Trải nghiệm văn hóa đặc trưng, môi trường làm việc hiện đại bậc nhất Việt Nam tại các technical training program của NashTech Software.', N'TP.HCM', 10, CAST(N'2022-07-22' AS Date), CAST(N'2022-08-31' AS Date), 1, 2, N'FPT024', 1, N'Fresher developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (415, N'Software Engineer (Database/ DevOps/ Nodejs)', N'Software Engineer (Database/ DevOps/ Nodejs)', N'6 tháng đến 1 năm kinh nghiệm liên quan.
Giao tiếp tiếng Anh tốt.
GPA ít nhất 7/10 (Hoặc 2.5/4)
Có thể làm việc được với áp lực cao.
Ham học hỏi, có kỹ năng tự nghiên cứu.', N'Đóng bảo hiểm full lương, lương tháng 13.
Đánh giá năng lực 2 lần/ năm (thưởng năng lực lên đến 2 tháng lương).
Phụ cấp dự án, cơm trưa.
Bảo hiểm sức khỏe cao cấp.
Phép năm: 14 - 18 ngày.
Hỗ trợ chi phí thi chứng chỉ về technical, Ielts và Jlpt.
Đào tạo: kỹ thuật – kỹ năng mềm - tiếng Anh.', N'TP.HCM', 9, CAST(N'2022-07-23' AS Date), CAST(N'2022-09-01' AS Date), 1, 2, N'FPT024', 1, N'Fresher developer engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (416, N'Sales /Client Solution Associate', N'Find suitable ways to contact potential partners; discover their needs and explore opportunities to provide customized solutions.
Build long-term strategic relationships with new and existing customers.
Close business deals by coordinating requirements; developing and negotiating contracts, integrating contract requirements with business operations.
Update employer branding knowledge by keeping building professional networks, joining relevant events and training as well as focusing on researching/reading relevant material.
Regularly review all the projects in scope & make the reports in a timely manner.
Other tasks for supporting the team as assigned', N'At least 1 year of working experience in Sales/ Consulting. Experiences in HR-related services would be a plus.
Good communication and customer service skills.
Fast learner and open-minded attitude.
Accountability and ability to work in a team as well as independently.
Self-motivation, high flexibility and strong adaptability.
Good time-management skill and objective-orientation', N'Competitive salary + Commission + Bonus.
Having chances to work with top companies.
Training and self-development: Being updated with new HR trends, personal and professional skills.
Health insurance, social insurance, annual health checks.
Company trip, workshop, team building…
15 days of annual leave.', N'TP.HCM', 10, CAST(N'2022-07-24' AS Date), CAST(N'2022-09-02' AS Date), 1, 2, N'FPT025', 8, N'Sales /Client Solution Associate')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (417, N' Tư vấn viên chuyên nghiệp toàn thời gian', N'Tư vấn tài chính, bảo hiểm nhân thọ 
Chăm sóc khách hàng
Lên kế hoạch kinh doanh, phát triển bản thân', N'Tốt nghiệp đại học
Có tinh thần phấn đấu học hỏi 
Chủ động và có trách nhiệm trong công việc
Có ipad/laptop cá nhân
Hoàn thành khóa học lấy chứng chỉ hành nghề của Bộ Tài Chính', N'Thu nhập đảm bảo 17 – 22 triệu
Hỗ trợ kinh doanh : 7 triệu/tháng
Đào tạo và du lịch miễn phí
Thăng tiến theo năng lực
Thưởng năng suất tháng, quý', N'TP.HCM', 10, CAST(N'2022-07-25' AS Date), CAST(N'2022-09-03' AS Date), 1, 2, N'FPT026', 8, N' Tư vấn viên chuyên nghiệp toàn thời gian')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (418, N'Fresher Điện Điện Tử Viễn Thông', N'Fresher Điện Điện Tử Viễn Thông', N'Sinh viên khối ngành công nghệ năm cuối/ đã tốt nghiệp có thể đi làm full-time
Có kiến thức tốt thuộc một trong các chuyên ngành: ELECTRONICS & ELECTRICAL/ AUTOMATION/ TELECOMMUNICATIONS...
Điểm trung bình tích lũy từ 2.5/4
Khả năng giao tiếp, đọc hiểu Tiếng Anh', N'Cơ hội trở thành nhân viên chính thức với mức lương cực kì hấp dẫn, thưởng tháng 13 và thưởng review KPI hàng quý
Bảo hiểm theo quy định, bảo hiểm sức khỏe Bảo Việt cho cả gia đình của HCL dành cho nhân viên chính thức
Thời gian làm việc linh hoạt: thứ 2-6
18 ngày phép/ năm
Cơ hội onsite dự án quốc tế
Được đào tạo kiến thức công nghệ và tham gia các lớp tiếng anh MIỄN PHÍ trong môi trường làm việc quốc tế chuyên nghiệp, thực tập On The Job Training 3-6 tháng (trợ cấp thực tập 4-5M)', N'TP.HCM', 10, CAST(N'2022-07-26' AS Date), CAST(N'2022-09-04' AS Date), 1, 2, N'FPT028', 4, N'Fresher Điện Điện Tử Viễn Thông')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (419, N'Trợ Giảng Tiếng Anh', N'Giảng dạy Tiếng Anh cho các bé từ 5 đến 14 tuổi theo phương pháp và giáo trình của Trung Tâm.
Chăm sóc, giao bài tập, chấm bài, kèm bù và theo sát việc học của học viên.
Tham gia phỏng vấn học viên mới, các events của trường.
Các công việc khác theo sự phân công và hướng dẫn của quản lý.', N'Tốt nghiệp Đại Học (ưu tiên ngành Tiếng Anh và bằng cấp Tiếng Anh tương đương)
Yêu thích công việc giảng dạy, nhiệt huyết với nghề, có trách nhiệm với công việc.
Kỹ năng giao tiếp, giọng nói chuẩn, kiên trì, trung thực và làm việc lâu dài.', N'Môi trường làm việc năng động, chuyên nghiệp, thân thiện, cơ hội thăng tiến.
Được đào đạo kỹ năng giảng dạy chuyên nghiệp (trung tâm có hơn 30 năm kinh nghiệm trong giảng dạy Tiếng Anh)
Chế độ phúc lợi và nhiều chính sách đãi ngộ của Trường.', N'TP.HCM', 10, CAST(N'2022-07-27' AS Date), CAST(N'2022-09-05' AS Date), 1, 2, N'FPT029', 12, N'Trợ Giảng Tiếng Anh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (420, N'Giáo viên Tiếng Anh', N'Giảng dạy Tiếng Anh theo phương pháp và giáo trình của Trung Tâm.
Chăm sóc, giao bài tập, chấm bài, kèm bù và theo sát việc học của học viên.
Tham gia phỏng vấn học viên mới, các events của trường.
Các công việc khác theo sự phân công và hướng dẫn của quản lý.', N'Tốt nghiệp Đại Học (ưu tiên ngành Tiếng Anh và bằng cấp Tiếng Anh tương đương)
Yêu thích công việc giảng dạy, nhiệt huyết với nghề, có trách nhiệm với công việc.
Kỹ năng giao tiếp, giọng nói chuẩn, kiên trì, trung thực và làm việc lâu dài.', N'Môi trường làm việc năng động, chuyên nghiệp, thân thiện, cơ hội thăng tiến.
Được đào đạo kỹ năng giảng dạy chuyên nghiệp (trung tâm có hơn 30 năm kinh nghiệm trong giảng dạy Tiếng Anh)
Chế độ phúc lợi và nhiều chính sách đãi ngộ của Trường.', N'TP.HCM', 10, CAST(N'2022-07-28' AS Date), CAST(N'2022-09-06' AS Date), 0, 1, N'FPT029', 12, N'Giáo viên Tiếng Anh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (421, N'Platform Engineer (Odoo)', N'Work with the foundation software engineering team to build up our group’s common software components that enable other delivery teams to build stable, robust and secure marketplace and digital services. 
Contribute from technical insight to problem solving that would shape not only our technology but also our overall business.
Maintain our Odoo applications, guarantee up-time, bug-free, security, hosting, domain, update & upgrade
Investigate and provide hot-fixes.
Master application architecture and control how vendors integrate.
Strong collaborative skills for working with vendors, third-parties, internal business and development team.', N'Capability in Full-Stack Development
Know-how to design and manage application architecture
Master Python Language, HTML, CSS, JavaScript and PostgreSQL
Experience with Odoo integration: CRM, other systems with API
Experience with Odoo mobiles (IOS, Android)
Preferred: Basic design skill (Photoshop, Illustrator)', N'Attractive salary
 Health ensurance
 12 annual leaves and Christmas Day Off
Discount price for Highlands and Pho24 items (apply only at Sale Office)', N'TP.HCM', 10, CAST(N'2022-07-29' AS Date), CAST(N'2022-09-07' AS Date), 0, 1, N'FPT027', 1, N'Developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (422, N'Mobile Engineer', N'Support the entire application lifecycle (concept, design, test, release and support)         
Produce fully functional mobile applications writing clean code
Gather specific requirements and suggest solutions
Research and suggest new mobile products, applications and protocols
Stay up-to-date with new technology trends', N'Demonstrable portfolio of released applications on the App store or the Android market
In-depth knowledge of at least one programming language like Swift and Java
Experience with third-party libraries and APIs
Familiarity with OOP design principles
Ability to interpret and follow technical plans', N'Attractive salary
 Health ensurance
 12 annual leaves and Christmas Day Off
Discount price for Highlands and Pho24 items (apply only at Sale Office)', N'TP.HCM', 10, CAST(N'2022-07-30' AS Date), CAST(N'2022-09-08' AS Date), 0, 1, N'FPT027', 1, N'C# developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (423, N'Intern BA có tiếng Nhật tối thiểu N3', N'- Tìm hiểu và phân tích yêu cầu nghiệp vụ khách hàng.
- Phân tích và đưa ra mô hình, giải pháp dựa trên yêu cầu đã thu thập được.
- Viết các tài liệu đặc tả yêu cầu nghiệp vụ phần mềm, thiết kế giao diện.', N'- Nhanh nhẹn, ham học hỏi, tư duy tốt.
- Có hiểu biết về ngành Công nghệ thông tin.
- Có chứng chỉ tiếng Nhật từ N2.
- Ưu tiên các bạn sinh viên năm cuối hoặc đã tốt nghiệp chuyên ngành Hệ thống thông tin quản
lý, Kinh tế, Tài chính – kế toán...hoặc các chuyên ngành liên quan.', N'- Mức hỗ trợ thực tập lên đến 6 triệu/tháng.
- Được đào tạo miễn phí, chuyên sâu về kỹ năng ở môi trường chuyên nghiệp.
- Được cung cấp máy tính cấu hình cao khi làm việc.
- Tham gia các hoạt động giải trí tại văn phòng.
- Hưởng chế độ nghỉ mát hàng năm, teambuilding 3 lần/ năm, các hoạt động thể thao & giải trí,
đào tạo phong phú (Yoga, bơi lội, Kendo, tiếng Nhật....).
- Có cơ hội trở thành nhân viên chính thức sau thời gian thực tập (2 tháng) với mức lương
hấp dẫn và đầy đủ quyền lợi của nhân viên chính thức.', N'TP.HCM', 10, CAST(N'2022-07-31' AS Date), CAST(N'2022-09-09' AS Date), 0, 1, N'FPT003', 13, N'Intern BA có tiếng Nhật tối thiểu N3')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (424, N'Intern Angular', N'- Được tham gia training-on-job ở các dự án thực tế.
- Được review, support để hoàn thành các công việc về frontend (HTML, CSS, Javascript, Angular, Reactjs)
- Tham gia phát triển sản phẩm cho chuỗi cửa hàng bán lẻ lớn thứ 4 của Nhật Bản, công nghệ dùng chủ yếu là công nghệ mới như Angular, NodeJS, AWS.
- Thực hiện các công việc được phân công.', N'- Đã tốt nghiệp hoặc đang học năm cuối khoa CNTT các trường đại học, có thể làm fulltime.
- Ưu tiên các bạn đã có kiến thức căn bản, base IT khá.
- Đã có thời gian tìm hiểu/kinh nghiệm về các ngôn ngữ HTML, CSS, Javascript.
- Có tinh thần cầu tiến, thông minh, nhanh nhẹn và có trách nhiệm với công việc được giao.

- Ưu tiên các bạn đã từng sử dụng framework Angular và Reactjs.', N'- Hỗ trợ thực tập: Up to 6tr/tháng.
- Làm việc trong môi trường năng động.
- Sau quá trình thực tập nếu được đánh giá cao sẽ được trở thành nhân viên chính thức của công ty.
- Tham gia lớp học tiếng Nhật miễn phí.
- Tham gia các hoạt động của công ty (sinh nhật, team building, monthly party...).', N'TP.HCM', 10, CAST(N'2022-08-01' AS Date), CAST(N'2022-09-10' AS Date), 0, 1, N'FPT003', 1, N'Front-end developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (425, N'Intern Marketing', N'- Hỗ trợ các công việc của phòng Marketing.
- Viết content cho fanpage & website, tham gia góp ý tưởng và thực hiện các kênh truyền thông bằng tiếng Nhật.
- Nghiên cứu tìm hiểu thông tin thị trường theo yêu cầu.
- Hỗ trợ tìm kiếm các đối tác khách hàng tiềm năng.
- Hỗ trợ các công tác truyền thông.
- Phối hợp theo dõi và xử lý các công việc được giao.', N'- Tiếng Nhật N2+, ưu tiên các sinh viên năm 3-4 các khối ngành Ngoại Ngữ.
- Có hiểu biết về thiết kế, có gu thẩm mĩ tốt.
- Ưu tiên ứng viên có hiểu biết về PR, Marketing.
- Có hứng thú với công nghệ, khả năng tư duy tổng hợp thông tin tốt.
- Giao tiếp tốt, năng động, nhiệt tình, tận tâm với công việc.
- Sử dụng thành thạo tin học văn phòng (Word, Excel, Powerpoint, ...)
- Ưu tiên các ứng viên có thể sử dụng các công cụ thiết kế như Photoshop, Illustrator.
- Ưu tiên sinh viên năm 3, năm 4 hoặc mới tốt nghiệp có thể làm fulltime/ partime (tối thiểu 20h/tuần).', N'- Hỗ trợ thực tập: Up to 6tr/tháng.
- Có cơ hội tích luỹ kinh nghiệm thực tế về marketing (B2B Marketing) cho nghề nghiệp sau khi ra trường.
- Làm việc trong môi trường năng động, chuyên nghiệp.
- Sau quá trình thực tập nếu được đánh giá cao sẽ được trở thành nhân viên chính thức của công ty.
- Tham gia lớp học tiếng Nhật miễn phí.
- Tham gia các hoạt động của công ty (sinh nhật, team building, monthly party...).', N'TP.HCM', 10, CAST(N'2022-08-02' AS Date), CAST(N'2022-09-11' AS Date), 0, 1, N'FPT003', 7, N'Intern Marketing')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (426, N'Waiter/Waitress', N'How to welcome guest, Control guests, answer the phone, service standard relative, take order, up sell food & beverage & support department, financial, sales.', N'Administration
• Attend daily briefing, work follow the shift is assigned on the Duty Roster.
• Taking reservations as well as giving information regarding the Restaurant & the F&B activities of the monthly.
• Follow the daily service assignment.
• Write captain order & control it in the working time.
• Follow the hotel Rule & Regulation.


Financial and Revenue Responsibilities
• Confident to sell our products.
• How to up sell food & beverage and control breakage.
', N'Training and Human Resources
• Fully attend the training course assigned by hotel training Manager.
• • Ensure wherever possible that employees are provided with a work place free of discrimination, harassment and victimisation.
• Treat complaints of harassment and discrimination promptly and confidentially.
• Treat customers and colleagues from all cultural groups with respect and sensitivity.
• Identify and deal with issues which may cause cross cultural conflict or misunderstanding.


Guest Service Responsibilities
• He/she must arrange seat for guests so as to distribute them evenly in the Restaurant to facilitate better service for the guests.
• He/she will greet arriving guests in pleasant manner & lead them to their seats.
• Serve all guest follow the standard with good knowledge of F&B.
• Set up follow the hotel standard.
• Check the guest’s satisfaction then report to Supervisor & Manager and do glitch form accordingly.

• Do the payment when guests finished their meal.
• Remember the guest’s history.
• Thank guest about their support.


Miscellaneous
• How to make Tea & Coffee.
• Clean all service stations, cutleries & arrange service station.
• Refill, clean all salt & Pepper shaker when work in the afternoon shift.
• Send dirty linen to laundry & take clean one back to restaurant.
•
• All ambassadors are required to comply with every reasonable request from their hierarchical supervisor(s) within an amount of time that it takes to comply under normal circumstances.
• All ambassadors may be assigned to other duties in the hotel as and when required by business levels.


Talent Profile
• Ensure to provide the highest level of service.
• Standard of Education: Hospitality Service
• Having experiences in similar positions is preferred', N'TP.HCM', 10, CAST(N'2022-08-03' AS Date), CAST(N'2022-09-12' AS Date), 0, 1, N'FPT011', 10, N'Waiter/Waitress')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (427, N'Tuyển thực tập sinh Java', N'<p>Tham gia kh&oacute;a đ&agrave;o tạo n&acirc;ng cao kiến thức v&agrave; kỹ năng lập tr&igrave;nh (Java basic, Java Script, HTML, CSC, #Java Core, Java Collection, CM, SVN, web tool,debug IDE,...Database: Basic SQL...). Được tham gia v&agrave;o dự &aacute;n thực tế để n&acirc;ng cao kỹ năng v&agrave; kiến thức của bản th&acirc;n. Traning 1:1 c&oacute; dự &aacute;n, c&oacute; PM v&agrave; Mentor r&otilde; r&agrave;ng cho từng ứng vi&ecirc;n.</p>', N'<p>Sinh vi&ecirc;n đang trong thời gian l&agrave;m đồ &aacute;n tốt nghiệp, sinh vi&ecirc;n năm cuối. C&oacute; nền tảng kiến thức cơ bản về CNTT cụ thể Java,HTML, CSC, Java Script... v&agrave; Database. Y&ecirc;u th&iacute;ch v&agrave; định hướng sử dụng ng&ocirc;n ngữ Java trong sự nghiệp của bản th&acirc;n. C&oacute; khả năng l&agrave;m fulltime (đảm bảo c&aacute;c bạn theo được nội dung chương tr&igrave;nh đ&agrave;o tạo của DXC). C&aacute;c anh/chị đ&atilde; ra trường nếu y&ecirc;u th&iacute;ch v&agrave; đ&aacute;p ứng c&aacute;c y&ecirc;u cầu tr&ecirc;n vẫn c&oacute; thể ứng tuyển nh&eacute;.</p>', N'<p>Được l&agrave;m việc với đ&agrave;n anh c&oacute; th&acirc;m ni&ecirc;n trong nghề (10-20 năm kinh nghiệm) xử l&yacute; mọi loại bug. Trợ cấp 5.000.000 VND/1 th&aacute;ng. Được đ&aacute;nh gi&aacute;, trở th&agrave;nh nh&acirc;n vi&ecirc;n ch&iacute;nh thức sau khi kết th&uacute;c kh&oacute;a đ&agrave;o tạo 2 - 3 th&aacute;ng. Được l&agrave;m việc trong m&ocirc;i trường c&ocirc;ng nghệ th&ocirc;ng tin trẻ, năng động. Được tiếp x&uacute;c với c&ocirc;ng nghệ mới.</p>', N'TP.HCM', 15, CAST(N'2022-06-15' AS Date), CAST(N'2022-08-27' AS Date), 0, 1, N'FPT001', 1, N'Testing, backend, frontend')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (434, N'iOS Developer', N'<p>&nbsp;</p><p>As iOS Developer you will be responsible for implementing high-quality solutions for the largest investment banks in the world.</p><p>On a daily basis you will work in Scrum, create cutting edge functionalities, carry out module testing, create documentation of your work and report directly to Team Leader.</p>', N'<p>&nbsp;</p><p>Your skills :</p><p>&bull; At least 4 years of commercial experience in iOS programming</p><p>&bull; Strong knowledge of Swift, patterns and good practices related to developing apps for iOS platform</p><p>&bull; In-depth knowledge of UIKit including developing custom controls</p><p>&bull; Experience with MVVM pattern and ability to write readable unit tests</p><p>&bull; Knowledge of reactive programming with Combine or RxSwift &bull; Familiarity with version control systems and experience with working on a codebase with multiple contributors</p><p>&bull; Good English in speech and writing (communication with English-speaking clients)</p>', N'<p>8.5M - 30M per month</p>', N'TP.HCM', 1, CAST(N'2022-07-11' AS Date), CAST(N'2022-08-30' AS Date), 0, 1, N'FPT001', 1, N'iOS Developer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (435, N'SE (Network Engineer, System Engineer)', N'<p>Your role &amp; responsibilities</p><p>&bull; Nghi&ecirc;n cứu, t&igrave;m hiểu, dựng m&ocirc;i trường lab kỹ thuật tại c&ocirc;ng ty</p><p>&bull; Triển khai, t&iacute;ch hợp c&aacute;c giải ph&aacute;p bảo mật mạng v&agrave; bảo mật hệ thống</p><p>&bull; Phối hợp tư vấn đề xuất giải ph&aacute;p cho kh&aacute;ch h&agrave;ng</p><p>&bull; Chuẩn bị t&agrave;i liệu kỹ thuật, thuyết tr&igrave;nh m&ocirc; tả giải ph&aacute;p kỹ thuật</p>', N'<p>Your skills &amp; qualifications:</p><p>&bull; Sinh vi&ecirc;n sắp ra trường hoặc vừa tốt nghiệp chuy&ecirc;n ng&agrave;nh CNTT, ATTT, DTVT, Mật m&atilde; hoặc li&ecirc;n quan&hellip;</p><p>&bull; C&oacute; kiến thức về c&aacute;c mảng: Network, System, Ảo h&oacute;a, Security</p><p>&bull; C&oacute; c&aacute;c chứng chỉ chuy&ecirc;n ng&agrave;nh li&ecirc;n quan tới CNTT, ATTT l&agrave; một lợi thế</p><p>&bull; Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm</p>', N'<p>Benefits for you</p><p>&bull; Chế độ đ&atilde;i ngộ, lương v&agrave; thưởng xứng đ&aacute;ng theo năng lực.</p><p>&bull; Bảo hiểm cao cấp PVI, du lịch h&agrave;ng năm, hỗ trợ ăn trưa, hỗ trợ con nhỏ.</p><p>&bull; Được tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo của c&aacute;c h&atilde;ng CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế giới trong v&agrave; ngo&agrave;i nước.</p><p>&bull; Được tiếp x&uacute;c với c&aacute;c c&ocirc;ng nghệ v&agrave; hệ thống CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế...</p>', N'Đồng Nai', 0, CAST(N'2022-07-11' AS Date), CAST(N'2022-08-30' AS Date), 0, 3, N'FPT001', 1, N'Network Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (436, N'Chuyên Viên Tư Vấn Tuyển Sinh (Lương Cứng Cao 8 - 10 Triệu + Hh)', N'<p>M&ocirc; tả c&ocirc;ng việc</p><p>&bull; Chủ động li&ecirc;n hệ v&agrave; tư vấn học vi&ecirc;n tiềm năng theo danh s&aacute;ch được cung cấp h&agrave;ng ng&agrave;y, ổn định về c&aacute;c kho&aacute; học v&agrave; sự kiện của c&ocirc;ng ty</p><p>&bull; Chủ động t&igrave;m kiếm c&aacute;c nguồn data giới thiệu, seeding</p><p>&bull; Tham gia tổ chức c&aacute;c hoạt động hướng nghiệp, tư vấn tuyển sinh</p><p>&bull; Hướng dẫn trực tiếp v&agrave; qua điện thoại cho phụ huynh - học sinh c&aacute;c thủ tục về thủ tục, hồ sơ nhập học</p><p>&bull; Đảm bảo KPI doanh thu theo mục ti&ecirc;u cho trước th&aacute;ng/qu&yacute;</p><p>&bull; Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan theo chỉ đạo của quản l&yacute; trực tiếp.</p>', N'<p>Y&ecirc;u cầu ứng vi&ecirc;n</p><p>&bull; Tốt nghiệp Đại học/Cao đẳng</p><p>&bull; C&oacute; &iacute;t nhất 1 năm kinh nghiệm trong lĩnh vực sale &amp; marketing về mảng gi&aacute;o dục, dịch vụ</p><p>&bull; C&oacute; thể chịu được &aacute;p lực c&ocirc;ng việc cao trong thời gian d&agrave;i</p><p>&bull; Nhanh nhẹn, nhiệt t&igrave;nh, c&oacute; tr&aacute;ch nhiệm với c&ocirc;ng việc.</p>', N'<p>Quyền lợi được hưởng</p><p>&bull; Thu nhập từ 15 - 25 triệu: Lương cứng cao ( 8 - 10 triệu) + incentive hấp dẫn</p><p>&bull; Lộ tr&igrave;nh thăng tiến l&ecirc;n c&aacute;c vị tr&iacute; cao hơn, hấp dẫn về cơ chế.</p><p>&bull; M&ocirc;i trường l&agrave;m việc trẻ trung, năng động, chuy&ecirc;n nghiệp</p><p>&bull; Được tham gia c&aacute;c chương tr&igrave;nh đ&agrave;o tạo miễn ph&iacute; tại tập đo&agrave;n</p><p>&bull; Chế độ BHXH, BHYT, BH sức khoẻ</p><p>&bull; Chế độ nghỉ m&aacute;t, nghỉ lễ, teambuilding h&agrave;ng qu&yacute;</p>', N'TP.HCM', 2, CAST(N'2022-07-11' AS Date), CAST(N'2022-08-31' AS Date), 0, 1, N'FPT003', 12, N'Chuyên Viên Tư Vấn Tuyển Sinh')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (454, N'SE (Network Engineer, System Engineer)', N'<ul><li>Nghi&ecirc;n cứu, t&igrave;m hiểu, dựng m&ocirc;i trường lab kỹ thuật tại c&ocirc;ng ty</li><li>Triển khai, t&iacute;ch hợp c&aacute;c giải ph&aacute;p bảo mật mạng v&agrave; bảo mật hệ thống</li><li>Phối hợp tư vấn đề xuất giải ph&aacute;p cho kh&aacute;ch h&agrave;ng</li><li>Chuẩn bị t&agrave;i liệu kỹ thuật, thuyết tr&igrave;nh m&ocirc; tả giải ph&aacute;p kỹ thuật</li></ul>', N'<ul><li>Sinh vi&ecirc;n sắp ra trường hoặc vừa tốt nghiệp chuy&ecirc;n ng&agrave;nh CNTT, ATTT, DTVT, Mật m&atilde; hoặc li&ecirc;n quan&hellip;</li><li>C&oacute; kiến thức về c&aacute;c mảng: Network, System, Ảo h&oacute;a, Security</li><li>C&oacute; c&aacute;c chứng chỉ chuy&ecirc;n ng&agrave;nh li&ecirc;n quan tới CNTT, ATTT l&agrave; một lợi thế</li><li>Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm</li></ul>', N'<ul><li>Chế độ đ&atilde;i ngộ, lương v&agrave; thưởng xứng đ&aacute;ng theo năng lực.</li><li>&nbsp;Bảo hiểm cao cấp PVI, du lịch h&agrave;ng năm, hỗ trợ ăn trưa, hỗ trợ con nhỏ.</li><li>&nbsp;Được tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo của c&aacute;c h&atilde;ng CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế giới trong v&agrave; ngo&agrave;i nước.</li><li>&nbsp;Được tiếp x&uacute;c với c&aacute;c c&ocirc;ng nghệ v&agrave; hệ thống CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế giới.</li><li>&nbsp;L&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp v&agrave; c&ugrave;ng chia sẻ c&aacute;c gi&aacute; trị.</li><li>&nbsp;Hưởng c&aacute;c quyền lợi kh&aacute;c theo luật ph&aacute;p hiện h&agrave;nh.</li><li>&nbsp;Tham gia đầy đủ BHXH, BHYT, BHTN sau khi k&yacute; HĐLĐ.</li><li>&nbsp;Tiền thưởng c&aacute;c dịp lễ tết 30-4&amp;1-5, 2-9, 1-1, sinh nhật, cưới sinh, tết &acirc;m lịch...</li><li>&nbsp;Mua bảo hiểm PVI cho nh&acirc;n vi&ecirc;n sau khi k&yacute; HĐLĐ 3 th&aacute;ng.</li><li>&nbsp;Du lịch h&agrave;ng năm, tiệc tất ni&ecirc;n</li><li>&nbsp;Thời gian l&agrave;m việc từ thứ 2 đến thứ 6 (8h ~17h)</li></ul>', N'TP.HCM', 1, CAST(N'2022-07-14' AS Date), CAST(N'2023-08-06' AS Date), 0, 1, N'FPT005', 1, N'Network Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (455, N'SE (Network Engineer, System Engineer)', N'<ul><li>Nghi&ecirc;n cứu, t&igrave;m hiểu, dựng m&ocirc;i trường lab kỹ thuật tại c&ocirc;ng ty</li><li>Triển khai, t&iacute;ch hợp c&aacute;c giải ph&aacute;p bảo mật mạng v&agrave; bảo mật hệ thống</li><li>Phối hợp tư vấn đề xuất giải ph&aacute;p cho kh&aacute;ch h&agrave;ng</li><li>Chuẩn bị t&agrave;i liệu kỹ thuật, thuyết tr&igrave;nh m&ocirc; tả giải ph&aacute;p kỹ thuật</li></ul>', N'<ul><li>Sinh vi&ecirc;n sắp ra trường hoặc vừa tốt nghiệp chuy&ecirc;n ng&agrave;nh CNTT, ATTT, DTVT, Mật m&atilde; hoặc li&ecirc;n quan&hellip;</li><li>C&oacute; kiến thức về c&aacute;c mảng: Network, System, Ảo h&oacute;a, Security</li><li>C&oacute; c&aacute;c chứng chỉ chuy&ecirc;n ng&agrave;nh li&ecirc;n quan tới CNTT, ATTT l&agrave; một lợi thế</li><li>Kh&ocirc;ng y&ecirc;u cầu kinh nghiệm</li></ul>', N'<ul><li>Chế độ đ&atilde;i ngộ, lương v&agrave; thưởng xứng đ&aacute;ng theo năng lực.</li><li>&nbsp;Bảo hiểm cao cấp PVI, du lịch h&agrave;ng năm, hỗ trợ ăn trưa, hỗ trợ con nhỏ.</li><li>&nbsp;Được tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo của c&aacute;c h&atilde;ng CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế giới trong v&agrave; ngo&agrave;i nước.</li><li>&nbsp;Được tiếp x&uacute;c với c&aacute;c c&ocirc;ng nghệ v&agrave; hệ thống CNTT, ATTT h&agrave;ng đầu tr&ecirc;n thế giới.</li><li>&nbsp;L&agrave;m việc trong m&ocirc;i trường năng động, chuy&ecirc;n nghiệp v&agrave; c&ugrave;ng chia sẻ c&aacute;c gi&aacute; trị.</li><li>&nbsp;Hưởng c&aacute;c quyền lợi kh&aacute;c theo luật ph&aacute;p hiện h&agrave;nh.</li><li>&nbsp;Tham gia đầy đủ BHXH, BHYT, BHTN sau khi k&yacute; HĐLĐ.</li><li>&nbsp;Tiền thưởng c&aacute;c dịp lễ tết 30-4&amp;1-5, 2-9, 1-1, sinh nhật, cưới sinh, tết &acirc;m lịch...</li><li>&nbsp;Mua bảo hiểm PVI cho nh&acirc;n vi&ecirc;n sau khi k&yacute; HĐLĐ 3 th&aacute;ng.</li><li>&nbsp;Du lịch h&agrave;ng năm, tiệc tất ni&ecirc;n</li><li>&nbsp;Thời gian l&agrave;m việc từ thứ 2 đến thứ 6 (8h ~17h)</li></ul>', N'TP.HCM', 12, CAST(N'2022-07-14' AS Date), CAST(N'2023-08-06' AS Date), 0, 1, N'FPT001', 1, N'Network Engineer')
INSERT [dbo].[tblCompany_Post] ([postID], [title_Post], [job_Description], [job_Requirement], [remuneration], [workLocation], [quantityInterns], [postingDate], [expirationDate], [school_confirm], [statusPost], [companyID], [majorID], [vacancy]) VALUES (458, N'Java Developerr', N'<ul><li>Implement application development using Java (Spring Framework, Hibernate) and other technologies for wide range of Enterprise Applications such as Salesforce, ServiceNow, Dell Boomi&nbsp;</li><li>Configure, analyze, design, develop, maintain and/or refactor new/existing program code and applications to support business processes and functions and keep technical debt to a minimum&nbsp;</li><li>Participate in problem solving, troubleshooting for the assigned applications, functional areas, or projects&nbsp;</li><li>Ensure the quality of the product with collaboration from team members&nbsp;</li><li>Contribute to defining R&amp;D techniques including setting up proof of concepts&nbsp;</li><li>Develop and amend code as documented in the design; ensure it meets the specification, follows standards, is performant and is maintainable</li><li>Respond efficiently to address issues to minimize business disruption when production problems occurred</li></ul>', N'<p>If you can do everything listed above, you&rsquo;ve got what it takes. Perhaps some of the following would be helpful too:&nbsp;</p><ul><li>B.S. Degree in Information Technology/Computer Science or equivalent&nbsp;</li><li>&nbsp;At least 2 years of hands-on experience in Software Development, especially developing largescale and complex business systems&nbsp;</li><li>Good English communication skills (both verbal and non-verbal)</li><li>Hands-on experience in using Java technologies; and building API for modern web applications.</li><li>Experience in Spring stack(Spring Core, Spring Boot, Spring Data, Spring Security) &bull; Good knowledge of OOP</li><li>Experience in Hybris is a plus</li><li>Be familiar with using non-relational database design (MongoDB, Redis)</li><li>Possess an interest in new development opportunities and be eager to explore new technologies</li><li>Flexibility to adapt to changing instructions and requirements with a high sense of commitment&nbsp;</li><li>Ability to work independently as well as be proactive result-oriented team player&nbsp;</li><li>Strong communication skills to effectively collaborate with other developers, and relevant partners</li></ul>', N'<ol><li><strong>Attractive salar</strong>y with&nbsp;<strong>100%</strong>&nbsp;salary during&nbsp;<strong>probation</strong></li><li><strong>13th-month</strong>&nbsp;salary,&nbsp;<strong>Performance bonus (1,5-2 months salary)</strong>, Salary review annually</li><li>Premium&nbsp;<strong>health care</strong>&nbsp;program for&nbsp;<strong>employees&nbsp;</strong>+&nbsp;<strong>one&nbsp;</strong>of your beloved ones, Annual medical check-up</li><li><strong>15&nbsp;</strong>vacation days per year</li><li>Opportunity to be&nbsp;<strong>on-site in the USA</strong></li><li>Chance to collaborate and&nbsp;<strong>work with global stakeholders</strong></li><li>Provide training to develop our employee&lsquo;s knowledge and skills (<strong>Internal training</strong>: Udemy, Pluralsight, and another online training course, TechTalk sharing within Software Development Division;&nbsp;<strong>External training</strong>: Management, English, Soft Skills, &hellip;.)</li><li><strong>Benefits for special holidays</strong>&nbsp;(Birthday, Marriage, Women&rsquo;s Day, Tet Holidays, Mid-Autumn, Newborn babies, International Children&lsquo;s Day&hellip;)</li><li>Company trip and Year-End party every year</li><li>Social, sports and several team building activities</li><li>Young, friendly and international working environment</li><li>Modern working conditions and entertainment facilities at the office</li><li>Snacks, tea and coffee all the time</li><li>Compliance fully to Vietnam Labor code</li></ol>', N'TP.HCM', 10, CAST(N'2022-07-21' AS Date), CAST(N'2022-07-28' AS Date), 0, 3, N'FPT001', 1, N'Java Developer')
SET IDENTITY_INSERT [dbo].[tblCompany_Post] OFF
GO
INSERT [dbo].[tblFollowing_Post] ([studentCode], [postID]) VALUES (N'SE151170', 415)
GO
SET IDENTITY_INSERT [dbo].[tblMajor] ON 

INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (1, N'Kỹ thuật phần mềm', 1)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (3, N'Trí tuệ nhân tạo', 1)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (4, N'Hệ thống thông tin', 1)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (5, N'An toàn thông tin', 1)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (6, N'Thiết kế mỹ thuật số', 1)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (7, N'Digital marketing', 2)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (8, N'Kinh doanh quốc tế', 2)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (9, N'Quản trị khách sạn', 2)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (10, N'Quản trị dịch vụ du lịch và lữ hành', 2)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (11, N'Quản trị truyền thông đa phương tiện', 2)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (12, N'Ngôn ngữ anh', 3)
INSERT [dbo].[tblMajor] ([majorID], [majorName], [categoryID]) VALUES (13, N'Ngôn ngữ nhật', 3)
SET IDENTITY_INSERT [dbo].[tblMajor] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSemester] ON 

INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [startDate], [endDate]) VALUES (1, N'Spring 2022', CAST(N'2021-12-31' AS Date), CAST(N'2022-04-30' AS Date))
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [startDate], [endDate]) VALUES (2, N'Summer 2022', CAST(N'2022-04-30' AS Date), CAST(N'2022-08-31' AS Date))
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [startDate], [endDate]) VALUES (3, N'Fall 2021', CAST(N'2021-08-31' AS Date), CAST(N'2021-12-31' AS Date))
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [startDate], [endDate]) VALUES (4, N'Summer 2021', CAST(N'2021-04-30' AS Date), CAST(N'2021-08-31' AS Date))
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [startDate], [endDate]) VALUES (5, N'Spring 2021', CAST(N'2020-12-31' AS Date), CAST(N'2021-04-30' AS Date))
SET IDENTITY_INSERT [dbo].[tblSemester] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSemester_Student] ON 

INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (3, 3, N'HE150001')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (12, 3, N'SE130243')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (13, 4, N'SE140645')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (14, 5, N'SE150063')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (15, 3, N'SE150683')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (16, 3, N'SE150800')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (17, 4, N'SE150807')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (18, 4, N'SE150819')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (19, 4, N'SE151212')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (20, 4, N'SE151306')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (21, 1, N'SE151333')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (22, 1, N'SE151375')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (23, 1, N'SE151391')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (30, 5, N'SE151396')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (31, 3, N'SE151400')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (32, 5, N'SE160542')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (33, 3, N'SE130240')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (34, 3, N'SE140079')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (35, 1, N'SE140277')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (36, 4, N'SE130636')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (37, 4, N'SS150008')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (38, 5, N'SS150067')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (39, 1, N'SS150173')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (40, 1, N'SS150308')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (41, 1, N'SS150333')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (42, 5, N'SS150341')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (43, 1, N'SS150343')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (44, 5, N'SS150375')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (45, 3, N'SS150398')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (46, 4, N'HE169016')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (47, 3, N'SE150666')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (48, 4, N'SE150752')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (49, 4, N'SE151183')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (50, 4, N'SE160041')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (51, 5, N'SE160054')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (52, 3, N'SE160069')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (53, 1, N'SE160168')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (54, 3, N'SE160187')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (55, 4, N'SE160243')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (56, 1, N'SE160332')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (57, 4, N'SE160426')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (58, 5, N'SE160428')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (59, 5, N'SE160434')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (60, 3, N'SE160449')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (61, 1, N'SE160491')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (62, 3, N'SE160531')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (63, 5, N'SE160554')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (64, 5, N'SE160885')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (65, 5, N'SE160891')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (66, 5, N'SE160931')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (67, 1, N'SE160972')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (68, 1, N'SE161005')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (69, 3, N'SE161034')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (70, 3, N'SE161036')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (71, 3, N'SE161058')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (72, 3, N'SE161077')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (81, 4, N'SS150341')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (82, 4, N'SE160054')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (83, 4, N'SE160434')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (84, 4, N'SE160891')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (85, 3, N'SE151212')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (86, 3, N'SE150752')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (87, 3, N'SE160243')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (88, 1, N'SE151400')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (89, 1, N'SE160449')
INSERT [dbo].[tblSemester_Student] ([recordSemesterID], [semesterID], [studentCode]) VALUES (93, 2, N'SE151170')
SET IDENTITY_INSERT [dbo].[tblSemester_Student] OFF
GO
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'HE150001', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 0, N'0944188898', 2, 69, N'Thiết kế đồ họa', N'vantthe150001@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'HE169016', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 0, N'0934584821', 2, 69, N'Trí tuệ nhân tạo', N'anhpvhe169016@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE130240', CAST(N'1999-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0988653515', 2, 69, N'Kỹ thuật phần mềm', N'phongltse130240@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE130243', CAST(N'1999-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0938102009', 2, 69, N'Kỹ thuật phần mềm', N'minhnhse130243@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE130636', CAST(N'1999-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0906053245', 2, 69, N'Quản trị khách sạn', N'haitrpse130636@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE140079', CAST(N'2000-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0935165351', 2, 69, N'Kỹ thuật phần mềm', N'thanhnvse140079@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE140277', CAST(N'2000-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0906651515', 2, 69, N'Kỹ thuật phần mềm', N'tumntse140277@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE140645', CAST(N'2000-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0938102006', 2, 69, N'Kỹ thuật phần mềm', N'anhnpqse140645@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150063', CAST(N'2001-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0938100069', 2, 69, N'Kỹ thuật phần mềm', N'dacntse150063@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150666', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 0, N'0364854815', 2, 69, N'Trí tuệ nhân tạo', N'chihlse150666@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150683', CAST(N'2001-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0909606464', 2, 69, N'Kỹ thuật phần mềm', N'dainxse150683@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150752', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0364884687', 2, 69, N'Trí tuệ nhân tạo', N'hainnse150752@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150800', CAST(N'2001-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0306050507', 2, 69, N'Kỹ thuật phần mềm', N'huunlse150800@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150807', CAST(N'2001-07-08' AS Date), N'Tổ 1, khu phố 4, thị trấn Chơn Thành, huyện Chơn Thành, tỉnh Bình Phước', 1, N'0905076468', 2, 69, N'Kỹ thuật phần mềm', N'huynnse150807@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE150819', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0795942664', 2, 69, N'Kỹ thuật phần mềm', N'huybnse150819@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151170', CAST(N'2001-07-06' AS Date), N'67/1 Phạm Văn Hai', 1, N'0779935090', 2, 79, N'Kỹ thuật phần mềm', N'tymtse151170@fpt.edu.vn', 0)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151183', CAST(N'2001-07-08' AS Date), N'Tổ 1, khu phố 4, thị trấn Chơn Thành, huyện Chơn Thành, tỉnh Bình Phước', 1, N'0354821854', 2, 69, N'Trí tuệ nhân tạo', N'vuphse151183@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151212', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0795943651', 2, 69, N'Kỹ thuật phần mềm', N'kienpxse151212@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151306', CAST(N'2001-07-08' AS Date), N'Tổ 1, khu phố 4, thị trấn Chơn Thành, huyện Chơn Thành, tỉnh Bình Phước', 1, N'0946151514', 2, 69, N'Kỹ thuật phần mềm', N'tronghttse151306@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151333', CAST(N'2001-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0906050403', 2, 69, N'Kỹ thuật phần mềm', N'baonqse151333@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151375', CAST(N'2001-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0304050967', 2, 69, N'Kỹ thuật phần mềm', N'trietdpmse151375@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151391', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0965157895', 2, 69, N'Kỹ thuật phần mềm', N'phathtse151391@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151396', CAST(N'2001-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0965483215', 2, 69, N'Kỹ thuật phần mềm', N'anhdpse151396@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE151400', CAST(N'2001-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0796351546', 2, 69, N'Kỹ thuật phần mềm', N'khaphpse151400@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160041', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0785541254', 2, 69, N'Trí tuệ nhân tạo', N'minhnhse160041@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160054', CAST(N'2002-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0798565154', 2, 69, N'Trí tuệ nhân tạo', N'truonglpmse160054@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160069', CAST(N'2002-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0365958451', 2, 69, N'Trí tuệ nhân tạo', N'tralvse160069@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160168', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0364584518', 2, 69, N'Trí tuệ nhân tạo', N'dongpdse160168@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160187', CAST(N'2002-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0354854875', 2, 69, N'Trí tuệ nhân tạo', N'datdtse160187@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160243', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0945851875', 2, 69, N'Trí tuệ nhân tạo', N'lamdnse160243@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160332', CAST(N'2002-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0944548421', 2, 69, N'Trí tuệ nhân tạo', N'huyvqse160332@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160426', CAST(N'2002-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0964542141', 2, 69, N'Trí tuệ nhân tạo', N'baonpgse160426@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160428', CAST(N'2002-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0365945487', 2, 69, N'Trí tuệ nhân tạo', N'truyenmvkse160428@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160434', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0934548785', 2, 69, N'Trí tuệ nhân tạo', N'phuongbthse160434@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160449', CAST(N'2002-07-08' AS Date), N'Quận 3, TP.HCM', 1, N'0931452154', 2, 69, N'Trí tuệ nhân tạo', N'thongndse160449@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160491', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0394454875', 2, 69, N'Trí tuệ nhân tạo', N'datlnse160491@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160531', CAST(N'2002-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0963482187', 2, 69, N'Trí tuệ nhân tạo', N'trangvvse160531@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160542', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0779653245', 2, 69, N'Kỹ thuật phần mềm', N'thienpvtse160542@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160554', CAST(N'2002-07-08' AS Date), N'Quận 4, TP.HCM', 1, N'0364978458', 2, 69, N'Trí tuệ nhân tạo', N'trinhtnse160554@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160885', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0765956875', 2, 69, N'Trí tuệ nhân tạo', N'khattse160885@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160891', CAST(N'2002-07-08' AS Date), N'Quận 4, TP.HCM', 1, N'0364854854', 2, 69, N'Trí tuệ nhân tạo', N'anhpnhse160891@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160931', CAST(N'2002-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0915415485', 2, 69, N'Trí tuệ nhân tạo', N'trongndse160931@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE160972', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0394887547', 2, 69, N'Trí tuệ nhân tạo', N'thanhtxse160972@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE161005', CAST(N'2002-07-08' AS Date), N'Quận 4, TP.HCM', 1, N'0908875457', 2, 69, N'Trí tuệ nhân tạo', N'thanhbdse161005@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE161034', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0398215455', 2, 69, N'Trí tuệ nhân tạo', N'nhathlmse161034@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE161036', CAST(N'2002-07-08' AS Date), N'Quận 4, TP.HCM', 1, N'0906494514', 2, 69, N'Trí tuệ nhân tạo', N'phittse161036@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE161058', CAST(N'2002-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0904214218', 2, 69, N'Trí tuệ nhân tạo', N'phithse161058@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SE161077', CAST(N'2002-07-08' AS Date), N'Quận Tân Bình, TP.HCM', 1, N'0956345218', 2, 69, N'Trí tuệ nhân tạo', N'lamhtse161077@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150008', CAST(N'2001-07-08' AS Date), N'Quận 4, TP.HCM', 0, N'0332659848', 2, 69, N'Quản trị khách sạn', N'ngocnhss150008@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150067', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 0, N'0354848454', 2, 69, N'Quản trị khách sạn', N'thublmss150067@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150173', CAST(N'2001-07-08' AS Date), N'Quận 4, TP.HCM', 1, N'0345875481', 2, 69, N'Quản trị khách sạn', N'thanhnvss150713@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150308', CAST(N'2001-07-08' AS Date), N'Quận 4, TP.HCM', 0, N'0345858751', 2, 69, N'Quản trị khách sạn', N'anhdlpss150308@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150333', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 0, N'0352154210', 2, 69, N'Quản trị khách sạn', N'giangpvhss150333@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150341', CAST(N'2001-07-08' AS Date), N'Quận 4, TP.HCM', 0, N'0315158754', 2, 69, N'Quản trị khách sạn', N'thuplhss150341@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150343', CAST(N'2001-07-08' AS Date), N'Quận 3, TP.HCM', 0, N'0365945214', 2, 69, N'Quản trị khách sạn', N'trangcttss150343@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150375', CAST(N'2001-07-08' AS Date), N'Quận 9, TP.HCM', 1, N'0348455485', 2, 69, N'Quản trị khách sạn', N'ducntss150375@fpt.edu.vn', 1)
INSERT [dbo].[tblStudent] ([studentCode], [birthDay], [address], [gender], [phone], [is_Intern], [numberOfCredit], [major], [username], [is_Disabled]) VALUES (N'SS150398', CAST(N'2001-07-08' AS Date), N'Quận 3, TP.HCM', 0, N'0965485487', 2, 69, N'Kinh doanh quốc tế', N'thupmss150398@fpt.edu.vn', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Username_Company]    Script Date: 7/30/2022 1:43:47 AM ******/
ALTER TABLE [dbo].[tblCompany] ADD  CONSTRAINT [Unique_Username_Company] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Username]    Script Date: 7/30/2022 1:43:47 AM ******/
ALTER TABLE [dbo].[tblStudent] ADD  CONSTRAINT [Unique_Username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblApplication] ADD  CONSTRAINT [DF__tblApplic__schoo__5CD6CB2B]  DEFAULT ((1)) FOR [school_Confirm]
GO
ALTER TABLE [dbo].[tblApplication] ADD  CONSTRAINT [DF__tblApplic__compa__5DCAEF64]  DEFAULT ((0)) FOR [company_Confirm]
GO
ALTER TABLE [dbo].[tblStudent] ADD  DEFAULT ((0)) FOR [is_Disabled]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_Application_Semester] FOREIGN KEY([semesterID])
REFERENCES [dbo].[tblSemester] ([semesterID])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_Application_Semester]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_Post_Application] FOREIGN KEY([postID])
REFERENCES [dbo].[tblCompany_Post] ([postID])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_Post_Application]
GO
ALTER TABLE [dbo].[tblApplication]  WITH CHECK ADD  CONSTRAINT [FK_Student_Application] FOREIGN KEY([studentCode])
REFERENCES [dbo].[tblStudent] ([studentCode])
GO
ALTER TABLE [dbo].[tblApplication] CHECK CONSTRAINT [FK_Student_Application]
GO
ALTER TABLE [dbo].[tblCompany]  WITH CHECK ADD  CONSTRAINT [FK_Company_Account] FOREIGN KEY([username])
REFERENCES [dbo].[tblAccount] ([username])
GO
ALTER TABLE [dbo].[tblCompany] CHECK CONSTRAINT [FK_Company_Account]
GO
ALTER TABLE [dbo].[tblCompany_Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Company] FOREIGN KEY([companyID])
REFERENCES [dbo].[tblCompany] ([companyID])
GO
ALTER TABLE [dbo].[tblCompany_Post] CHECK CONSTRAINT [FK_Post_Company]
GO
ALTER TABLE [dbo].[tblCompany_Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Major] FOREIGN KEY([majorID])
REFERENCES [dbo].[tblMajor] ([majorID])
GO
ALTER TABLE [dbo].[tblCompany_Post] CHECK CONSTRAINT [FK_Post_Major]
GO
ALTER TABLE [dbo].[tblFollowing_Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_FollowingPost] FOREIGN KEY([postID])
REFERENCES [dbo].[tblCompany_Post] ([postID])
GO
ALTER TABLE [dbo].[tblFollowing_Post] CHECK CONSTRAINT [FK_Post_FollowingPost]
GO
ALTER TABLE [dbo].[tblFollowing_Post]  WITH CHECK ADD  CONSTRAINT [FK_Student_FollowingPost] FOREIGN KEY([studentCode])
REFERENCES [dbo].[tblStudent] ([studentCode])
GO
ALTER TABLE [dbo].[tblFollowing_Post] CHECK CONSTRAINT [FK_Student_FollowingPost]
GO
ALTER TABLE [dbo].[tblMajor]  WITH CHECK ADD  CONSTRAINT [FK_Major_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblMajor] CHECK CONSTRAINT [FK_Major_Category]
GO
ALTER TABLE [dbo].[tblSemester_Student]  WITH CHECK ADD  CONSTRAINT [FK_Record_Semester_Student] FOREIGN KEY([semesterID])
REFERENCES [dbo].[tblSemester] ([semesterID])
GO
ALTER TABLE [dbo].[tblSemester_Student] CHECK CONSTRAINT [FK_Record_Semester_Student]
GO
ALTER TABLE [dbo].[tblSemester_Student]  WITH CHECK ADD  CONSTRAINT [FK_Record_Student_Semester] FOREIGN KEY([studentCode])
REFERENCES [dbo].[tblStudent] ([studentCode])
GO
ALTER TABLE [dbo].[tblSemester_Student] CHECK CONSTRAINT [FK_Record_Student_Semester]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([username])
REFERENCES [dbo].[tblAccount] ([username])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_Student_Account]
GO
