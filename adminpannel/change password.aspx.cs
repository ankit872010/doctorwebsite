using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminpannel_change_password : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader sdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        //con.ConnectionString = "data source=.\\sqlexpress;Initial Catalog=dbdoctor;Integrated Security=true";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["doctorConnection"].ConnectionString;
        con.Open();
        com = new SqlCommand();
        com.Connection = con;
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.Text;
        com.CommandText = "update tblogins set password='" + Newpassword.Text + "' where email='" + email.Text + "' and password='" + Oldpassword.Text + "'";
        if (com.ExecuteNonQuery() > 0)
        {
            email.Text = "";
            Newpassword.Text = "";
            Oldpassword.Text = "";
            confirmpassword.Text = "";
            Response.Write("<script>alert('password change')</script>");

        }
    }

    protected void buttin2_Click(object sender, EventArgs e)
    {

    }
    protected void button_Click(object sender, EventArgs e)
    {

    }
}