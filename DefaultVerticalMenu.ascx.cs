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

public partial class VMenu : System.Web.UI.UserControl
{
    DataSet1.LoaiDichVuDataTable bang = new DataSet1.LoaiDichVuDataTable();
    DataSet1TableAdapters.LoaiDichVuTableAdapter bien = new DataSet1TableAdapters.LoaiDichVuTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            laydulieu();
           
        }
    }
    public void laydulieu()
    {
        bang.Reset();
        bien.Fill(bang);
        rptloaidv.DataSource = bang;
        rptloaidv.DataBind();
    }
   
}
