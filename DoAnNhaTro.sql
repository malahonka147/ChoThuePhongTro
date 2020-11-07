USE master
GO
--Tao CSDL
CREATE DATABASE QLNhaTro
Go

USE QLNhaTro
Go
--drop table KhachHang
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
	MoTa ntext,
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
	TenTK nvarchar(50) not null,
	DanhGia nvarchar(2000)
	constraint PK_MaKH primary key (MaKH)
	--drop table DanhGia
)
alter table NhaTroChoThue 
	ADD  CONSTRAINT FK_KHACHHANG_NhaTroChoThue FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)
alter table KhachHang
	ADD  CONSTRAINT FK_KhachHang_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table NguoiQuanLi
	ADD  CONSTRAINT FK_NguoiQuanLi_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table DanhGia
	ADD  CONSTRAINT FK_DanhGia_KhachHang FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)


insert into KhachHang values('KH01',1,N'Trần Khải Nhi','012345785','tknhi@gmail.com','d123456','tknhi')
insert into KhachHang values('KH02',1,N'Nguyễn Tiến Luân','012345785','ntluan@gmail.com','d123456','ntluan')
insert into KhachHang values('KH03',1,N'Đặng Quốc Hòa','012345785','dqhoa@gmail.com','d123456','dqhoa')
insert into KhachHang values('KH04',1,N'Ngô Ngọc Ngân','012345785','nnngan@gmail.com','d123456','nnngan')
insert into KhachHang values('KH05',1,N'Trần Thị Thu Trang','012345785','ttttrang@gmail.com','d123456','ttttrang')
insert into KhachHang values('KH06',1,N'Nguyễn Thiên Thanh','012345785','ntthanh@gmail.com','d123456','ntthanh')
insert into KhachHang values('KH07',1,N'Trần Thị Hải Yến','012345785','tthyen@gmail.com','d123456','tthyen')
insert into KhachHang values('KH08',1,N'Nguyễn Thị Thanh Mai','012345785','nttmai@gmail.com','d123456','nttmai')
insert into KhachHang values('KH09',1,N'Nguyễn Thành Danh','012345785','ntdanh@gmail.com','d123456','ntdanh')
insert into KhachHang values('KH010',1,N'Phạm Thị Nga','012345785','ptnga@gmail.com','d123456','ptnga')

