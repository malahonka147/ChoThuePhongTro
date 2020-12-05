<%@ Page Title="" Language="C#" MasterPageFile="~/AD/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="ADSuaNhaTro.aspx.cs" Inherits="DACSN.AD.ADSua.ADSuaNhaTro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
            width: 299px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="text-align:center; font-size: 50px;">
        Sửa thông tin nhà trọ</h3>
    <br />
    <p style="text-align:center">
        <table id="TaiKhoan" style="width:100%;">
            <tr>
                <td class="auto-style2">Mã khách hàng:</td>
                <td>
                    <asp:TextBox ID="txtMaKH" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tỉnh/thành:</td>
                <td>
                    <asp:TextBox ID="txtTinhThanh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quận /huyện:</td>
                <td>
                    <asp:TextBox ID="txtQuanHuyen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phường/xã:</td>
                <td>
                    <asp:TextBox ID="txtPhuongXa" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Số nhà:</td>
                <td>
                    <asp:TextBox ID="txtSoNha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Địa chỉ:</td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" Height="108px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mô tả:</td>
                <td>
                    <asp:TextBox ID="txtMoTa" runat="server" Height="108px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Giá cho thuê:</td>
                <td>
                    <asp:TextBox ID="txtGiaChoThue" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Diện tích:</td>
                <td>
                    <asp:TextBox ID="txtDienTich" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tiêu đề:</td>
                <td>
                    <asp:TextBox ID="txtTieuDe" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:center" colspan="2">
                    <asp:Button ID="btnLuu" runat="server" CssClass="btn" Text="Lưu" OnClick="btnLuu_Click" />
&nbsp;<asp:Button ID="btnhuy" runat="server" CssClass="btn" Text="Hủy" PostBackUrl="~/AD/NhaTro.aspx" />
                    <br />
                    <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
