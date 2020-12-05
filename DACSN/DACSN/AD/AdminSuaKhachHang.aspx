<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminSuaKhachHang.aspx.cs" Inherits="DACSN.AD.AdminThem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 550px;
            text-align: left;
        }
        .auto-style3 {
            width: 487px;
        }
        .auto-style4 {
            width: 65%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;" class="auto-style1">
        Sửa thông tin khách hàng</h3>
    <br />
    <table id="TaiKhoan" style="padding-left:150px" align="center" class="auto-style4">
        <tr>
            <td class="auto-style2">Tên khách hàng:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Số điện thoại:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tài khoản:</td>
            <td class="auto-style3">
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
