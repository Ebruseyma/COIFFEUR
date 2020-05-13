using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace CoiffeurAppointmentSystem
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                checkbox();

                dropdown();

                Clear();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Checkbox4.Checked)
            {
                if (txtname.Text == " " || txtPassword.Text == " ")
                    lblErrormessage.Text = "please fill mandatory fields";
                else if (txtPassword.Text != txtConfirm.Text)
                    lblErrormessage.Text = "password do not match";
                else
                {

                    using (SqlConnection sqlcon = new SqlConnection(connectionString))
                    {
                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand("insert into cas.person " + "(first_name,last_name,gender_id,email,password,city_id,birth_day,role_id)values(@first_name, @last_name, @gender_id, @email, @password, @city_id, @birth_day,2)", sqlcon);
                        cmd.Parameters.AddWithValue("@first_name", txtname.Text);
                        cmd.Parameters.AddWithValue("@last_name", txtLastName.Text);
                        cmd.Parameters.AddWithValue("@gender_id", DropDownList3.Text);
                        cmd.Parameters.AddWithValue("@email", txtMail.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@city_id", DropDownList1.Text);
                        cmd.Parameters.AddWithValue("@birth_day", txtBirth.Text);
                        cmd.ExecuteNonQuery();
                        Clear();
                        lblSuccessmessage.Text = "Submitted Succesfully.";
                        Response.Redirect("MainPage.aspx");


                    }
                }
            }
            else { Label13.Text = "Please accept the User Agreement."; }
        }

        void Clear()
        {
            txtname.Text = txtLastName.Text = txtMail.Text = txtPassword.Text = txtConfirm.Text = txtBirth.Text = " ";

        }

        void dropdown()
        {

            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlCommand sqlcmm = new SqlCommand("Select * from [cas].[city]", sqlcon);
            sqlcmm.CommandType = CommandType.Text;
            DropDownList1.DataSource = sqlcmm.ExecuteReader();
            DropDownList1.DataTextField = "city";
            DropDownList1.DataValueField = "city_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("select  city", "0"));
            sqlcon.Close();
        }

        void checkbox()
        {
            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlCommand sqlcmm = new SqlCommand("Select * from [cas].[gender]", sqlcon);
            sqlcmm.CommandType = CommandType.Text;
            DropDownList3.DataSource = sqlcmm.ExecuteReader();
            DropDownList3.DataTextField = "gender";
            DropDownList3.DataValueField = "gender_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("select gender", "0"));
            sqlcon.Close();
        }


    }
}