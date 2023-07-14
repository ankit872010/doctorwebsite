using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospitalpannel_hospitalpannel : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            welcome.Text = "Welcome " + Session["hospitalname"].ToString();

        }
        catch (Exception ex)
        {
            Response.Redirect("../Loginhospital.aspx");
        }
    }
    protected void logoutbutton_Click(object sender, EventArgs e)
    {
        Session.Remove("hospitalid");
        Session.Remove("hospitalname");
        Session.Abandon();
        Response.Redirect("../Loginhospital.aspx");
    }
}
