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
    public partial class ThemQuanTriVien : System.Web.UI.Page
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
                cmd.CommandText = @"INSERT INTO NguoiQuanLi(TenTK,MatKhau,Email_Admin,SDT_Admin) values (@TenTK,@MatKhau,@Email_Admin,@SDT_Admin)";
                cmd.Parameters.Add("@TenTK", SqlDbType.NVarChar, 50);
                cmd.Parameters["@TenTK"].Value = txtTenTK.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 20);
                cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                cmd.Parameters.Add("@Email_Admin", SqlDbType.VarChar, 30);
                cmd.Parameters["@Email_Admin"].Value = txtEmail.Text;
                cmd.Parameters.Add("@SDT_Admin", SqlDbType.VarChar, 12);
                cmd.Parameters["@SDT_Admin"].Value = txtSDT.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AD/QuanTriVien.aspx");
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại!";
            }
        }
    }
}