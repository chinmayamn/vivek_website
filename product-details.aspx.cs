using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using vivek;
public partial class product_details : System.Web.UI.Page
{
    admin ad = new admin();
    code co = new code();
    Order or = new Order();
    MessageBox msg = new MessageBox();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {

                int id = Convert.ToInt32(Request.QueryString["id"]);
                filldata(id);
            }
        }
    }
    public void filldata(int data)
    {
        DataSet ds = ad.getproductdetailsbyidnew(data);
        Literal2.Text = ds.Tables[0].Rows[0]["categoryname"].ToString();
       
        Literal1.Text = ds.Tables[0].Rows[0]["pname"].ToString();
        
        Literal3.Text = Server.HtmlDecode(ds.Tables[0].Rows[0]["description"].ToString());
        Image1.ImageUrl = ds.Tables[0].Rows[0]["pimage"].ToString();


        DataSet ds1 = ad.getproductprice(data);

        if (ds1.Tables[0].Rows.Count == 0)
        {
            //Button1.Visible = false;
            //Label6.Visible = true;
        }
        else
        {
            //Button1.Visible = true;
            //Label6.Visible = false;
        }
    }

}