<%@ Page Title="" Language="C#" MasterPageFile="~/AD/Site1.Master" AutoEventWireup="true" CodeBehind="TinhThanh.aspx.cs" Inherits="DACSN.AD.TinhThanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">Quản lí thông tin Tỉnh/Thành</h3>
    <p>
        <asp:GridView ID="gvTinhThanh" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="MaTinh" OnRowCommand="gvTinhThanh_RowCommand" Width="449px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="297px">
            <Columns>
                <asp:BoundField DataField="MaTinh" HeaderText="Mã Tỉnh" InsertVisible="False" ReadOnly="True" SortExpression="MaTinh" />
                <asp:BoundField DataField="TenTinh" HeaderText="Tên Tỉnh" SortExpression="TenTinh" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:TemplateField HeaderText="Sữa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/AD/ADSua/ADSuaTinhThanh.aspx?Ma="+Eval("MaTinh") %>'>Sữa</asp:HyperLink>
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
    <p>
        &nbsp;</p>
    <p style="text-align:center" class="auto-style1">
        <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" PostBackUrl="~/AD/ThemKhuVuc/ThemTinhThanh.aspx" Text="Thêm" />
    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/TimKiemKhuVuc.aspx" />
    </p>
    <p class="auto-style1">
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
        <br />
    </p>
</asp:Content>
