using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ADSua
{
    public partial class ADSuaPhuongXa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaPX = Request.QueryString["Ma"].ToString();
                    string sql = "select [MaQH],[TenPhuongXa] from PhuongXa where MaPX='" + MaPX + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtMaQH.Text = dt.Rows[0]["MaQH"].ToString();
                    txtPhuongXa.Text = dt.Rows[0]["TenPhuongXa"].ToString();
                }
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaPX = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select [MaQH],[TenPhuongXa] from PhuongXa where MaPX='" + MaPX + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update PhuongXa set MaQH='" + txtMaQH.Text + "',TenPhuongXa=N'" + txtPhuongXa.Text  + "' where  MaPX='" + MaPX + "'");
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