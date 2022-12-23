using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Chitietks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["MaKhachSan"] != null)
        {
            int MaKhachSan = int.Parse(Request["MaKhachSan"].ToString());
            rpkschitiet.DataSource = getKS(MaKhachSan);
            rpkschitiet.DataBind();
        }
    }
    public DataTable getKS(int MaKhachSan)
    {

        DataSet1.sp_KSSelectByIDDataTable bangketnoi = new DataSet1.sp_KSSelectByIDDataTable();
        DataSet1TableAdapters.sp_KSSelectByIDTableAdapter bien = new DataSet1TableAdapters.sp_KSSelectByIDTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi,MaKhachSan, -1, 1);
        return bangketnoi;
    }
}
