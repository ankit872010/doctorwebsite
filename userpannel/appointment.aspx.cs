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

public partial class userpannel_appointment : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    static long appointmentid;
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
        {
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "prcinsertAppointment";
            com.Parameters.AddWithValue("@Userid", Convert.ToInt64(Session["userid"].ToString()) );
            com.Parameters.AddWithValue("@Doctorid", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@appointmentTiming", Timing.Text);
            com.Parameters.AddWithValue("@appointmentdate", appointmentdate.Text);
            com.Parameters.AddWithValue("@Patientname", Patientname.Text);
            com.Parameters.AddWithValue("@Gender", Gender.Text);
            com.Parameters.AddWithValue("@Age", Age.Text);
            com.Parameters.AddWithValue("@Symptomes", Symptomes.Text);
            if (com.ExecuteNonQuery() > 0)
            {
                //Userid.Text = "";
                //Doctorid.Text = ""; 
                Timing.Text = "";
                appointmentdate.Text= "";
                Patientname.Text = "";
                Gender.Text = "";
                Age.Text = "";
                Symptomes.Text = "";

                Response.Write("<script>alert('Appointment Book')</script>");
                myappointmentSqlDataSource2.DataBind();
                GridView1.DataBind();
            }

        }
    }

    protected void button2_Click(object sender, EventArgs e)
    {
        //Userid.Text = "";
        //Doctorid.Text = "";
        Timing.Text = "";
        appointmentdate.Text = "";
        Patientname.Text = "";
        Gender.Text = "";
        Age.Text = "";
        Symptomes.Text = "";

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        appointmentid = Convert.ToInt64(GridView1.SelectedRow.Cells[1].Text);
        Timing.Text = GridView1.SelectedRow.Cells[2].Text;
        appointmentdate.Text = GridView1.SelectedRow.Cells[3].Text;
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
        Patientname.Text = GridView1.SelectedRow.Cells[5].Text;
        Gender.Text = GridView1.SelectedRow.Cells[6].Text;
        Age.Text = GridView1.SelectedRow.Cells[7].Text;
        Symptomes.Text = GridView1.SelectedRow.Cells[8].Text;
        update.Visible = true;
        button1.Visible = false;

    }
    protected void update_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "prcupdateAppointment";
        com.Parameters.AddWithValue("@Appointmentid", appointmentid);
        com.Parameters.AddWithValue("@AppointmentTiming", Timing.Text);
        com.Parameters.AddWithValue("@appointmentdate", appointmentdate.Text); 
        com.Parameters.AddWithValue("@Doctorid", DropDownList1.SelectedValue);        
        com.Parameters.AddWithValue("@Patientname", Patientname.Text);
        com.Parameters.AddWithValue("@Gender", Gender.Text);
        com.Parameters.AddWithValue("@Age", Age.Text);
        com.Parameters.AddWithValue("@Symptomes", Symptomes.Text);
        if (com.ExecuteNonQuery() > 0)
        {
            Timing.Text = "";
            appointmentdate.Text = "";
            Patientname.Text = "";
            Gender.Text = "";
            Age.Text = "";
            Symptomes.Text = "";
            Response.Write("<script>alert('Record Updated')</script>");
            myappointmentSqlDataSource2.DataBind();
            GridView1.DataBind();

        }
       
    }
}