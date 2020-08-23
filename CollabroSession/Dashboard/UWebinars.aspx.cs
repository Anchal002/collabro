using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class UWebinars : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = from a in dl.da.WebinarTables
                    select new
                    {
                        a.Id,
                        date = a.PublishDate.Value.ToShortDateString(),
                        time = a.PublishDate.Value.ToShortTimeString(),
                        a.Source,
                        a.WebinarTitle
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }
    }
}