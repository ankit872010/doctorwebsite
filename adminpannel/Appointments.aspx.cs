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

public partial class adminpannel_Appointments : System.Web.UI.Page
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
            com.CommandText = "prcinserttbappointment";
            com.Parameters.AddWithValue("@AppointmentDate", AppointmentDate.Text);
            com.Parameters.AddWithValue("@Userid", Userid.Text);
            com.Parameters.AddWithValue("@Doctorid ", Doctorid.Text);
            com.Parameters.AddWithValue("@Appointmentsstatus",Appointmentsstatus.Text);
            com.Parameters.AddWithValue("@Patientname", Patientname.Text);
            com.Parameters.AddWithValue("@Gender", Gender.Text);
            com.Parameters.AddWithValue("@Age", Age.Text);
            com.Parameters.AddWithValue("@symptomes", symptomes.Text);
            if (com.ExecuteNonQuery() > 0)
            {
                AppointmentDate.Text = "";
               Userid.Text = "";
                Doctorid.Text = "";
               Appointmentsstatus.Text = "";
              Patientname.Text = "";
                Gender.Text = "";
               Age.Text = "";
                symptomes.Text = "";
                Response.Write("<script>alert('Record Saved')</script>");
            }
        }
    }
