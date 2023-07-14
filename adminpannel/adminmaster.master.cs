using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class adminpannel_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            label_welcome.Text = "Welcome " + Session["adminname"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("../adminpannel/Login.aspx");
        }
    }

    protected void logout_button_Click(object sender, EventArgs e)
    {
        Session.Remove("adminid");
        Session.Remove("adminname");
        Session.Abandon();
        Response.Redirect("../adminpannel/Login.aspx");
    }
}
