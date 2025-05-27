CREATE DATABASE QLSHOPGIAY

USE [QLSHOPGIAY]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaRole] [bit] NOT NULL,
	[TenAdmin] [nvarchar](100) NOT NULL,
	[TaiKhoanAdmin] [nvarchar](100) NOT NULL,
	[MatKhauAdmin] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoanAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDH]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDH](
	[MaDH] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[MaSize] [int] NOT NULL,
	[SLMua] [int] NOT NULL,
	[GiaMua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDM] [varchar](50) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
	[DanhMucCha] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [varchar](50) NOT NULL,
	[MaKH] [varchar](50) NOT NULL,
	[TongTien] [decimal](18, 2) NULL,
	[NgayMua] [datetime] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[ThanhToan] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaKH] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[MaSize] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaKH] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](50) NOT NULL,
	[MaRole] [bit] NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[MatKhauKH] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[Gmail] [nvarchar](100) NOT NULL,
	[ResetCode] [varchar](100) NULL,
	[ResetCodeSentTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[MaRole] [bit] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [varchar](50) NOT NULL,
	[MaDM] [varchar](50) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[AnhMinhHoa] [nvarchar](255) NULL,
	[MauSP] [nvarchar](100) NULL,
	[GiaSP] [int] NOT NULL,
	[ThuongHieu] [nvarchar](100) NOT NULL,
	[ChatLieu] [nvarchar](100) NOT NULL,
	[KieuDang] [nvarchar](100) NOT NULL,
	[MuaPhongCach] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE](
    [MaSize] [int] NOT NULL,
    [TenSize] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
    [MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSIZE]    Script Date: 4/16/2025 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSIZE](
    [MaSP] [varchar](50) NOT NULL,
    [MaSize] [int] NOT NULL,
    [SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
    [MaSP] ASC,
    [MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Khóa ngoại
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD FOREIGN KEY([MaRole])
REFERENCES [dbo].[ROLE] ([MaRole])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDH]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZE] ([MaSize])
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZE] ([MaSize])
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD FOREIGN KEY([MaRole])
REFERENCES [dbo].[ROLE] ([MaRole])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DANHMUC] ([MaDM])
GO
ALTER TABLE [dbo].[CHITIETSIZE]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETSIZE]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZE] ([MaSize])
GO

-- Các giá trị mặc định
ALTER TABLE [dbo].[DANHMUC] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[KHACHHANG] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO

-- Tạo trigger INSTEAD OF INSERT để sinh mã Danh Mục tự động
CREATE TRIGGER trg_generate_MaDM
ON DANHMUC
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @newMaDM VARCHAR(50);
    DECLARE @maxMaDM INT;

    -- Tìm giá trị MaDM lớn nhất trong bảng DANHMUC (lấy số sau "DM")
    SELECT @maxMaDM = MAX(CAST(SUBSTRING(MaDM, 3, LEN(MaDM) - 2) AS INT)) 
    FROM DANHMUC
    WHERE MaDM LIKE 'DM%';
    
    -- Nếu không có giá trị nào trong bảng, khởi tạo maxMaDM là 0
    IF @maxMaDM IS NULL
    BEGIN
        SET @maxMaDM = 0;
    END

    -- Tạo MaDM mới, cộng 1 với maxMaDM và thêm tiền tố 'DM'
    SET @newMaDM = 'DM' + RIGHT('000' + CAST(@maxMaDM + 1 AS VARCHAR(3)), 3);
    
    -- Insert dòng mới vào bảng với MaDM được sinh tự động
    INSERT INTO DANHMUC (MaDM, TenDM, DanhMucCha)
    SELECT @newMaDM, TenDM, DanhMucCha
    FROM INSERTED;
END;
GO 

