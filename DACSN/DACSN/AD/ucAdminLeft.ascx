<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminLeft.ascx.cs" Inherits="DACSN.AD.ucAdminLeft" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
</style>
<aside id="left">
    <div class="auto-style1">
	    <p class="auto-style1">QUẢN TRỊ DOANH MỤC</p>
		    <ul type="square">
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AD/NhaTro.aspx">Nhà trọ</asp:HyperLink></li>
			    <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AD/KhachHang.aspx">Khách hàng</asp:HyperLink></li>
                <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AD/QuanTriVien.aspx">Quản trị viên</asp:HyperLink></li>
                <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AD/TimKiemKhuVuc.aspx">Khu vực tìm kiếm</asp:HyperLink></li>
		    </ul>
    </div>
</aside>