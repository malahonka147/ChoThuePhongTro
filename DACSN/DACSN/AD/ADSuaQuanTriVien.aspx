<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ADSuaQuanTriVien.aspx.cs" Inherits="DACSN.AD.ADSua.ADSuaQuanTriVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 style="font-size: 50px;padding-left:-150px" class="auto-style3">Sữa thông tin Admin</h3><br />
    <table id="TaiKhoan" style="width:100%;padding-left:250px">
        
        <tr>
            <td class="auto-style2">Tên tài khoản Admin:</td>
            <td>
                <asp:TextBox ID="txtTaiKhoanAD" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mật khẩu Admin:</td>
            <td>
                <asp:TextBox ID="txtMatKhauAD" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Số điện thoại Admin:</td>
            <td>
                <asp:TextBox ID="txtSDT_AD" runat="server"></asp:TextBox>
            </td>
        </tr>
            </table><br />
        <p style="text-align:center">
            <asp:Button ID="btnThem" runat="server" CssClass="btn" Text="Sữa" OnClick="btnThem_Click" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/QuanTriVien.aspx" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        </p>
                

</asp:Content>
