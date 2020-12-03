<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="DACSN.AD.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
    
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT MaKH, TenKH, SDT, Email, MatKhau, TenTK FROM KhachHang"></asp:SqlDataSource>
                <asp:GridView ID="gvThongTinKH" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaKH"  OnRowCommand="gvThongTinKH_RowCommand" OnRowEditing="gvThongTinKH_RowEditing"  Width="698px" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="MaKH" HeaderText="Mã KH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                        <asp:BoundField DataField="TenKH" HeaderText="Tên KH" SortExpression="TenKH" />
                        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" SortExpression="MatKhau" />
                        <asp:BoundField DataField="TenTK" HeaderText="TênTK" SortExpression="TenTK" />
                        <asp:ButtonField ButtonType="Image" CommandName="Xoa" ImageUrl="~/Images/Delete.jpg" HeaderText="Xóa" />
                        <asp:TemplateField HeaderText="Sửa">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/AD/AdminSua.aspx?Ma="+Eval("MaKH") %>'>Sửa</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <div class="auto-style1">
                <br />
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" Text="Thêm" />
                    </div>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
