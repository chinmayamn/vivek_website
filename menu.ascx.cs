using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class menu : System.Web.UI.UserControl
{
    admin ad = new admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
            fillcategory();
         

        }

    }
    public void fillcategory()
    {
        DataSet ds = ad.getcategory();
        if (ds.Tables[0].Rows.Count == 0)
        {
            Literal1.Visible = true;
            Literal1.Text = "No category added till now";
            Repeater1.Visible = false;
        }
        else
        {
            Literal1.Visible = false;
            Repeater1.Visible = true;
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}