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
    public partial class MemberMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand kmt = new SqlCommand("select wp_id,wp_name from cas.workplace", connection);
            //SqlCommand kmt = new SqlCommand("select wp.wp_id, s.service_name, wp.wp_name from cas.workplace as wp inner join cas.work as w on w.wp_id = wp.wp_id inner join cas.service as s on w.service_id = s.service_id", connection);
            SqlDataReader dr = kmt.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            connection.Close();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}