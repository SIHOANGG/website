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

public partial class Menu : System.Web.UI.UserControl
{

    DataSet1.sp_LoaitourSelectDataTable bang = new DataSet1.sp_LoaitourSelectDataTable();
    DataSet1TableAdapters.sp_LoaitourSelectTableAdapter bien = new DataSet1TableAdapters.sp_LoaitourSelectTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            laydulieu(0,1);
        }
        
    }

    public void laydulieu(int an, int hien)
    {
        bang.Reset();
        bien.Fill(bang,0,an,hien);
        rptloaitour.DataSource = bang;
        rptloaitour.DataBind();
    }
}
