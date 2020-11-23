<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TimPhongTro.aspx.cs" Inherits="DACSN.TimPhongTro" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
         <div id="TimKiem">
            <strong>Tỉnh,Thành Phố:</strong><asp:DropDownList ID="DropDownList4" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>Bình Dương</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp; <strong>Quận,Huyện:</strong><asp:DropDownList ID="DropDownList2" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>TP Thủ Dầu Một</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;<strong> Phường,Xã:</strong><asp:DropDownList ID="DropDownList3" runat="server" CssClass="drop" Height="25px" Width="120px">
                <asp:ListItem>Phường Tân An</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="btntimkiem" Height="25px" Text="Tìm Kiếm" Width="120px" />
        </div>
         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="2">
                <ItemTemplate>
                     <div class="content">
                         <div id="left">
                              <asp:HyperLink ID="HyperLink6" runat="server" ImageHeight="140px" ImageUrl='<%# "~/Images/"+Eval("HinhAnh","{0}") %>' ImageWidth="140px" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("HinhAnh") %>'></asp:HyperLink>
                         </div>
                        <div id="right">
                            <p class="TieuDe"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink></a>
					            
					        <p class="contentp">Đơn giá: <span class="contentp2"><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' />/Tháng</span></p>
                            <p class="contentp">Diện tích: <span class="contentp2"> <asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' /> mét vuông</span></p>
                            <p class="contentp">Địa Chỉ: <span class="contentp2"><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' /></span></p>
                        </div>
                   </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT [MaNhaTro], [TieuDe], [DienTich], [GiaChoThue], [DiaChi], [HinhAnh] FROM [NhaTroChoThue] WHERE ([LoaiNT] = @LoaiNT)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Phòng Trọ Cho Thuê" Name="LoaiNT" Type="String" />
                </SelectParameters>
         </asp:SqlDataSource>
</asp:Content>

