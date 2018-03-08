using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace AspWebContactForm
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMail(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(EmailTB.Text);
            mail.To.Add("myemail@domain.com");
            mail.Subject = "Contact Us";
            mail.IsBodyHtml = false;
            mail.Body = "First Name: " + FNameTB.Text + "";
            mail.Body += "Last Name: " + LNameTB.Text + "";
            mail.Body += "Email: " + EmailTB.Text + "";
            mail.Body += "Comments: " + CommentsTB.Text + "";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "your_relay_mail_server";
            smtp.Send(mail);
            formPH.Visible = false;
            sucessPH.Visible = true;


        }
        protected void Reset(object s, EventArgs e)
        {
            FNameTB.Text = "";
            LNameTB.Text = "";
            EmailTB.Text = "";
            CommentsTB.Text = "";

        }
    }
}