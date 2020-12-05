<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemKhachHang.aspx.cs" Inherits="DACSN.AD.ThemKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 218px;
        }
        .auto-style4 {
            width: 57%;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Thêm mới khách hàng
    </h3>
    <br />
    <p style="text-align:center;">
        <table id="TaiKhoan" class="auto-style4">
            <tr>
                <td class="auto-style3">Tên khách hàng:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Số điện thoại:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mật khẩu</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMatKhau" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tài khoản</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" Text="Lưu" OnClick="btnLuu_Click" />
                    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" OnClick="btnLuu_Click" PostBackUrl="~/AD/KhachHang.aspx" />
                    <br />
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
