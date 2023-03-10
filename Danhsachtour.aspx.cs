using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    DataSet1.sp_TourSelectByIDDataTable bangketnoi = new DataSet1.sp_TourSelectByIDDataTable();
    DataSet1TableAdapters.sp_TourSelectByIDTableAdapter bien = new DataSet1TableAdapters.sp_TourSelectByIDTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["MaLoaiTour"] != null)
        {
            int MaLoaiTour = int.Parse(Request["MaLoaiTour"].ToString());
            load_data(MaLoaiTour, 0, 1);
        }
    }

    private void load_data(int MaLoaiTour, int an, int hien)
    {
        bangketnoi.Reset();
        bien.Fill(bangketnoi,MaLoaiTour,an,hien);
        rptTour.DataSource = bangketnoi;
        rptTour.DataBind();
    }
    
}
