using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.UC
{
    public partial class ucHeader : System.Web.UI.UserControl
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
                }
                else
                {
                    lbTenDN.Text = "";
                    lbTenDN.Visible = false;
                    lbtDangXuat.Visible = false;
                    aDangNhap.Visible = true;
                    aDangKy.Visible = true;
                }  
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenTK"] = null;
            Response.Redirect("TrangChu.aspx");
        }
    }
}
