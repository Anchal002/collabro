using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class UChangePass : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                var q = (from a in dl.da.UserTables
                         where a.Email == TextBox2.Text
                         select a).SingleOrDefault();
                if (q != null)

                {
                    q.Password = TextBox3.Text;
                    dl.da.SubmitChanges();
                    Response.Write("<script>alert('Password Change Successfully..!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User or Email..!!')</script>");

                }
                TextBox2.Text = TextBox3.Text = TextBox1.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Fill up all the fields..!')</script>");
            }

        }
    }
}