using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class Session : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = from a in dl.da.SessionTables
                    select new
                    {
                        Date = a.Date.Value.ToShortDateString(),
                        a.SessionDesc,
                        a.Sessiontitle,
                        a.Id,
                        a.TakenBy,
                        a.Time,
                        a.Uploadpic
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();

            var qq = (from a in dl.da.SessionTables
                    select new
                    {
                        Date = a.Date.Value.ToShortDateString(),
                        a.SessionDesc,
                        a.Sessiontitle,
                        a.Id,
                        a.TakenBy,
                        a.Time,
                        a.Uploadpic
                    }).Take(5);
            Repeater2.DataSource = qq;
            Repeater2.DataBind();
        }
    }
}