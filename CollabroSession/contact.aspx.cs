using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class contact : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            ContactTable ct = new ContactTable();
            ct.FName = TextBox1.Text;
            ct.LName = TextBox2.Text;
            ct.MobileNo = TextBox3.Text;
            ct.Email = TextBox4.Text;
            ct.Message = TextBox5.Text;
            dl.da.ContactTables.InsertOnSubmit(ct);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Thanks For Feedback..!!')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }

    }
}
