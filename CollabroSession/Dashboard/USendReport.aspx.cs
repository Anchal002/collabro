using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class USendReport : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var q = from a in dl.da.AssessmentTables.Where(k => k.MemberId == Convert.ToInt32(Session["Uid"]))
                        from b in dl.da.UserTables.Where(k => k.Id == a.MemberId)
                        select new
                        {
                            a.Title,
                            a.Id,
                        };
                DropDownList1.DataSource = q;
                DropDownList1.DataTextField = "Title";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select Task Name--");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TaskTable rt = new TaskTable();
            rt.Tid = Convert.ToInt32(DropDownList1.SelectedValue);
            rt.Uid = Convert.ToInt32(Session["Uid"]);
            rt.ReportTitle = TextBox1.Text;
            rt.ReportTime = DateTime.Now;
            rt.Description = TextBox2.Text;
            FileUpload1.SaveAs(Server.MapPath("~/Dashboard/Reports/" + FileUpload1.FileName));
            rt.Report = "/Dashboard/Reports/" + FileUpload1.FileName;
            rt.Status = "u";
            dl.da.TaskTables.InsertOnSubmit(rt);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Successfully Uploaded')</script>");
            TextBox1.Text = TextBox2.Text = "";
            DropDownList1.SelectedIndex = 0;

        }
    }
}