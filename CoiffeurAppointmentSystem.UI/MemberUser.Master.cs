using CoiffeurAppointmentSystem.ORM;
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
    public partial class MemberUser : System.Web.UI.MasterPage
    {
        public static person loginedUser = new person();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session["username"] == null)
            //{
            //    Response.Redirect("UserLogIn.aspx");
            //}
            //else
            //{
            //    loginedUser = (person)Session["username"];
            //    if (loginedUser.role_id == 2)
            //    {
            //        Response.Redirect("MainPage2.aspx");
            //    }

            //    lblUserName.Text = ("Welcome " + loginedUser.first_name + " " + loginedUser.last_name);
            //}





            if (Session["username"] == null)
            {
                Response.Redirect("UserLogIn.aspx");
            }
            else
            {
                loginedUser = (person)Session["username"];
                if (loginedUser.role_id != 2)
                      {
                        Response.Redirect("UserLogIn.aspx");
                        }
                    lblUserName.Text = "Welcome    " + loginedUser.first_name ;
            }






        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string cityid = DropDownList1.SelectedItem.Value;

            SqlCommand kmt = new SqlCommand("select * from cas.district as d where d.city_id = @input", connection);
            kmt.Parameters.AddWithValue("@input", cityid);

            DropDownList2.DataTextField = "district";
            DropDownList2.DataValueField = "district_id";

            SqlDataReader dr = kmt.ExecuteReader();
            DropDownList2.DataSource = dr;
            DropDownList2.DataBind();
            connection.Close();
        }
    }
}