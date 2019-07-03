using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class car_deduction : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uplace_name"] == null)
        {
            Response.Redirect("operator_login.aspx");
        }

        ccd.Focus();
    }
    protected void cd_submit_click(object sender,EventArgs e)
    {
        li.ccd = ccd.Text;
        DataTable dt1 = li.sss(li);

        string cardno = dt1.Rows[0]["Card_no"].ToString();
        string t = "Car";
        li.ccd = ccd.Text;
        
        li.crd = ccd.Text;
        li.amount = 50 + "";
        li.type = t;
        li.Eid = cardno;
        
        li.car_ddct(li);
        li.ins_db(li);
        
        DataTable dt= li.database(li);
        string email;
        if (dt1.Rows.Count>0)
        {
            email = dt1.Rows[0]["Email_id"].ToString();
            string var = SendEmail(email, "Balance info", "50 RS is deducted from your accont");
        }
        
        ccd.Text = null;
    }
     protected string SendEmail(string toAddress, string subject, string body)
   {
     string result = "Message Sent Successfully..!!";
     string senderID = "digiworld1518@gmail.com";// use sender’s email id here..
     const string senderPassword = "1461203160"; // sender password here…
     try
     {
       SmtpClient smtp = new SmtpClient()
       {
         Host = "smtp.gmail.com", // smtp server address here…
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
