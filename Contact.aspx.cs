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

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntgui_Click(object sender, EventArgs e)
    {
        DataSet1.sp_LHInsertDataTable bang = new DataSet1.sp_LHInsertDataTable();
        DataSet1TableAdapters.sp_LHInsertTableAdapter bien = new DataSet1TableAdapters.sp_LHInsertTableAdapter();
        bang.Reset();
        bien.Fill(bang,txtchude.Text.Trim(),txthoten.Text.Trim(),txtemail.Text.Trim(),Editor1.Content);
        if (Convert.ToInt16(bang.Rows[0]["errCode"]) == 0)
        {
            lblloi.Text = bang.Rows[0]["errMsg"].ToString();
        }
        else
            lblloi.Text = bang.Rows[0]["errMsg"].ToString();
    }
    protected void bntback_Click(object sender, EventArgs e)
    {
        txtchude.Text = "";
        txthoten.Text = "";
        txtchude.Text = "";
    }
}
