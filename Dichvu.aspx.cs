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

public partial class Dichvu : System.Web.UI.Page
{
    DataSet1.sp_DVSelectByMaLoaiDVDataTable bangketnoi = new DataSet1.sp_DVSelectByMaLoaiDVDataTable();
    DataSet1TableAdapters.sp_DVSelectByMaLoaiDVTableAdapter bien = new DataSet1TableAdapters.sp_DVSelectByMaLoaiDVTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["MaLoaiDichVu"] != null)
        {
            int MaLoaiDichVu = int.Parse(Request["MaLoaiDichVu"].ToString());
            load_data(MaLoaiDichVu, 0, 1);
        }
    }
    private void load_data(int MaLoaiTour, int an, int hien)
    {
        bangketnoi.Reset();
        bien.Fill(bangketnoi, MaLoaiTour, an, hien);
        rptDichVu.DataSource = bangketnoi;
        rptDichVu.DataBind();
    }
}
