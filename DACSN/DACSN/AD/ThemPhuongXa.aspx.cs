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
    public partial class ThemPhuongXa : System.Web.UI.Page
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
                cmd.CommandText = @"INSERT INTO PhuongXa(MaQH,TenPhuongXa) values (@MaQH,@TenPhuongXa)";
                cmd.Parameters.Add("@MaQH", SqlDbType.Int);
                cmd.Parameters["@MaQH"].Value = txtMaQH.Text;
                cmd.Parameters.Add("@TenPhuongXa", SqlDbType.NVarChar, 20);
                cmd.Parameters["@TenPhuongXa"].Value = txtTenPX.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/AD/PhuongXa.aspx");
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại!";
            }
        }
    }
}