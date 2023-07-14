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
public partial class Doctorpannel_My_Appointment : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        appointmentid = Convert.ToInt64(GridView1.SelectedRow.Cells[1].Text);
        //name.Text = GridView1.SelectedRow.Cells[2].Text;
        Timing.Text = GridView1.SelectedRow.Cells[2].Text;
        appointmentdate.Text = GridView1.SelectedRow.Cells[3].Text;
        Patientname.Text = GridView1.SelectedRow.Cells[4].Text;
        Gender.Text = GridView1.SelectedRow.Cells[5].Text;
        Age.Text = GridView1.SelectedRow.Cells[6].Text;
        Symptomes.Text = GridView1.SelectedRow.Cells[7].Text;
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[8].Text;


    }
    protected void updatebutton_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "prcupdatedoctorappointment";
        com.Parameters.AddWithValue("@Appointmentid", appointmentid);
        com.Parameters.AddWithValue("@AppointmentTiming", Timing.Text);
        com.Parameters.AddWithValue("@appointmentdate", appointmentdate.Text);
        com.Parameters.AddWithValue("@Patientname", Patientname.Text);
        com.Parameters.AddWithValue("@Gender", Gender.Text);
        com.Parameters.AddWithValue("@Age", Age.Text);
        com.Parameters.AddWithValue("@Symptomes", Symptomes.Text);
        com.Parameters.AddWithValue("@appointmentstatus",DropDownList1.SelectedValue);
        if (com.ExecuteNonQuery() > 0)
        {
            //name.Text = "";
            Timing.Text = "";
            appointmentdate.Text = "";
            Patientname.Text = "";
            Gender.Text = "";
            Age.Text = "";
            Symptomes.Text = "";
            DropDownList1.SelectedValue = "";
            Response.Write("<script>alert('Record Updated')</script>");
            MyappointmentSqlDataSource1.DataBind();
            GridView1.DataBind();

        }
    }
    protected void prescribeButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyPrescription.aspx?appid=" + appointmentid);
    }
}