insert into NhaTroChoThue values('NT01','KH01',N'TP.Hồ Chi Minh',N'Quận 1',N'Phường Phạm Ngũ Lão',N'Đường Trần Hưng Đạo','Số 120/43/10',N'Số 120/43/10 Đường Trần Hưng Đạo, Phường Phạm Ngũ Lão, Quận 1, TP.Hồ Chí Minh',N'Tìm người ở ghép','01223546',N'Thông tin mô tả:
KÍ TÚC XÁ MỚI CHO CÁC CÔ NÀNG MỘNG MƠ ĐÂY NÈ
ĐẶC BIỆT NHẤT NÈ : GIÁ 1tr5 MIỄN PHÍ ĐIỆN , NƯỚC , WIFI ????
TỪNG NGÓC NGÁCH TRONG NHÀ ĐỀU ĐƯỢC DECOR TẬN TÂM VÀ XINH XĨU
Địa chỉ: 120/43/10 Trần Hưng Đạo quận 1
Rất gần các trường đại học thuận tiện cho việc di chuyển. Bước 2 bước tới nhanh còn hơn nhịp đập con tim của mấy bạn khi gặp crush nữa
Phòng full nội thất,được nấu ăn, view sân thượng xịn lắm .!
Đặc biệt phòng không chung chủ, giờ giấc tự do. Camera xịn xò hơn con mắt của mấy bà hàng xóm luôn á nhaaaa.',1500000,30,'TNOG-1.jpg',10,N'Nhà trọ cho thuê mới xây')

insert into NhaTroChoThue values('NT02','KH02',N'TP.Hồ Chi Minh',N'quận Tân Bình',N'',N'Đường Trường Chinh','Số 45',N'Số 45,Đường Trường Chinh,quận Tân Bình,TP.Hồ Chi Minh',N'Tìm người ở ghép','01298725',N'Thông tin mô tả:
Xin chào !
- Mình muốn tìm một nữ ở ghép. Vì đi làm cũng nhiều, ít ở phòng. Nên muốn tìm một bạn vừa san sẻ tiền phòng. Vừa ở cùng bầu bạn cho vui ạ !
- Phòng kiểu căn hộ, đầy đủ nội thất, tiện nghi, chỉ cần dọn vào ở là xong ạ. Phòng tách bạch góc bếp và giường ngủ, nhà tắm riêng, rộng. Phòng có tủ lạnh, điều hoà, máy giặt, máy nóng lạnh, bàn ăn, bàn trang điểm, giường nệm, tủ quần áo, kệ sách, kệ giày, bếp, lò nướng, ...
Các bạn xem hình và đến xem trực tiếp nha.
- Phòng có ban công và sân thượng, chô để xe rộng rãi. Cực kì an ninh. Không dùng chìa khoá, sài thẻ nên tiện lợi, hiện. Giờ giấc tự do.
- Phòng rộng, có cửa sổ rộng ngay góc giường ngủ nên khá thoáng mát, sạch sẽ.
- Mình hoà đồng, thoải mái. Có ý thức và tôn trọng riêng tư người khác. Đồ mình mua gần như đầy đủ, có thể sài chung vô tư.
- Mong muốn tìm bạn nữ cũng lành mạnh về đời. Sống và tinh thần, vui vẻ. Hehe.
- Phòng tuy giá hơi cao. Và ở ghép thì hẳn các bạn sẽ tìm thấy nhiều phòng rẻ hơn. Nhưng so ra về độ rộng, tiện nghi thì khá xứng đáng ạ!
- Phòng gần Vincom, trung tâm nên di chuyển rất dễ dàng. Xung quanh tạp hoá, quán xá, cafe. Phòng gần biển nên tiện đi bộ, chạy bộ, ra biển dạo mát nè.
- Mình thì đọc sách nên có khá nhiều sách. Nên bạn nào cũng yêu sách như mình thì tha hồ đọc nhé.Mình thi thoảng nấu ăn nếu rãnh. Đồ gia dụng gần như đầy đủ .',2200000,45,'TNOG-2.jpg',12,N'Nhà trọ sạch sẽ ở Tân Bình')

insert into NhaTroChoThue values('NT03','KH03',N'TP.Hồ Chi Minh',N'quận Bình Thạnh',N'An Lạc A',N'Đường số 2','Số 15/25',N'Số 15/25,Đường số 2,phường An Lạc A,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012546846',N'Thông tin mô tả:
* ĐỊA CHỈ: Số 145,Đường số 11,Phường 13,TP.Hồ Chi Minh
- Gần sân bay
- Gần Lotte Cộng Hòa
- Hẻm xe hơi
* GIÁ: 3.8 - 5.5TRIỆU / THÁNG
* DT : 22 – 30M2
- Tiện nghi cao cấp:
+ Giường, Nệm, Tủ quần áo
+ Máy lạnh, Tủ lạnh
+ Nước nóng năng lượng mặt trời, Kệ bếp,..
+ Sân thượng có máy giặt
- Tòa nhà có 2 hệ thống thang máy liên tục thuận tiện di chuyển
- Bảo vệ giữ xe 24/24 an ninh tuyệt đối
- Có người vệ sinh khu vực chung thường xuyên đảm bảo luôn sạch sẽ, thơm tho
- Đội bảo trì nhanh chóng, nhiệt tình
- Điện: 3.500 đ/kw - Nước: 100.000 đ/người/tháng
>> >Nhanh chân để sở hữu căn phòng tiện nghi, giá cả phải chăng nhé!!!',4000000,22,'CTPT-1.jpg',28,N'Nhà trọ gần trường ĐH Công Nghiệp')

insert into NhaTroChoThue values('NT04','KH04',N'TP.Hồ Chi Minh',N'Quận 6',N'Phường 13',N'Đường số 11','Số 145',N'Số 145,Đường số 11,Phường 13,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012947525',N'Thông tin mô tả:
Cho thuê phòng trọ Có gác, giá tốt
Phòng đầy đủ tiện nghi cao cấp, mới xây hoàn toàn 100%, môi trường ở an ninh, văn minh, sạch sẽ có máy lạnh, thang máy
Được tận hưởng các tiện ích, dịch vụ cao cấp :
- Phòng có view ban công đẹp, có không gian riêng, không khí trong lành phục vụ tốt nhu cầu học tập, làm việc, vui chơi giải trí, thỏa sức sáng tạo.
- Nệm, drap nệm sạch sẽ.
- Máy lạnh.
- Nhà vệ sinh riêng sạch sẽ, thiết bị điện chiếu sáng.
- Wifi cáp quang.
- Tiện ích: Giờ giấc tự do, có hầm để xe.
- Có camera an ninh khắp nhà.
- Có thang máy hiện đại cao cấp. Bảo vệ 24/24.
- Nhân viên kỹ thuật và chăm sóc khách hàng xử lý ngay lập tức mọi vấn đề phát sinh về sửa chữa, bảo trì 24/7.
- Nhân viên vệ sinh hằng ngày dọn dẹp khu vực chung.
Chi phí dịch vụ mỗi tháng:
- Nước: 100.000đ/người/tháng.
- Điện: 3.5 nghìn/KWH.
- Wifi + cáp + Thang máy + máy giặt đầy đủ',3500000,25,'CTPT-2.jpg',31,N'Cho thuê phòng trọ cao cấp,sạch sẽ, an ninh')

insert into NhaTroChoThue values('NT05','KH05',N'TP.Hồ Chi Minh',N'Quận Tân Bình',N'Phường 13',N'Đường Cộng Hòa','Số 622/10',N'Số 622/10,Đường Cộng Hòa,phường 13,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','098623546',N'Thông tin mô tả:
Phòng đầy đủ nội thất.
Toilet riêng.
Từ giấc tự do
Khóa vân tay
Bảo vệ 24/24
Free wifi
Xách vali vào là ở
Có bếp
Cửa sổ lớn',4500000,20,'CTPT-3.jpg',5,N'Phòng trọ mới 100%, siêu đẹp')
insert into NhaTroChoThue values('NT06','KH06',N'TP.Hồ Chi Minh',N'Quận Phú Nhuận',N'Phường 3',N'Đường Phan Xích Long','Số 441/2',N'Số 123,Đường Phan Xích Long,phường 3,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012564546',N'Thông tin mô tả:
Nhà mặt tiền Quận Tân Bình
Có nhu cầu cho Thuê tầng 1 : 2 phòng ngủ và 1 WC thích hợp cho gia đình lớn hoặc nhân viên công sở
Khu vực gần sân bay, thuận tiện đi lại
Giờ giấc tự do
Bên dưới là tiệm giặt sấy với giá ưu đãi cho người thuê',3000000,60,'CTPT-4.jpg',48,N'Phòng trọ đầy đủ tiện nghi Đường Phan Xích Long')

insert into NguoiQuanLi values('AD01','admin1','123','admin01@gmail.com','0124584866',0)
insert into NguoiQuanLi values('AD02','admin2','456','admin02@gmail.com','0125445735',0)
insert into NguoiQuanLi values('AD03','admin3','789','admin03@gmail.com','0122891464',0)
insert into NguoiQuanLi values('AD04','admin4','123456','admin04@gmail.com','0943486643',0)

insert into LoaiTK values(0,'Admin')
insert into LoaiTK values(1,'KhachHang')


insert into DanhGia values('KH01',N'Trần Khải Nhi',N'Nhà trọ này thoáng mát')
insert into DanhGia values('KH02',N'Nguyễn Tiến Luân',N'Phòng trọ có Wifi không')
insert into DanhGia values('KH03',N'Đặng Quốc Hòa',N'Khu này có bảo vệ chặt chẽ không, sinh hoạt ra sao.')
insert into DanhGia values('KH04',N'Ngô Ngọc Ngân',N'Có đầy đủ tiện nghi không.')
insert into DanhGia values('KH05',N'Trần Thị Thu Trang',N'Nhà trọ này có kệ bếp hay bàn làm việc không')
insert into DanhGia values('KH06',N'Nguyễn Thiên Thanh',N'Nhà trọ sạch sẽ yên tĩnh')
insert into DanhGia values('KH07',N'Trần Thị Hải Yến',N'Nhà trọ rất sạch sẽ, thoải mái giờ giấc.')
insert into DanhGia values('KH08',N'Nguyễn Thị Thanh Mai',N'Nhà trọ hơi bụi.')
insert into DanhGia values('KH09',N'Nguyễn Thành Danh',N'Phòng đầy đủ tiện nghi, rất thích.')
