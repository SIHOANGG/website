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

public partial class Tintuc : System.Web.UI.Page
{
    DataSet1.TintucDataTable bang = new DataSet1.TintucDataTable();
    DataSet1TableAdapters.TintucTableAdapter bien = new DataSet1TableAdapters.TintucTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        laydulieu();

    }
    public void laydulieu()
    {

        bang.Reset();
        bien.Fill(bang);
        rptTintuc.DataSource = bang;
        rptTintuc.DataBind();


    }
}
