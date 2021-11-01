using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class MailTrial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        MailMessage ml = new MailMessage();
        ml.From = new MailAddress("skumar@mentalhealthmission.in");
        ml.To.Add(txttomail.Text.ToLower().ToString());
        ml.Subject = txtsub.Text.ToString();
        ml.Body = txtmsg.Text.ToString();
        ml.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("relay-hosting.secureserver.net", 25);
        smtp.Credentials = new System.Net.NetworkCredential("skumar@mentalhealthmission.in", "Mhm@0518");
        smtp.EnableSsl = false;
        smtp.Send(ml);
        ml.Dispose();
    }
}