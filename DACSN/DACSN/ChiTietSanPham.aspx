﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="DACSN.ChiTietSanPham" %>
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
        <div>
            <h1>Phòng VIP</h1>
        </div>
        <div>
            <table>
                <tbody>
                    <tr>
                        <td>Địa chỉ:</td>
                        <td colspan="3">111/7</td>
                    </tr>
                    <tr>
                        <td>Khu vực</td>
                        <td colspan="3">...</td>
                    </tr>
                    <tr>
                        <td>Loại rao tin:</td>
                        <td colspan="3">...</td>
                    </tr>
                    <tr>
                        <td>Mã tin</td>
                        <td>#313223</td>
                        <td>Người đăng:</td>
                        <td>danh910366</td>
                    </tr>
                    <tr>
                        <td>Đối tượng:</td>
                        <td>Tất cả</td>
                        <td>Điện thoại:</td>
                        <td>ghi sdt vào</td>
                    </tr>
                    <tr>
                        <td>Ngày cập nhật:</td>
                        <td>25/10/20 17:30</td>
                        <td>Diện tích:</td>
                        <td>Ghi diện tích vào</td>
                    </tr>
                    <tr>
                        <td>Ngày hết hạn:</td>
                        <td>28/10/20 17:30</td>
                        <td>Giá cho thuê:</td>
                        <td>Ghi giá </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br>
        <br>
        <div>
            <span><strong>Thông tin mô tả</strong></span>
            <p>Cho Thuê Nhà Trọ Mặt tiền đường 42 cống lở - p15 - Quận tân bình ( gần cầu tham lương )</p>
            <p>Lợi Thế Cao Ốc Phòng trọ CMC Building</p>
            <p>Có điều hoà , Có máy giặt , Có máy nước nóng lạnh , Có gác , Có Intenet , Có cửa sổ và ban công mỗi phòng , Có camera , Có bảo vệ , Có tầng hầm , có bếp nấu ăn , Có thang máy , Có chỗ để xe , không chung chủ , gần công viên , siêu thị vinmax và bách hoá xanh nằm kế bên .</p>
            <p>Diện tích : 22m2 đến 40m2</p>
            <p>Phòng mới xây 100%, ốp gạch sạch sẽ , đủ tiện nghi, thoáng đẹp, yên tĩnh ; có nhà WC riêng trong phòng.</p>
            <p>Mặt tiền Đường rộng rãi thông ra nhiều trục đường chính thuận tiện vừa ở vừa kinh doanh online</p>
            <p>Phòng bao gồm: có 1 trệt , 1 lửng ,7 lầu ( tổng Có 28 phòng trọ cao cấp ) xây dựng theo phong cách châu âu lấy sáng 100% tự nhiên</p>
            <p>Điện nước đồng hồ riêng, giờ giấc tự do.</p>
            <p>Gần chợ, bệnh viên, trường học đại học cn thực phẩm , gần kcn tân bình , cách đường cộng hoà trường chinh 500m , dưới chân cầu tham lương</p>
            <p>Liên hệ chính chủ không qua môi giới 0909789888 ( A quyết ) hoặc 0974733999</p>
            <p>Đơn giá từ 2tr800 đến 3tr500</p>
            <p>Cảm ơn các bạn đã đọc bài ( chia sẻ giúp mình )</p>
            <p>
                Điện thoại liên lạc:
                <strong>0922638628</strong>
            </p>
            <p></p>
            <p></p>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div><h3>Hình ảnh</h3></div>
        <br />
        <br />
        <script src="SlideShow.js">

        </script>
        <div class="slideshow-container">
  <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img class="SlideShow"src="Images/1.jpg" />
                <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img class="SlideShow"src="Images/2.jpg" />
                <div class="text">Caption Two</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img class="SlideShow"src="Images/3.jpg" />
                <div class="text">Caption Three</div>
            </div>

  <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

<!-- The dots/circles -->
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>
    </section>
</asp:Content>
