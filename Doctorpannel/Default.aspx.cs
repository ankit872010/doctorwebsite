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

public partial class Doctorpannel_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection();
        //con.ConnectionString = "data source=.\\sqlexpress;Initial Catalog=dbdoctor;Integrated Security=true";
        con.ConnectionString = ConfigurationManager.ConnectionStrings["doctorConnection"].ConnectionString;
        con.Open();
        com = new SqlCommand();
        com.Connection = con;
        if (!IsPostBack)
        {
            com.CommandType = CommandType.Text;
            try
            {
                com.CommandText = "Select * from tbdoctor where doctorid=" + Convert.ToInt64(Session["doctorid"].ToString());
            }
            catch (Exception ex)
            {
                Response.Redirect("../logindoctor.aspx");
            }
            SqlDataReader sdr;
            sdr = com.ExecuteReader();
            if (sdr.Read())
            {

                name.Text = sdr.GetString(2).Trim();
                address.Text = sdr.GetString(3).Trim();
                city.Text = sdr.GetString(4).Trim();
                Phone.Text = sdr.GetString(5).Trim();
                qualification.Text = sdr.GetString(6).Trim();
                experience.Text = sdr.GetString(7).Trim();
                specialization.Text = sdr.GetString(8).Trim();
                DropDownList1.SelectedValue = sdr.GetValue(9).ToString();
                previoushospitalname.Text = sdr.GetString(10).Trim();
                email.Text = sdr.GetString(11).Trim();
            }
            sdr.Close();
        }
    }
    protected void button_Click(object sender, EventArgs e)
    {
        com.CommandType = CommandType.StoredProcedure;
        com.CommandText = "prcupdatedoctor";
        //com.Parameters.AddWithValue("@password", password.Text);
        com.Parameters.AddWithValue("@doctorid", Convert.ToInt64(Session["doctorid"].ToString()));
        com.Parameters.AddWithValue("@name", name.Text);
        com.Parameters.AddWithValue("@address", address.Text);
        com.Parameters.AddWithValue("@city", city.Text);
        com.Parameters.AddWithValue("@Phone", Phone.Text);
        com.Parameters.AddWithValue("@Qualification", qualification.Text);
        com.Parameters.AddWithValue("@experience", experience.Text);
        com.Parameters.AddWithValue("@specialization", specialization.Text);
        com.Parameters.AddWithValue("@hospitalid ", DropDownList1.SelectedValue);
        com.Parameters.AddWithValue("@previoushospitalname", previoushospitalname.Text);
        com.Parameters.AddWithValue("@email", email.Text);

        if (com.ExecuteNonQuery() > 0)
        {
            //password.Text = "";
            //name.Text = "";
            //address.Text = "";
            //city.Text = "";
            //Phone.Text = "";
            //qualification.Text = "";
            //experience.Text = "";
            //specialization.Text = "";

            //previoushospitalname.Text = "";
            //email.Text = "";

            Response.Write("<script>alert('Record Updated')</script>");
        }
    }
}