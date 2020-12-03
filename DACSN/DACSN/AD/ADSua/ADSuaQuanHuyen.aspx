<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ADSuaQuanHuyen.aspx.cs" Inherits="DACSN.AD.ADSua.ADSuaQuanHuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 131px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="font-size: 50px"; class="auto-style2">Sữa thông tin Quận huyện</h3><br />
    <table style="width:100%;padding-left:280px">
        <tr>
            <td class="auto-style3">Mã tỉnh:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMaTinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tên quận huyện:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTenQuanHuyen" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table><br />
    <p style="text-align:center">
        <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" PostBackUrl="~/AD/QuanHuyen.aspx" Text="Hủy" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
                
</asp:Content>
