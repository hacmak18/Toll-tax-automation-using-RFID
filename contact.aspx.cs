using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class contt : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user_name"] == null)
        //{
        //    Response.Redirect("signin.aspx");
        //}
        //li.guname = Session["user_name"].ToString();
        //DataTable dt = li.pview(li);

        //cntct_user1.Text = Session["user_name"].ToString();
        //cntct_email1.Text = dt.Rows[0]["email_id"].ToString();
    }
    protected void cntct_submit_click(object sender,EventArgs e)
    {

        li.cntct_user1 = cntct_user1.Text;
        li.cntct_email1 = cntct_email1.Text;
        li.cntct_msg = cntct_msg.Text;

        li.insert_contact(li);

        cntct_user1.Text = null;
        cntct_email1.Text = null;
        cntct_msg.Text = string.Empty;
    }
}