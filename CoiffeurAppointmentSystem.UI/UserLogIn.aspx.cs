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
                var loginedUser = db.people.Include("gender").FirstOrDefault(a => a.email == usermail && a.password == password);
                //if (loginedUser != null)
                //{
                //    Session["username"] = loginedUser;

                //    Response.Redirect("MainPage2.aspx");
                //}
                //else
                //{
                //    lblErrorMessage.Visible = true;

                //}




            if (loginedUser != null)
                {
                    Session["username"] = loginedUser;
                    if (loginedUser.role_id == 1)
                    {
                        Response.Redirect("adminMainPage.aspx");
                    }
                    else if (loginedUser.role_id == 2)
                    {
                        Response.Redirect("MainPage2.aspx");
                    }
                    else
                        Response.Redirect("MainPage.aspx");
                }

                else
                {
                     lblErrorMessage.Visible = true;

                }






                //if (Session["username"] == null)
                //{
                //    Response.Redirect("UserLogIn.aspx");
                //}
                //else
                //{
                //    loginedUser = (person)Session["username"];
                //    if (loginedUser.role_id == 1)
                //    {
                //        Response.Redirect("adminMainPage.aspx");


                //        lblUserName.Text = loginedUser.first_name + " " + loginedUser.last_name;
                //    }
                //    else if (loginedUser.role_id == 2)
                //    {
                //        Response.Redirect("MainPage2.aspx");

                //    }
                //    else
                //        Response.Redirect("MainPage.aspx");

                //}



            }

        }
    }
}