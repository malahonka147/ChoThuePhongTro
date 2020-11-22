<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="DACSN.DangNhap" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
                    <div class="login" style="height: 322px">
                       
                        <table style="width:100%;">
                            <tr>
                                <td colspan="2" style="text-align: center">ĐĂNG NHẬP</td>
                            </tr>
                            <tr>
                                <td>Tên đăng nhập:</td>
                                <td>
                                    <asp:TextBox ID="txtDangNhap" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtDangNhap" ErrorMessage="Tên đăng nhập không hợp lệ">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Mật khẩu:</td>
                                <td>
                                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMK" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Mật khẩu không hợp kệ">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Button ID="btnDangNhap" runat="server" EnableTheming="True" Text="Đăng nhập" CssClass="btn" OnClick="btnDangNhap_Click" />
                                    <div style="text-align: left">
                                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: left">
                                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right">
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/DoiMatKhau.aspx">Đổi mật khẩu</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                    </div>
</asp:Content>

