using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DACSN
{
    public partial class DangBai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenTK"] != null)
            {
                int MaKH = int.Parse(Session["MaKH"].ToString());
                if (!IsPostBack)
                {
                    drpTinhThanh_Load();
                    drpQuanHuyen_Load();
                    drpPhuongXa_Load();
                    DataTable dt= XLDL.GetData("select MaKH,TenKH,SDT from KhachHang where MaKH=" + MaKH);
                    dlTTKH.DataSource = dt;
                    dlTTKH.DataBind();
                    txtThongTinLienHe.Text = dt.Rows[0][2].ToString();
                    
                }
                if (txtSoNgay.Text != "")
                {
                    int s = int.Parse(txtSoNgay.Text) * 2000;
                    lbThanhTien.Text = s.ToString();

                }
                else
                {
                    lbThanhTien.Text = "0";
                }


                if (drpTinhThanh.SelectedItem.Text == "Tất cả")
                {
                    txtDiaChiChinhXac.Text = "";
                }
                else
                {
                    if (drpQuanHuyen.SelectedItem.Text == "Quận/Huyện" || drpQuanHuyen.SelectedItem.Text == "Tất cả")
                    {
                        txtDiaChiChinhXac.Text = drpTinhThanh.SelectedItem.Text;
                    }
                    else
                    {
                        if (drpPhuongXa.SelectedItem.Text == "Phường/Xã")
                        {
                            txtDiaChiChinhXac.Text = drpQuanHuyen.SelectedItem.Text + "," + txtDiaChiChinhXac.Text;
                        }
                        else if (drpPhuongXa.SelectedItem.Text != "Tất cả")
                        {
                            txtDiaChiChinhXac.Text = drpPhuongXa.SelectedItem.Text + "," + drpQuanHuyen.SelectedItem.Text + "," + drpTinhThanh.SelectedItem.Text;

                        }
                    }

                }
                txtDuong_TextChanged(sender,e);
                txtSoNha_TextChanged(sender, e);


            }
            else
            {
                Response.Redirect("~/DangNhap.aspx");
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

        protected void btnDangBai_Click(object sender, EventArgs e)
        {

            HttpFileCollection _HttpFileCollection = Request.Files;
            HttpPostedFile HttpPostedFile = _HttpFileCollection[0];
            int MaKH = int.Parse(Session["MaKH"].ToString());
            DateTime NgayDang = DateTime.Now,NgayHetHan=NgayDang.AddDays(int.Parse(txtSoNgay.Text));
            SqlConnection con = new SqlConnection(XLDL.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            cmd.CommandText = @"Insert into NhaTroChoThue(MaKH,TinhThanh,QuanHuyen,PhuongXa,TenDuong,SoNha,DiaChi,LoaiNT,SDTNguoiChoThue,MoTa,GiaChoThue,DienTich,HinhAnh,NgayDang,NgayHetHan,TieuDe)
                                values(@MaKH,@TinhThanh,@QuanHuyen,@PhuongXa,@TenDuong,@SoNha,@DiaChi,@LoaiNT,@SDTNguoiChoThue,@MoTa,@GiaChoThue,@DienTich,@HinhAnh,@NgayDang,@NgayHetHan,@TieuDe)";
            cmd.Parameters.Add("@MaKH", SqlDbType.Int);
            cmd.Parameters["@MaKH"].Value = MaKH;
            cmd.Parameters.Add("@TinhThanh", SqlDbType.NVarChar,25);
            cmd.Parameters["@TinhThanh"].Value = drpTinhThanh.SelectedItem.Text;
            cmd.Parameters.Add("@QuanHuyen", SqlDbType.NVarChar, 25);
            cmd.Parameters["@QuanHuyen"].Value = drpQuanHuyen.SelectedItem.Text;
            cmd.Parameters.Add("@PhuongXa", SqlDbType.NVarChar, 50);
            cmd.Parameters["@PhuongXa"].Value = drpPhuongXa.SelectedItem.Text;
            cmd.Parameters.Add("@TenDuong", SqlDbType.NVarChar, 25);
            cmd.Parameters["@TenDuong"].Value = txtDuong.Text;
            cmd.Parameters.Add("@SoNha", SqlDbType.NVarChar, 50);
            cmd.Parameters["@SoNha"].Value = txtSoNha.Text;
            cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 100);
            cmd.Parameters["@DiaChi"].Value = txtDiaChiChinhXac.Text; ;
            cmd.Parameters.Add("@LoaiNT", SqlDbType.NVarChar, 30);
            cmd.Parameters["@LoaiNT"].Value = drpLoaiNT.SelectedItem.Text;
            cmd.Parameters.Add("@SDTNguoiChoThue", SqlDbType.NVarChar, 12);
            cmd.Parameters["@SDTNguoiChoThue"].Value = txtThongTinLienHe.Text;
            cmd.Parameters.Add("@MoTa", SqlDbType.NText);
            cmd.Parameters["@MoTa"].Value = txtMoTa.Text;
            cmd.Parameters.Add("@GiaChoThue", SqlDbType.Int);
            cmd.Parameters["@GiaChoThue"].Value = int.Parse(txtGiaChoThue.Text);
            cmd.Parameters.Add("@DienTich", SqlDbType.Int);
            cmd.Parameters["@DienTich"].Value =int.Parse( txtDienTich.Text);
            cmd.Parameters.Add("@HinhAnh", SqlDbType.NVarChar, 50);
            cmd.Parameters["@HinhAnh"].Value = HttpPostedFile.FileName.ToString();
            cmd.Parameters.Add("@NgayDang", SqlDbType.SmallDateTime);
            cmd.Parameters["@NgayDang"].Value = NgayDang;
            cmd.Parameters.Add("@NgayHetHan", SqlDbType.SmallDateTime);
            cmd.Parameters["@NgayHetHan"].Value = NgayHetHan;
            cmd.Parameters.Add("@TieuDe", SqlDbType.NVarChar, 100);
            cmd.Parameters["@TieuDe"].Value = txtTieuDe.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            DataTable dt = XLDL.GetData("select max(MaNhaTro) from NhaTroChoThue ");
            int MaNT = int.Parse(dt.Rows[0][0].ToString());
            SqlConnection con1 = new SqlConnection(XLDL.strCon);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.Connection = con1;
            cmd1.CommandText = @"Insert into HinhAnhChiTietNhaTro(MaNhaTro,HinhAnh) values(@MaNT,@HinhAnh) ";
            cmd1.Parameters.Add("@MaNT", SqlDbType.Int);
            cmd1.Parameters["@MaNT"].Value = MaNT;
            cmd1.Parameters.Add("@HinhAnh", SqlDbType.NVarChar, 50);
            for (int i = 0; i < _HttpFileCollection.Count; i++)
            {
                HttpPostedFile _HttpPostedFile = _HttpFileCollection[i];
                if (_HttpPostedFile.ContentLength > 0)
                {
                    string filepath = MapPath("Images/" + Path.GetFileName(_HttpPostedFile.FileName));
                    _HttpPostedFile.SaveAs(filepath);
                    cmd1.Parameters["@HinhAnh"].Value = _HttpPostedFile.FileName.ToString();
                    cmd1.ExecuteNonQuery();
                }
                   
            }
            con1.Close();
            Response.Redirect("~/CamOn.aspx");
        }

        protected void txtDuong_TextChanged(object sender, EventArgs e)
        {
            txtDiaChiChinhXac.Text=  txtDuong.Text + "," + drpPhuongXa.SelectedItem.Text + "," + drpQuanHuyen.SelectedItem.Text + "," + drpTinhThanh.SelectedItem.Text;
        }

        protected void txtSoNha_TextChanged(object sender, EventArgs e)
        {
            txtDiaChiChinhXac.Text = txtSoNha.Text + "," + txtDuong.Text + "," + drpPhuongXa.SelectedItem.Text + "," + drpQuanHuyen.SelectedItem.Text + "," + drpTinhThanh.SelectedItem.Text;

        }
    }
}