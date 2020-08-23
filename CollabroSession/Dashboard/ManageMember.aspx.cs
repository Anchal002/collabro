using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class ManageMember : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;

                Bind();
            }
        }
        void Bind()
        {
            Repeater1.DataSource = dl.da.UserTables.Where(k=>k.Status=="r");
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ViewState["a"] = ((LinkButton)sender).CommandArgument;
            MultiView1.ActiveViewIndex = 1;
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            TextBox1.Text = q.Name;
            TextBox2.Text = q.Address;
            TextBox3.Text = q.Email;
            TextBox5.Text = q.Contact;
            TextBox4.Text = q.Password;


        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(ViewState["a"])
                     select a).FirstOrDefault();
            q.Name = TextBox1.Text;
            q.Address = TextBox2.Text;
            q.Email = TextBox3.Text;
            q.Contact = TextBox5.Text;
            q.Password = TextBox4.Text;
            dl.da.SubmitChanges();
            Bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal1.Text = q.Name;
            Literal2.Text = q.Email;
            Literal3.Text = q.Address;
            Literal4.Text = q.Contact;
            Literal6.Text = q.Password ;

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(ViewState["b"])
                     select a).FirstOrDefault();
            dl.da.UserTables.DeleteOnSubmit(q);
            dl.da.SubmitChanges();
            Bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            ViewState["b"] = ((LinkButton)sender).CommandArgument;
            MultiView1.ActiveViewIndex = 3;
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal5.Text = q.Name;
        }
    }
}