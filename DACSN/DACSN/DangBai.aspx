<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="DangBai.aspx.cs" Inherits="DACSN.DangBai" %>
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
                 <h1 class="h1">Đăng tin mới</h1>
         </div>
        <div style="text-align: left; height: 65px; vertical-align: middle;">
            <strong><span style="font-size: 16px">
            <br />
            Tỉnh,Thành Phố:</span></strong><asp:DropDownList ID="drpTinhThanh" runat="server" CssClass="dropDangBai" Height="30px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="drpTinhThanh_SelectedIndexChanged" style="font-size: 16px">
            </asp:DropDownList>
            <strong><span style="font-size: 16px">Quận,Huyện:</span></strong><asp:DropDownList ID="drpQuanHuyen" runat="server" CssClass="dropDangBai" Height="30px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="drpQuanHuyen_SelectedIndexChanged" style="font-size: 16px">
            </asp:DropDownList>
            <strong><span style="font-size: 16px"> Phường,Xã:</span></strong><asp:DropDownList ID="drpPhuongXa" runat="server" CssClass="dropDangBai" Height="30px" Width="180px" style="font-size: 16px" AutoPostBack="True">
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
         <div>
                 <h3 class="h1">Hình ảnh</h3>
         </div>
        <div>
                 
           <table class="dangbai" style="width:100%;">     
                <tr>
                    <td>
                        <strong>Chọn hình chi tiết nhà trọ:</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="fuCTNT" runat="server" Width="444px" AllowMultiple="True" />
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
                    <td class="auto-style6">Số ngày đăng (2000đ/1):</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtSoNgay" runat="server" AutoPostBack="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoNgay" Display="Dynamic" ErrorMessage="Số ngày không được để trống" ForeColor="Red" style="font-weight: normal"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtSoNgay" ErrorMessage="Số ngày phải là số nguyên &gt;0" ForeColor="Red" Type="Integer" MaximumValue="999" MinimumValue="0" style="font-weight: normal"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Thành tiền:
                        <asp:Label ID="lbThanhTien" runat="server" ForeColor="Red"></asp:Label>
                        <span style="color: red">/đồng</span></td>
                </tr>
            </table>
                
         </div>
        <div>
            <div>
                <input id="rbOnePay" runat="server" type="radio" name="rbHinhThucThanhToan" /><label for="rbOnePay"> Thanh toán bằng ATM</label>
            </div>
            
        </div>
        <div class="auto-style5" style="text-align: center">     
            <asp:Button ID="btnDangBai" class="snip1582" runat="server" Text="Đăng Bài" OnClick="btnDangBai_Click" style="left: 13px; top: 0px; height: 38px; width: 168px; font-size: 16px" />
         </div>
    </section>

</asp:Content>
