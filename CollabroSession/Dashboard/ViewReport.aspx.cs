using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class ViewReport : System.Web.UI.Page
    {
        DataLayer ll = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
                MultiView1.ActiveViewIndex = 0;
            }

        }
        void bind()
        {
            var q = from a in ll.da.AssessmentTables
                    from b in ll.da.UserTables
                    from c in ll.da.TaskTables.Where(oo => oo.Tid == a.Id && oo.Uid == b.Id && oo.Status == "u")
                    select new
                    {
                        a.Title,
                        b.Name,
                        c.ReportTitle,
                        ReportTime = c.ReportTime.Value.ToShortDateString(),
                        c.Report,
                        c.Id
                    };

            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string name = ((LinkButton)sender).CommandArgument;
            string fname = Path.GetFileName(((LinkButton)sender).CommandArgument);
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + fname);
            Response.TransmitFile(name);
            Response.End();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 0;
        }


        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            var q = (from c in ll.da.TaskTables.Where(oo => oo.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument))
                     from a in ll.da.AssessmentTables.Where(k => k.Id == c.Tid)
                     from b in ll.da.UserTables.Where(k => k.Id == c.Uid)
                     select new
                     {
                         a.Title,
                         b.Name,
                         c.ReportTitle,
                         ReportTime = c.ReportTime.Value.ToShortDateString(),
                         c.Report,
                         c.Description,
                         c.Id
                     }).FirstOrDefault();
            Literal1.Text = q.Name;
            Literal2.Text = q.Title;
            Literal3.Text = q.ReportTime;
            Literal4.Text = q.ReportTitle;
            Literal6.Text = q.Description;

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            var q = (from a in ll.da.TaskTables
                     where a.Id == Convert.ToInt32(ViewState["b"])
                     select a).FirstOrDefault();
            ll.da.TaskTables.DeleteOnSubmit(q);
            ll.da.SubmitChanges();
            bind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            ViewState["b"] = ((LinkButton)sender).CommandArgument;
            MultiView1.ActiveViewIndex = 2;
            var q = (from a in ll.da.TaskTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal5.Text = q.ReportTitle;
        }
    }
}