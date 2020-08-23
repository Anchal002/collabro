using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class Assessment : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = dl.da.UserTables.Where(k => k.Status == "r");
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "---Select Member Name---");

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            AssessmentTable Ta = new AssessmentTable();
            Ta.Title = TextBox1.Text;
            Ta.AssignDate = DateTime.Now;
            Ta.cDate = Convert.ToDateTime(TextBox2.Text);
            Ta.TaskDescription = TextBox4.Text;
            Ta.MemberId = Convert.ToInt32(DropDownList1.SelectedValue);
            dl.da.AssessmentTables.InsertOnSubmit(Ta);
            dl.da.SubmitChanges();

            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(DropDownList1.SelectedValue)
                     select a).FirstOrDefault();
            string destinationaddr = "91" + q.Contact;
            string message = "Hello " + q.Name + " , You have been Assigned A Task From Collabro Session";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "8GwB0UYwCBE-kWa9pPEQW8b4r64y4opUmAxL2IiDK3"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
            }
            Response.Write("<script>alert('Task Assigned Successflly..!!')</script>");
            TextBox1.Text = TextBox2.Text = TextBox4.Text = "";
        }
    }
}