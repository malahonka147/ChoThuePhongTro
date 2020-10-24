<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="DACSN.DangNhap" %>
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
      <script language="javascript">
	                function KiemTra()
	                {
		
		                var Tendangnhap=document.getElementById("tendangnhap");
		                if(Tendangnhap.value=="")
		                {
			                alert("Vui lòng nhập tên tài khoản!!");
			                Tendangnhap.focus();
			                return false;
		                }
		                var Matkhau=document.getElementById("matkhau");
		                if(Matkhau.value=="")
		                {
			                alert("Vui lòng nhập mật khẩu!!");
			                Matkhau.focus();
			                return false;
		                }
	                }
                </script>
	                <div class="login">
                    <form >
                        <table>
                              <tr>
                                <th colspan="2">ĐĂNG NHẬP</th>
                              </tr>
                              <tr>
                                <td>Tên đăng nhập:</td>
                                <td><input id="tendangnhap" type="text" size="24" height="24" placeholder="Nhập tên tài khoản..."></td>
                              </tr>
                              <tr>
                                <td>Mậu khẩu:</td>
                                <td><input id="matkhau" type="password" size="24" height="24" placeholder="Nhập mật khẩu..."></td>
                              </tr>
                              <tr>
                                <td colspan ="2"align ="middle"><input class="dn" type="submit" value="Đăng Nhập" onClick="return KiemTra()"></td>
                              </tr>
                              <tr>
                                <td colspan="2" align ="right" type="submit"><a href="DoiMatKhau.html">Đổi Mật Khẩu</a></td>
                              </tr>
                      </table>
                    </form>
                </div>
    </section>
</asp:Content>

