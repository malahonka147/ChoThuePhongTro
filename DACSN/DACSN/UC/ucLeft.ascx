<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeft.ascx.cs" Inherits="DACSN.UC.ucLeft" %>
<link href="../Style.css" rel="stylesheet" />
<aside id="left">
					   <div>
                           <p>TIN MỚI ĐĂNG</p>
                            <ul type="square">
					        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Height="30px">
                                    <ItemTemplate>
						                        <li class="aside">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                                                </li>
                                    </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhaTroConnectionString %>" SelectCommand="SELECT top 5 [TieuDe], [MaNhaTro] FROM [NhaTroChoThue] ORDER BY [MaNhaTro] DESC"></asp:SqlDataSource>
                          </ul>          
					   </div>  
                      <div class="auto-style1">
					        <p>CÓ THỂ BẠN QUAN TÂM</p>
					        <ul type="square">
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink2" runat="server">Mẫu hợp đồng cho thuê phòng trọ</asp:HyperLink></li>
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink3" runat="server">Cẩn thận các kiểu lừa đảo khi thuê phòng trọ</asp:HyperLink></li>
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink4" runat="server">Kinh nghiệm thuê phòng trọ Sinh Viên</asp:HyperLink></li>
					        </ul>
                    </div>
</aside>