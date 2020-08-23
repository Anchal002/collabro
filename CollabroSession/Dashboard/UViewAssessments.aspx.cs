using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class UViewAssessments : System.Web.UI.Page
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
            var q = from a in dl.da.AssessmentTables.Where(k => k.MemberId == Convert.ToInt32(Session["Uid"]))
                    from b in dl.da.UserTables.Where(k => k.Id == a.MemberId)
                    select new
                    {
                        a.Title,
                        a.Id,
                        ADate = a.AssignDate.Value.ToShortDateString(),
                        CDate = a.cDate.Value.ToShortDateString(),
                        b.Name,
                        a.TaskDescription
                    };
            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            var s = (from a in dl.da.AssessmentTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            Literal1.Text = s.Title;
            Literal2.Text = s.AssignDate.ToString();
            Literal3.Text = s.cDate.ToString();
            Literal4.Text = s.TaskDescription;


        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            //var s = (from a in dl.da.TaskTables
            //         where a.Tid == Convert.ToInt32(ViewState["b"])
            //         select a).FirstOrDefault();
            //dl.da.TaskTables.DeleteOnSubmit(s);
            //dl.da.SubmitChanges();
            //Bind();
            MultiView1.ActiveViewIndex = 0;
            Response.Write("alert<script>('Sucessfully Deleted')</script>");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //ViewState["b"] = ((LinkButton)sender).CommandArgument;
            //MultiView1.ActiveViewIndex = 3;
            //var s = (from a in dl.da.TaskTables
            //         where a.Tid == Convert.ToInt32(((LinkButton)sender).CommandArgument)
            //         select a).FirstOrDefault();
            //Literal5.Text = s.TName;

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            //var s = (from a in dl.da.TaskTables
            //         where a.Tid == Convert.ToInt32(ViewState["b"])
            //         select a).FirstOrDefault();
            //s.Status = RadioButtonList1.SelectedValue.ToString();
            //dl.da.SubmitChanges();
            //Bind();
            //MultiView1.ActiveViewIndex = 0;
        }
    }
}