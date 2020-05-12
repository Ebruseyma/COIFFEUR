using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using CoiffeurAppointmentSystem.ORM;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;//contain classes for accessing and managing data from diverse
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.Net;
using System.IO;

namespace CoiffeurAppointmentSystem
{
    public partial class AppointmentPage : System.Web.UI.Page
    {
        public static person loginedUser = new person();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["username"] == null)
                {
                    Response.Redirect("UserLogIn.aspx");
                }
                else
                {
                    string id1 = Request.QueryString["id"];
                    loginedUser = (person)Session["username"];
                    string connectionString = ConfigurationManager.ConnectionStrings["listConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    connection.Open();
                    SqlCommand kmt = new SqlCommand("select (p.first_name+' '+p.last_name) as name,p.user_id, s.service_name, w.description,w.work_id from cas.person as p inner join cas.work as w on w.staff_id = p.user_id inner join cas.service as s on s.service_id = w.service_id", connection);
                    SqlDataReader dr = kmt.ExecuteReader();
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                    connection.Close();

                    connection.Open();
                    SqlCommand kmt2 = new SqlCommand("select wp.wp_name, wp.about,wp.wp_id from cas.workplace as wp where wp.wp_id = @input2", connection);
                    kmt2.Parameters.AddWithValue("@input2", id1);
                    SqlDataReader dr2 = kmt2.ExecuteReader();
                    DataList2.DataSource = dr2;
                    DataList2.DataBind();
                    connection.Close();



                }

            }

        }


        private void SendEmail()
        {    
            var v = loginedUser.email;
            MailMessage mail = new MailMessage("Coiffeur.coiffeur1954@gmail.com", v);
            using (SmtpClient client = new SmtpClient
            {
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                EnableSsl = true,
                Host = "smtp.gmail.com",
                Timeout = 100000,
                Port = 587,
                Credentials = new NetworkCredential("Coiffeur.coiffeur1954@gmail.com", "Coiffeur.Coiffeur54")
            })
            {
                mail.To.Add("EbruAkboyun.34@hotmail.com");
                mail.To.Add("b.mete@iku.edu.tr");
                mail.Subject = "Message from the Coiffeur Appointment System " ;//mailin konusu;
                mail.Body = "E-Posta:" + " Ebru's mail \n" + "Subject:" + " Appointment \n" + "Content:" + " Your appointment has been created successfully. You must be at our hair salon at least 15 minutes before your appointment time. \n" +"We wish you good days...";
                client.Send(mail);
            }
        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            person loginedUser = (person)Session["username"];
            int id1 = Convert.ToInt32(Request.QueryString["id"]);
            DropDownList drp1 = e.Item.FindControl("ddHours") as DropDownList;
            HiddenField staff = e.Item.FindControl("hdStaffID") as HiddenField;
            HiddenField work = e.Item.FindControl("hdWorkID") as HiddenField;

            int staffID = Convert.ToInt32(staff.Value);
            List<DateTime> appoDateList = new List<DateTime>();
            using (var db = new Entities())
            {
                appoDateList.AddRange(db.appointments.Where(a => a.staff_id == staffID && a.wp_id == id1).Select(a => a.appointment_date));

                var selectedDateTime = Convert.ToDateTime(ddlDay.SelectedValue + ddlMonth.SelectedValue + ddlYear.SelectedValue);
                if (appoDateList.Any(a => a.ToShortDateString() == selectedDateTime.ToShortDateString() && a.ToString("HH") == drp1.SelectedValue))
                {
                    string message = "Selected hour is assigned to another customer please select diffrent hour.";
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("')};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }
                else
                {
                    var fullDate = Convert.ToDateTime(ddlDay.SelectedValue + ddlMonth.SelectedValue + ddlYear.SelectedValue);
                    fullDate = fullDate.AddHours(Convert.ToDouble(drp1.SelectedValue));
                    appointment added = new appointment();
                    added.staff_id = Convert.ToInt32(staff.Value);
                    added.wp_id = id1;
                    added.user_id = loginedUser.user_id;
                    added.work_id = Convert.ToInt32(work.Value);
                    added.appointment_date = fullDate;
                    db.appointments.Add(added);
                    db.SaveChanges();
                    SendEmail();
                }
            }

        }
    }
}