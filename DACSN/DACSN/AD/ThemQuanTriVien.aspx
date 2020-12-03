<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemQuanTriVien.aspx.cs" Inherits="DACSN.AD.ThemQuanTriVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        <strong>Thêm mới quản trị viên</strong></h3>
    <h3 style="text-align:center">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Tên tài khoản:</td>
                <td>
                    <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        &nbsp;
    </h3>
    <p style="text-align:center">
        <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
    </p>
    <p style="text-align:center">
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
