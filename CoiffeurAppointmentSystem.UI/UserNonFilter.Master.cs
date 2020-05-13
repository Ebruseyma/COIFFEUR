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
    public partial class UserNonFilter : System.Web.UI.MasterPage
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
                loginedUser = (person)Session["username"];
                if (loginedUser.role_id != 2) //role_id=2 olmayan user memberuserdan türeyen sayfalara giriş yapamaz logine yönlendirilir.
                {
                    Response.Redirect("UserLogIn.aspx");
                }
                lblUserName.Text = "Welcome    " + loginedUser.first_name;
            }


        }
      
        

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("MainPage.aspx");
        }
    }
}