<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ThemQuanTriVien.aspx.cs" Inherits="DACSN.AD.ThemQuanTriVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
            width: 224px;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        <strong style="font-size: 50px">Thêm mới quản trị viên</strong></h3><br />
    <h3 style="text-align:center">
        <table style="width:100%;padding-left:150px">
            <tr>
                <td class="auto-style2">Tên tài khoản:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mật khẩu:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Số điện thoại:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        &nbsp;
    </h3>
    <p style="text-align:center">
        <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Hủy" PostBackUrl="~/AD/QuanTriVien.aspx" />
    </p>
    <p style="text-align:center">
                    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
