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
    public partial class TinhThanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaTinh,TenTinh from TinhThanh", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvTinhThanh.DataSource = dt;
            gvTinhThanh.DataBind();
        }
        private void load_data()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT[MaTinh], [TenTinh] FROM[TinhThanh]", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvTinhThanh.DataSource = dt;
            gvTinhThanh.DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AD/ThemTinhThanh.aspx");
        }

        protected void gvTinhThanh_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvTinhThanh.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select MaTinh from TinhThanh where MaTinh='" + ma + "'");
                    string str = "delete from TinhThanh where MaTinh='" + ma + "'";
                    XLDL.Excute(str);
                    Response.Redirect("~/AD/TinhThanh.aspx");
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