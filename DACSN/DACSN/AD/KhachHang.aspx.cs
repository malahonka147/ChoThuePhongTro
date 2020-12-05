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
    public partial class KhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaKH,TenKH,SDT,Email,MatKhau,TenTK from KhachHang", XLDL.strCon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvThongTinKH.DataSource = dt;
            gvThongTinKH.DataBind();
        }
        protected void gvThongTinKH_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());

                    string ma = gvThongTinKH.Rows[chiso].Cells[0].Text;
                    DataTable dt = XLDL.GetData("select MaKH from KhachHang where MaKH='" + ma + "'");
                    if (dt.Rows.Count > 1)
                    {
                        lbBaoLoi.Text = "Khách hàng đang có bài viết nên không thể xóa.<br/> Bạn cần xóa hết các bài viết của khách hàng này trước";
                    }
                    else
                    {
                        string str = "delete from KhachHang where MaKH='" + ma + "'";
                        XLDL.Excute(str);
                        Response.Redirect("~/AD/KhachHang.aspx");
                    }
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại";
                    //Response.Write("<script>alert('Xóa Thất Bại!!!');</script>");
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AD/ThemKhachHang.aspx");
        }
    }
}