﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class ChiTietPhongTro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string MaNT = Request.QueryString["MaNT"];
            dlHinhChiTietNhaTro.DataSource = XLDL.GetData("select HinhAnh from HinhAnhChiTietNhaTro where MaNhaTro='" + MaNT + "'");
            dlHinhChiTietNhaTro.DataBind();
            dlDanhGia.DataSource = XLDL.GetData("SELECT DanhGia, TenKH FROM DanhGia WHERE MaNhaTro='" + MaNT + "'");
            dlDanhGia.DataBind();
            dlChiTietPhongTro.DataSource = XLDL.GetData("select kh.TenKH,nt.SDTNguoiChoThue,nt.DiaChi,nt.MoTa,nt.GiaChoThue,nt.DienTich,nt.TieuDe from KhachHang kh, NhaTroChoThue nt where nt.MaNhaTro ='"+MaNT+"' and nt.MaKH = kh.MaKH");
            dlChiTietPhongTro.DataBind();
        }

        protected void btnBinhLuan_Click(object sender, EventArgs e)
        {
            if(txtTenKH.Text!=""&&txtDanhGia.Text!="")
            {
                try
                {
                    string MaNT = Request.QueryString["MaNT"];
                    SqlConnection con = new SqlConnection(XLDL.strCon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    cmd.CommandText = @"insert into DanhGia(MaNhaTro,TenKH,DanhGia) values(@MaNT,@TenKH,@DanhGia)";
                    cmd.Parameters.Add("@MaNT", SqlDbType.VarChar, 10);
                    cmd.Parameters["@MaNT"].Value = MaNT;
                    cmd.Parameters.Add("@TenKH", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@TenKH"].Value = txtTenKH.Text;
                    cmd.Parameters.Add("@DanhGia", SqlDbType.NVarChar, 2000);
                    cmd.Parameters["@DanhGia"].Value = txtDanhGia.Text;
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/ChiTietPhongTro.aspx?MaNT=" + MaNT);
                }
                catch
                {
                    lbThongBaoLoi.Text = "Thất Bại";
                }
            }else
            {
                lbThongBaoLoi.Text = "Vui lòng nhập tên khách hàng hoặc nội dung trước khi đánh giá";
            }
            
        }
    }
}