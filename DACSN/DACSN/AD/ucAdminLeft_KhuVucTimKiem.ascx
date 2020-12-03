<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminLeft_KhuVucTimKiem.ascx.cs" Inherits="DACSN.AD.ucAdminLeft_KhuVucTimKiem" %>
<link href="../Style.css" rel="stylesheet" />
<aside id="left">
    <div class="auto-style1">
	    <p>QUẢN LÍ CÁC KHU VỰC</p>
		    <ul type="square">
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink2" runat="server"><a href="TinhThanh.aspx">Tỉnh thành</a></asp:HyperLink></li>
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AD/QuanHuyen.aspx">Quận huyện</asp:HyperLink></li>
                <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink1" runat="server">Phường xã</asp:HyperLink></li>
		    </ul>
    </div>
</aside>