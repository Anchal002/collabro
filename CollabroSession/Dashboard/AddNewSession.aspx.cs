using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession
{
    public partial class AddNewSession : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SessionTable st = new SessionTable();
            st.Sessiontitle = TextBox1.Text;
            st.TakenBy = TextBox2.Text;
            st.Date = DateTime.Today;
            st.Time = TextBox4.Text;
            st.SessionDesc = TextBox5.Text;
            Fileupload1.SaveAs(Server.MapPath("~/Dashboard/SessionPic/" + Fileupload1.FileName));
            st.Uploadpic = "/Dashboard/SessionPic/" + Fileupload1.FileName;
            dl.da.SessionTables.InsertOnSubmit(st);
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Registration successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }
    }
}