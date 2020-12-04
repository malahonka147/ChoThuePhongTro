﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class ChinhSuaBaiDang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenTK"] != null)
            {
                int MaKH = int.Parse(Session["MaKH"].ToString());
                int MaNT = int.Parse(Request.QueryString["MaNT"]);
                if (!IsPostBack)
                {

                    DataTable dt = XLDL.GetData("select MaKH,TenKH,SDT from KhachHang where MaKH=" + MaKH);
                    dlTTKH.DataSource = dt;
                    dlTTKH.DataBind();
                    DataTable dtNT = XLDL.GetData("select * from NhaTroChoThue where MaNhaTro= " + MaNT);
                    txtDiaChiChinhXac.Text = dtNT.Rows[0]["DiaChi"].ToString();
                    if (dtNT.Rows[0]["LoaiNT"].ToString() == "Phòng trọ cho thuê")
                    {
                        drpLoaiNT.SelectedIndex = 1;
                    }
                    else
                    {
                        drpLoaiNT.SelectedIndex = 0;
                    }
                    txtTieuDe.Text = dtNT.Rows[0]["TieuDe"].ToString();
                    txtMoTa.Text = dtNT.Rows[0]["MoTa"].ToString();
                    txtThongTinLienHe.Text= dtNT.Rows[0]["SDTNguoiChoThue"].ToString();
                    txtGiaChoThue.Text= dtNT.Rows[0]["GiaChoThue"].ToString();
                    txtDienTich.Text= dtNT.Rows[0]["DienTich"].ToString();
                }
            }
            else
            {
                Response.Redirect("~/DangNhap.aspx");
            }

        }

        protected void btnDangBai_Click(object sender, EventArgs e)
        {
            try
            {
                int MaNT = int.Parse(Request.QueryString["MaNT"]);
                DataTable dt = XLDL.GetData("select [TinhThanh],[QuanHuyen],[PhuongXa],[TenDuong],[LoaiNT],[SoNha],[DiaChi],[SDTNguoiChoThue],[MoTa],[GiaChoThue],[DienTich],[TieuDe] from NhaTroChoThue where  MaNhaTro='" + MaNT + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update NhaTroChoThue set DiaChi=N'"+txtDiaChiChinhXac.Text+"',LoaiNT='"+drpLoaiNT.SelectedValue+"',TieuDe=N'"+txtTieuDe.Text+"',MoTa=N'"+txtMoTa.Text+"',SDTNguoiChoThue='"+txtThongTinLienHe.Text+"',GiaChoThue='"+txtGiaChoThue.Text+"',DienTich='"+txtDienTich.Text + "' where  MaNhaTro='" + MaNT + "'");
                    lbBaoLoi.Text = "Lưu thành công";
                }
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại";
            }
        }
    }
}