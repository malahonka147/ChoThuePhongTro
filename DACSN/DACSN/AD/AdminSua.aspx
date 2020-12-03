<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminSua.aspx.cs" Inherits="DACSN.AD.AdminThem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        Sửa thông tin khách hàng</p>
    <table style="width:100%;">
        <tr>
            <td>Tên khách hàng:</td>
            <td>
                <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Số điện thoại:</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tài khoản:</td>
            <td>
                <asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
