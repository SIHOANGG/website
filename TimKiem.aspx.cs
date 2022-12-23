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

public partial class TimKiem : System.Web.UI.Page
{
    string ten;
    string gia;
    protected void Page_Load(object sender, EventArgs e)
    {
        ten = Request["Ten"];
        gia = Request["Gia"];
        laydulieu(-1, 1, ten, gia);
    }
    private void laydulieu(int an, int hien, string ten, string gia)
    {
        DataSet1.sp_SearchtourDataTable bang = new DataSet1.sp_SearchtourDataTable();
        DataSet1TableAdapters.sp_SearchtourTableAdapter bien = new DataSet1TableAdapters.sp_SearchtourTableAdapter();
        bang.Reset();
        bien.Fill(bang, ten, an, hien, gia);
        Label1.Text = "Tìm thấy " + bang.Rows.Count.ToString() + " kết quả";
        rptTour.DataSource = bang;
        rptTour.DataBind();
       
    }
}
