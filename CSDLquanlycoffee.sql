Use master
Go

--Drop Database QLCHUOICOFFEE
--Create Database QLCHUOICOFFEE

Use QLCHUOICOFFEE

-- Drop table CuaHang
Create Table CuaHang
(
IDCuaHang int identity(1,1) not null constraint [IDCuaHang] primary key ,
DiaChiCH nvarchar(500),
SoLuongNV int,
SDTCuaHang char(10),
TrangThai bit
)

SET IDENTITY_INSERT CuaHang ON
Insert into CuaHang(IDCuaHang,DiaChiCH,SoLuongNV,SDTCuaHang,TrangThai) values (1,N'71 Hoàng Văn Thái, Tân Phú, Quận 7, Thành phố Hồ Chí Minh',0,'0901605176',1)
Insert into CuaHang(IDCuaHang,DiaChiCH,SoLuongNV,SDTCuaHang,TrangThai) values (2,N'17 Út tịch, Q. Tân Bình, Hồ Chí Minh, Thành phố Hồ Chí Minh',0,'0901605176',1)
Insert into CuaHang(IDCuaHang,DiaChiCH,SoLuongNV,SDTCuaHang,TrangThai) values (3,N'TTTM Crescent Mall, 101 Tôn Dật Tiên, Phường Tân Phú, Quận 7, Thành phố Hồ Chí Minh',0,'0901605176',1)
Insert into CuaHang(IDCuaHang,DiaChiCH,SoLuongNV,SDTCuaHang,TrangThai) values (4,N'64A Lữ Gia, Phường 15, Quận 11, Hồ Chí Minh',0,'0901605176',1)
Insert into CuaHang(IDCuaHang,DiaChiCH,SoLuongNV,SDTCuaHang,TrangThai) values (5,N'4 - 6 Ấp Bắc, Q. Tân Bình, Hồ Chí Minh',0,'0901605176',1)
SET IDENTITY_INSERT CuaHang OFF

-- Drop table NhanVien
Create Table NhanVien
(
IDNhanVien int identity(1,1) not null primary key clustered (IDNhanVien asc),
IDCuaHang int,
TenNV nvarchar(100) null,
NgaySinh date null,
DiaChiNV nvarchar(100),
NgayLam date null,
TrangThai bit null,
Luong int null,
)

