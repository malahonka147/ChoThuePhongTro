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
	MaKH INT IDENTITY(1,1),
	MaLTK int default 1 not null,
	TenKH nvarchar(50) null,
	SDT varchar(12) null,
	Email varchar(30) not null,
	MatKhau varchar(20) not null,
	TenTK varchar(50) not null
	CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
)
--drop database QLNhaTro
create table NhaTroChoThue
(
	MaNhaTro varchar(10),
	MaKH INT,
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
	MaLTK int default 1 not null,
	TenLTK nvarchar(30) not null,
	CONSTRAINT PK_LoaiTK PRIMARY KEY (MaLTK)
)

create table DanhGia
(
	MaDG varchar(10),
	MaKH INT,
	MaNhaTro varchar(10),
	DanhGia nvarchar(2000)
	constraint PK_MaDG primary key (MaDG)
	--drop table DanhGia
)

create table HinhAnhChiTietNhaTro
(
	MaNhaTro varchar(10),
	HinhAnh nvarchar(50)
)

alter table NhaTroChoThue 
	ADD  CONSTRAINT FK_KHACHHANG_NhaTroChoThue FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)
alter table KhachHang
	ADD  CONSTRAINT FK_KhachHang_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table NguoiQuanLi
	ADD  CONSTRAINT FK_NguoiQuanLi_LoaiTK FOREIGN KEY(MaLTK)REFERENCES LoaiTK (MaLTK)
alter table DanhGia
	ADD  CONSTRAINT FK_DanhGia_KhachHang FOREIGN KEY(MaKH)REFERENCES KhachHang (MaKH)
alter table DanhGia
	ADD  CONSTRAINT FK_DanhGia_NhaTroChoThue FOREIGN KEY(MaNhaTro)REFERENCES NhaTroChoThue (MaNhaTro)
alter table HinhAnhChiTietNhaTro
	ADD  CONSTRAINT FK_HinhAnhCTNhaTro_NhaTroChoThue FOREIGN KEY(MaNhaTro)REFERENCES NhaTroChoThue (MaNhaTro)

insert into LoaiTK values(0,'Admin')
insert into LoaiTK values(1,'KhachHang')

SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(1,1,N'Trần Khải Nhi','012345785','tknhi@gmail.com','d123456','tknhi')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(2,1,N'Nguyễn Tiến Luân','012345785','ntluan@gmail.com','d123456','ntluan')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(3,1,N'Đặng Quốc Hòa','012345785','dqhoa@gmail.com','d123456','dqhoa')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(4,1,N'Ngô Ngọc Ngân','012345785','nnngan@gmail.com','d123456','nnngan')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(5,1,N'Trần Thị Thu Trang','012345785','ttttrang@gmail.com','d123456','ttttrang')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(6,1,N'Nguyễn Thiên Thanh','012345785','ntthanh@gmail.com','d123456','ntthanh')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(7,1,N'Trần Thị Hải Yến','012345785','tthyen@gmail.com','d123456','tthyen')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(8,1,N'Nguyễn Thị Thanh Mai','012345785','nttmai@gmail.com','d123456','nttmai')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(9,1,N'Nguyễn Thành Danh','012345785','ntdanh@gmail.com','d123456','ntdanh')
INSERT [dbo].[KhachHang] ([MaKH], [MaLTK], [TenKH], [SDT], [Email], [MatKhau], [TenTK]) values(10,1,N'Phạm Thị Nga','012345785','ptnga@gmail.com','d123456','ptnga')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF

--SET IDENTITY_INSERT [dbo].[NhaTroChoThue] ON
--INSERT [dbo].[NhaTroChoThue] ([MaNhaTro], [MaKH], [TinhThanh], [QuanHuyen], [PhuongXa], [TenDuong], [SoNha],[DiaChi],[LoaiNT],[SDTNguoiChoThue],[MoTa],[GiaChoThue],[DienTich],[HinhAnh],[LuotXem],[TenDuong])

