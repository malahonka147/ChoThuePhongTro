using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace DACSN
{
    public partial class ChiTietPhongTro : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string MaNT = Request.QueryString["MaNT"];
            dlHinhChiTietNhaTro.DataSource = XLDL.GetData("select HinhAnh from HinhAnhChiTietNhaTro where MaNhaTro='" + MaNT+"'");
            dlHinhChiTietNhaTro.DataBind();
            dlDanhGia.DataSource = XLDL.GetData("SELECT DanhGia.DanhGia, DanhGia.MaNhaTro, KhachHang.TenKH FROM KhachHang INNER JOIN DanhGia ON KhachHang.MaKH = DanhGia.MaKH WHERE MaNhaTro='"+MaNT+"'");
            dlDanhGia.DataBind();
        }
    }

}

