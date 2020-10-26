<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="DACSN.DoiMatKhau" %>
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
     <table>
              <tbody><tr>
                <th colspan="2">ĐỔI MẬT KHẨU</th>
              </tr>
              <tr>
                <td>Têm đăng nhập:</td>
                <td><input id="tendangnhap" class="user" type="text" placeholder="Nhập tên tài khoản..." required=""></td>
              </tr>
              <tr>
                <td>Mậu khẩu cũ:</td>
                <td><input id="matkhaucu" class="pass" type="password" placeholder="Nhập mật khẩu cũ..." required=""></td>
              </tr>
              <tr>
                <td>Mậu khẩu mới:</td>
                <td><input id="matkhaumoi" class="pass" type="password" placeholder="Nhập mật khẩu mới..." required=""></td>
              </tr>
              <tr>
                <td>Nhập lại mậu khẩu mới:</td>
                <td><input id="nhaplaimatkhaumoi" class="pass" type="password" placeholder="Nhập mật khẩu mới..." required=""></td>
              </tr>
              <tr>
                <td colspan="2" align="middle"><input class="btn" type="submit" value="Đổi mật khẩu" onclick="return KiemTra()"><input class="btn" type="reset" value="Hủy"></td>
              </tr>
         </tbody></table>
    </section>
</asp:Content>