insert into NhaTroChoThue values('NT01',1,N'TP.Hồ Chi Minh',N'Quận 1',N'Phường Phạm Ngũ Lão',N'Đường Trần Hưng Đạo','Số 120/43/10',N'Số 120/43/10 Đường Trần Hưng Đạo, Phường Phạm Ngũ Lão, Quận 1, TP.Hồ Chí Minh',N'Tìm người ở ghép','01223546',N'Thông tin mô tả:
KÍ TÚC XÁ MỚI CHO CÁC CÔ NÀNG MỘNG MƠ ĐÂY NÈ
ĐẶC BIỆT NHẤT NÈ : GIÁ 1tr5 MIỄN PHÍ ĐIỆN , NƯỚC , WIFI ????
TỪNG NGÓC NGÁCH TRONG NHÀ ĐỀU ĐƯỢC DECOR TẬN TÂM VÀ XINH XĨU
Địa chỉ: 120/43/10 Trần Hưng Đạo quận 1
Rất gần các trường đại học thuận tiện cho việc di chuyển. Bước 2 bước tới nhanh còn hơn nhịp đập con tim của mấy bạn khi gặp crush nữa
Phòng full nội thất,được nấu ăn, view sân thượng xịn lắm .!
Đặc biệt phòng không chung chủ, giờ giấc tự do. Camera xịn xò hơn con mắt của mấy bà hàng xóm luôn á nhaaaa.',1500000,30,'TNOG-1.jpg',10,N'Nhà trọ cho thuê mới xây')

insert into NhaTroChoThue values('NT02',2,N'TP.Hồ Chi Minh',N'quận Tân Bình',N'',N'Đường Trường Chinh','Số 45',N'Số 45,Đường Trường Chinh,quận Tân Bình,TP.Hồ Chi Minh',N'Tìm người ở ghép','01298725',N'Thông tin mô tả:
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

insert into NhaTroChoThue values('NT03',3,N'TP.Hồ Chi Minh',N'quận Bình Thạnh',N'An Lạc A',N'Đường số 2','Số 15/25',N'Số 15/25,Đường số 2,phường An Lạc A,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012546846',N'Thông tin mô tả:
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

insert into NhaTroChoThue values('NT04',4,N'TP.Hồ Chi Minh',N'Quận 6',N'Phường 13',N'Đường số 11','Số 145',N'Số 145,Đường số 11,Phường 13,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012947525',N'Thông tin mô tả:
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

insert into NhaTroChoThue values('NT05',5,N'TP.Hồ Chi Minh',N'Quận Tân Bình',N'Phường 13',N'Đường Cộng Hòa','Số 622/10',N'Số 622/10,Đường Cộng Hòa,phường 13,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','098623546',N'Thông tin mô tả:
-Phòng đầy đủ nội thất.
-Toilet riêng.
-Từ giấc tự do
-Khóa vân tay
-Bảo vệ 24/24
-Free wifi
-Xách vali vào là ở
-Có bếp
-Cửa sổ lớn',4500000,20,'CTPT-3.jpg',5,N'Phòng trọ mới 100%, siêu đẹp')
insert into NhaTroChoThue values('NT06',6,N'TP.Hồ Chi Minh',N'Quận Phú Nhuận',N'Phường 3',N'Đường Phan Xích Long','Số 441/2',N'Số 123,Đường Phan Xích Long,phường 3,TP.Hồ Chi Minh',N'Phòng trọ cho thuê','012564546',N'Thông tin mô tả:
- Nhà mặt tiền Quận Tân Bình
-Có nhu cầu cho Thuê tầng 1 : 2 phòng ngủ và 1 WC thích hợp cho gia đình lớn hoặc nhân viên công sở
-Khu vực gần sân bay, thuận tiện đi lại
-Giờ giấc tự do
-Bên dưới là tiệm giặt sấy với giá ưu đãi cho người thuê',3000000,60,'CTPT-4.jpg',48,N'Phòng trọ đầy đủ tiện nghi Đường Phan Xích Long')
insert into NhaTroChoThue values('NT07',7,N'TP.Thủ Dầu Một',N'Huyện Thuận An',N'Phường Binh Chuẩn',N'Đường Bình Chuẩn 62','',N'Đường Bình Chuẩn 62,phường Binh Chuẩn,TP.Thủ Dầu Một',N'Phòng trọ cho thuê','092578956',N'Thông tin mô tả:
Nhà trọ mới xây, đường rộng xe ô tô vào thoải mái, gần trường mầm non ngôi sao sáng, gần chợ hài mỹ.
Tổng diện tích là 32m2 ( 20m2 nền và 12m2 gác)
+ Vòi hoa sen, lavabo, bồn rửa chén, tủ treo đựng chén dĩa
+ Gác đúc, có trang bị đồ dùng
+ Sân chơi cho trẻ em ( xích đu, cầu tuộc cho trẻ em)
+ Camera an ninh và wifi 65Mbgs cực nhanh miễn phí
+ giờ giấc thoải mái
+ yên tĩnh, thoáng mát',1800000,32,'CTPT-5.jpg',48,N'Cho thuê nhà trọ mới xây, tọa lạc ở đường Bình Chuẩn 2, Thuận An, Bình Dương')
insert into NhaTroChoThue values('NT08',8,N'TP.Thủ Dầu Một',N'Huyện Thuận An',N'Phường An Phú',N'Đường số 743','Số 193A/2',N'Số 193A/2,Đường số 743,Phường An Phú,Huyện Thuận An,TP.Thủ Dầu Một',N'Phòng trọ cho thuê','096279956',N'Thông tin mô tả:
Cần cho thuê phòng rộng đẹp thoáng mát.
+ Nhà thoáng đẹp, Camera an ninh 24/24.
* Địa chỉ: 193A/2, khu phố 1B, đường DT 743, phường An Phú, TX. Thuận An, Bình Dương...
* Tiêu chuẩn: Phòng đẹp, wifi, giờ giấc tự do, chỗ để xe an toàn.
* Diện tích: 15m2/phòng.
* Giá: 950.000đ/tháng trệt, 850.000đ/tháng lầu.',950000,15,'CTPT-6.jpg',45,N'Phòng trọ 15m2, phường An Phú, Thị Xã Thuận An, Bình Dương')

insert into NhaTroChoThue values('NT09',9,N'TP.Thủ Dầu Một',N'Huyện Dĩ An',N'Phường Bình An',N'Đường Thống Nhất','',N'Đường Thống Nhất,Phường Bình An,Huyện Dĩ An,TP.Thủ Dầu Một',N'Phòng trọ cho thuê','0925787956',N'Thông tin mô tả:
Tọa lạc trong Khu dân cư đô thị Bình Nguyên
Cách Hồ Bơi Bình Nguyên 50m
Cách làng đại học Quốc Gia khoảng 1km
Cách chợ 1km
Cách trường đại học Bách Khoa 2Km
Cách Suối tiên khoảng 3km
Phòng sạch đẹp, diện tích khoảng 18m2, có thể nấu ăn, chỗ để xe riêng, không gian rộng rãi, thoáng mát, phù hợp cho sinh viên học gần Làng đại học, khu vực Bình Dương, Thủ Đức hoặc người đi làm.',1200000,18,'CTPT-7.jpg',45,N'Cho thuê phòng trọ Khu DCM Bình Nguyên_Gần đại học Quốc Gia')
insert into NhaTroChoThue values('NT010',9,N'TP.Thủ Dầu Một',N'Huyện Dĩ An',N'Phường An Bình',N'Đường Đào Trinh Nhất','Số 42',N'Số 42, Đường Đào Trinh Nhất,Phường An Bình,Huyện Dĩ An,TP.Thủ Dầu Một',N'Tìm người ở ghép','0378787956',N'Thông tin mô tả:
cần tìm người share chung căn hộ phú đông premier
căn hộ 2pn 68m2, nội thất, miễn phí quản lý, miễn phí hồ bơi nước ấm
giá share là 3tr/tháng
liên hệ xem nhà',3000000,68,'TNOG-3.jpg',53,N'Cần người share căn hộ Phú Đông Premier')
insert into NhaTroChoThue values('NT011',8,N'TP.Thủ Dầu Một',N'',N'Phường Định Hòa',N'Đường DX069','',N', Đường DX069,Phường Định Hòa,,TP.Thủ Dầu Một',N'Tìm người ở ghép','037762876',N'Thông tin mô tả:
Tìm 1 bạn nam ở ghép, nhà trọ ngay NGÃ TƯ SỞ SAO
- Tình trạng: full nội thất bai gồm: tủ lạnh, máy lạnh, máy giặt, máy nước nóng, TV, bếp,...
- Địa chỉ: đường DX069, Định Hoà, sát bên ngã tư sở sao
- An ninh: có camera 24/7, ra vào cổng có thẻ từ
- Giá: 1,5tr/người',1500000,20,'TNOG-4.jpg',12,N'Tìm NAM ở ghép nhà trọ full nội thất ngay Ngã Tư Sở Sao')
insert into NhaTroChoThue values('NT012',7,N'TP.Thủ Dầu Một',N'Huyện Bến Cát',N'Phường Mỹ Phước',N'Đường Mỹ Phước 2','Số B14',N',Số B14, Đường Mỹ Phước 2,Phường Mỹ Phước,Huyện Bến Cát,TP.Thủ Dầu Một',N'Tìm người ở ghép','083762876',N'Thông tin mô tả:
Hiện tại mình đang ở 1 mình nên còn dư 3 phòng ngủ,nên mình cần thêm 3 4 bạn ở cùng cho vui,đầy đủ tiện nghi hết ,sách đồ vào là ở,giá 1 người mình lấy 1 triệu3 bao điện nước wifi ,còn lại các thứ nhà mình có sẵn cả rất thỏi máy các bạn ko cần sâm gì.phù hợp cho anh chị mới lên đi làm công nhân chuẩn bị thuê nhà',1300000,96,'TNOG-5.jpg',12,N'Cần 3 hay 4 người ở ghép nhà liên kề 1 trệt 1 lầu')
insert into NhaTroChoThue values('NT013',10,N'TP.Thủ Dầu Một',N'Huyện Dĩ An',N'Phường An Bình',N'','',N'Phường An Bình,Huyện Dĩ An,TP.Thủ Dầu Một',N'Tìm người ở ghép','083713876',N'Thông tin mô tả:
Căn hộ chung cư có 2 phòng, 1 phòng đã có 1 nữ, cần tìm 1 nữ ở phòng còn lại. (Yêu cầu nhỏ: sạch sẽ, gọn gàng, yên tĩnh). Giờ giấc tự do
Căn hộ đầy đủ tiện nghi: tủ lạnh, máy giặt, 2 phòng vệ sinh, lavabo, bếp núc đầy đủ. Bạn chỉ việc xách ba lô đến ở. Dưới chung cư có chợ, Vinmart, Bách Hóa Xanh, đồ ăn bán với giá cực kỳ rẻ, muốn mua gì cũng có. Điên nước tính giá nhà nước, Wifi: 90K/tháng, Phí giữ xe: 70K/tháng (tổng hết tầm 200K đổ lại)
Đi Ngã tư Thủ Đức mất 10 phút, đi trung tâm quận 1 40 phút, đi Sân bay TSN 30 phút, nằm sát đường Phạm Văn Đồng nên đi rất thuận tiện, ít kẹt xe.
Gía cả thuê có thể thương lượng cho người có thiện chí ở.',2250000,55,'TNOG-6.jpg',12,N'Tìm 1 nữ ở ghép tại chung cư An Bình')

insert into NguoiQuanLi values('AD01','admin1','123','admin01@gmail.com','0124584866',0)
insert into NguoiQuanLi values('AD02','admin2','456','admin02@gmail.com','0125445735',0)
insert into NguoiQuanLi values('AD03','admin3','789','admin03@gmail.com','0122891464',0)
insert into NguoiQuanLi values('AD04','admin4','123456','admin04@gmail.com','0943486643',0)


insert into DanhGia values('DG01',1,'NT01',N'Nhà trọ này thoáng mát')
insert into DanhGia values('DG02',2,'NT02',N'Phòng trọ có Wifi không')
insert into DanhGia values('DG03',3,'NT06',N'Khu này có bảo vệ chặt chẽ không, sinh hoạt ra sao.')
insert into DanhGia values('DG04',4,'NT03',N'Có đầy đủ tiện nghi không.')
insert into DanhGia values('DG05',5,'NT01',N'Nhà trọ này có kệ bếp hay bàn làm việc không')
insert into DanhGia values('DG06',6,'NT02',N'Nhà trọ sạch sẽ yên tĩnh')
insert into DanhGia values('DG07',7,'NT05',N'Nhà trọ rất sạch sẽ, thoải mái giờ giấc.')
insert into DanhGia values('DG08',8,'NT06',N'Nhà trọ hơi bụi.')
insert into DanhGia values('DG09',9,'NT03',N'Phòng đầy đủ tiện nghi, rất thích.')

insert into HinhAnhChiTietNhaTro values('NT01','TNOG1.jpg')
insert into HinhAnhChiTietNhaTro values('NT01','TNOG-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT02','TNOG-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT02','4.jpg')
insert into HinhAnhChiTietNhaTro values('NT03','CTPT-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT03','CTPT-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT03','CTPT-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT04','CTPT-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT04','9.jpg')
insert into HinhAnhChiTietNhaTro values('NT04','10.jpg')
insert into HinhAnhChiTietNhaTro values('NT05','CTPT-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT05','7.jpg')
insert into HinhAnhChiTietNhaTro values('NT05','5.jpg')
insert into HinhAnhChiTietNhaTro values('NT06','CTPT-4.jpg')
insert into HinhAnhChiTietNhaTro values('NT06','4.jpg')
insert into HinhAnhChiTietNhaTro values('NT06','6.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','CTPT-5.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','ChiTietPT-5-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','ChiTietPT-5-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','ChiTietPT-5-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','ChiTietPT-5-4.jpg')
insert into HinhAnhChiTietNhaTro values('NT07','ChiTietPT-5-5.jpg')
insert into HinhAnhChiTietNhaTro values('NT08','CTPT-6.jpg')
insert into HinhAnhChiTietNhaTro values('NT08','ChiTietPT-6-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT08','ChiTietPT-6-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT09','CTPT-7.jpg')
insert into HinhAnhChiTietNhaTro values('NT09','CTPT-7-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT09','CTPT-7-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT09','CTPT-7-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-2.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-4.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-5.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-6.jpg')
insert into HinhAnhChiTietNhaTro values('NT010','TNOG-3-7.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-1.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-3.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-4.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-5.jpg')
insert into HinhAnhChiTietNhaTro values('NT011','TNOG-4-6.jpg')
insert into HinhAnhChiTietNhaTro values('NT012','TNOG-5.jpg')
insert into HinhAnhChiTietNhaTro values('NT012','TNOG-5-8.jpg')
insert into HinhAnhChiTietNhaTro values('NT012','TNOG5.jpg')
insert into HinhAnhChiTietNhaTro values('NT013','TNOG-6.jpg')
insert into HinhAnhChiTietNhaTro values('NT013','TNOG6.jpg')
--drop Proc ChiTietNhaTro
Create Procedure ChiTietNhaTro
@MaNT varchar(10)
as 
select kh.TenKH,nt.SDTNguoiChoThue,nt.DiaChi,nt.MoTa,nt.GiaChoThue,nt.DienTich,nt.TieuDe
from KhachHang kh,NhaTroChoThue nt
where nt.MaNhaTro=@MaNT and nt.MaKH=kh.MaKH

exec ChiTietNhaTro @MaNT='NT02'