using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = XLDL.GetData("select TenTK from KhachHang where TenTK='" + txtTenDN.Text + "' and MatKhau='" + txtMatKhauCu.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    XLDL.Excute("UPDATE KhachHang set MatKhau='" + txtMatKhauMoi.Text + "'where TenTK='" + txtTenDN.Text + "'");
                    lbThongBaoLoi.Text = "Đổi mật khẩu thành công";
                }
                else
                {
                    lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu cũ không hợp lệ!";
                }
            }
            catch
            {
                lbThongBaoLoi.Text = "Thất bại";
            }
        }
    }
}