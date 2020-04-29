using CoiffeurAppointmentSystem.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoiffeurAppointmentSystem.UI
{
    public partial class AdminStaffs : System.Web.UI.Page
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
                    LoadAdminStaff();
                }

                
            }
        }

        private void LoadAdminStaff()
        {
            var loginedWp = admin.loginedUser.workplaces.FirstOrDefault();
            List<person> lstStaffs = new List<person>(); ;
            using (Entities db = new Entities())
            {
                var lstEmployees = db.employees.Where(a => a.wp_id == loginedWp.wp_id).Select(a=>a.staff_id).ToList();

                if (lstEmployees != null)
                {
                    lstStaffs.AddRange(db.people.Where(b => lstEmployees.Contains(b.user_id)).ToList());
                }

            }

            dtlAdminStaffs.DataSource = lstStaffs;
            dtlAdminStaffs.DataBind();
        }
    }
}