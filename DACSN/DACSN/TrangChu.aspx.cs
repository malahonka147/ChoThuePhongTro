using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace DACSN
{
    public partial class TrangChu : System.Web.UI.Page
    {
        public void XLNgayHetHan()
        {
            DataTable dt = XLDL.GetData("SELECT [MaNhaTro], [NgayHetHan] FROM [NhaTroChoThue]");
            DateTime dtNow = DateTime.Now;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                int MaNT = (int)dt.Rows[i][0];
                DateTime NHH = (DateTime)dt.Rows[i]["NgayHetHan"];
                if (DateTime.Compare(NHH, dtNow) < 0)
                {
                    XLDL.Excute("Delete HinhAnhChiTietNhaTro from HinhAnhChiTietNhaTro where HinhAnhChiTietNhaTro.MaNhaTro =" + MaNT);
                    XLDL.Excute("Delete DanhGia from DanhGia where DanhGia.MaNhaTro=" + MaNT);
                    XLDL.Excute("Delete NhaTroChoThue from NhaTroChoThue where NhaTroChoThue.MaNhaTro =" + MaNT);
                };
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            XLNgayHetHan();
            dlPhongTro.DataSource = XLDL.GetData("SELECT [TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue]");
            dlPhongTro.DataBind();
        }
    }
}