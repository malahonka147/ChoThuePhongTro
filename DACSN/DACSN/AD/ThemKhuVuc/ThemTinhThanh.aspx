<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ThemTinhThanh.aspx.cs" Inherits="DACSN.AD.ThemKhuVuc.ThemKhuVuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        Thêm mới tỉnh thành</h3>
    <p style="text-align:center">
        <table style="width: 100%;">
            <tr>
                <td>Tên Tỉnh thành:</td>
                <td>
                    <asp:TextBox ID="txtTinhThanh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" Text="Thêm" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
