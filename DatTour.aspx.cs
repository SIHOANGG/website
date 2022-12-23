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

public partial class _Default : System.Web.UI.Page
{
    int Matour;
    protected void Page_Load(object sender, EventArgs e)
    {
        Matour = int.Parse(Request["edit"]);
        load_dulieu();
    }
    
    private void load_dulieu()
    {
        cbthanhtoan.Items.Insert(0, new ListItem("Tiền mặt", "Tiền mặt"));
        cbthanhtoan.Items.Insert(1, new ListItem("Chuyển khoản", "Chuyển khoản"));
        cbsonguoilon.Items.Insert(0, "0");
        cbsonguoilon.Items.Insert(1, "1");
        cbsonguoilon.Items.Insert(2, "2");
        cbsonguoilon.Items.Insert(3, "3");
        cbsonguoilon.Items.Insert(4, "4");
        cbsonguoilon.Items.Insert(5, "5");
        cbsonguoilon.Items.Insert(6, "6");
        cbsonguoilon.Items.Insert(7, "7");
        cbsonguoilon.Items.Insert(8, "8");
        cbsonguoilon.Items.Insert(9, "9");
        cbsonguoilon.Items.Insert(10, "10");
         cbsotreem.Items.Insert(0, "0");
         cbsotreem.Items.Insert(1, "1");
         cbsotreem.Items.Insert(2, "2");
         cbsotreem.Items.Insert(3, "3");
         cbsotreem.Items.Insert(4, "4");
         cbsotreem.Items.Insert(5, "5");
         cbsotreem.Items.Insert(6, "6");
         cbsotreem.Items.Insert(7, "7");
         cbsotreem.Items.Insert(8, "8");
         cbsotreem.Items.Insert(9, "9");
         cbsotreem.Items.Insert(10, "10");

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string songuoilon = Request["cbsonguoilon"];
        string sotreem = Request["cbsotreem"];
        string thanhtoan = Request["cbthanhtoan"];
        DataSet1.sp_DTInsertDataTable bang = new DataSet1.sp_DTInsertDataTable();
        DataSet1TableAdapters.sp_DTInsertTableAdapter bien = new DataSet1TableAdapters.sp_DTInsertTableAdapter();
        bang.Reset();
        bien.Fill(bang, txtten.Text.Trim(), txtdienthoai.Text.Trim(), txtemail.Text.Trim(), txtdiachi.Text.Trim(), int.Parse(cbsonguoilon.SelectedValue), int.Parse(cbsotreem.SelectedValue), txtngay.Text.Trim(), cbthanhtoan.SelectedValue, txtyc.Text.Trim(), Matour,1);
        if (bang.Rows[0]["errcode"].ToString() == "1")
        {
            lblthongbao.Text = "BẠN ĐÃ ĐĂNG KÍ TOUR THÀNH CÔNG - CHÚC BẠN VUI VẺ!";
        }
    }
    protected void bntback_Click(object sender, EventArgs e)
    {
        txtten.Text = "";
        txtdienthoai.Text = "";
        txtemail.Text = "";
        txtdiachi.Text = "";

    }
}
