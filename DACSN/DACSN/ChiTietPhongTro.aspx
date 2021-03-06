﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChiTietPhongTro.aspx.cs" Inherits="DACSN.ChiTietPhongTro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:DataList ID="dlChiTietPhongTro" runat="server" Width="900px">
          <ItemTemplate>
                    <h3 style="color: #E13427; font-weight: bold; font-size: 24px; margin-bottom: 15px; text-align: left;"><asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' /></h3>
                    <div style="margin-top: 15px">
                        <table class="bgdv" align="center">
                            <tbody>
                                <tr>
                                    <td style="width: 139px; text-align: center; height: 50px;">Địa chỉ:</td>
                                    <td colspan="3"><asp:Label ID="DiaChiLabel" runat="server"  Text='<%# Eval("DiaChi") %>' CssClass="lbCTNT" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 139px; text-align: center;">Người đăng:</td>
                                    <td><asp:Label ID="TenKHLabel" runat="server" Text='<%# Eval("TenKH") %>' CssClass="lbCTNT" /></td>
                                </tr>
                                <tr>
                                    <td style="height: 50px; width: 139px; text-align: center;">Điện thoại:</td>
                                    <td><asp:Label ID="SDTNguoiChoThueLabel" runat="server" Text='<%# Eval("SDTNguoiChoThue") %>' CssClass="lbCTNT" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 139px; text-align: center;">Diện tích:</td>
                                    <td><asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' CssClass="lbCTNT" /></td>
                                </tr>
                                <tr>
                                    <td style="width: 139px; text-align: center;">Giá cho thuê:</td>
                                    <td><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' CssClass="lbCTNT" />/Tháng </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div class="huongdan" style="text-align: left">
                        <h3><span style="font-weight: normal"><strong>Thôn tin mô tả</strong></span></h3>
                        <br />
                        <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa").ToString().Replace("\n","<br/>") %>' style="font-weight: normal" />
                    </div>
         

                            </ItemTemplate>
                        </asp:DataList>
              
           
        <br />
        <div><p style="font-size: 18px; font-weight: bold;margin-left:10px;padding-left:145px"> Hình ảnh</p></div>
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
    <div><p style="font-size: 18px; font-weight: bold;margin-left:10px;padding-left:145px"> Đánh giá</p></div>
    <div id="DanhGia" style="text-align: left; width: 1009px">
        <asp:DataList ID="dlDanhGia" runat="server" Width="895px" HorizontalAlign="Left" style="margin-left: 0px">
            <ItemTemplate>
                <div id="formdg">
                    <strong>
                    <asp:Label ID="lbTenKH" runat="server" CssClass="DGTenKH" Text='<%# Eval("TenKH") %>'></asp:Label>
                    </strong>
                    <br />
                    <asp:Label ID="lbDanhGia" runat="server" CssClass="DGcmt" Text='<%# Eval("DanhGIa") %>' style="font-weight: normal"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div id="vietDG" style="text-align: center">
           <table id="TaiKhoan" style="width:84%;">
               <tr>
                   <td colspan="2" style="text-align: center; height: 22px;">
                        <p style="font-size: 18px; font-weight: bold;margin-left:10px;padding-left: 40px; text-align: left;"> Viết đánh giá</p>
                   </td>
               </tr>
               <tr>
                   <td style="text-align: right; width: 202px">
                        Họ Tên:</td>
                   <td style="text-align: left">
                        <asp:TextBox ID="txtTenKH" runat="server" Width="258px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="height: 21px; width: 202px; text-align: right">Nội Dung:</td>
                   <td style="height: 21px; text-align: left">
            <asp:TextBox ID="txtDanhGia" runat="server" TextMode="MultiLine" Width="437px" Height="61px" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
            <asp:Button ID="btnBinhLuan" runat="server" Text="Bình Luận" OnClick="btnBinhLuan_Click" Height="36px" Width="97px" />    
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
                       <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
                   </td>
               </tr>
           </table>
            <br />
    </div>
</asp:Content>
