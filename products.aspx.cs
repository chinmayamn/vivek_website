using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class products : System.Web.UI.Page
{
    admin ad = new admin();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                fillproduct(id);

            }
            else
            {
                fillcategory();
            }

        }
    }
    public void fillproduct(int id)
    {
        //DataSet ds = ad.getproductbycatnew(id);
        DataSet ds = ad.getproductbycatnewest(id);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Literal3.Visible = true;
            DataList1.Visible = false;
        }
        else
        {
            Repeater1.Visible = false;
            DataList1.Visible = true;
            Literal3.Visible = false;
            DataList1.Visible = true;
            DataList1.DataSource = ds;
            DataList1.DataBind();
            Literal2.Text = ds.Tables[0].Rows[0]["categoryname"].ToString();
            Literal1.Text = ds.Tables[0].Rows[0]["categoryname"].ToString();
        }
    }
    public void fillcategory()
    {
        DataSet ds = ad.getcategory();
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            Literal2.Text = "Products";
            Repeater1.Visible = true;
            DataList1.Visible = false;
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}