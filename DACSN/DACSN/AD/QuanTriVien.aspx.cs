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
    public partial class QuanTriVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select ID_Admin,TenTK,MatKhau,SDT_Admin,Email_Admin from NguoiQuanLi", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvQuanTriVIen.DataSource = dt;
            gvQuanTriVIen.DataBind();
        }
        private void load_data()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT[ID_Admin], [TenTK], [MatKhau], [Email_Admin], [MatKhau], [SDT_Admin] FROM[NguoiQuanLi]", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt); gvQuanTriVIen.DataSourceID = null;
            gvQuanTriVIen.DataSource = dt;
            gvQuanTriVIen.DataBind();
        }

        protected void gvQuanTriVIen_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvQuanTriVIen.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select ID_Admin from NguoiQuanLi where ID_Admin='" + ma + "'");
                        string str = "delete from NguoiQuanLi where ID_Admin='" + ma + "'";
                        XLDL.Excute(str);
                        Response.Redirect("~/AD/QuanTriVien.aspx");
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại";
                    //Response.Write("<script>alert('Xóa Thất Bại!!!');</script>");
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AD/ThemQuanTriVien.aspx");
        }
    }
}