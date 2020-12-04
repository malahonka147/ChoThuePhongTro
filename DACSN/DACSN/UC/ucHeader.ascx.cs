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
            if(Session["TenTK"]==null)
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                aDangNhap.Visible = true;
                aDangKy.Visible = true;
                btnDangBai.Visible = true;
                btnQuanTri.Visible = false;
            }
            else if (Session["TenTK"]!=null&& Session["LoaiTK"].ToString() =="0")
            {
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenKH"].ToString();
                lbtDangXuat.Visible = true;
                btnDangBai.Visible = false;
                btnQuanTri.Visible = true;
            }
            else if (Session["TenTK"] != null && Session["LoaiTK"].ToString() == "1")
            {
                aDangNhap.Visible = false;
                aDangKy.Visible = false;
                lbTenDN.Visible = true;
                lbTenDN.Text = "Xin chào: " + Session["TenKH"].ToString();
                lbtDangXuat.Visible = true;
                btnDangBai.Visible = true;
                btnQuanTri.Visible = false;
            }
          
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenTK"] = null;
            Session["LoaiTK"] = null;
            Session["MaKH"] = null;
            Session["TenKH"] = null;
            Response.Redirect("TrangChu.aspx");
        }

        protected void btnDangBai_Click(object sender, EventArgs e)
        {
            if(Session["TenDN"]!=null)
            {
                Response.Redirect("~/DangNhap.aspx");
            }else
            {
                Response.Redirect("~/DangBai.aspx");
            }
        }

        protected void btnQuanTri_Click(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
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
