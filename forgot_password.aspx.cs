using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class forgot_password : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void text_click(object sender,EventArgs e)
    {
        fp_uname.Text = null;
    }
    protected void submit_click(object sender, EventArgs e)
    {
        li.guname = fp_uname.Text;
        DataTable dt = li.pview(li);
        if(dt.Rows.Count>1)
        {
            string email = dt.Rows[0]["email_id"].ToString();
            string pass = dt.Rows[0]["password"].ToString();
            string card = dt.Rows[0]["card_no"].ToString();
            string var = SendEmail(email, "Blace information", "Your password for " + card + " is " + pass);
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Username doesn't exist')</script>");
        }
    }
    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "digiworld1518@gmail.com";
        const string senderPassword = "1461203160"; 
        try
        {
            SmtpClient smtp = new SmtpClient()
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            smtp.Send(message);
        }
        catch (Exception)
        {
            result = "Error sending email.!!!";
        }
        return result;
    }

}