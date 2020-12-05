<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminSuaKhachHang.aspx.cs" Inherits="DACSN.AD.AdminThem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;" class="auto-style1">
        Sửa thông tin khách hàng</h3>
    <br />
    <table style="width:100%;padding-left:150px">
        <tr>
            <td class="auto-style2">Tên khách hàng:</td>
            <td>
                <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Số điện thoại:</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu:</td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tài khoản:</td>
            <td>
                <asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:center" class="auto-style1" colspan="2">
                <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
                &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Hủy" PostBackUrl="~/AD/KhachHang.aspx" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
