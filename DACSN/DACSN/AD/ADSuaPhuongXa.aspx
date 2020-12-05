<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ADSuaPhuongXa.aspx.cs" Inherits="DACSN.AD.ADSua.ADSuaPhuongXa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="font-size: 50px" class="auto-style2">Sữa thông tin Phường/xã</h3><br />
    <table style="width:100%;padding-left:280px">
        <tr>
            <td class="auto-style3">Mã quận/huyện:</td>
            <td>
                <asp:TextBox ID="txtMaQH" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tên Phường/Xã:</td>
            <td>
                <asp:TextBox ID="txtPhuongXa" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table><br />
    <p style="text-align:center">
                <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" PostBackUrl="~/AD/PhuongXa.aspx" Text="Hủy" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
