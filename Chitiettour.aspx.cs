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

public partial class Chitiettour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["TourID"] != null)
        {
            int TourID = int.Parse(Request["TourID"].ToString());
            rptourchitiet.DataSource = getTour(TourID);
            rptourchitiet.DataBind();
        }
    }
   
    public DataTable getTour(int TourID)
    {

        DataSet1.spud_ChonTourTheoMaTourDataTable bangketnoi = new DataSet1.spud_ChonTourTheoMaTourDataTable();
        DataSet1TableAdapters.spud_ChonTourTheoMaTourTableAdapter bien = new DataSet1TableAdapters.spud_ChonTourTheoMaTourTableAdapter();
        bangketnoi.Reset();
        bien.Fill(bangketnoi, TourID, -1, 1);
        return bangketnoi;
    }
   
}
