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
    DataSet1.spud_ChonTourTheoMaTourDataTable bangketnoi = new DataSet1.spud_ChonTourTheoMaTourDataTable();
    DataSet1TableAdapters.spud_ChonTourTheoMaTourTableAdapter bien = new DataSet1TableAdapters.spud_ChonTourTheoMaTourTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {   
            laydulieu(-1, 1);
    }
    public void laydulieu(int an, int hien)
    {

        bangketnoi.Reset();
        bien.Fill(bangketnoi, 0, an, hien);
       
        CollectionPager1.MaxPages = 10000;

        CollectionPager1.PageSize = 3; // số items hiển thị trên một trang

        CollectionPager1.DataSource = bangketnoi.DefaultView;

        CollectionPager1.BindToControl = rptTour;

        rptTour.DataSource = CollectionPager1.DataSourcePaged;

        rptTour.DataBind();
        
        
    }
}
