<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="DACSN.UC.ucHeader" %>
<link href="../Style.css" rel="stylesheet" />
<header>
	<div id="logo">
        <img class="hinhlogo" src="Images/logo.png" />
	</div>
	<div id="dn">
		<a id ="aDangNhap" runat="server" href="~/DangNhap.aspx">Đăng nhập</a>
        <asp:Label ID="lbTenDN" runat="server" Text="Tên đăng nhập"></asp:Label>
        <a>|</a>
        <a id="aDangKy" runat="server" href="~/DangKi.aspx">Đăng ký</a>
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
	</div>
</header>