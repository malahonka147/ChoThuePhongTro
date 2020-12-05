using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.AD.ADSua
{
    public partial class ADSuaNhaTro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["Ma"] != null)
                {
                    string MaNT = Request.QueryString["Ma"].ToString();
                    Response.Write(MaNT);
                    string sql = "select [MaKH],[TinhThanh],[QuanHuyen],[PhuongXa],[SoNha],[DiaChi],[SDTNguoiChoThue],[MoTa],[GiaChoThue],[DienTich],[TieuDe] from NhaTroChoThue where MaNhaTro='" + MaNT + "'";
                    DataTable dt = XLDL.GetData(sql);
                    txtMaKH.Text = dt.Rows[0]["MaKH"].ToString();
                    txtTinhThanh.Text = dt.Rows[0]["TinhThanh"].ToString();
                    txtQuanHuyen.Text = dt.Rows[0]["QuanHuyen"].ToString();
                    txtPhuongXa.Text = dt.Rows[0]["PhuongXa"].ToString();
                    txtSoNha.Text = dt.Rows[0]["SoNha"].ToString();
                    txtDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
                    txtSDT.Text = dt.Rows[0]["SDTNguoiChoThue"].ToString();
                    txtMoTa.Text = dt.Rows[0]["MoTa"].ToString();
                    txtGiaChoThue.Text = dt.Rows[0]["GiaChoThue"].ToString();
                    txtDienTich.Text = dt.Rows[0]["DienTich"].ToString();
                    txtTieuDe.Text = dt.Rows[0]["TieuDe"].ToString();
                }
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaNT = Request.QueryString["Ma"].ToString();
                DataTable dt = XLDL.GetData("select  [MaKH],[TinhThanh],[QuanHuyen],[PhuongXa],[SoNha],[DiaChi],[SDTNguoiChoThue],[MoTa],[GiaChoThue],[DienTich],[TieuDe] from NhaTroChoThue where  MaNhaTro='" + MaNT + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute(@"update NhaTroChoThue set MaKH=" + txtMaKH.Text + ",TinhThanh=N'" + txtTinhThanh.Text + "',QuanHuyen=N'" + txtQuanHuyen.Text + "',PhuongXa=N'" + txtPhuongXa.Text + "',SoNha=N'" + txtSoNha.Text + "',DiaChi=N'"+txtDiaChi.Text+"',SDTnguoiChoThue='"+txtSDT.Text+"',MoTa=N'"+txtMoTa.Text+"',GiaChoThue='"+txtGiaChoThue.Text+"',DienTich='"+txtDienTich.Text+"',TieuDe=N'"+txtTieuDe.Text + "' where  MaNhaTro='" + MaNT + "'");
                    lbBaoLoi.Text = "Lưu thành công";
                }
                else
                {
                    lbBaoLoi.Text = "Lưu không thành công!";
                }
            }
            catch
            {
                lbBaoLoi.Text = "Thất bại";
            }
        }
    }
}