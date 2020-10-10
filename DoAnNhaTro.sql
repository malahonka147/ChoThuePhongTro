USE master
GO
--Tao CSDL
CREATE DATABASE QLNhaTro
Go

USE QLNhaTro
Go

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
	TenDuong nvarchar(25)not null,
	DiaChi nvarchar(30)not null,
	LoaiNT nvarchar(15)not null,
	SDTNguoiChoThue varchar(12),
	MoTa nvarchar(100),
	GiaChoThue int not null,
	DienTich int,
	HinhAnh nvarchar(100) not null,
	LuotXem int
	CONSTRAINT PK_NhaTroChoThue PRIMARY KEY (MaNhaTro)
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