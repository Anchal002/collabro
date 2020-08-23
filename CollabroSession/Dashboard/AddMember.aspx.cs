using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class AddMember : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UserTable ut = new UserTable();
            ut.Name = TextBox1.Text;
            ut.Address = TextBox2.Text;
            ut.Email = TextBox3.Text;
            ut.Contact = TextBox4.Text;
            ut.Password = TextBox5.Text;
            dl.da.UserTables.InsertOnSubmit(ut);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Registration successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }

    }
}