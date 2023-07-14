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

public partial class Doctorpannel_news_comment : System.Web.UI.Page
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
 com.CommandType = CommandType.StoredProcedure;
 com.CommandText = "prcinserttbnewscomment";
        com.Parameters.AddWithValue("@newsid", newsid.Text);
        com.Parameters.AddWithValue("@doctorid", doctorid.Text);
        com.Parameters.AddWithValue("Commentdescription", Commentdescription.Text);
        com.Parameters.AddWithValue("@datecomment", datecomment.Text);
        com.Parameters.AddWithValue("@statuscomment", statuscomment.Text);
        if (com.ExecuteNonQuery() > 0)
        {
            newsid.Text = "";
            doctorid.Text = "";
            Commentdescription.Text = "";
            datecomment.Text = "";
            statuscomment.Text = "";
            Response.Write("<script>alert('Record Updated')</script>");
        }
    }
    protected void button2_Click(object sender, EventArgs e)
    {

    }
    
}