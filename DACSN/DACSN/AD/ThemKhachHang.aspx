<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemKhachHang.aspx.cs" Inherits="DACSN.AD.ThemKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        Thêm mới khách hàng
    </h3>
    <p style="text-align:center">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Tên khách hàng:</td>
                <td>
                    <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mật khẩu</td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Tài khoản</td>
                <td>
                    <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" Text="Lưu" OnClick="btnLuu_Click" />
                    <br />
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
