using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class SignUp : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserTable ut = new UserTable();
            ut.Name = TextBox1.Text;
            ut.Email = TextBox2.Text;
            ut.Address = TextBox6.Text;
            ut.Contact = TextBox5.Text;
            ut.Password = TextBox3.Text;
            ut.Status = "u";
            dl.da.UserTables.InsertOnSubmit(ut);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Success')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox5.Text = TextBox6.Text = "";
        }
    }

}
