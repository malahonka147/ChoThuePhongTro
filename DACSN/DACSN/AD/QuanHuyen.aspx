<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="QuanHuyen.aspx.cs" Inherits="DACSN.AD.QuanHuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center">
        Quản lí quận huyện</h3>
    <p style="text-align:center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT [MaQH], [TenQH] FROM [QuanHuyen]"></asp:SqlDataSource>
    </p>
    <p style="text-align:center">
        <asp:GridView ID="gvQuanHuyen" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaQH" DataSourceID="SqlDataSource1" OnRowCommand="gvQuanHuyen_RowCommand">
            <Columns>
                <asp:BoundField DataField="MaQH" HeaderText="Mã Quận Huyện" InsertVisible="False" ReadOnly="True" SortExpression="MaQH" />
                <asp:BoundField DataField="TenQH" HeaderText="Tên Quận Huyện" SortExpression="TenQH" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:TemplateField HeaderText="Sữa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server">Sữa</asp:HyperLink>
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
    </p>
    <p style="text-align:center">
        <asp:Button ID="btnThem" runat="server" CssClass="btn" PostBackUrl="~/AD/ThemKhuVuc/ThemQuanHuyen.aspx" Text="Thêm" />
    </p>
    <p style="text-align:center">
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
