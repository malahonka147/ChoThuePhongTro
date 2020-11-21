<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="DACSN.DoiMatKhau" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <table>
              <tbody><tr>
                <th colspan="2">ĐỔI MẬT KHẨU</th>
              </tr>
              <tr>
                <td>Têm đăng nhập:</td>
                <td style="width: 221px">
                    <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên  đăng nhập không hợp lệ!">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td>Mậu khẩu cũ:</td>
                <td style="width: 221px">
                    <asp:TextBox ID="txtMatKhauCu" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhauCu" runat="server" ControlToValidate="txtMatKhauCu" ErrorMessage="Mật khẩu không hợp lệ!">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td>Mậu khẩu mới:</td>
                <td style="width: 221px">
                    <asp:TextBox ID="txtMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhauMoi" runat="server" ControlToValidate="txtMatKhauMoi" ErrorMessage="Mật khẩu mới không hợp lệ!">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td>Nhập lại mậu khẩu mới:</td>
                <td style="width: 221px">
                    <asp:TextBox ID="txtNhapLaiMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="cvNhapLaiMatKhau" runat="server" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMatKhauMoi" ErrorMessage="Mật khẩu nhập lại chưa đúng!">*</asp:CompareValidator>
                  </td>
              </tr>
              <tr>
                <td colspan="2" align="middle">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Đồng ý" />
                    <asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" />
                    <br />
                    <div style="text-align: left">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                    <br />
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                  </td>
              </tr>
         </tbody></table>
</asp:Content>

