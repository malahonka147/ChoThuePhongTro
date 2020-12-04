using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class TimPhongTro : System.Web.UI.Page
    {
        static PagedDataSource p = new PagedDataSource();
        int trang_thu = 0;
        public void load_data()
        {
            if (!IsPostBack)
            {
                drpTinhThanh_Load();
                drpQuanHuyen_Load();
                drpPhuongXa_Load();
                string sql = "SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue] WHERE [LoaiNT] = N'Phòng trọ cho thuê' ";
                p.DataSource = XLDL.GetData(sql).DefaultView;
                p.PageSize = 10;
                p.CurrentPageIndex = trang_thu;
                p.AllowPaging = true;
                btnTrangDau.Enabled = true; btnTruoc.Enabled = true; btnSau.Enabled = true; btnTrangCuoi.Enabled = true;
                if (p.IsFirstPage == true)
                {
                    btnTrangDau.Enabled = false;
                    btnTruoc.Enabled = false;
                    btnSau.Enabled = true;
                    btnTrangCuoi.Enabled = true;
                }
                if (p.IsLastPage == true)
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
        }
        protected void Page_Load(object sender, EventArgs e)
        {
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
            if (trang_thu < 0)
            {
                trang_thu = 0;
            }
            load_data();
        }

        protected void btnSau_Click(object sender, EventArgs e)
        {

            trang_thu++;
            if (trang_thu >= p.PageCount - 1)
            {
                trang_thu = p.PageCount - 1;
            }
            load_data();

        }

        protected void btnTrangCuoi_Click(object sender, EventArgs e)
        {
            trang_thu = p.PageCount - 1;

            load_data();
        }
        protected void drpTinhThanh_Load()
        {
            DataTable dt = XLDL.GetData("Select * from TinhThanh");
            dt.Rows.Add(0, "Tất cả");
            drpTinhThanh.DataSource = dt;
            drpTinhThanh.DataTextField = "TenTinh";
            drpTinhThanh.DataValueField = "MaTinh";
            drpTinhThanh.DataBind();
            drpTinhThanh.SelectedIndex = dt.Rows.Count - 1;
        }

        protected void drpQuanHuyen_Load()
        {
            int MaTinh = int.Parse(drpTinhThanh.SelectedValue.ToString());
            if (MaTinh == 0)
            {
                drpQuanHuyen.Items.Add("Tất cả");
            }
            else
            {
                DataTable dt = XLDL.GetData("Select * from QuanHuyen where MaTinh=" + MaTinh);
                dt.Rows.Add(0, 0, "Quận/Huyện");
                drpQuanHuyen.DataSource = dt;
                drpQuanHuyen.DataValueField = "MaQH";
                drpQuanHuyen.DataTextField = "TenQH";
                drpQuanHuyen.DataBind();
                drpQuanHuyen.SelectedIndex = dt.Rows.Count - 1;
            }

        }

        protected void drpPhuongXa_Load()
        {
            string str = drpQuanHuyen.SelectedItem.Text;

            if (str != "Tất cả")
            {
                int MaQH = int.Parse(drpQuanHuyen.SelectedValue.ToString());
                DataTable dt = XLDL.GetData("Select * from PhuongXa where MaQH=" + MaQH);
                dt.Rows.Add(0, 0, "Phường/Xã");
                drpPhuongXa.DataSource = dt;
                drpPhuongXa.DataValueField = "MaPX";
                drpPhuongXa.DataTextField = "TenPhuongXa";
                drpPhuongXa.DataBind();
                drpPhuongXa.SelectedIndex = dt.Rows.Count - 1;
            }
            else
            {
                drpPhuongXa.Items.Add("Tất cả");
            }

        }

        protected void drpTinhThanh_SelectedIndexChanged(object sender, EventArgs e)
        {
            int vt = drpTinhThanh.SelectedIndex;
            drpTinhThanh_Load();
            drpTinhThanh.SelectedIndex = vt;
            drpQuanHuyen_Load();
            drpPhuongXa_Load();

        }

        protected void drpQuanHuyen_SelectedIndexChanged(object sender, EventArgs e)
        {

            int vt = drpQuanHuyen.SelectedIndex;
            drpQuanHuyen_Load();
            drpQuanHuyen.SelectedIndex = vt;
            drpPhuongXa_Load();
        }


        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            if (drpQuanHuyen.SelectedItem.Text == "Quận/Huyện" && drpPhuongXa.SelectedItem.Text == "Phường/Xã" && int.Parse(drpTinhThanh.SelectedValue) != 0)
            {
                string sql = "SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue] WHERE TinhThanh=N'" + drpTinhThanh.SelectedItem.Text + "' and LoaiNT=N'Phòng trọ cho thuê'";
                p.DataSource = XLDL.GetData(sql).DefaultView;
                p.CurrentPageIndex = trang_thu;
                txtTrang.Text = (trang_thu + 1) + " / " + p.PageCount;
                dlPhongTro.DataSource = p;
                dlPhongTro.DataBind();
            }
            if (drpQuanHuyen.SelectedItem.Text != "Quận/Huyện" && drpPhuongXa.SelectedItem.Text == "Phường/Xã" && int.Parse(drpTinhThanh.SelectedValue) != 0)
            {
                string sql = "SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue] WHERE TinhThanh=N'" + drpTinhThanh.SelectedItem.Text + "' and QuanHuyen=N'" + drpQuanHuyen.SelectedItem.Text + "' and LoaiNT=N'Phòng trọ cho thuê'";
                p.DataSource = XLDL.GetData(sql).DefaultView;
                p.CurrentPageIndex = trang_thu;
                txtTrang.Text = (trang_thu + 1) + " / " + p.PageCount;
                dlPhongTro.DataSource = p;
                dlPhongTro.DataBind();
            }
            if (drpQuanHuyen.SelectedItem.Text != "Quận/Huyện" && drpPhuongXa.SelectedItem.Text != "Phường/Xã" && int.Parse(drpTinhThanh.SelectedValue) != 0)
            {
                string sql = "SELECT[TieuDe], [DiaChi], [DienTich], [GiaChoThue], [HinhAnh], [MaNhaTro] FROM [NhaTroChoThue] WHERE TinhThanh=N'" + drpTinhThanh.SelectedItem.Text + "' and PhuongXa=N'" + drpPhuongXa.SelectedItem.Text + "' and LoaiNT=N'Phòng trọ cho thuê'";
                p.DataSource = XLDL.GetData(sql).DefaultView;
                p.CurrentPageIndex = trang_thu;
                txtTrang.Text = (trang_thu + 1) + " / " + p.PageCount;
                dlPhongTro.DataSource = p;
                dlPhongTro.DataBind();
            }
        }
    }
}