SET IDENTITY_INSERT NhanVien ON
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (1,1,N'Phan Trí Nghĩa','2002-05-30',N'Tp.Thuận An, Bình Dương','2023-10-20',1,5000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (2,1,N'Hồ Hoàng Nam','2002-10-09',N'huyện Mang Thít, Vĩnh Long','2023-10-20',1,4000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (3,2,N'Lê Phong','2002-12-24',N'Q.Bình Thạnh, Tp.Hồ Chí Minh','2023-10-20',1,4000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (4,3,N'Lê Quốc Bằng','2002-06-21',N'huyện Củ Chi, Tp.Hồ Chí Minh','2023-10-20',1,4000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (5,4,N'Đoàn Thanh Thiên Nga','2002-12-27',N'Tp.Buôn Ma Thuột, Đắk Lắk','2023-10-20',1,4000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (6,5,N'Phan Lại Hào','2002-11-17',N'Q.11, Tp.Hồ Chí Minh','2023-10-20',1,4000000)
Insert into NhanVien(IDNhanVien,IDCuaHang,TenNV,NgaySinh,DiaChiNV,NgayLam,TrangThai,Luong) values (7,5,N'Nguyễn Anh Hào','2002-01-07',N'Tp.Tân Uyên, Bình Dương','2023-10-20',1,4000000)
SET IDENTITY_INSERT NhanVien OFF

Create Table LoaiSP 
(
IDLoaiSP int identity(1,1) not null Constraint [IDLoaiSP] Primary Key,
TenLSP nvarchar(100) null,
Alias varchar(100)
)

Set identity_insert LoaiSP On
Insert into LoaiSP(IDLoaiSP, TenLSP,Alias) values (1,N'Cà Phê','caphe');
Insert into LoaiSP(IDLoaiSP, TenLSP,Alias) values (2,N'Trà','tra');
Insert into LoaiSP(IDLoaiSP, TenLSP,Alias) values (3,N'Đá Xay','daxay');
Set identity_insert LoaiSP Off
-------------------------------------
--drop table SanPham
Create Table SanPham
(
IDSanPham int identity(1,1) not null Constraint [IDSanPham] Primary Key,
IDLoaiSP int not null,
IDCuaHang int not null,
TenSP nvarchar(500) null,
HinhAnhSP varchar(500) null,
GiaBan int null,
Mota nvarchar(Max),
TrangThai bit
)

SET IDENTITY_INSERT SanPham ON
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (1,1,1,N'Đường đen sữa đá',N'/Uploads/images/duongdensuada.jpg',45000,N'Nếu chuộng vị cà phê đậm đà, bùng nổ và thích vị đường đen ngọt thơm, Đường Đen Sữa Đá đích thị là thức uống dành cho bạn. Không chỉ giúp bạn tỉnh táo buổi sáng, Đường Đen Sữa Đá còn hấp dẫn đến ngụm cuối cùng bởi thạch cà phê giòn dai, nhai cực cuốn. - Khuấy đều trước khi sử dụng',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (2,1,1,N'Bạc sỉu',N'/Uploads/images/bacsiu.png',29000,N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (3,1,1,N'Cà phê sữa nóng',N'/Uploads/images/caphesuanong.png',39000,N'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (4,1,1,N'Bạc sỉu nóng',N'/Uploads/images/bacsiunong.png',39000,N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (5,1,1,N'Cà phê đen đá',N'/Uploads/images/capheden.jpg',29000,N'Không Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (6,1,1,N'Cà phê sữa chai 250ML',N'/Uploads/images/caphesuachai.png',75000,N'Vẫn là hương vị cà phê sữa đậm đà quen thuộc của The Coffee House nhưng khoác lên mình một chiếc áo mới tiện lợi hơn, tiết kiệm hơn phù hợp với bình thường mới, giúp bạn tận hưởng một ngày dài trọn vẹn. *Sản phẩm dùng ngon nhất trong ngày. *Sản phẩm mặc định mức đường và không đá.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (7,1,1,N'Latte đá',N'/Uploads/images/latteda.png',55000,N'Vẫn là hương vị cà phê sữa đậm đà quen thuộc của The Coffee House nhưng khoác lên mình một chiếc áo mới tiện lợi hơn, tiết kiệm hơn phù hợp với bình thường mới, giúp bạn tận hưởng một ngày dài trọn vẹn. *Sản phẩm dùng ngon nhất trong ngày. *Sản phẩm mặc định mức đường và không đá.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (8,1,2,N'Latte nóng',N'/Uploads/images/lattenong.png',55000,N'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (9,1,2,N'Americano Đá',N'/Uploads/images/americanoda.png',55000,N'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (10,1,2,N'Americano Nóng',N'/Uploads/images/americanonong.png',55000,N'Americano được pha chế bằng cách pha thêm nước với tỷ lệ nhất định vào tách cà phê Espresso, từ đó mang lại hương vị nhẹ nhàng và giữ trọn được mùi hương cà phê đặc trưng.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (11,1,2,N'Cappuccino Đá',N'/Uploads/images/cappuccinoda.png',55000,N'Capuchino là thức uống hòa quyện giữa hương thơm của sữa, vị béo của bọt kem cùng vị đậm đà từ cà phê Espresso. Tất cả tạo nên một hương vị đặc biệt, một chút nhẹ nhàng, trầm lắng và tinh tế.',1)
Insert into SanPham(IDSanPham,IDLoaiSP,IDCuaHang,TenSP,HinhAnhSP,GiaBan,Mota,TrangThai) values (12,1,2,N'Cappuccino Nóng',N'/Uploads/images/cappuccinonong.png',55000,N'Capuchino là thức uống hòa quyện giữa hương thơm của sữa, vị béo của bọt kem cùng vị đậm đà từ cà phê Espresso. Tất cả tạo nên một hương vị đặc biệt, một chút nhẹ nhàng, trầm lắng và tinh tế.',1)
SET IDENTITY_INSERT SanPham OFF

-- drop table Comment
Create Table Comment(
IDComment int identity(1,1) not null Constraint [IDComment] Primary key,
IDSanPham int,
Username varchar(100),
CommentText text,
TrangThai bit,
Ngaytao date,

)

Create Table ProductFavorite
(
IDProductFavorite int identity(1,1) not null Constraint [IDProductFavorite] Primary key,
IDSanPham int not null,
Username varchar(100)
)

Create Table PurchaseHisotry
(
IDHistory int identity(1,1) not null Constraint [IDHistory] primary key,
IDSanPham int not null,
Username varchar(100),
NgayMua date,
SoLuong int,
TongTien int,
)

Create Table CongThuc
(
IDCongThuc int identity(1,1) not null Constraint [IDCongThuc] Primary Key,
IDSanPham int not null,
Noidung nvarchar(500),
)

Create Table KhoHang
(
IDKhoHang int identity(1,1) not null primary key clustered (IDKhoHang asc),
IDNguyenLieu int not null,
NgayGiao date null,
SoLuongGiao int null,
TrangThai bit null
)
SET IDENTITY_INSERT KhoHang ON
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (1,1,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (2,2,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (3,3,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (4,4,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (5,5,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (6,6,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (7,7,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (8,8,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (9,9,'2023-10-15',20,1)
Insert into KhoHang(IDKhoHang,IDNguyenLieu,NgayGiao,SoLuongGiao,TrangThai) values (10,10,'2023-10-15',20,1)
SET IDENTITY_INSERT KhoHang OFF

Create Table NguyenLieu
(
IDNguyenLieu int identity(1,1) not null Primary Key Clustered (IDNguyenLieu asc),
TenNguyenLieu nvarchar(100),
)
SET IDENTITY_INSERT NguyenLieu ON
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (1,N'Đường (Gói)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (2,N'Cà phê (Gói)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (3,N'Cacao (Gói)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (4,N'Kem béo (Hộp)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (5,N'Thạch (Hộp)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (6,N'Đào (Hộp)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (7,N'Vải (Hộp)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (8,N'Bánh quy (Gói)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (9,N'Trân châu (Hộp)')
Insert into NguyenLieu(IDNguyenLieu,TenNguyenLieu) values (10,N'Sữa (Hộp)')
SET IDENTITY_INSERT NguyenLieu OFF

Create Table Voucher
(
IDCoupon int identity(1,1) not null Constraint [IDCoupon] Primary Key,
TenVoucher nvarchar(100) null,
MoTa nvarchar(Max) null,
TienGiam int not null,
NgayBatDau date not null,
NgayKetThuc date not null,
GioiHan int not null,
TrangThai bit null,
)

Create Table CouponUser
(
IDCouponUser int identity(1,1) not null Primary Key Clustered (IDCouponUser asc),
IDCoupon int null,
IDDonHang int null,
NgayDung date null
)

Create Table DonHang
(
IDDonHang int identity(1,1) not null Primary Key Clustered (IDDonHang asc),
IDNhanVien int null,
NgayDat date null,
TongTienBill int null, --Tổng tiền gồm sản phẩm, giao hàng, voucher
TinhTrang nvarchar(100),
ThanhToan nvarchar(100),
PTTT nvarchar(100),
TenKH nvarchar(100) null,
SDTKH char(10) null,
Email varchar(100) null,
Username varchar(100),
DiaChiKH nvarchar(100) null,
)

Create Table ChiTietDonHang
(
IDChiTietDH int identity(1,1) not null Primary Key Clustered (IDChiTietDH asc),
IDDonHang int not null,
IDSanPham int not null,
SoLuongSP int not null,
TongTienSP int not null --Tổng tiền sản phẩm đã mua
)
-- drop table Slider
Create Table Slider
(
IDSlider int identity(1,1) not null Primary Key Clustered (IDSlider asc),
HinhAnhSlider varchar(50) null,
TrangThai bit,
NoiDungSlider nvarchar(Max) null
)
SET IDENTITY_INSERT Slider ON
Insert into Slider(IDSlider,HinhAnhSlider,TrangThai,NoiDungSlider) values (1,'/Uploads/images/Slider/banner.jpg',1,null)
Insert into Slider(IDSlider,HinhAnhSlider,TrangThai,NoiDungSlider) values (2,'/Uploads/images/Slider/banner2.jpg',1,null)
Insert into Slider(IDSlider,HinhAnhSlider,TrangThai,NoiDungSlider) values (3,'/Uploads/images/Slider/banner3.jpg',1,null)
SET IDENTITY_INSERT Slider OFF


Create Table Account 
(
IDAccount int identity(1,1) not null Primary Key Clustered (IDAccount asc),
UserName nvarchar(100),
MatKhau nvarchar(100),
Email nvarchar(100),
RoleUser nvarchar(50),
Phone int
)

Create Table DoanhThu
(
IDDoanhThu int identity(1,1) not null Primary Key Clustered (IDDoanhThu asc),
NgayThongKe date null,
NgayKetThuc date null,
TongDoanhThu int null
)

ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_IDCuaHangNV] FOREIGN KEY([IDCuaHang]) REFERENCES [dbo].[CuaHang] ([IDCuaHang])
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_IDLoaiSPSP] FOREIGN KEY([IDLoaiSP]) REFERENCES [dbo].[LoaiSP] ([IDLoaiSP])
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_IDCuaHangSP] FOREIGN KEY([IDCuaHang]) REFERENCES [dbo].[CuaHang] ([IDCuaHang])
ALTER TABLE [dbo].[CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_IDSanPhamCT] FOREIGN KEY([IDSanPham]) REFERENCES [dbo].[SanPham] ([IDSanPham])
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD  CONSTRAINT [FK_IDIDNguyenLieu] FOREIGN KEY([IDNguyenLieu]) REFERENCES [dbo].[NguyenLieu] ([IDNguyenLieu])
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_IDSanPhamCTDH] FOREIGN KEY([IDSanPham]) REFERENCES [dbo].[SanPham] ([IDSanPham])
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_IDDonHangCTDH] FOREIGN KEY([IDDonHang]) REFERENCES [dbo].[DonHang] ([IDDonHang])
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_IDNhanVienDH] FOREIGN KEY([IDNhanVien]) REFERENCES [dbo].[NhanVien] ([IDNhanVien])
ALTER TABLE [dbo].[CouponUser] WITH CHECK ADD  CONSTRAINT [FK_IDCouponCU] FOREIGN KEY([IDCoupon]) REFERENCES [dbo].[Voucher] ([IDCoupon])
ALTER TABLE [dbo].[CouponUser]  WITH CHECK ADD  CONSTRAINT [FK_IDCouponDH] FOREIGN KEY([IDDonHang]) REFERENCES [dbo].[DonHang] ([IDDonHang])
ALTER TABLE [dbo].[ProductFavorite] WITH CHECK ADD  CONSTRAINT [FK_IDSanPhamYT] FOREIGN KEY([IDSanPham]) REFERENCES [dbo].[SanPham] ([IDSanPham])
ALTER TABLE [dbo].[PurchaseHisotry] WITH CHECK ADD  CONSTRAINT [FK_IDHistory] FOREIGN KEY([IDSanPham]) REFERENCES [dbo].[SanPham] ([IDSanPham])
ALTER TABLE [dbo].[Comment] WITH CHECK ADD  CONSTRAINT [FK_IDSanPhamCM] FOREIGN KEY([IDSanPham]) REFERENCES [dbo].[SanPham] ([IDSanPham])


-- Trùng số điện thoại Khách hàng
Create or alter trigger tr_ktSDT
ON KhachHang
After Insert, update
As
Begin
	If Exists(
		Select SDTKH, Count(*) 
		From KhachHang
		Group by SDTKH
		Having Count(*) > 1
	)
	Begin
		 print  N'Số điện thoại đã được sử dụng!'
		 RollBack Transaction
	End
End

-- Trùng tên Account
Create or alter trigger tr_ktTenAccount
ON Account
After Insert, update
As
Begin
	If Exists(
		Select TenAccount, Count(*)
		From Account
		Group by TenAccount
		Having Count(*) > 1
	)
	Begin
		 print  N'Tên người dùng đã được sử dụng!'
		 RollBack Transaction
	End
End

-- Trùng Email Account 
Create or alter trigger tr_ktEmailAccount
ON Account
After Insert, update
As
Begin
	If Exists(
		Select EmailAccount, Count(*) 
		From Account
		Group by EmailAccount
		Having Count(*) > 1
	)
	Begin
		 print  N'Email đã được sử dụng!'
		 RollBack Transaction
	End
End

-- Trùng số điện thoại Account
Create or alter trigger tr_ktSDTAccount
ON Account
After Insert, update
As
Begin
	If Exists(
		Select SDTAccount, Count(*) 
		From Account
		Group by SDTAccount
		Having Count(*) > 1
	)
	Begin
		 print  N'Số điện thoại đã được sử dụng!'
		 RollBack Transaction
	End
End

-- Kiểm tra ngày hạn voucher
Create or alter trigger tr_ktHanVoucher
ON Voucher
After Insert, update
As
Begin
	If Exists(
		Select NgayBatDau
		From Voucher
		Where NgayBatDau < NgayKetThuc
	)
	Begin
		 print  N'Thời gian không hợp lệ!'
		 RollBack Transaction
	End
End

Create or alter trigger
ON Voucher
After Insert, update
As
Begin
	If Exists(
		Select NgayBatDau
		From Voucher
		Where NgayBatDau < NgayKetThuc
	)
	Begin
		 print  N'Thời gian không hợp lệ!'
		 RollBack Transaction
	End
End