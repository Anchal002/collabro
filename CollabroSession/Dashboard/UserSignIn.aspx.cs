using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class UserSignIn : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.UserTables
                     where a.Email == TextBox1.Text && a.Password == TextBox2.Text && a.Status == "r"
                     select a).SingleOrDefault();
            if (q != null)
            {
                Session["uid"] = q.Id;
                Session["un"] = q.Name;
                Response.Redirect("~/Dashboard/UserHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid User Try Again..!!')</script>");

            }
            TextBox1.Text = TextBox2.Text = "";
        }
    }
}