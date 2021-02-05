using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CoiffeurAppointmentSystem.ORM;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoiffeurAppointmentSystem.UI;

namespace CoiffeurAppointmentSystem
{
    public partial class admin : System.Web.UI.MasterPage
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
                if (loginedUser.role_id != 1) //id=1 değilse admin masterdan tüüreyen sayfalara giriş yapamıyor login sayfasına yönlendiriliyor.
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