using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
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
            
        }

        protected void btnBinhLuan_Click(object sender, EventArgs e)
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
                Response.Redirect("~/ChiTietPhongTro.aspx?MaNT="+MaNT);
                }
                catch
                {
                    lbThongBaoLoi.Text = "Thất Bại";
                }
            txtTenKH.Text = "";
            txtDanhGia.Text = "";
        }
    }

}

