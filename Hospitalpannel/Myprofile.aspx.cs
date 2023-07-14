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

public partial class Hospitalpannel_Myprofile : System.Web.UI.Page
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
                com.CommandText = "Select * from tbhospital where hospitalid=" + Convert.ToInt64(Session["hospitalid"].ToString());
            }
            catch (Exception ex)
            {
                Response.Redirect("../loginhospital.aspx");
            }
            SqlDataReader sdr;
            sdr = com.ExecuteReader();
            if (sdr.Read())
            {

                name.Text = sdr.GetString(1).Trim();
                address.Text = sdr.GetString(2).Trim();
                phone.Text = sdr.GetString(3).Trim();
                email.Text = sdr.GetString(4).Trim();
                website.Text = sdr.GetString(5).Trim();
                password.Text = sdr.GetString(6).Trim();
            }
            sdr.Close();
        }
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        {
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "prcupdatehospital";
            com.Parameters.AddWithValue("@hospitalid", Convert.ToInt64(Session["hospitalid"].ToString()));
            com.Parameters.AddWithValue("@name", name.Text);
            com.Parameters.AddWithValue("@address", address.Text);
            com.Parameters.AddWithValue("@phone", phone.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@website", website.Text);
            com.Parameters.AddWithValue("@password", password.Text);
            if (com.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Record Updated')</script>");
            }
        }
    }
}