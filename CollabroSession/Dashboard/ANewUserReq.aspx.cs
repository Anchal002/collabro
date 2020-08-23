using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollabroSession.Dashboard
{
    public partial class ANewUserReq : System.Web.UI.Page
    {
        DataLayer dl = new DataLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        void Bind()
        {
            Repeater1.DataSource = dl.da.UserTables.Where(k => k.Status == "u");
            Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            q.Status = "r";
            dl.da.SubmitChanges();
            Response.Write("<script>alert('Accepted..!')</script>");

            Bind();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            var q = (from a in dl.da.UserTables
                     where a.Id == Convert.ToInt32(((LinkButton)sender).CommandArgument)
                     select a).FirstOrDefault();
            MailMessage mm = new MailMessage();
            mm.To.Add(q.Email);
            mm.From = new MailAddress("yadavraj3325@gmail.com");
            mm.Subject = "About Your Account Request";
            mm.Body = "Your Account Registration Request Has Been Rejected For More Information Contact Us..!";
            mm.IsBodyHtml = true;

            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "yadavraj3325@gmail.com";
            nc.Password = "Raj@12345@";

            SmtpClient sc = new SmtpClient();
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.UseDefaultCredentials = true;
            sc.Credentials = nc;
            sc.EnableSsl = true;
            sc.Send(mm);
            Response.Write("<script>alert('Rejected..!')</script>");
            dl.da.UserTables.DeleteOnSubmit(q);
            dl.da.SubmitChanges();
            Bind();
        }
    }
}