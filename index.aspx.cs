using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class index : System.Web.UI.Page
{
    admin ad = new admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
          //  filloffers();
          //  fillcategory();
            //filllatest();
            //filldiscount();
            //MembershipUser mem = Membership.GetUser();
            //if (mem != null)
            //{
            //    Label text = (Label)LoginView1.FindControl("Label1");
            //    text.Text = mem.UserName;
            //    span1.Visible = true;
            //    span2.Visible = true;
            //}
            //else
            //{
            //    span1.Visible = false;
            //    span2.Visible = false;
            //}

            //total();

        }
    }
   
}