<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="QuanLiBaiDang.aspx.cs" Inherits="DACSN.QuangLiBaiDang" %>
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
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaKH","~/SuaThongTinCaNhan.aspx?MaKH={0}") %>' ForeColor="Black">Sửa thông tin cá nhân</asp:HyperLink>
                        </td>
                    </tr>
                  
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
   </aside>
    <section>
        <asp:DataList ID="dlPhongTro" runat="server" RepeatColumns="2">
                <ItemTemplate>
                     <div class="content">
                         <div id="left">
                              <asp:HyperLink ID="HyperLink5" runat="server" ImageHeight="140px" ImageUrl='<%# "~/Images/"+Eval("HinhAnh","{0}") %>' ImageWidth="140px" NavigateUrl='<%# Eval("MaNhaTro", "~/ChinhSuaBaiDang.aspx?MaNT={0}") %>' Text='<%# Eval("HinhAnh") %>'></asp:HyperLink>
                         </div>
                        <div id="right">
                            <p class="TieuDe"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaNhaTro", "~/ChinhSuaBaiDang.aspx?MaNT={0}") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink></a>
					            
					        <p class="contentp">Đơn giá: <span class="contentp2"><asp:Label ID="GiaChoThueLabel" runat="server" Text='<%# Eval("GiaChoThue") %>' />/Tháng</span></p>
                            <p class="contentp">Diện tích: <span class="contentp2"> <asp:Label ID="DienTichLabel" runat="server" Text='<%# Eval("DienTich") %>' /> mét vuông</span></p>
                            <p class="contentp">Địa Chỉ: <span class="contentp2"><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' /></span></p>
                        </div>
                   </div>
                </ItemTemplate>
            </asp:DataList>
    </section>
</asp:Content>
