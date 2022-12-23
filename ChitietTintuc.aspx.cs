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

public partial class ChitietTintuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["MaTT"] != null)
        {
            int MaTT = int.Parse(Request["MaTT"].ToString());
            rpTTchitiet.DataSource = getTT(MaTT);
            rpTTchitiet.DataBind();
        }
    }
    public DataTable getTT(int ma)
    {

        DataSet1.sp_TTSelectByIDDataTable bang = new DataSet1.sp_TTSelectByIDDataTable();
        DataSet1TableAdapters.sp_TTSelectByIDTableAdapter bien = new DataSet1TableAdapters.sp_TTSelectByIDTableAdapter();
        bang.Reset();
        bien.Fill(bang,ma);
        return bang;
    }
}
