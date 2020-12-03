<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminLeft_KhuVucTimKiem.ascx.cs" Inherits="DACSN.AD.ucAdminLeft_KhuVucTimKiem" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        height: auto;
        margin: 5px;
        list-style-position: inside;
        list-style-image: url('');
        font-weight: bold;
        padding-left: 2px;
        padding-right: 2px;
        font-size: 18px;
        text-align: left;
    }
    </style>
<aside id="left">
    <div class="auto-style1">
	    <p>QUẢN LÍ CÁC KHU VỰC</p>
		    <ul type="square">
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AD/TinhThanh.aspx">Tỉnh thành</a></asp:HyperLink></li>
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AD/QuanHuyen.aspx">Quận huyện</asp:HyperLink></li>
                <li class="aside" style="height: 40px; padding-top: 5px;"><strong><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AD/PhuongXa.aspx">Phường xã</asp:HyperLink></strong></li>
		    </ul>
    </div>
</aside>