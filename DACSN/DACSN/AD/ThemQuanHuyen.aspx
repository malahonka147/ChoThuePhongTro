<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ThemQuanHuyen.aspx.cs" Inherits="DACSN.AD.ThemKhuVuc.ThemQuanHuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
            width: 170px;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Thêm mới quận huyên</h3><br />
    <p style="text-align:center">
        <table id="TaiKhoan" style="width:100%;padding-left:280px">
            <tr>
                <td class="auto-style2">Mã tỉnh:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaTinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tên quận huyện</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTenQH" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table><br />
        <p style="text-align:center">
            <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
                    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/QuanHuyen.aspx" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        </p>
                    
    </p>
</asp:Content>
