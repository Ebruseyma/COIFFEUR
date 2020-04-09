using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CoiffeurAppointmentSystem.ORM;

namespace CoiffeurAppointmentSystem
{
    public partial class UserLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (Entities db = new Entities())
            {

                var usermail = txtUserName.Text.Trim();
                var password = txtPassword.Text.Trim();
                var loginedUser = db.people.FirstOrDefault(a => a.email == usermail && a.password == password);
                if (loginedUser != null)
                {
                    Session["username"] = loginedUser;
                    
                    Response.Redirect("MemberMain.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;

                }
            }
            //            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=MSI\SQLEXPRESS01;initial Catalog=CoiffeurAppointmentSystem;
            //integrated Security=True;"))

            //            {
            //                sqlCon.Open();
            //                string query = "SELECT COUNT(1) FROM cas.person WHERE username=@username AND password=@password";
            //                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            //                sqlCmd.Parameters.AddWithValue("@username", username.Text.Trim());
            //                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            //                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            //                if (count == 1)
            //                {
            //                    Session["username"] = username.Text.Trim();
            //                    Response.Redirect("MainPage.aspx");
            //                }
            //                else
            //                {
            //                    lblErrorMessage.Visible = true;

            //                }


            //      }

        }
    }
}