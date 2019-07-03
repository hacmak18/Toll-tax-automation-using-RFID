using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class feedback : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    //    if (Session["user_name"] == null)
    //    {
    //        Response.Redirect("signin.aspx");
    //    }
    //    li.guname = Session["user_name"].ToString();
    //    DataTable dt = li.pview(li);

    //    fbUname.Text = Session["user_name"].ToString();
    //    fbmail.Text = dt.Rows[0]["email_id"].ToString();
    }
    protected void fbsubmit_click(object sender,EventArgs e)
    {
        li.fb_uname = fbUname.Text;
        li.fb_mail = fbmail.Text;
        li.fb_review = fbreview.Text;
        li.fb_help = fbhelp.Text;
        li.ins_feedback(li);


        
        fbmail.Text = null;
        fbreview.Text = null;
        fbhelp.Text = null;

    }
}