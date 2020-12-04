using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class QuangLiBaiDang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["TenTK"]!=null)
            {
                int MaKH = int.Parse(Session["MaKH"].ToString());
                DataTable dt = XLDL.GetData("select MaKH,TenKH,SDT from KhachHang where MaKH=" + MaKH);
                dlTTKH.DataSource = dt;
                dlTTKH.DataBind();
                dlPhongTro.DataSource= XLDL.GetData("SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue] WHERE MaKH="+MaKH);
                dlPhongTro.DataBind();
               
            }
        }
    }
}