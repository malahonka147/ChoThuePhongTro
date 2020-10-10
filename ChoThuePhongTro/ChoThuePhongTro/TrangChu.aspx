<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ChoThuePhongTro.TrangChu" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title>Cho thuê phòng trọ</title>
    <link href="CSS/Style.css" rel="stylesheet" />
    <style type="text/css">
        #Home {
            height: 812px;
        }
        .auto-style4 {
            position: static;
            width: 100%;
            left: -1px;
            top: 0px;
            height: 34px;
        }
        .auto-style5 {
            margin-right: 0px;
            height: 852px;
        }
        .auto-style6 {
            height: 112px;
        }
        .auto-style7 {
            height: 654px;
            text-align: center;
            position: static;
            margin-top: 0px;
        }
        .auto-style8 {
            width: 1060px;
            margin-left: 361px;
            position: static;
            left: 162px;
            top: 144px;
            height: 1129px;
        }
        .auto-style10 {
            height: 221px;
        }
        .auto-style11 {
            width: 1024px;
        }
        .auto-style12 {
            height: 32px;
        }
        .auto-style13 {
            color: #0000FF;
        }
        .auto-style14 {
            width: 1034px;
        }
        .auto-style3 {
            height: 36px;
            width: 1361px;
        }
        .auto-style15 {
            width: 994px;
            height: 210px;
        }
        .auto-style16 {
            width: 992px;
            height: 188px;
        }
        .auto-style17 {
            width: 990px;
            height: 188px;
        }
        .auto-style18 {
            width: 989px;
            height: 183px;
        }
        .auto-style19 {
            width: 989px;
            height: 177px;
        }
        .auto-style20 {
            width: 158px;
            height: 162px;
        }
        .auto-style21 {
            width: 155px;
            height: 176px;
        }
        .auto-style22 {
            width: 154px;
            height: 173px;
        }
        .auto-style23 {
            width: 156px;
            height: 179px;
        }
        .auto-style24 {
            width: 159px;
            height: 200px;
        }
        </style>
</head>
<body>
    <form id="Home" runat="server" class="auto-style5">
        <div class="auto-style6">
            <div id="logo" style="height: 110px; background-color: #FFFFFF; position: static;">
                <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/Images/logo.png" Width="206px" />
        <div id="menutop" style="margin: 0px; background-color: #0066CC; position: static;" class="auto-style4">
            <div id="menu" class="auto-style12">
                <ul style="font-size: 13px">
                    <li><a href="#">Trang Chủ</a></li>
                    <li><a href="#">Cho thuê phòng trọ</a></li>
                    <li><a href="#">Tìm người ở ghép</a></li>
                    <li><a href="#">Hướng dẫn</a></li>
                    <li><a href="#">Nạp tiền</a></li>
                    <li><a href="#">Bảng giá dịch vụ</a></li>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server">Đăng Nhập</asp:HyperLink>
                    </li>
                    <li></li>
                    <li>
                        <asp:HyperLink ID="HyperLink2" runat="server">Đăng Ký</asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
        <div id="maincontent" class="auto-style7" style="margin: auto; position: static">
            <br />
            <div id="TimKiem" class="auto-style3" style="margin: auto; padding-top: 10px; font-size: medium;">
                <strong>Tĩnh,Thành Phố:</strong><asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Bình Dương</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp; <strong>Quận,Huyện:</strong><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>TP Thủ Dầu Một</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;<strong> Phường,Xã:</strong><asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Phường Tân An</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Tìm Kiếm" />

                    
                    <div id="content0">
                    </div>

                    
            </div>
                    <div id="content" class="auto-style8">
                        <h1>&nbsp;</h1>
                        <h1>Cho thuê phòng trọ, cho thuê nhà trọ, tìm phòng trọ</h1>
        <div id="ndcontent" class="auto-style11">
            <div id="left" class="auto-style14">
        	<ul>
            	<li class="auto-style15">
                    <a href="#"><img src="Images/1.jpg" class="auto-style24"/></a>
                    <a href="#"<h2>PHÒNG TRỌ MỚI, SẠCH SẼ-MÁY LẠNH-TIỆN NGHI</h2></a>
                        <p class="auto-style13">Diện tích:</p>
                        <p class="auto-style13">Địa chỉ:</p>
                        <p class="auto-style13">Giá:</p>
                </li>
                <li class="auto-style16">
                    <a href="#"><img src="Images/2.jpg" class="auto-style23"/></a>
                    <a href="#"<h2>CHÍNH CHỦ CHO THUÊ PHÒNG NỘI THẤT GẦN SÂN BAY.</h2>
                        <p>Diện tích:</p>
                        <p>Địa chỉ:</p>
                        <p>Giá:</p>
                    </a>
                </li>
                <li class="auto-style17">
                    <a href="#"><img src="Images/3.jpg" class="auto-style22"/></a>
                    <a href="#"<h2>CHO THUÊ PHÒNG TRỌ CAO CẤP, SẠCH SẼ, AN NINH-KDC CHÁNH NGHĨA-THÍCH HỢP VIÊN CHỨC,CÔNG NHÂN VIÊN, SINH VIÊN.</h2>
                        <p>Diện tích:</p>
                        <p>Địa chỉ:</p>
                        <p>Giá:</p>
                    </a>
                </li>
                <li class="auto-style18">
                    <a href="#"><img src="Images/4.jpg" class="auto-style21"/></a>
                    <a href="#"<h2>PHÒNG TRỌ SÁT BÊN TRƯỜNG ĐH CÔNG NGHIỆP TPHCM.</h2>
                        <p>Diện tích:</p>
                        <p>Địa chỉ:</p>
                        <p>Giá:</p>
                    </a>
                </li>
                <li class="auto-style19">
                    <a href="#"><img src="Images/5.jpg" class="auto-style20"/></a>
                    <a href="#"<h2>CHO THUÊ PHÒNG MỚI XÂY, AN NINH 205/56A THOẠI NGỌC HẦU, QUẬN TÂN PHÚ.</h2>
                        <p>Diện tích:</p>
                        <p>Địa chỉ:</p>
                        <p>Giá:</p>
                    </a>
                </li>
            </ul>
        </div>
                    </div>

                    
            </div>
            </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
    <div id="footer" style="width: auto; background-color: #0066CC;">
        <div id="ndfooter" class="auto-style10">
            <p>CopyRight @ 2015 - 2019 Phongtro123.com.</p>
            <p>SĐT: 0922638628.</p>
            <p>Email:logragit3008@gmail.com.</p>
            <p>Địa chỉ: số 38, đường Huỳnh Thị Hiếu, phường Tân An.</p>
            <p>Giấy phép đăng ký kinh doanh số 0313588502 do Sở kế hoạch và Đầu tư thành phố Hồ Chí Minh cấp ngày 30 tháng 3 năm 2017.</p>
        </div>
    </div>
    </body>
</html>

