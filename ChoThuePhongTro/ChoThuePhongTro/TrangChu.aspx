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
        .auto-style1 {
            height: 32px;
            text-align: center;
        }
        .auto-style4 {
            position: static;
            width: 100%;
            left: -1px;
            top: 45px;
        }
        .auto-style5 {
            margin-right: 0px;
        }
        .auto-style6 {
            height: 112px;
        }
    </style>
</head>
<body>
    <form id="Home" runat="server" class="auto-style5">
        <div class="auto-style6">
            <div id="logo" style="height: 110px; background-color: #FFFFFF; position: static;">
                <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/Images/logo.png" Width="206px" />
        <div id="menutop" style="margin: 0px; background-color: #0066CC; " class="auto-style4">
            <div id="menu">
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
            <div id="TimKiem" class="auto-style1" style="padding-top: 10px">
                Tĩnh,Thành Phố:<asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp; Quận,Huyện:<asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp; Phường,Xã:<asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Tìm Kiếm" />
            </div>
        </div>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
    <div id="footer" style="width: auto; background-color: #0066CC;">
        <div id="ndfooter">
            <p>CopyRight @ 2015 - 2019 Phongtro123.com.</p>
            <p>SĐT: 0922638628.</p>
            <p>Email:logragit3008@gmail.com.</p>
            <p>Địa chỉ: số 38, đường Huỳnh Thị Hiếu, phường Tân An.</p>
            <p>Giấy phép đăng ký kinh doanh số 0313588502 do Sở kế hoạch và Đầu tư thành phố Hồ Chí Minh cấp ngày 30 tháng 3 năm 2017.</p>
        </div>
    </div>
    </body>
</html>

