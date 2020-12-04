﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="DACSN.UC.ucHeader" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
</style>
<header>
	<div id="logo">
        <img class="hinhlogo" src="Images/logo.png" />
	</div>
	<div id="dn">
		<a id ="aDangNhap" runat="server" href="~/DangNhap.aspx">Đăng nhập</a> <strong>
        <asp:Label ID="lbTenDN" runat="server" Text="Tên đăng nhập" CssClass="lbTenKH"></asp:Label>
        </strong>
        <a>|</a>
        <a id="aDangKy" runat="server" href="~/DangKi.aspx">Đăng ký</a>
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
        <asp:LinkButton ID="btnDangBai" class="snip1582" runat="server" OnClick="btnDangBai_Click">Đăng bài</asp:LinkButton>
        <asp:LinkButton ID="btnQuanTri" class="snip1582" runat="server" OnClick="btnQuanTri_Click">Quản trị</asp:LinkButton>
	</div>
</header>