using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD
{
    public partial class ThemKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(XLDL.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO KhachHang(TenKH,SDT,Email,MatKhau,TenTK) values (@TenKH,@SDT,@Email,@MatKhau,@TenTK)";
                cmd.Parameters.Add("@TenKH", SqlDbType.NVarChar, 50);
                cmd.Parameters["@TenKH"].Value = txtTenKH.Text;
                cmd.Parameters.Add("@SDT", SqlDbType.VarChar, 12);
                cmd.Parameters["@SDT"].Value = txtSDT.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 20);
                cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                cmd.Parameters.Add("@TenTK", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenTK"].Value = txtTenTK.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AD/KhachHang.aspx");
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại!";
            }
        }
    }
}