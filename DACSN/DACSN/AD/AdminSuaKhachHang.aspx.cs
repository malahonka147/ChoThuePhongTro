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
    public partial class AdminThem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaKH = Request.QueryString["Ma"].ToString();
                    string sql = "select [TenKH],[SDT],[Email],[MatKhau],[TenTK] from KhachHang where MaKH='" + MaKH + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtTenKH.Text = dt.Rows[0]["TenKH"].ToString();
                    txtSDT.Text = dt.Rows[0]["SDT"].ToString();
                    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                    txtMatKhau.Text = dt.Rows[0]["MatKhau"].ToString();
                    txtTaiKhoan.Text = dt.Rows[0]["TenTK"].ToString();
                }
            }
            
            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaKH = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [TenKH],[SDT],[Email],[MatKhau],[TenTK] from KhachHang where  MaKH='" + MaKH + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update KhachHang set TenKH=N'" + txtTenKH.Text + "',SDT='" + txtSDT.Text + "',Email='" + txtEmail.Text + "',MatKhau='" + txtMatKhau.Text + "',TenTK='" + txtTaiKhoan.Text + "' where  MaKH='" + MaKH + "'");
                    lbBaoLoi.Text = "Lưu thành công";
                }
                else
                {
                    lbBaoLoi.Text = "Lưu không thành công!";
                }
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại";
            }
        }
    }
}