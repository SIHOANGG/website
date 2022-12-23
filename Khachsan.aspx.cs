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

public partial class Khachsan : System.Web.UI.Page
{
    DataSet1.sp_KSSelectByIDDataTable bang = new DataSet1.sp_KSSelectByIDDataTable();
    DataSet1TableAdapters.sp_KSSelectByIDTableAdapter bien = new DataSet1TableAdapters.sp_KSSelectByIDTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            laydulieu(0, 1);
        }
    }
    public void laydulieu(int an, int hien)
    {

        bang.Reset();
        bien.Fill(bang, 0, an, hien);
       rptkhachsan.DataSource = bang;
       rptkhachsan.DataBind();


    }
}
