using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ADSua
{
    public partial class ADSuaQuanHuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaQH = Request.QueryString["Ma"].ToString();
                    string sql = "select [MaTinh],[TenQH] from QuanHuyen where MaQH='" + MaQH + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtMaTinh.Text = dt.Rows[0]["MaTinh"].ToString();
                    txtTenQuanHuyen.Text = dt.Rows[0]["TenQH"].ToString();
                }
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaQH = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [MaTinh],[TenQH] from QuanHuyen where  MaQH='" + MaQH + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update QuanHuyen set MaTinh='" + txtMaTinh.Text + "',TenQH=N'" + txtTenQuanHuyen.Text + "' where  MaQH='" + MaQH + "'");
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