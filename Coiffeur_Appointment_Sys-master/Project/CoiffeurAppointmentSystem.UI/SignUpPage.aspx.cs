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

//namespace CoiffeurAppointmentSystem
//{
//    public partial class SignUpPage : System.Web.UI.Page
//    {
//        string connectionString = ConfigurationManager.ConnectionStrings["ADOConnection"].ToString(); // connection string

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            SqlConnection sqlcon = new SqlConnection(connectionString);
//            sqlcon.Open();
//            SqlCommand sqlcmm = new SqlCommand("Select * from [cas].[city] ", sqlcon);
//            sqlcmm.CommandType = CommandType.Text;
//            DropDownList1.DataSource = sqlcmm.ExecuteReader();
//            DropDownList1.DataTextField = "city";
//            DropDownList1.DataValueField = "city_id";
//            DropDownList1.DataBind();
//            DropDownList1.Items.Insert(0, new ListItem("select  city", "0"));
//            sqlcon.Close();

//            //FillCities();
//        }


    //    private void FillCities()
    //    {
    //        DataTable dt = new DataTable();
    //        if (dt.Rows.Count > 0)
    //        {
    //            SqlConnection sqlcon = new SqlConnection(connectionString);
    //            sqlcon.Open();
    //            SqlCommand sqlcmm = new SqlCommand("Select * from [cas].[gender] ", sqlcon);
    //            rdpGender.DataTextField = "gender"; //GenderType here is the FieldName from your DB
    //            rdpGender.DataValueField = "gender_id";
    //            rdpGender.DataSource = dt;
    //            rdpGender.DataBind();
    //            sqlcon.Close();

    //        }


    //    }
    //}
    //}