<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="DACSN.DangNhap" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                                <td colspan="2" align ="right" type="submit"><a href="DoiMatKhau.aspx">Đổi Mật Khẩu</a></td>
                              </tr>
                      </table>
                    </form>
                </div>
</asp:Content>

