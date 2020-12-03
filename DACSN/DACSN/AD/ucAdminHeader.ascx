<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminHeader.ascx.cs" Inherits="DACSN.AD.ucAdminHeader" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
</style>
<header>
	<div id="logo">
        <img class="hinhlogo" src="../Images/logo.png" />
	</div>
	<div id="dn">
		<a id ="aDangNhap" runat="server">Đăng nhập</a> <strong>
        <asp:Label ID="lbTenDN" runat="server" Text="Tên đăng nhập" CssClass="lbTenKH"></asp:Label>
        </strong>
        <a>|</a>
        <a id="aDangKy" runat="server" href="~/DangKi.aspx">Đăng ký</a>
        <asp:LinkButton ID="lbtDangXuat" runat="server" PostBackUrl="~/TrangChu.aspx">Đăng xuất</asp:LinkButton>
	</div>
</header>