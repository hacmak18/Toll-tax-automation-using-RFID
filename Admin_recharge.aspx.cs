using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;

public partial class Admin_recharge : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uplace_name"] == null)
        {
            Response.Redirect("operator_login.aspx");
        }
    }
    protected void recharge_click(object sender,EventArgs e)
    {
        li.rcg = cardid.Text;
        DataTable dt = li.archg(li);
        string user = dt.Rows[0]["user_name"].ToString();


        li.t_uname = user;
        li.t_amount = rechargeamount.Text;
        li.t_crdno = cardid.Text;
        li.t_type = Convert.ToString(1);

        li.ins_recharge(li);
        li.add(li);
        string a = rechargeamount.Text;

        string email = dt.Rows[0]["email_id"].ToString();
        string ta = dt.Rows[0]["balance"].ToString();
        string var = SendEmail(email, "Blace information", "your account is creadited with " + a + "RS your current balance is" + ta);

        rechargeamount.Text = null;
        cardid.Text = null;
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