-- TRIGGER MASP
CREATE TRIGGER trg_generate_MaSP
ON SANPHAM
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @newMaSP VARCHAR(50);
    DECLARE @maxMaSP INT;

    -- Tìm giá trị MaSP lớn nhất trong bảng SANPHAM (lấy số sau "SP")
    SELECT @maxMaSP = MAX(CAST(SUBSTRING(MaSP, 3, LEN(MaSP) - 2) AS INT)) 
    FROM SANPHAM
    WHERE MaSP LIKE 'SP%';
    
    -- Nếu không có giá trị nào trong bảng, khởi tạo maxMaSP là 0
    IF @maxMaSP IS NULL
    BEGIN
        SET @maxMaSP = 0;
    END

    -- Tạo MaSP mới, cộng 1 với maxMaSP và thêm tiền tố 'SP'
    SET @newMaSP = 'SP' + RIGHT('000' + CAST(@maxMaSP + 1 AS VARCHAR(3)), 3);
    
    -- Insert dòng mới vào bảng với MaSP được sinh tự động
    INSERT INTO SANPHAM([MaSP] ,[MaDM], [TenSP], [Mota],[AnhMinhHoa],[MauSP],[GiaSP],
                        [ThuongHieu],[ChatLieu],[KieuDang])
    SELECT @newMaSP ,[MaDM], [TenSP], [Mota],[AnhMinhHoa],[MauSP],[GiaSP],
           [ThuongHieu],[ChatLieu],[KieuDang]
    FROM INSERTED;
END;
GO 

-- TRIGGER MAKH
CREATE TRIGGER trg_generate_MaKH
ON KHACHHANG
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @newMaKH VARCHAR(50);
    DECLARE @maxMaKH INT;

    -- Tìm giá trị MaKH lớn nhất trong bảng KHACHHANG (lấy số sau "KH")
    SELECT @maxMaKH = MAX(CAST(SUBSTRING(MaKH, 3, LEN(MaKH) - 2) AS INT)) 
    FROM KHACHHANG
    WHERE MaKH LIKE 'KH%';
    
    -- Nếu không có giá trị nào trong bảng, khởi tạo maxMaKH là 0
    IF @maxMaKH IS NULL
    BEGIN
        SET @maxMaKH = 0;
    END

    -- Tạo MaKH mới, cộng 1 với maxMaKH và thêm tiền tố 'KH'
    SET @newMaKH = 'KH' + RIGHT('000' + CAST(@maxMaKH + 1 AS VARCHAR(3)), 3);
    
    -- Insert dòng mới vào bảng với MaKH được sinh tự động
    INSERT INTO KHACHHANG([MaKH],[MaRole],[TenKH],[MatKhauKH],[DiaChi],[SDT],[Gmail])
    SELECT @newMaKH,[MaRole],[TenKH],[MatKhauKH],[DiaChi],[SDT],[Gmail]
    FROM INSERTED;
END;
GO 

-- TRIGGER TAIKHOANADMIN
CREATE TRIGGER trg_generate_TaiKhoanAdmin
ON ADMIN
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @newTaiKhoanAdmin VARCHAR(50);
    DECLARE @maxTaiKhoanAdmin INT;

    -- Tìm giá trị TaiKhoanAdmin lớn nhất trong bảng ADMIN (lấy số sau "TK")
    SELECT @maxTaiKhoanAdmin = MAX(CAST(SUBSTRING(TaiKhoanAdmin, 3, LEN(TaiKhoanAdmin) - 2) AS INT))
    FROM ADMIN
    WHERE TaiKhoanAdmin LIKE 'TK%';
    
    -- Nếu không có giá trị nào trong bảng, khởi tạo maxTaiKhoanAdmin là 0
    IF @maxTaiKhoanAdmin IS NULL
    BEGIN
        SET @maxTaiKhoanAdmin = 0;
    END

    -- Tạo TaiKhoanAdmin mới, cộng 1 với maxTaiKhoanAdmin và thêm tiền tố 'TK'
    SET @newTaiKhoanAdmin = 'TK' + RIGHT('000' + CAST(@maxTaiKhoanAdmin + 1 AS VARCHAR(3)), 3);
    
    -- Insert dòng mới vào bảng với TaiKhoanAdmin được sinh tự động
    INSERT INTO ADMIN (MaRole, TenAdmin, TaiKhoanAdmin, MatKhauAdmin)
    SELECT MaRole, TenAdmin, @newTaiKhoanAdmin, MatKhauAdmin
    FROM INSERTED;
END;
GO

