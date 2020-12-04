using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class SuaThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaKH = Request.QueryString["Ma"].ToString();
                    Response.Write(MaKH);
                    string sql = "select [MaKH],[Email],[TenKH],[SDT],[MatKhau] from KhachHang where MaKH='" + MaKH + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtMaKH.Text = dt.Rows[0]["MaKH"].ToString();
                    txtSDT.Text = dt.Rows[0]["SDT"].ToString();
                    txtTenKH.Text = dt.Rows[0]["TenKH"].ToString();
                    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                }
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaKH = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [TenKH],[Email] from KhachHang where  MaKH='" + MaKH + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update KhachHang set TenKH=N'" + txtTenKH.Text + "',Email='" + txtEmail.Text + "' where  MaKH='" + MaKH + "'");
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