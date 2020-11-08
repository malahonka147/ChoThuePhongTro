<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="DACSN.DoiMatKhau" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
</asp:Content>

