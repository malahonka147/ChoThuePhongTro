using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD
{
    public partial class ucAdminHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenTK"] != null)
            {
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenTK"].ToString();
                lbtDangXuat.Visible = true;
                btnDangBai.Visible = false;
            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                aDangNhap.Visible = true;
                aDangKy.Visible = true;
                btnQuanTri.Visible = true;
            }
        }
        protected void lbtDangXuat_Click1(object sender, EventArgs e)
        {
            Session["TenTK"] = null;
            Response.Redirect("~/TrangChu.aspx");
        }

        protected void btnQuanTri_Click(object sender, EventArgs e)
        {
            if (Session["TenTK"] == null)
            {
                Response.Redirect("~/DangNhap.aspx");
            }
            else
            {
                Response.Redirect("~/AD/Admin.aspx");
            }
        }
    }
}