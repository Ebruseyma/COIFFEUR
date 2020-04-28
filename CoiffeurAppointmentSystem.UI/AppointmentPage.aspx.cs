using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using CoiffeurAppointmentSystem.ORM;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;//contain classes for accessing and managing data from diverse
using System.Configuration;


namespace CoiffeurAppointmentSystem
{
    public partial class AppointmentPage : System.Web.UI.Page
    {
        public static person loginedUser = new person();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("UserLogIn.aspx");
            }
            else
            {
                string id1 = Request.QueryString["id"];
                loginedUser = (person)Session["username"];
                string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand kmt = new SqlCommand("select (p.first_name+' '+p.last_name) as name, s.service_name, w.description from cas.person as p inner join cas.work as w on w.staff_id = p.user_id inner join cas.service as s on s.service_id = w.service_id", connection);
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
        

        }

        protected void btndate_Click(object sender, EventArgs e)
        {

        }
    }
}