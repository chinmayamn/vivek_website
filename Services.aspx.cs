using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Services : System.Web.UI.Page
{
    admin ad = new admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldata();
        }

    }
    public void filldata()
    {
        DataSet ds = ad.getdata("Services");
        if (ds.Tables[0].Rows.Count == 0)
        {
        }
        else
        {
            Label1.Text = Server.HtmlDecode(ds.Tables[0].Rows[0]["contents"].ToString());
        }
    }
}