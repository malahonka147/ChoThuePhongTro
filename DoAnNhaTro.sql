USE master
GO
--Tao CSDL
CREATE DATABASE QLNhaTro
Go

USE QLNhaTro
Go
drop table KhachHang
create table KhachHang
(
	MaKH varchar(10) not null,
	MaLTK int not null,
	TenKH nvarchar(50) null,
	SDT varchar(12) null,
	Email varchar(30) not null,
	MatKhau varchar(20) not null,
	TenTK varchar(15) not null
	CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
)
--drop database QLNhaTro
create table NhaTroChoThue
(
	MaNhaTro varchar(10),
	MaKH varchar(10)not null,
	TinhThanh nvarchar(25)not null,
	QuanHuyen nvarchar(25)not null,
	PhuongXa nvarchar(50),
	TenDuong nvarchar(25)not null,
	SoNha nvarchar(50),
	DiaChi nvarchar(100)not null,
	LoaiNT nvarchar(30)not null,
	SDTNguoiChoThue varchar(12),
	MoTa nvarchar(100),
	GiaChoThue int not null,
	DienTich int,
	HinhAnh nvarchar(50) not null,
	LuotXem int,
	TieuDe nvarchar(100)
	CONSTRAINT PK_NhaTroChoThue PRIMARY KEY (MaNhaTro)
	--drop table NhaTroChoThue
)

create table NguoiQuanLi
(
	ID_Admin varchar(10),
	TenTK nvarchar(50),
	MatKhau varchar(20),
	Email_Admin varchar(30),
	SDT_Admin varchar(12),
	MaLTK int
	CONSTRAINT PK_NguoiQuanLi PRIMARY KEY (ID_Admin)

)

create table LoaiTK
(
	MaLTK int not null,
	TenLTK nvarchar(30) not null,
	CONSTRAINT PK_LoaiTK PRIMARY KEY (MaLTK)
)

create table DanhGia
(
	MaKH varchar(10)not null,
	TenTK varchar(15) not null,
	DanhGia nvarchar(2000)
	constraint PK_MaKH primary key (MaKH)
)
alter table NhaTroChoThue 
	ADD  CONSTRAINT FK_KHACHHANG_NhaTroChoThue FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)
alter table KhachHang
	ADD  CONSTRAINT FK_KhachHang_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table NguoiQuanLi
	ADD  CONSTRAINT FK_NguoiQuanLi_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table DanhGia
	ADD  CONSTRAINT FK_DanhGia_KhachHang FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)


insert into KhachHang values('KH01',1,N'Nguyễn Văn A','012345785','abc@gmail.com','d123456','nguyenvana')

insert into NhaTroChoThue values('NT01','KH01',N'Bình Dương',N'TP.Thủ Dầu Một',N'Tân An',N'Đường DX120','Số 123',N'Số 123,Đường DX120,phường Tân An,TP.Thủ Dầu Một,tỉnh Bình Dương',N'Tìm người ở ghép','01223546',N'có máy lạnh, máy giặt, bảo vệ 24/24',1500000,30,'1.jpg',10,N'Nhà trọ cho thuê mới xây')

insert into NguoiQuanLi values('AD01','admin','123','admin@gmail.com','0125486',1)

insert into LoaiTK values(1,'Admin')

insert into DanhGia values('KH01','nguyenvana',N'Nhà trọ này thoáng mát')