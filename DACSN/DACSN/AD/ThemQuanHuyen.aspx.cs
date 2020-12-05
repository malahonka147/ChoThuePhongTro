using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ThemKhuVuc
{
    public partial class ThemQuanHuyen : System.Web.UI.Page
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
                cmd.CommandText = @"INSERT INTO QuanHuyen(MaTinh,TenQH) values (@MaTinh,@TenQH)";
                cmd.Parameters.Add("@MaTinh", SqlDbType.Int);
                cmd.Parameters["@MaTinh"].Value = txtMaTinh.Text;
                cmd.Parameters.Add("@TenQH", SqlDbType.NVarChar,20);
                cmd.Parameters["@TenQH"].Value = txtTenQH.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AD/QuanHuyen.aspx");
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại!";
            }
        }
    }
}