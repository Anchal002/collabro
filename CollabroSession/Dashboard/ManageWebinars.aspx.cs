using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class ManageWebinars : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                bind();
            }
        }
        void bind()
        {
            var q = from a in dl.da.WebinarTables
                    select new
                    {
                        a.Id,
                        PublishDate = a.PublishDate.Value.ToShortDateString(),
                        a.Source,
                        a.WebinarTitle
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            WebinarTable dt = new WebinarTable();
            dt.WebinarTitle = TextBox1.Text;
            dt.Source = TextBox2.Text;
            dt.PublishDate = DateTime.Now;
            dl.da.WebinarTables.InsertOnSubmit(dt);
            dl.da.SubmitChanges();
            TextBox1.Text = TextBox2.Text = "";
            Response.Write("<script>alert('Success')</script>");
            bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

        }

       

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.WebinarTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            dl.da.WebinarTables.DeleteOnSubmit(q);
            dl.da.SubmitChanges();
            bind();
            MultiView1.ActiveViewIndex = 0;
            Response.Write("<script>alert('Delete')</script>");
        }
    }
}