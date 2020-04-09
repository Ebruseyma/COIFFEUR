
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

namespace CoiffeurAppointmentSystem.UI
{
    public partial class UserSettings : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MemberUser.loginedUser.GetType();
            }
            txt1.Text = MemberUser.loginedUser.first_name;
            txt2.Text = MemberUser.loginedUser.last_name;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["ADOConnection"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("update cas.person set first_name=@username,last_name=@last_name,email=@email,password=@password where user_id=@user_id", conn);
            comm.Parameters.Add("@username", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@username"].Value = txt1.Text;
            comm.Parameters.Add("@last_name", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@last_name"].Value = txt2.Text;
            //comm.Parameters.Add("@gender_id", System.Data.SqlDbType.Int);
            //comm.Parameters["@gender_id"].Value = CheckBox.DisabledCssClass;
            comm.Parameters.Add("@email", System.Data.SqlDbType.VarChar, 70);
            comm.Parameters["@email"].Value = txt3.Text;
            comm.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@password"].Value = txt4.Text;
            //comm.Parameters.Add("@city_id", System.Data.SqlDbType.Int);
            //comm.Parameters["@city_id"].Value = DropDownList1.DataValueField;
            //date tipindeki alana string veri atılmaya çalışılmış düzeltilmesi gerekli
            //comm.Parameters.Add("@birth_day", System.Data.SqlDbType.Date);
            //comm.Parameters["@birtd_day"].Value = txt6.Text;
            //image yüklenirken fileupload componenti kullanılıyor ordan gelen dosyanın image'a çevrilip o image 'nin de byte[] hale getirilip öyle verilmesi gerekiyor.
            //comm.Parameters.Add("@img", System.Data.SqlDbType.Image);
            //comm.Parameters["@img"].Value = Image1;

            comm.Parameters.Add("@user_id", System.Data.SqlDbType.Int);
            comm.Parameters["@user_id"].Value = MemberUser.loginedUser.user_id;

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                lblHata.Text = "An error occurred during the update.";
            }
            finally
            {
                conn.Close();
            }
            
        }

    }
}