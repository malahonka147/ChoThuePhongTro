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
    public partial class NhaTro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaNhaTro,MaKH,DiaChi,SDTNguoiChoThue,TieuDe from NhaTroChoThue", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvNhaTro.DataSource = dt;
            gvNhaTro.DataBind();
        }

        protected void gvNhaTro_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvNhaTro.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select MaNhaTro from NhaTroChoThue where MaNhaTro='" + ma + "'");
                    if (dt.Rows.Count > 1)
                    {
                        lbBaoLoi.Text = "Xóa thất bại";
                    }
                    else
                    {
                        string str = "delete from NhaTroChoThue where MaNhaTro='" + ma + "'";
                        XLDL.Excute(str);
                        Response.Redirect("~/AD/NhaTro.aspx");
                    }
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