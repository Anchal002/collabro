using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{

    public partial class SessionManage : System.Web.UI.Page
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
            var q = from a in dl.da.SessionTables
                    select new
                    {
                        Date = a.Date.Value.ToShortDateString(),
                        a.SessionDesc,
                        a.Sessiontitle,
                        a.Id,
                        a.TakenBy,
                        a.Time,
                        a.Uploadpic
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ViewState["a"] = ((LinkButton)sender).CommandArgument;
            MultiView1.ActiveViewIndex = 1;
            var q = (from a in dl.da.SessionTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            TextBox1.Text = q.Sessiontitle;
            TextBox2.Text = q.TakenBy;
            //DateTime.Now = q.Date;
            TextBox4.Text = q.Time;
            TextBox5.Text = q.SessionDesc;

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.SessionTables
                     where a.Id == Convert.ToInt32(ViewState["a"])
                     select a).FirstOrDefault();
            q.Sessiontitle = TextBox1.Text;
            q.TakenBy = TextBox2.Text;
            q.Date = DateTime.Now;
            q.Time = TextBox4.Text;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Dashboard/SessiontPic/" + FileUpload1.FileName));
                q.Uploadpic = "/Dashboard/SessionPic/" + FileUpload1.FileName;
            }
            dl.da.SubmitChanges();
            Bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            var q = (from a in dl.da.SessionTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal1.Text = q.Sessiontitle;
            Literal2.Text = q.TakenBy;
            //Literal3.Text = q.Date;
            Literal4.Text = q.Time;
            Literal4.Text = q.SessionDesc;
            Image1.ImageUrl = q.Uploadpic;
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.SessionTables
                     where a.Id == Convert.ToInt32(ViewState["b"])
                     select a).FirstOrDefault();
            dl.da.SessionTables.DeleteOnSubmit(q);
            dl.da.SubmitChanges();
            Bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            ViewState["b"] = ((LinkButton)sender).CommandArgument;
            MultiView1.ActiveViewIndex = 3;
            var q = (from a in dl.da.SessionTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal5.Text = q.Sessiontitle;
            Image2.ImageUrl = q.Uploadpic;
        }
    }
}
