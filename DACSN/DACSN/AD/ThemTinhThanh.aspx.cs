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
    public partial class ThemKhuVuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(XLDL.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"INSERT INTO TinhThanh(TenTinh) values (@TenTinh)";
                cmd.Parameters.Add("@TenTinh", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TenTinh"].Value = txtTinhThanh.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AD/TinhThanh.aspx");
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại!";
            }
        }
    }
}