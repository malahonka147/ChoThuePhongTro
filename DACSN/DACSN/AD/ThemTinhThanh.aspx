<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="ThemTinhThanh.aspx.cs" Inherits="DACSN.AD.ThemKhuVuc.ThemKhuVuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style3 {
            width: 148px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Thêm mới tỉnh thành</h3><br />
    <p style="text-align:center">
        <table style="width: 100%;padding-left:280px">
            <tr>
                <td class="auto-style3">Tên Tỉnh/thành:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTinhThanh" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
        <br />
        <p style="text-align:center">
            <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" Text="Thêm" />
                    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/TinhThanh.aspx" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        </p>
                    
        
    </p>
</asp:Content>
