using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class AdminHome : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = dl.da.UserTables.Count().ToString();
            Literal2.Text = dl.da.WebinarTables.Count().ToString();
            Literal4.Text = dl.da.SessionTables.Count().ToString();
            Literal3.Text = dl.da.ContactTables.Count().ToString();

        }


    }
}