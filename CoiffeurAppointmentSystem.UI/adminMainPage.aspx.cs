using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CoiffeurAppointmentSystem.ORM;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace CoiffeurAppointmentSystem
{
    public partial class adminMainPage : System.Web.UI.Page
    {
        public person loginedAdmin = new person();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    loginedAdmin = (person)Session["username"];
                    LoadAdminSettings();

                }
            }
        }





        private void LoadAdminSettings()
        {

            var personwithworkplace = loginedAdmin.workplaces.FirstOrDefault();
            if (personwithworkplace != null)
            {
                txtAbout.Text = personwithworkplace.about;
                txtPhoneNumber.Text = personwithworkplace.tel_no.ToString();
                txtAddress.Text = personwithworkplace.address;
                txtEmail.Text = personwithworkplace.email;

                if (personwithworkplace.wp_image != null)
                {

                    System.Drawing.Image profImage = ByteArrayToImage(personwithworkplace.wp_image);
                    var format = GetMimeType(profImage);
                    imgCoiffeur.ImageUrl = "data:" + format + ";base64," + Convert.ToBase64String(personwithworkplace.wp_image); //img byte array 
                }

            }
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {


            if (admin.loginedUser.workplaces != null)
            {
                lblErrorText.Visible = false;
                try
                {
                    using (Entities db = new Entities())
                    {
                        var NewWorkplace = admin.loginedUser.workplaces.FirstOrDefault();
                        workplace updated = db.workplaces.FirstOrDefault(a => a.wp_id == NewWorkplace.wp_id);
                        updated.about = txtAbout.Text;
                        updated.tel_no = Convert.ToInt32(txtPhoneNumber.Text);
                        updated.address = txtAddress.Text;
                        updated.email = txtEmail.Text;
                        if (fuImage.HasFile)
                        {
                            updated.wp_image = fuImage.FileBytes;
                        }
                        db.SaveChanges();
                        var userid = ((person)Session["username"]).user_id;
                        loginedAdmin = db.people.Include("gender").Include("workplaces").FirstOrDefault(a => a.user_id == userid);
                        Session["username"] = loginedAdmin;
                    }
                    LoadAdminSettings();
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

    }
}

