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
        static PagedDataSource p = new PagedDataSource();

        public static int intSTT;

        public static int trang_thu = 0;
        public void load_data()
        {

            string sql = "SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro]FROM [NhaTroChoThue]";

            p.DataSource = XLDL.GetData(sql).DefaultView;

            p.PageSize = 10;

            p.CurrentPageIndex = trang_thu;

            p.AllowPaging = true;


            btnTrangDau.Enabled = true; btnTruoc.Enabled = true; btnSau.Enabled = true; btnTrangCuoi.Enabled = true;


            if (p.IsFirstPage == true)//neu la dau.

            {

                btnTrangDau.Enabled = false;//neu la trang dau thi hai nut mo di.

                btnTruoc.Enabled = false;

                btnSau.Enabled = true;//Hai nut sau sang len.

                btnTrangCuoi.Enabled = true;

            }


            if (p.IsLastPage == true)//neu la cuoi

            {


                btnTrangDau.Enabled = true;

                btnTruoc.Enabled = true;

                btnSau.Enabled = false;

                btnTrangCuoi.Enabled = false;

            }
            txtTrang.Text = (trang_thu + 1) + " / " + p.PageCount;
            dlPhongTro.DataSource = p;
            dlPhongTro.DataBind();

        }
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

            load_data();
        }

        protected void btnTrangDau_Click(object sender, EventArgs e)
        {
            trang_thu = 0;

            load_data();
        }

        protected void btnTruoc_Click(object sender, EventArgs e)
        {

            trang_thu--;

            load_data();
        }

        protected void btnSau_Click(object sender, EventArgs e)
        {

            trang_thu++;

            load_data();

        }

        protected void btnTrangCuoi_Click(object sender, EventArgs e)
        {
            trang_thu = p.PageCount - 1;

            load_data();
        }
    }
}