using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class UserHome : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = dl.da.WebinarTables.Count().ToString();
            Literal2.Text = dl.da.AssessmentTables.Count().ToString();
            Literal3.Text = dl.da.TaskTables.Count().ToString();
            Literal4.Text = dl.da.TaskTables.Count().ToString();


            var q = (from a in dl.da.UserTables
                     where a.Id ==Convert.ToInt32(Session["uid"])
                     select a).FirstOrDefault();
            if (q != null)
            {
                Literal5.Text = q.Name;
                Literal6.Text = q.Email;
                Literal7.Text = q.Address;
                Literal8.Text = q.Contact;

            }



        }
    }
}