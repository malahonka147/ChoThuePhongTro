using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACSN.UC
{
    public partial class ucLeft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dlTinMoi.DataSource = XLDL.GetData("SELECT top 5 [TieuDe], [MaNhaTro] FROM [NhaTroChoThue] ORDER BY [MaNhaTro] DESC");
            dlTinMoi.DataBind();

        }
    }
}