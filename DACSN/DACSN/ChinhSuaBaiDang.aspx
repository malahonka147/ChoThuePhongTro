<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="ChinhSuaBaiDang.aspx.cs" Inherits="DACSN.ChinhSuaBaiDang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <aside id="left">
    <div>
        <p>Bảng Chức Năng</p>
        <asp:DataList ID="dlTTKH" runat="server">
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
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaKH","~/QuanLiBaiDang.aspx?MaKH={0}") %>' ForeColor="Black">Quản lí bài đăng</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaKH","~/QuanLiThongTinCaNhan.aspx?MaKH={0}") %>' ForeColor="Black">Sửa thông tin cá nhân</asp:HyperLink>
                        </td>
                    </tr>
                  
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
   </aside>
    <section>
       <div class="border-bottom">
                 <h1 class="h1">
                     Đăng tin mới</h1>
         </div>
        <div style="text-align: left; height: 65px; vertical-align: middle;">
            <strong><span style="font-size: 16px">
            <br />
            Tỉnh,Thành Phố:</span><asp:TextBox ID="txtTinhThanh" runat="server" Height="30px" ReadOnly="True" Width="180px"></asp:TextBox>
            <span style="font-size: 16px">Quận,Huyện:</span><asp:TextBox ID="txtQuanHuyen" runat="server" Height="30px" ReadOnly="True" Width="180px"></asp:TextBox>
            <span style="font-size: 16px"> Phường,Xã:</span></strong><span style="font-size: 16px">&nbsp;
            <asp:TextBox ID="txtPhuongXa" runat="server" Height="30px" ReadOnly="True" Width="180px"></asp:TextBox>
            </span>
        </div>   
        <div>
                 <h3 class="h1">Địa chỉ cho thuê</h3>
         </div>
         <div style=" height: 180px; vertical-align: middle;">

             <table style="width:100%;" class="dangbai">
                 <tr>
                     <td style="height: 21px; width: 80px"><strong>Đường:</strong></td>
                     <td style="height: 21px">
                         <asp:TextBox ID="txtDuong" runat="server" Width="316px" AutoPostBack="True"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDuong" ErrorMessage="Tên đường không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 80px; height: 40px;"><strong>Số Nhà:</strong></td>
                     <td style="height: 40px">
                         <asp:TextBox ID="txtSoNha" runat="server" AutoPostBack="True"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoNha" ErrorMessage="Số nhà không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2"><strong>Địa chỉ chính xác:&nbsp;</strong></td>
                 </tr>
                 <tr>
                     <td colspan="2">
                         <asp:TextBox ID="txtDiaChiChinhXac" runat="server" ReadOnly="True" Width="874px"></asp:TextBox>
                     </td>
                 </tr>
             </table>
             </div>
         <div style="height: 29px">
                 <h3 class="h1">Thông tin mô tả</h3>
         </div>
        <div>
            
            <table class="dangbai" style="width:100%;">
                <tr>
                    <td><strong>Loại chuyên mục:</strong></td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        <asp:DropDownList ID="drpLoaiNT" runat="server" Width="200px" CssClass="dropDangBai" Height="30px">
                            <asp:ListItem>Tìm Người Ở Ghép</asp:ListItem>
                            <asp:ListItem>Phòng trọ cho thuê</asp:ListItem>
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
                    </td>
                </tr>
                <tr>
                    <td><strong>Nội dung mô tả:</strong></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txtMoTa" runat="server" Height="108px" TextMode="MultiLine" Width="850px"></asp:TextBox>
                        <br />
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGiaChoThue" Display="Dynamic" ErrorMessage="Giá cho thuê không được trống" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtGiaChoThue" ErrorMessage="Giá cho thuê phải là số nguyên &gt;0" ForeColor="Red" MaximumValue="100000000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; height: 21px"><strong>Diện tích (mét vuông):</strong></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtDienTich" runat="server" Width="170px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDienTich" Display="Dynamic" ErrorMessage="Diện tích không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtDienTich" ErrorMessage="Diện tích phải là số nguyên &gt;0" ForeColor="Red" MaximumValue="1000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                </table>
            
        </div>
        <div class="auto-style5" style="text-align: center">     
            <asp:Button ID="btnDangBai" class="snip1582" runat="server" Text="Đăng Bài" OnClick="btnDangBai_Click" style="left: 13px; top: 0px; height: 38px; width: 168px; font-size: 16px" />
         </div>

        
    </section>

</asp:Content>
