using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class DatTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Contents["username"]!= null)
        {
            ToursBO bo=new ToursBO();
            txtSonguoiconlai.Text = bo.sochotrong(int.Parse(Request.QueryString["ma"].ToString())).ToString();
            
        }
        else
        {
            Response.Redirect("Login.aspx?type=notlg");
        }
    }
   
    protected void btnDattour_Click(object sender, EventArgs e)
    {
        int matour = int.Parse(Request.QueryString["ma"]);
        KhachhangData data = new KhachhangData();
        data.USERNAME1 = Session["username"].ToString();
        data.HOTEN1 = txtHoten.Text;
        data.CMND1 = int.Parse(txtCMND.Text);
        data.MATOUR1 = matour;
        data.DIENTHOAI1 = txtDienthoai.Text;
        data.SONGUOI1 = int.Parse(txtSonguoi.Text);
        data.TINHTHANH1 = txtTinh.Text;
        
        Khachhangbo bo = new Khachhangbo();
        ToursBO tbo=new ToursBO();
        int temp = tbo.sochotrong(matour);
        if (data.SONGUOI1 > temp|| temp<=0)
        {
            Response.Write("<Script>alert('Số chỗ trống không đủ hoặc tour đã đủ số lượng người đi.');</Script>");
        }
        else
        {
            if (bo.Insert(data))
            {
                int tong = temp - data.SONGUOI1;
                tbo.tru(matour, tong);
                Response.Write("<Script>alert('Dặt Tour thành công');</Script>");

            }
            else
            {
                Response.Write("<Script>alert('Đặt Tour Thất Bại');</Script>");
            }
        }

    }
}
