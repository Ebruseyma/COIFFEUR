using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using CoiffeurAppointmentSystem.ORM;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace CoiffeurAppointmentSystem.UI
{
    public partial class AdminAddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            if (admin.loginedUser.workplaces != null)
            {
                lblErrorText.Visible = false;
                try
                {
                    using (Entities db = new Entities())
                    {
                        person NewStaff = new person();
                        NewStaff.first_name = txtFirstName.Text;
                        NewStaff.last_name = txtLastName.Text;
                        NewStaff.email = txtEmail.Text;
                        NewStaff.password = txtPassword.Text;
                        if (NewStaff.gender_id == null)
                        {
                           rdpGender.SelectedValue = "5";
                        }
                        else
                        {
                            NewStaff.gender_id = Convert.ToInt32(rdpGender.SelectedValue);

                        }
                        db.people.Add(NewStaff);
                        

                        employee newEmployee = new employee();
                        newEmployee.staff_id = NewStaff.user_id;
                        newEmployee.wp_id = admin.loginedUser.workplaces.FirstOrDefault().wp_id;
                        db.employees.Add(newEmployee);

                        db.SaveChanges();
                        lblStaffId.Text = NewStaff.user_id.ToString();
                    }
                }
                catch (Exception ex)
                {
                    lblErrorText.Visible = true;
                    lblErrorText.Text = "There is an error :" + ex.Message;
                }
            }
            else
            {
                lblErrorText.Visible = true;
                lblErrorText.Text = "Please add workplace before continue to add staff";
            }
        }

       

    

        protected void btnClear_Click(object sender, EventArgs e)
        {

            lblStaffId.Text = "[staff_id]";
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
        
        }
    }
}