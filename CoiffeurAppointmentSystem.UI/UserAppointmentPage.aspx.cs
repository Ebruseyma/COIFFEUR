using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;//contain classes for accessing and managing data from diverse
using System.Configuration;
using CoiffeurAppointmentSystem.ORM;

namespace CoiffeurAppointmentSystem
{
    public partial class UserAppointmentPage : System.Web.UI.Page
    {
        public person loginedUser = new person();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string id1 = Request.QueryString["id"];

                string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);

                connection.Open();
                SqlCommand kmt = new SqlCommand("select ap.appointment_date, s.service_name, wp.wp_name, (p.first_name+' '+p.last_name) as name from cas.appointment as ap inner join cas.work as w on w.work_id = ap.work_id inner join cas.workplace as wp on wp.wp_id = ap.work_id inner join cas.person as p on p.user_id = ap.staff_id inner join cas.service as s on s.service_id = w.service_id where ap.appointment_date < GETDATE() and ap.user_id = @input", connection);
                kmt.Parameters.AddWithValue("@input", loginedUser.user_id);
                SqlDataReader dr = kmt.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                connection.Close();




                connection.Open();
                SqlCommand kmt2 = new SqlCommand("select ap.appointment_date, s.service_name, wp.wp_name, (p.first_name+' '+p.last_name) as name from cas.appointment as ap inner join cas.work as w on w.work_id = ap.work_id inner join cas.workplace as wp on wp.wp_id = ap.work_id inner join cas.person as p on p.user_id = ap.staff_id inner join cas.service as s on s.service_id = w.service_id where ap.appointment_date >= GETDATE() and ap.user_id = @input", connection);
                kmt2.Parameters.AddWithValue("@input2", loginedUser.user_id);
                SqlDataReader dr2 = kmt2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
                connection.Close();
            }
            else { Response.Redirect("UserLogin.aspx"); }
        }
    }
}