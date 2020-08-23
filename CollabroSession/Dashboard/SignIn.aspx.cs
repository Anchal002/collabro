using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class SignIn : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.AdminTables
                     where a.AdminEmail == TextBox1.Text && a.Password == TextBox2.Text
                     select a).SingleOrDefault();
            if (q != null)
            {
                Session["uid"] = q.Id;
                Response.Redirect("~/Dashboard/AdminHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid User Try Again..!!')</script>");

            }
            TextBox1.Text = TextBox2.Text = "";
        }
    }
}