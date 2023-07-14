using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            label_welcome2.Text = "welcome " + Session["username"].ToString();

        }
        catch (Exception ex)
        {
            Response.Redirect("../Loginuser.aspx");
        }
    }



   
    protected void logoutbutton1_Click1(object sender, EventArgs e)
    {
        Session.Remove("userid");
        Session.Remove("username");
        Session.Abandon();
        Response.Redirect("../Loginuser.aspx");
    }
}
