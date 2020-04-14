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
    public partial class UserSettings : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    LoadUserSettings();

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["ADOConnection"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("update cas.person set first_name=@username,last_name=@last_name,email=@email,password=@password,gender_id=@gender_id,city_id=@city_id,birth_day=@birth_day,img=@img where user_id=@user_id", conn);
            comm.Parameters.Add("@username", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@username"].Value = txt1.Text;
            comm.Parameters.Add("@last_name", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@last_name"].Value = txt2.Text;
            comm.Parameters.Add("@gender_id", System.Data.SqlDbType.Int);
            comm.Parameters["@gender_id"].Value = Convert.ToInt32(rdpGender.SelectedValue);
            comm.Parameters.Add("@email", System.Data.SqlDbType.VarChar, 70);
            comm.Parameters["@email"].Value = txt3.Text;
            comm.Parameters.Add("@password", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@password"].Value = txt4.Text;
            comm.Parameters.Add("@city_id", System.Data.SqlDbType.Int);
            comm.Parameters["@city_id"].Value = Convert.ToInt32(DropDownList1.SelectedValue);
            comm.Parameters.Add("@birth_day", System.Data.SqlDbType.Date);
            if (string.IsNullOrWhiteSpace(dtBirthDate.Text))
            {
                comm.Parameters["@birth_day"].Value = DateTime.Now;
            }
            else
            {
                comm.Parameters["@birth_day"].Value = Convert.ToDateTime(dtBirthDate.Text);

            }
            
            //image yüklenirken fileupload componenti kullanılıyor ordan gelen dosyanın image'a çevrilip o image 'nin de byte[] hale getirilip öyle verilmesi gerekiyor.
            
            comm.Parameters.Add("@user_id", System.Data.SqlDbType.Int);
            comm.Parameters["@user_id"].Value = MemberUser.loginedUser.user_id;

            if (FileUpload1.HasFile)
            {
                comm.Parameters.Add("@img", System.Data.SqlDbType.Image);
                comm.Parameters["@img"].Value = FileUpload1.FileBytes;
            }
            else
            {
                comm.Parameters.Add("@img", System.Data.SqlDbType.Image);
                comm.Parameters["@img"].Value = MemberUser.loginedUser.img;
            }
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                using (Entities db = new Entities())
                {
                    MemberUser.loginedUser = db.people.Include("gender").FirstOrDefault(a => a.user_id == MemberUser.loginedUser.user_id);
                }
                Session["username"] = MemberUser.loginedUser;
                LoadUserSettings();
            }
            catch (Exception ex)
            {
                lblHata.Text = "An error occurred during the update.";
            }
            finally
            {
                conn.Close();
            }
        }

        private void FillCities()
        {
            using (Entities db = new Entities())
            {
                DropDownList1.DataSource = db.cities.ToList();
                DropDownList1.DataTextField = "city1";
                DropDownList1.DataValueField = "city_id";
                DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, new ListItem("select  city", "0"));
            }
        }

        private System.Drawing.Image ByteArrayToImage(byte[] byteArrayIn)  //byte array image çevriliyor
        {
            using (var ms = new MemoryStream(byteArrayIn))
            {
                return System.Drawing.Image.FromStream(ms);
            }
        }

        private static string GetMimeType(System.Drawing.Image i)  //img formatı 
        {
            var imgguid = i.RawFormat.Guid;
            foreach (ImageCodecInfo codec in ImageCodecInfo.GetImageDecoders())
            {
                if (codec.FormatID == imgguid)
                    return codec.MimeType;
            }
            return "image/unknown";
        }

        private void LoadUserSettings() //ekrana bilgileri logineduser dan çekip doldurdum.
        {
            FillCities();
            txt1.Text = MemberUser.loginedUser.first_name;
            txt2.Text = MemberUser.loginedUser.last_name;
            txt3.Text = MemberUser.loginedUser.email;
            txt4.Text = MemberUser.loginedUser.password;
            if (MemberUser.loginedUser.gender_id != null)
            {
                rdpGender.SelectedValue = MemberUser.loginedUser.gender_id.ToString();
            }
            else
            {
                rdpGender.SelectedValue = "5";
            }
            dtBirthDate.Text = Convert.ToDateTime(MemberUser.loginedUser.birth_day).ToString("yyyy-MM-dd");
            if (MemberUser.loginedUser.img != null)
            {

                System.Drawing.Image profImage = ByteArrayToImage(MemberUser.loginedUser.img);
                var format = GetMimeType(profImage);
                Image1.ImageUrl = "data:" + format + ";base64," + Convert.ToBase64String(MemberUser.loginedUser.img); //img byte array çevir
            }
            DropDownList1.SelectedValue = MemberUser.loginedUser.city_id.ToString();//userda seçileni ekranda seçme
        }
        
    }
}