<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="ChiTietPhongTro.aspx.cs" Inherits="DACSN.ChiTietPhongTro" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="CTNT">
         <asp:DataList ID="dlChiTietPhongTro" runat="server" DataSourceID="SqlDataSource1">
          <ItemTemplate>
             
                   <div >
                        <h3 style="color: #E13427; font-weight: bold; font-size: 24px; margin-bottom: 15px; text-align: left;"><asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' /></h3>
                    </div>
                    <div style="margin-top: 15px">
                        <table class="bgdv" align="center">
                            <tbody>
                                <tr>
                                    <td style="width: 167px">Địa chỉ:</td>
                                    <td colspan="3" style="text-align: justify"><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' /></td>
                                </tr>
                                <tr>
                                    <td style="width: 162px">Người đăng:</td>
                                    <td style="width: 190px"><asp:Label ID="TenKHLabel" runat="server" Text='<%# Eval("TenKH") %>' /></td>
                                </tr>
                                <tr>
                                    <td style="height: 50px; width: 162px">Điện thoại:</td>
                                    <td style="height: 50px; width: 190px"><asp:Label ID="SDTNguoiChoThueLabel" runat="server" Text='<%# Eval("SDTNguoiChoThue") %>' /></td>
                                </tr>
                                <tr>
                                    <td style="width: 162px">Diện tích:</td>
                                    <td style="width: 190px"><asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' /></td>
                                </tr>
                                <tr>
                                    <td style="width: 162px">Giá cho thuê:</td>
                                    <td style="width: 190px"><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' />/Tháng </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div class="huongdan" style="text-align: left">
                        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa").ToString().Replace("\n","<br/>") %>' style="font-weight: normal" />
                    </div>
         

                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="ChiTietNhaTro" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="MaNT" QueryStringField="MaNT" Type="String" />
                            </SelectParameters>
                     </asp:SqlDataSource>
              </div>
           
        <br />
        <div><h3 style="font-size: 24px; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hình ảnh</h3></div>
        <br />
        <div class="slideshow-container">
                      
         <asp:DataList ID="dlHinhChiTietNhaTro" runat="server">
             <ItemTemplate>
  <!-- Full-width images with number and caption text -->
                <div class="mySlides fade">
                    <asp:Image Class="SlideShow" runat="server" ImageUrl='<%# "~/Images/"+Eval("HinhAnh","{0}") %>' />
                </div>
                 
             </ItemTemplate>
         </asp:DataList>

  <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
        <script src="SlideShow.js"></script>
         <div><h3 style="font-size: 24px; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bình luận</h3>
     </div>
    <div id="DanhGia">
        <asp:DataList ID="dlDanhGia" runat="server" Width="1062px">
            <ItemTemplate>
                <asp:Label ID="lbTenKH" runat="server" CssClass="DGTenKH" Text='<%# Eval("TenKH") %>'></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbDanhGia" runat="server" CssClass="DGcmt" style="font-weight: normal" Text='<%# Eval("DanhGIa") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
        
        </asp:Content>
