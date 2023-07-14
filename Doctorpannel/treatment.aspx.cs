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


public partial class Doctorpannel_treatment : System.Web.UI.Page
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
        com.CommandText = "prcinsertreatment";
        com.Parameters.AddWithValue("@Appointmentid", Appointmentid.Text);
        com.Parameters.AddWithValue("@Treatmentdescription", Treatmentdescription.Text);
        com.Parameters.AddWithValue("@Treatmentdate ", Treatmentdate .Text);
        com.Parameters.AddWithValue("@Treatmentcost",Treatmentcost.Text);
        if (com.ExecuteNonQuery() > 0)
        {
            Appointmentid.Text = "";
            Treatmentdescription.Text = "";
            Treatmentdate.Text = "";
            Treatmentcost.Text = "";
            Response.Write("<script>alert('Record Updated')</script>");
        }
    }
}
    
