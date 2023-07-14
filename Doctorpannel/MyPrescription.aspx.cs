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

public partial class Doctorpannel_MyPrescription : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    static long treatmentid;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        //con.ConnectionString = "data source=.\\sqlexpress;Initial Catalog=dbdoctor;Integrated Security=true";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["doctorConnection"].ConnectionString;
        con.Open();
        com = new SqlCommand();
        com.Connection = con;
        try
        {
            Appointmentid.Text = Request.QueryString["appid"].ToString();
        }
        catch (Exception ex)
        { 
        }
            
    }
    protected void update_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "prcupdatetbtreatment";
        com.Parameters.AddWithValue("@treatmentid", treatmentid);
        com.Parameters.AddWithValue("@treatmentdescription", Treatmentdescription.Text);
        com.Parameters.AddWithValue("@treatmentdate", Treatmentdate.Text);
        com.Parameters.AddWithValue("@treatmentcost", Treatmentcost.Text);
        if (com.ExecuteNonQuery() > 0)
        {

            Treatmentdescription.Text = "";
            Treatmentdate.Text = "";
            Treatmentcost.Text = "";
            Response.Write("<script>alert('Record Updated')</script>");
            MyprescriptionSqlDataSource1.DataBind();
            GridView1.DataBind();

        }
    }


    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Appointmentid.Text = GridView1.SelectedRow.Cells[1].Text;
        treatmentid = Convert.ToInt64(GridView1.SelectedRow.Cells[8].Text);
        Treatmentdescription.Text = GridView1.SelectedRow.Cells[9].Text;
        Treatmentdate.Text = GridView1.SelectedRow.Cells[10].Text;
        Treatmentcost.Text = GridView1.SelectedRow.Cells[11].Text;
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "prcinserttbtreatment";
        //com.Parameters.AddWithValue("@treatmentid", treatmentid);
        com.Parameters.AddWithValue("@appointmentid", Appointmentid.Text);
        com.Parameters.AddWithValue("@treatmentdescription", Treatmentdescription.Text);
        com.Parameters.AddWithValue("@treatmentdate", Treatmentdate.Text);
        com.Parameters.AddWithValue("@treatmentcost", Treatmentcost.Text);
        if (com.ExecuteNonQuery() > 0)
        {
            Appointmentid.Text = "";
            Treatmentdescription.Text = "";
            Treatmentdate.Text = "";
            Treatmentcost.Text = "";

            Response.Write("<script>alert('Record saved')</script>");
            Request.QueryString["appid"].ToString();

            MyprescriptionSqlDataSource1.DataBind();
            GridView1.DataBind();
        }
    }
}