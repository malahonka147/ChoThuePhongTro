<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="NhaTro.aspx.cs" Inherits="DACSN.AD.NhaTro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Quản lý thông tin nhà trọ</h3>
    <br />
    <p style="text-align:center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT [MaNhaTro], [MaKH], [DiaChi], [SDTNguoiChoThue], [TieuDe] FROM [NhaTroChoThue]"></asp:SqlDataSource>
    </p>
    <p style="text-align:center">
        <asp:GridView ID="gvNhaTro" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaNhaTro" DataSourceID="SqlDataSource1" OnRowCommand="gvNhaTro_RowCommand" Width="890px">
            <Columns>
                <asp:BoundField DataField="MaNhaTro" HeaderText="Mã nhà trọ" InsertVisible="False" ReadOnly="True" SortExpression="MaNhaTro" />
                <asp:BoundField DataField="MaKH" HeaderText="Mã KH" SortExpression="MaKH" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
                <asp:BoundField DataField="SDTNguoiChoThue" HeaderText="SDT" SortExpression="SDTNguoiChoThue" />
                <asp:BoundField DataField="TieuDe" HeaderText="Tiêu đề" SortExpression="TieuDe" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:TemplateField HeaderText="Sữa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/AD/ADSua/ADSuaNhaTro.aspx?Ma="+Eval("MaNhaTro") %>'>Sữa</asp:HyperLink>
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
        &nbsp;</p>
    <p style="text-align:center">
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
