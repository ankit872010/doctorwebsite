using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            label_welcome1.Text = "Welcome " + Session["doctorname"].ToString();

        }
        catch (Exception ex)
        {
            Response.Redirect("../Logindoctor.aspx");
        }

    }
   
    protected void button1_Click(object sender, EventArgs e)
    {
        Session.Remove("doctorid");
        Session.Remove("doctorname");
        Session.Abandon();
        Response.Redirect("../Logindoctor.aspx");

    }
   
}