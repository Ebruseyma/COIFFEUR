using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoiffeurAppointmentSystem.ORM;

namespace CoiffeurAppointmentSystem
{
    public partial class CommentPage : System.Web.UI.Page
    {
        public person loginedUser = new person();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendCommend_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                loginedUser = (person)Session["username"];
            }
            else
            {
                lblError.Text = "You cannot comment without logging in.";
                lblError.Visible = true;
            }
        }
    }
}
