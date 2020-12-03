using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                drpTinhThanh_Load();
                drpQuanHuyen_Load();
                drpPhuongXa_Load();
            }
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


    }
}