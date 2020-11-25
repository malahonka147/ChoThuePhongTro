﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TimNguoiOGhep.aspx.cs" Inherits="DACSN.TimNguoiOGhep" %>
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
          <asp:DataList ID="dlPhongTro" runat="server" RepeatColumns="2">
                <ItemTemplate>
                      <div class="content">
                         <div id="left">
                              <asp:HyperLink ID="HyperLink5" runat="server" ImageHeight="140px" ImageUrl='<%# "~/Images/"+Eval("HinhAnh","{0}") %>' ImageWidth="140px" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("HinhAnh") %>'></asp:HyperLink>
                         </div>
                        <div id="right">
                            <p class="TieuDe"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink></a>
					        <p class="contentp">Đơn giá: <span class="contentp2"><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' />/Tháng</span></p>
                            <p class="contentp">Diện tích: <span class="contentp2"> <asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' /> mét vuông</span></p>
                            <p class="contentp">Địa Chỉ: <span class="contentp2"><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' /></span></p>
                        </div>
                   </div>
                   </div>
                </ItemTemplate>
            </asp:DataList>
          <br />
            <div style="text-align: center; width: 900px;">
                <asp:Button ID="btnTrangDau" runat="server" Text="Trang Đầu" Height="30px" OnClick="btnTrangDau_Click" Width="100px" />
                <asp:Button ID="btnTruoc" runat="server" Text="Trước" Height="30px" OnClick="btnTruoc_Click" Width="50px" />
                <asp:TextBox ID="txtTrang" runat="server" Width="30px" Height="30px" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="btnSau" runat="server" Text="Sau" Height="30px" OnClick="btnSau_Click" Width="50px" />
                <asp:Button ID="btnTrangCuoi" runat="server" Text="Trang Cuối" Height="30px" OnClick="btnTrangCuoi_Click" Width="100px" />
            </div>
            <br />
</asp:Content>

