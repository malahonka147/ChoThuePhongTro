using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD
{
    public partial class PhuongXa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvPhuongXa_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvPhuongXa.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select MaPX from PhuongXa where MaPX='" + ma + "'");
                    string str = "delete from PhuongXa where MaPX='" + ma + "'";
                    XLDL.Excute(str);
                    Response.Redirect("~/AD/PhuongXa.aspx");
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại";
                    //Response.Write("<script>alert('Xóa Thất Bại!!!');</script>");
                }
            }
        }
    }
}