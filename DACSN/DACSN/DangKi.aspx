<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="DACSN.DangKi" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
         <script language="javascript">
	        function KiemTra()
	        {
		
		        var hoTen=document.getElementById("hoten");
		        if(hoTen.value=="")
		        {
			        alert("Vui lòng nhập họ tên!!");
			        hoTen.focus();
			        return false;
		        }
		        var nam=document.getElementById("nam");
		        if(nam.value=="")
		        {
			        alert("Hãy điền năm sinh!!");
			        nam.focus();
			        return false;
		        }
		        if(isNaN(nam.value)==true)
		        {
			        alert("Năm sinh phải là số!!");
			        nam.value="";
			        nam.focus();
			        return false;
		        }
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
		        var Nhaplaimatkhau=document.getElementById("nhaplaimatkhau");
		        if(Nhaplaimatkhau.value=="")
		        {
			        alert("Vui lòng nhập lại mật khẩu!!");
			        Nhaplaimatkhau.focus();
			        return false;
		        }
		        if(Nhaplaimatkhau.value!=Matkhau.value)
		        {
			        alert("Mặt khẩu nhập lại không khớp!!");
			        Nhaplaimatkhau.focus();
			        return false;
		        }
	        }
	        </script>
        <div class="dk">
         <form action="#" name="dangnhap" method="post">
        <table id="dangky">
			        <tr>
				        <th colspan="2">ĐĂNG KÝ THÀNH VIÊN</th>
			        </tr>
			        <tr>
				        <td style="width: 388px">
					        <fieldset>
						        <legend><b>Thông tin đăng nhập</b></legend>
						        <table>
							        <tr>
								        <td>Họ và tên:</td>
								        <td>
                                            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ và tên không hợp lệ!">*</asp:RequiredFieldValidator>
                                        </td>
							        </tr>
							        <tr>
								        <td>Điện thoại:</td>
								        <td>
                                            <asp:TextBox ID="txtDienthoai" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" ControlToValidate="txtDienthoai" ErrorMessage="Số điện thoại không hợp lệ!">*</asp:RequiredFieldValidator>
                                        </td>
							        </tr>
							        <tr>
								        <td>Email:</td>
								        <td>
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                        </td>
							        </tr>
						        </table>
					        </fieldset>
				        </td>
			        <tr>
				        <td style="width: 388px">
					        <fieldset>
						        <legend><b>Thông tin đăng nhập</b></legend>
						        <table>
							        <tr>
								        <td>Tên đăng nhập:</td>
								        <td style="width: 228px">
                                            <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenTK" ErrorMessage="Tên tài khoản không hợp lệ!">*</asp:RequiredFieldValidator>
                                        </td>
							        </tr>
							        <tr>
								        <td>Mật khẩu:</td>
								        <td style="width: 228px">
                                            <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Mật khâu không hợp lệ!">*</asp:RequiredFieldValidator>
                                        </td>
							        </tr>
							        <tr>
								        <td>Nhập lại mật khẩu:</td>
								        <td style="width: 228px">
                                            <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:CompareValidator ID="cvNhapLaiMatKhau" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMatKhau" ErrorMessage="Mật khẩu nhập lại không khớp!">*</asp:CompareValidator>
                                        </td>
							        </tr>
						
						        </table>
					        </fieldset>
				        <td style="width: 93px">
			        </tr>
              <tr>
                <td align="middle" style="width: 388px">
                  &nbsp;<asp:Button ID="btnDangKy" runat="server" CssClass="btn" OnClick="btnDangKy_Click" Text="Đăng ký" />
                    <br />
                    <div style="text-align: left">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                    <br />
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                  </td>
              </tr>
            </table>
         </div>
</asp:Content>


