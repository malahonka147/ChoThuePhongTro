<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ThemQuanHuyen.aspx.cs" Inherits="DACSN.AD.ThemKhuVuc.ThemQuanHuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        Thêm mới quận huyên</h3>
    <p style="text-align:center">
        <table style="width:100%;">
            <tr>
                <td>Mã tỉnh:</td>
                <td>
                    <asp:TextBox ID="txtMaTinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tên quận huyện</td>
                <td>
                    <asp:TextBox ID="txtTenQH" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
