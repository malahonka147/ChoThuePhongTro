﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="AdSuaTinhThanh.aspx.cs" Inherits="DACSN.AD.ADSua.AdSuaTinhThanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="font-size: 50px;text-align:center">Sữa thông tin Tỉnh thành</h3><br />
    <table id="TaiKhoan" style="width:100%;padding-left:280px">
        
        <tr>
            <td class="auto-style3">Mã tỉnh:</td>
            <td>
                <asp:TextBox ID="txtMaTinh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tên tỉnh:</td>
            <td>
                <asp:TextBox ID="txtTenTinh" runat="server"></asp:TextBox>
            </td>
        </tr>
            </table><br />
       <p style="text-align:center">
           <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" PostBackUrl="~/AD/TinhThanh.aspx" Text="Hủy" />
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
       </p>

</asp:Content>
