<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DACSN.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    <aside id="left" style="position: fixed">
    <div>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td><span style="font-size: 16px">Xin Chào </span>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenKH") %>' style="font-size: 16px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã thành viên:<asp:Label ID="Label2" runat="server" Text='<%# Eval("MaKH") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaKH","~/QuanLiBaiDang.aspx?MaKH={0}") %>'>Quản lí bài đăng</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaKH","~/QuanLiThongTinCaNhan.aspx?MaKH={0}") %>'>Sửa thông tin cá nhân</asp:HyperLink>
                        </td>
                    </tr>
                  
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
   </aside>
    <section>
        <div class="border-bottom">
                 <h1 class="h1">Đăng tin mới</h1>
         </div>
        <div style="text-align: left; height: 65px; vertical-align: middle;">
            <strong><span style="font-size: 16px">
            <br />
            Tỉnh,Thành Phố:</span></strong><asp:DropDownList ID="drpTinhThanh" runat="server" CssClass="dropDangBai" Height="30px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="drpTinhThanh_SelectedIndexChanged" style="font-size: 16px">
            </asp:DropDownList>
            <strong><span style="font-size: 16px">Quận,Huyện:</span></strong><asp:DropDownList ID="drpQuanHuyen" runat="server" CssClass="dropDangBai" Height="30px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="drpQuanHuyen_SelectedIndexChanged" style="font-size: 16px">
            </asp:DropDownList>
            <strong><span style="font-size: 16px"> Phường,Xã:</span></strong><asp:DropDownList ID="drpPhuongXa" runat="server" CssClass="dropDangBai" Height="30px" Width="150px" style="font-size: 16px">
            </asp:DropDownList>
            <span style="font-size: 16px">&nbsp;
            </span>
        </div>   
        <div>
                 <h3 class="h1">Địa chỉ cho thuê</h3>
         </div>
         <div style=" height: 180px; vertical-align: middle;">

             <table style="width:100%;" class="dangbai">
                 <tr>
                     <td style="height: 21px; width: 54px"><strong>Đường:</strong></td>
                     <td style="height: 21px">
                         <asp:TextBox ID="txtDuong" runat="server" Width="316px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDuong" ErrorMessage="Tên đường không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 54px; height: 40px;"><strong>Số Nhà:</strong></td>
                     <td style="height: 40px">
                         <asp:TextBox ID="txtSoNha" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoNha" ErrorMessage="Số nhà không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2"><strong>Địa chỉ chính xác:&nbsp;</strong></td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="874px"></asp:TextBox>
                     </td>
                 </tr>
             </table>
             </div>
         <div>
                 <h3 class="h1">Thông tin mô tả</h3>
         </div>
        <div>
            
            <table class="dangbai" style="width:100%;">
                <tr>
                    <td><strong>Loại chuyên mục:</strong></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:DropDownList ID="drpLoaiNT" runat="server" Width="108px" CssClass="dropDangBai" Height="30px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tiêu đề:</strong></td>
                </tr>
                <tr>
                    <td style="text-align: center; height: 76px">
                        <asp:TextBox ID="txtTieuDe" runat="server" MaxLength="120" Width="850px"></asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtTieuDe" ErrorMessage="Độ dài tiêu đề từ 30 đến 120 kí tự" ForeColor="Red" MaximumValue="30" MinimumValue="120"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td><strong>Nội dung mô tả:</strong></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txtMoTa" runat="server" Height="108px" TextMode="MultiLine" Width="850px"></asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtMoTa" ErrorMessage="Độ dài phải lớn hơn 100 kí tự" ForeColor="Red" MinimumValue="100" MaximumValue="1000"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; height: 21px"><strong>Thông tin liên hệ:</strong></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtThongTinLienHe" runat="server" ReadOnly="True" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left"><strong>Giá cho thuê (Đồng):</strong></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtGiaChoThue" runat="server" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; height: 21px"><strong>Diện tích (mét vuông):</strong></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDienTich" runat="server" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                </table>
            
        </div>
         <div>
                 <h3 class="h1">Hình ảnh</h3>
         </div>
        <div>
                 
            <table class="dangbai" style="width:100%;">
                <tr>
                    <td>
                        <strong>Chọn hình đăng bài:</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="fuAnhDangBai" runat="server" Width="444px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Chọn hình chi tiết nhà trọ:</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="fuCTNT" runat="server" Width="444px" />
                    </td>
                </tr>
            </table>
                 
         </div>
        <div>
                 <h3 class="h1">Chọn hình thức đăng tin:</h3>
         </div>
        <div>
                
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">Số ngày đăng:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtSoNgay" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtSoNgay" ErrorMessage="Số ngày phải là số nguyên &gt;0" ForeColor="Red" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
                
         </div>
        <div class="auto-style5">     
            <asp:Button ID="btnDangBai" class="snip1582" runat="server" Text="Đăng Bài" />
         </div>
    </section>

    </div>
    </form>
</body>
</html>
