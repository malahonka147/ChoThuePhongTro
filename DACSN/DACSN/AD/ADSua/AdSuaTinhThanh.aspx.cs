using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ADSua
{
    public partial class AdSuaTinhThanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaTinh = Request.QueryString["Ma"].ToString();
                    Response.Write(MaTinh);
                    string sql = "select [MaTinh],[TenTinh] from TinhThanh where MaTinh='" + MaTinh + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtMaTinh.Text = dt.Rows[0]["MaTinh"].ToString();
                    txtTenTinh.Text = dt.Rows[0]["TenTinh"].ToString();
                }
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaTinh = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [MaTinh],[TenTinh] from TinhThanh where  MaTinh='" + MaTinh + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update TinhThanh set TenTinh=N'" + txtTenTinh.Text + "' where  MaTinh='" + MaTinh + "'");
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