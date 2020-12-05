<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ThemPhuongXa.aspx.cs" Inherits="DACSN.AD.ThemKhuVuc.ThemPhuongXa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            width: 142px;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Thêm mới phường xã</h3><br />
    <p style="text-align:center">
        <table style="width:100%;padding-left:280px">
            <tr>
                <td class="auto-style2">Mã quận/huyện:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaQH" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tên phường/xã:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTenPX" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p style="text-align:center">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" Text="Lưu" OnClick="btnLuu_Click" />
                    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/PhuongXa.aspx" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        </p>
    </p>
</asp:Content>
