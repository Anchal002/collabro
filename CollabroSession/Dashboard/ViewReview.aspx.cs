using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class ViewReview : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bind();
            }
        }
        void Bind()
        {
            var q = from a in dl.da.ContactTables
                    select new
                    {
                        Name = a.FName + " " + a.LName,
                        a.Email,
                        a.MobileNo,
                        a.Message,
                        a.Id
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }


        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.ContactTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            dl.da.ContactTables.DeleteOnSubmit(q);
            dl.da.SubmitChanges();
            Bind();
        }

    }
}