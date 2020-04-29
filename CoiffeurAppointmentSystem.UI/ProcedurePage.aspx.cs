using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;//contain classes for accessing and managing data from diverse
using System.Configuration;




namespace CoiffeurAppointmentSystem
{
    public partial class ProcedurePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  DataList1.DataSource = baglanti();
              DataList1.DataBind();*/
            if (!Page.IsPostBack)
            {
                string id1 = Request.QueryString["id"];
                int id2 = Convert.ToInt32(id1);

                string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand kmt = new SqlCommand("select wp.wp_id, s.service_name, w.price, w.description, w.estimate_time from cas.work as w inner join cas.workplace as wp on wp.wp_id = w.wp_id inner join cas.service as s on s.service_id = w.service_id where wp.wp_id = @input", connection);
                kmt.Parameters.AddWithValue("@input", id1);
                SqlDataReader dr = kmt.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                connection.Close();



                connection.Open();
                SqlCommand kmt2 = new SqlCommand("select wp.wp_name, wp.about,wp.wp_id from cas.workplace as wp where wp.wp_id = @input2", connection);
                kmt2.Parameters.AddWithValue("@input2", id1);
                SqlDataReader dr2 = kmt2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
                connection.Close();
            }

            /*
    public DataTable baglanti()
    {
       string connectionString = "server=DESKTOP-P0FDTHF;database=CoiffeurAppointmentSystem;Trusted_Connection=True;";
       SqlConnection connection = new SqlConnection(connectionString);
       connection.Open();
       DataTable dtCourse = new DataTable();
       if (connection.State == ConnectionState.Open)
       {
           SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM cas.service", connection);

           adapter.Fill(dtCourse);
       }
       return dtCourse;
    }
    */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id1 = Request.QueryString["id"];
            Response.Redirect("AppointmentPage.aspx?id=" + id1);
        }

    }
}