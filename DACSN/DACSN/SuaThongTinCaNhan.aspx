<%@ Page Title="" Language="C#" MasterPageFile="~/Templates2.Master" AutoEventWireup="true" CodeBehind="SuaThongTinCaNhan.aspx.cs" Inherits="DACSN.SuaThongTinCaNhan" %>
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
        <div style="text-align:left" class="border-bottom">
                 <h1 class="h1">Cập nhật thông tin cá nhân</h1>
            <br />
            <br />
                 <p class="h1">
                     <table  id="TaiKhoan" style="width:100%;">
                         <tr>
                             <td style="text-align:center">&nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td style="text-align:center">&nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td style="text-align:center">Tên khách hàng:</td>
                             <td>
                                 <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align:center">Số điện thoại:</td>
                             <td>
                                 <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2" style="text-align: center">
                                 <asp:Button ID="btnLuu" runat="server" CssClass="btn" OnClick="btnLuu_Click" Text="Lưu" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" PostBackUrl="~/DangBai.aspx" Text="Hủy" />
                                 <br />
                                 <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
                             </td>
                         </tr>
                     </table>
                 </p>
         </div>
    </section>
</asp:Content>
