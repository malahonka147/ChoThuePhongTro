using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ADSua
{
    public partial class ADSuaQuanTriVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaAD = Request.QueryString["Ma"].ToString();
                    Response.Write(MaAD);
                    string sql = "select [TenTK],[MatKhau],[SDT_Admin] from NguoiQuanLi where ID_Admin='" + MaAD + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtTaiKhoanAD.Text = dt.Rows[0]["TenTK"].ToString();
                    txtMatKhauAD.Text = dt.Rows[0]["MatKhau"].ToString();
                    txtSDT_AD.Text = dt.Rows[0]["SDT_Admin"].ToString();
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                string MaAD = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [TenTK],[MatKhau],[SDT_Admin] from NguoiQuanLi where  ID_Admin='" + MaAD + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update NguoiQuanLi set TenTK=N'" + txtTaiKhoanAD.Text + "',MatKhau='" + txtMatKhauAD.Text + "',SDT_Admin='" + txtSDT_AD.Text + "' where ID_Admin='" + MaAD+ "'");
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