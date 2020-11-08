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
				        <td>
					        <fieldset>
						        <legend><b>Thông tin đăng nhập</b></legend>
						        <table>
							        <tr>
								        <td>Họ và tên:</td>
								        <td><input id="hoten" type="text" name="txtHoTen"></td>
							        </tr>
							        <tr>
								        <td>Ngày sinh:</td>
								        <td><select name="Ngay">
										        <option value="01" selected>01</option>
										        <option value="02" >02</option>
										        <option value="03" >03</option>
										        <option value="04" >04</option>
										        <option value="05" >05</option>
										        <option value="06" >06</option>
										        <option value="07" >07</option>
										        <option value="08" >08</option>
										        <option value="09" >09</option>
										        <option value="10" >10</option>
										        <option value="11" >11</option>
										        <option value="12" >12</option>
										        <option value="13" >13</option>
										        <option value="14" >14</option>
										        <option value="15" >15</option>
										        <option value="16" >16</option>
										        <option value="17" >17</option>
										        <option value="18" >18</option>
										        <option value="19" >19</option>
										        <option value="20" >20</option>
										        <option value="21" >21</option>
										        <option value="22" >22</option>
										        <option value="23" >23</option>
										        <option value="24" >24</option>
										        <option value="25" >25</option>
										        <option value="26" >26</option>
										        <option value="27" >27</option>
										        <option value="28" >28</option>
										        <option value="29" >29</option>
										        <option value="30" >30</option>
										        <option value="31" >31</option>
									        </select>
								        Tháng:<select name="Thang">
										        <option value="01" selected>01</option>
										        <option value="02" >02</option>
										        <option value="03" >03</option>
										        <option value="04" >04</option>
										        <option value="05" >05</option>
										        <option value="06" >06</option>
										        <option value="07" >07</option>
										        <option value="08" >08</option>
										        <option value="09" >09</option>
										        <option value="10" >10</option>
										        <option value="11" >11</option>
										        <option value="12" >12</option>
									        </select>
								        Năm:<input id="nam" type="text" size ="4" name="txtNam"></td>
							        </tr>
							        <tr>
								        <td>Giới tính:</td>
								        <td><input type="radio" value="Nam" checked>Nam<input type="radio" value="Nữ">Nữ</td>
							        </tr>
							        <tr>
								        <td>Địa chỉ:</td>
								        <td>
                                            <asp:TextBox ID="txtDiaChi" runat="server" CssClass="diachi" TextMode="MultiLine"></asp:TextBox>
                                        </td>
							        </tr>
							        <tr>
								        <td>Điện thoại:</td>
								        <td><input type="tel" ></td>
							        </tr>
							        <tr>
								        <td>Email:</td>
								        <td><input id="email" type="email" name="txtEmail" required></td>
							        </tr>
						        </table>
					        </fieldset>
				        </td>
			        <tr>
				        <td>
					        <fieldset>
						        <legend><b>Thông tin đăng nhập</b></legend>
						        <table>
							        <tr>
								        <td>Tên đăng nhập:</td>
								        <td><input id="tendangnhap" type="text" name="txtTenDangNhap"></td>
							        </tr>
							        <tr>
								        <td>Mật khẩu:</td>
								        <td><input id="matkhau" type="password" name="txtMatKhau"></td>
							        </tr>
							        <tr>
								        <td>Nhập lại mật khẩu:</td>
								        <td><input id="nhaplaimatkhau" type="password" name="txtNhapLaiMatKhau"></td>
							        </tr>
						
						        </table>
					        </fieldset>
				        <td>
			        </tr>
              <tr>
                <td align="middle">
                  <input class="btn" type="submit" value="Đăng Ký" onClick="return KiemTra()">
                  <input class="btn" type="reset" value ="Hủy" /></td>
              </tr>
            </table>
         </div>
</asp:Content>


