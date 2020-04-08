using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using CoiffeurAppointmentSystem.ORM;
using System.Web.UI.WebControls;

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
        

        }
    }
}