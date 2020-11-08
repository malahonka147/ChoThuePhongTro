<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="ChiTietPhongTro.aspx.cs" Inherits="DACSN.ChiTietPhongTro" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1">
          <ItemTemplate>
        <div>
            <h3 style="color: #E13427; font-weight: bold; font-size: 24px; margin-bottom: 15px;"><asp:Label ID="TieuDeLabel" runat="server" Text='<%# Eval("TieuDe") %>' /></h3>
        </div>
        <div style="margin-top: 15px">
            <table class="bgdv">
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
        <br>
        <div class="huongdan">
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
        </div>
         

                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT KhachHang.TenKH, NhaTroChoThue.DiaChi, NhaTroChoThue.SDTNguoiChoThue, NhaTroChoThue.MoTa, NhaTroChoThue.GiaChoThue, NhaTroChoThue.DienTich, NhaTroChoThue.TieuDe FROM DanhGia INNER JOIN KhachHang ON DanhGia.MaKH = KhachHang.MaKH INNER JOIN NhaTroChoThue ON DanhGia.MaNhaTro = NhaTroChoThue.MaNhaTro AND KhachHang.MaKH = NhaTroChoThue.MaKH"></asp:SqlDataSource>
                   
        <br />
        <br />
        <br />
        <br />
        <br />
        <div><h3 style="font-size: 24px; font-weight: bold">Hình ảnh</h3></div>
        <br />
        <br />
        <div class="slideshow-container">
  <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img class="SlideShow"src="Images/1.jpg" />
                <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img class="SlideShow"src="Images/2.jpg" />
                <div class="text">Caption Two</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img class="SlideShow"src="Images/3.jpg" />
                <div class="text">Caption Three</div>
            </div>

  <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

<!-- The dots/circles -->
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>
        <script src="SlideShow.js"></script>
</asp:Content>
