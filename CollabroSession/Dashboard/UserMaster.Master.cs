using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Literal1.Text = Session["un"].ToString();

            }
            catch
            {
                Response.Redirect("~/Dashboard/UserSignIn.aspx");
            }
        }
    }
}