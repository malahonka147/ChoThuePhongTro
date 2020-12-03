<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="TinhThanh.aspx.cs" Inherits="DACSN.AD.TinhThanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT [MaTinh], [TenTinh] FROM [TinhThanh]"></asp:SqlDataSource>
        <asp:GridView ID="gvTinhThanh" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaTinh" DataSourceID="SqlDataSource1" OnRowCommand="gvTinhThanh_RowCommand">
            <Columns>
                <asp:BoundField DataField="MaTinh" HeaderText="Mã Tỉnh" InsertVisible="False" ReadOnly="True" SortExpression="MaTinh" />
                <asp:BoundField DataField="TenTinh" HeaderText="Tên Tỉnh" SortExpression="TenTinh" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
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
    <p>
        &nbsp;</p>
    <p class="auto-style1">
        <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" PostBackUrl="~/AD/ThemKhuVuc/ThemTinhThanh.aspx" Text="Thêm" />
    </p>
    <p class="auto-style1">
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        <br />
    </p>
</asp:Content>
