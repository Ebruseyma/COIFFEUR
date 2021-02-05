using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoiffeurAppointmentSystem.ORM;

namespace CoiffeurAppointmentSystem
{
    public partial class adminProcedurePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    if (admin.loginedUser.workplaces == null && admin.loginedUser.workplaces.Count < 1)
                    {
                        Response.Redirect("adminMainPage.aspx");
                    }

                    LoadAdminProcedure();
                    FillServices();
                    FillStaff();
                }

             
            }
        }

        private void LoadAdminProcedure()
        {
            var loginedWp = admin.loginedUser.workplaces.FirstOrDefault();
            List<work> lstProcedure = new List<work>(); ;
            using (Entities db = new Entities())
            {
                var lstEmployees = db.employees.Where(a => a.wp_id == loginedWp.wp_id).Select(a => a.staff_id).ToList();

                if (lstEmployees != null)
                {

                    //var Sonuc = work.Where(p => !service.Select(i => i.service_name).Contains(p.service_name));

                    lstProcedure.AddRange(db.works.Include("service").Where(b => lstEmployees.Contains(b.staff_id)).ToList());
                }

            }

            dtlAdminProcedurePage.DataSource = lstProcedure;
            dtlAdminProcedurePage.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                using (Entities db = new Entities())
                {

                    work NewProcedure = new work();
                    NewProcedure.service_id = Convert.ToInt32(drpSeviceList.SelectedValue);
                    NewProcedure.estimate_time = Convert.ToInt32(txtApproximateTime.Text);
                    NewProcedure.price = Convert.ToInt32(txtPrice.Text);
                    NewProcedure.staff_id = Convert.ToInt32(drpStaffList.SelectedValue);
                    NewProcedure.wp_id = admin.loginedUser.workplaces.FirstOrDefault().wp_id;
                    db.works.Add(NewProcedure);
                    db.SaveChanges();
                    LoadAdminProcedure();
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private void FillServices()
        {
            using (Entities db = new Entities())
            {
                drpSeviceList.DataSource = db.services.ToList();
                drpSeviceList.DataTextField = "service_name";
                drpSeviceList.DataValueField = "service_id";
                drpSeviceList.DataBind();
            }
        }

        private void FillStaff()
        {
            var loginedWp = admin.loginedUser.workplaces.FirstOrDefault();
            List<person> lstStaffs = new List<person>(); 
            using (Entities db = new Entities())
            {
                var lstEmployees = db.employees.Where(a => a.wp_id == loginedWp.wp_id).Select(a => a.staff_id).ToList();

                if (lstEmployees != null)
                {
                    lstStaffs.AddRange(db.people.Where(b => lstEmployees.Contains(b.user_id)).ToList());
                }

            }

            drpStaffList.DataSource = lstStaffs;
            drpStaffList.DataTextField = "first_name";
            drpStaffList.DataValueField = "user_id";
            drpStaffList.DataBind();
        }
    }
}
