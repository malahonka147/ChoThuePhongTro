using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DACSN
{
    public partial class DangNhap : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = XLDL.GetData("select * from KhachHang where TenTK='" + txtDangNhap.Text + "'and MatKhau='" + txtMatKhau.Text + "'");
                DataTable dt1 = XLDL.GetData("select * from NguoiQuanLi where TenTK='" + txtDangNhap.Text + "'and MatKhau='" + txtMatKhau.Text + "'");
                if (dt.Rows.Count>0)
                {
                    Session["TenTK"] = txtDangNhap.Text;
                    Session["LoaiTK"] = 1;
                    Response.Redirect("~/TrangChu.aspx");
                }
                else
                {
                    if(dt1.Rows.Count>0)
                    {
                        Session["TenDN"] = txtDangNhap.Text;
                        Session["LoaiTK"] = 0;
                        Response.Redirect("~/Admin.aspx");
                    }
                    else
                    {
                        lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
                    }
                    
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại!";
            }
        }
    }
}