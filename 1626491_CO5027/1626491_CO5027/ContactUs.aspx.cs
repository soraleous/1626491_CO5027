using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1626491_CO5027
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("1626491@gmail.com", "1626491@gmail.com");

            //Mail service below
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //Credentials below
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1626491@gmail.com", "origin1234");
            smtpClient.Credentials = credentials;

            msg = new MailMessage("1626491@gmail.com", "1626491@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text + " from " + txtName.Text + " @ " + txtEmail.Text;

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }

        }
    }
}