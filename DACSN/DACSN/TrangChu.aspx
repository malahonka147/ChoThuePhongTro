﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DACSN.TrangChu" %>
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
                              <a href="ChiTietPhongTro.aspx"><asp:Image ID="Image1" CssClass="HinhNT" runat="server" ImageUrl='<%# "~/Images/"+Eval("HinhAnh","{0}") %>' /></a>
                         </div>
                        <div id="right">
                            <p class="TieuDe"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/ChiTietNhaTro.asp.net?MaNT="+Eval("MaNhaTro") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink></a>
					            
					        <p class="contentp">Đơn giá:<span class="contentp2"><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' />/Tháng</span></p>
                            <p class="contentp">Diện tích: <span class="contentp2"> <asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' /> mét vuông</span></p>
                            <p class="contentp">Địa Chỉ: <span class="contentp2"><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' /></span></p>
                        </div>
                   </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT [TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue]"></asp:SqlDataSource>
   </asp:Content>                


