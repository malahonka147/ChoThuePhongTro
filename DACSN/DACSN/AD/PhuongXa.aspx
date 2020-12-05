<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="PhuongXa.aspx.cs" Inherits="DACSN.AD.PhuongXa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Quản lí phường/xã</h3><br />
    <p style="text-align:center">
        <asp:GridView ID="gvPhuongXa" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="MaPX" OnRowCommand="gvPhuongXa_RowCommand" Width="674px">
            <Columns>
                <asp:BoundField DataField="MaPX" HeaderText="Mã phường/xã" InsertVisible="False" ReadOnly="True" SortExpression="MaPX" />
                <asp:BoundField DataField="MaQH" HeaderText="Mã quận/huyện" SortExpression="MaQH" />
                <asp:BoundField DataField="TenPhuongXa" HeaderText="Tên phường/xã" SortExpression="TenPhuongXa" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/AD/ADSuaPhuongXa.aspx?Ma="+Eval("MaPX") %>'>Sửa</asp:HyperLink>
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
    </p><br />
    <p style="text-align:center">
        <asp:Button ID="btnThem" runat="server" CssClass="btn" PostBackUrl="~/AD/ThemPhuongXa.aspx" Text="Thêm" />
&nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/TimKiemKhuVuc.aspx" />
    </p>
    <p style="text-align:center">
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
