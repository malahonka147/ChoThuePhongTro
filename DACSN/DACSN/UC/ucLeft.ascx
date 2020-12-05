<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeft.ascx.cs" Inherits="DACSN.UC.ucLeft" %>
<link href="../Style.css" rel="stylesheet" />
<aside id="left">
					   <div>
                           <p>TIN MỚI ĐĂNG</p>
                            <ul type="square">
					        <asp:DataList ID="dlTinMoi" runat="server" Height="30px">
                                    <ItemTemplate>
						                        <li class="aside">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaNhaTro", "~/ChiTietPhongTro.aspx?MaNT={0}") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                                                </li>
                                    </ItemTemplate>
                                    </asp:DataList>
                          </ul>          
					   </div>  
                      <div class="auto-style1">
					        <p>CÓ THỂ BẠN QUAN TÂM</p>
					        <ul type="square">
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink2" runat="server"><a href="../HopDongThueNhaTro.aspx">Mẫu hợp đồng cho thuê phòng trọ</a></asp:HyperLink></li>
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink3" runat="server"><a href="../ChieuTroLuaDao.aspx">Cẩn thận các kiểu lừa đảo khi thuê phòng trọ</a></asp:HyperLink></li>
						        <li class="aside" style="height: 40px; padding-top: 5px;"><asp:HyperLink ID="HyperLink4" runat="server"><a href="../KinhNghiemThueNhaTro.aspx">Kinh nghiệm thuê phòng trọ Sinh Viên</a></asp:HyperLink></li>
					        </ul>
                    </div>
</aside>