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
    public partial class QuanHuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void load_data()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT[MaQH], [TenQH] FROM[QuanHuyen]", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvQuanHuyen.DataSource = dt;
            gvQuanHuyen.DataBind();
        }

        protected void gvQuanHuyen_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvQuanHuyen.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select MaQH from QuanHuyen where MaQH='" + ma + "'");
                    string str = "delete from QuanHuyen where MaQH='" + ma + "'";
                    XLDL.Excute(str);
                    Response.Redirect("~/AD/QuanHuyen.aspx");
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại";
                    //Response.Write("<script>alert('Xóa Thất Bại!!!');</script>");
                }
            }
        }
    }
}