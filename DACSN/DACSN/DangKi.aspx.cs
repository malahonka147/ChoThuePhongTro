using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            try
            {
                string strl = @"select 1 from KhachHang where TenTK='" + txtTenTK.Text + "'";
                if(XLDL.GetData(strl).Rows.Count>0)
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập đã tồn tại.";
                    txtTenTK.Focus();
                }
                else
                {
                    SqlConnection con = new SqlConnection(XLDL.strCon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Connection = con;
                    cmd.CommandText = @"INSERT INTO KhachHang(TenKH,SDT,Email,MatKhau,TenTK) values (@TenKH,@SDT,@Email,@MatKhau,@TenTK)";
                    cmd.Parameters.Add("@TenKH", SqlDbType.NVarChar, 50);
                    cmd.Parameters["@TenKH"].Value = txtHoTen.Text;
                    cmd.Parameters.Add("@SDT", SqlDbType.VarChar, 12);
                    cmd.Parameters["@SDT"].Value = txtDienthoai.Text;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                    cmd.Parameters["@Email"].Value = txtEmail.Text;
                    cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 20);
                    cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                    cmd.Parameters.Add("@TenTK", SqlDbType.VarChar, 15);
                    cmd.Parameters["@TenTK"].Value = txtTenTK.Text;
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/DangNhap.aspx");
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại!";
            }
        }
    }
}