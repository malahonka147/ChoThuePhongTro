<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DACSN.TrangChu" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <aside id="left">
        <div>
            <p>
                TIN MỚI ĐĂNG</p>
            <ul type="square">
                <li><a href="#">Phòng trọ Q7 và lân cận từ 1,8tr - 2.6 triệu/tháng</a></li>
                <li><a href="#">CHO THUÊ PHÒNG 3x5 SẠCH SẼ YÊN TĨNH VST| CHỈ 1TR5</a></li>
                <li><a href="#">Cho thuê phòng trọ góc Nguyễn Thị Thập và Nguyễn Văn Linh, Quận 7</a></li>
                <li><a href="#">Còn 2 phòng mới đẹp, có ban công, cửa sổ thoáng mát.</a></li>
                <li><a href="#">Phòng trọ dạng căn hộ mini cao cấp tại Phạm Văn Bạch , P.12, Quận Gò Vấp</a></li>
                <li><a href="#">CHO THUÊ PHÒNG GIỜ TỰ DO (có chìa khóa riêng)</a></li>
                <li><a href="#">Phòng trọ có gác giá rẻ 131 Tây Lân, phường Bình Trị Đông A, Bình Tân</a></li>
            </ul>
        </div>
        <div>
            <p>
                CÓ THỂ BẠN QUAN TÂM</p>
            <ul type="square">
                <li style="height: 30px; padding-top: 3px;"><a href="#">Mẫu hợp đồng cho thuê phòng trọ</a></li>
                <li style="height: 30px; padding-top: 3px;"><a href="#">Cẩn thận các kiểu lừa đảo khi thuê phòng trọ</a></li>
                <li style="height: 30px; padding-top: 3px;"><a href="#">Kinh nghiệm thuê phòng trọ Sinh Viên</a></li>
            </ul>
        </div>
    </aside>
    <section>
        <div id="TimKiem">
            <strong>Tỉnh,Thành Phố:</strong><asp:DropDownList ID="DropDownList4" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>Bình Dương</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp; <strong>Quận,Huyện:</strong><asp:DropDownList ID="DropDownList2" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>TP Thủ Dầu Một</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;<strong> Phường,Xã:</strong><asp:DropDownList ID="DropDownList3" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>Phường Tân An</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="btntimkiem" Height="25px" Text="Tìm Kiếm" Width="120px" />
        </div>
        <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/1.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Chung cư Hoàng Anh Gia Lai An Tiến</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">3 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">18 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">187A Đường Lê Văn Lương, P.Tân Kiểng, Q7, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/2.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Phòng đẹp, sạch, CC Hoàng Anh Giai Việt có hồ bơi</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">3.8 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">25 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">	856 Phố Tạ Quang Bửu, Phường5, Quận 8, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/3.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Phòng trọ mới xây, giá sinh viên: 3 triệu</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">4.5 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">30 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">Đường số 61, P.Thạnh Mỹ Lợi, Q.2</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/4.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Căn hộ Mini có gác</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">4.5 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">25 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">Q.Tân Bình, Hồ Chí Minh. Gần cầu vượt Cộng Hòa, Hoàng Hoa Thám</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/5.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Cho thuê phòng trọ sạch sẽ, an ninh, yên tĩnh.</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">3.5 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">26 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">Đường số 2, P.An Lạc A, Q.Bình Tân, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/6.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Phòng full nội thất: giá từ:2tr_4tr.</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">1.8 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">15 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">918A Tạ Quang Bửu, Phường5, Q.8</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/7.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Phòng trọ có nội thất. Giờ giấc tự do.</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">2 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">15 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">13/3 Đường Bông Sao, Phường 5, Q8, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/8.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Phòng cao cấp máy lạnh giá:2.5 - 3triệu</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">2.9 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">25 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">415 Trần Xuân Soạn, P.Tân Kiểng, Q7, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/9.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Be Home Gò Vấp nội thất cơ bản. Gần chợ Hạnh Thông Tây. Bảo vệ 24/24</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">2.8 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">18 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">856/9 Đường Quang Trung, Q.Gò Vấp, Hồ Chí Minh</span></p>
                    </div>
                </div>
                <div class="content">
                    <div id="left">
                        <img class="HinhNT" src="Images/10.jpg" />
                    </div>
                    <div id="right">
                        <h3 class="TieuDe"><a href="ChiTietSanPham.aspx">Ký túc xá, Cạnh trường Đại học Công Nghiệp tiện nghi. Có máy giặt, tủ lạnh.</a></h3>
					    <p class="contentp">Đơn giá:<span class="contentp2">1.2 Triệu/Thắng</span></p>
                        <p class="contentp">Diện tích: <span class="contentp2">30 mét vuông</span></p>
                        <p class="contentp">Địa Chỉ: <span class="contentp2">	6 Đường Lê Lợi, Phường 4, Q.Gò Vấp, Hồ Chí Minh</span></p>
                    </div>
                </div>
    </section>
</asp:Content>

