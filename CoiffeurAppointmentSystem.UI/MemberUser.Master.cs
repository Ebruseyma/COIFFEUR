﻿using CoiffeurAppointmentSystem.ORM;
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
    }
}