using CoiffeurAppointmentSystem.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoiffeurAppointmentSystem
{
    public partial class MemberUser : System.Web.UI.MasterPage
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
                lblUserName.Text = loginedUser.first_name + " " + loginedUser.last_name;
            }

            
        }
    }
}