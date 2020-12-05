<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanTriVien.aspx.cs" Inherits="DACSN.AD.QuanTriVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">Quản lí thông tin quản trị viên</h3>
    <p>
        <asp:GridView ID="gvQuanTriVIen" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_Admin"  OnRowCommand="gvQuanTriVIen_RowCommand" Width="687px" Height="303px">
            <Columns>
                <asp:BoundField DataField="ID_Admin" HeaderText="Mã Admin" InsertVisible="False" ReadOnly="True" SortExpression="ID_Admin" />
                <asp:BoundField DataField="TenTK" HeaderText="Tên TK" SortExpression="TenTK" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" SortExpression="MatKhau" />
                <asp:BoundField DataField="SDT_Admin" HeaderText="Số điện thoại" SortExpression="SDT_Admin" />
                <asp:BoundField DataField="Email_Admin" HeaderText="Email" SortExpression="Email_Admin" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Button" />
                <asp:TemplateField HeaderText="Sữa">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/AD/ADSua/ADSuaQuanTriVien.aspx?Ma="+Eval("ID_Admin") %>'>Sữa</asp:HyperLink>
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
        <asp:Button ID="btnThem" runat="server" CssClass="btn" OnClick="btnThem_Click" Text="Thêm" />
    &nbsp;<asp:Button ID="btnHuy" runat="server" CssClass="btn" OnClick="btnThem_Click" Text="Hủy" PostBackUrl="~/AD/Admin.aspx" />
        <br />
        <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
    </p>
</asp:Content>