-- Thêm dữ liệu mẫu vào bảng SIZE
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (36, '36')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (37, '37')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (38, '38')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (39, '39')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (40, '40')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (41, '41')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (42, '42')
INSERT INTO [dbo].[SIZE] ([MaSize], [TenSize]) VALUES (43, '43')
GO

-- Thêm dữ liệu mẫu vào bảng ROLE
INSERT [dbo].[ROLE] ([MaRole], [RoleName]) VALUES (0, N'Admin')
INSERT [dbo].[ROLE] ([MaRole], [RoleName]) VALUES (1, N'Khách hàng')
GO

-- Thêm dữ liệu mẫu vào bảng ADMIN
INSERT [dbo].[ADMIN] ([MaRole], [TenAdmin], [TaiKhoanAdmin], [MatKhauAdmin]) VALUES (0, N'Admin Shop Giày', N'TK001', N'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=')
GO
INSERT [dbo].[ADMIN] ([MaRole], [TenAdmin], [TaiKhoanAdmin], [MatKhauAdmin]) VALUES (0, N'Nguyễn Yến', N'TK002', N'08032004')
GO


-- Thêm dữ liệu mẫu vào bảng DANHMUC (danh mục cha)
-- Thêm dữ liệu mẫu vào bảng DANHMUC (danh mục cha)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Nike', N'Hãng', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Adidas', N'Hãng', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Puma', N'Hãng', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Giày thể thao', N'Nhu cầu', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Giày đi bộ', N'Nhu cầu', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Giày chạy bộ', N'Nhu cầu', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Dưới 1 triệu', N'Giá', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Từ 1-3 triệu', N'Giá', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Trên 3 triệu', N'Giá', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Nam', N'Giới tính', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Nữ', N'Giới tính', 0)
INSERT INTO [dbo].[DANHMUC] ([TenDM], [DanhMucCha], [IsDeleted]) VALUES (N'Unisex', N'Giới tính', 0)
GO


-- Thêm dữ liệu mẫu vào bảng KHACHHANG
INSERT INTO [dbo].[KHACHHANG] ([MaRole], [TenKH], [MatKhauKH], [DiaChi], [SDT], [Gmail]) 
VALUES (1, N'Ngọc Ánh', N'1', N'Hà Nội', N'0123456789', N'Ngocanh@gmail.com'),
VALUES (1, N'Ngọc Ánh', N'1', N'Hà Nội', N'0865846389', N'Ngocanh@gmail.com')
GO

-- Thêm dữ liệu mẫu vào bảng SANPHAM
INSERT INTO [dbo].[SANPHAM] ([MaDM], [TenSP], [Mota], [AnhMinhHoa], [MauSP], [GiaSP], 
                             [ThuongHieu], [ChatLieu], [KieuDang], [MuaPhongCach], [GioiTinh]) 
VALUES (N'DM001', N'Nike Air Max 270', N'Giày Nike Air Max 270 có đệm khí độc quyền của Nike, mang lại cảm giác thoải mái nhất khi di chuyển', 
       N'/Images/nike-air-max-270.jpg', N'Đen', 2500000, N'Nike', N'Vải lưới, Cao su', N'Thể thao', N'Mùa Hè', N'Nam')
GO

-- Thêm dữ liệu mẫu vào bảng CHITIETSIZE (số lượng tồn kho theo size)
INSERT INTO [dbo].[CHITIETSIZE] ([MaSP], [MaSize], [SoLuong]) VALUES (N'SP001', 38, 5)
INSERT INTO [dbo].[CHITIETSIZE] ([MaSP], [MaSize], [SoLuong]) VALUES (N'SP001', 39, 10)
INSERT INTO [dbo].[CHITIETSIZE] ([MaSP], [MaSize], [SoLuong]) VALUES (N'SP001', 40, 8)
INSERT INTO [dbo].[CHITIETSIZE] ([MaSP], [MaSize], [SoLuong]) VALUES (N'SP001', 41, 7)
INSERT INTO [dbo].[CHITIETSIZE] ([MaSP], [MaSize], [SoLuong]) VALUES (N'SP001', 42, 6)
GO