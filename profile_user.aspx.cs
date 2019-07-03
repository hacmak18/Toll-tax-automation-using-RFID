using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class profile_user : System.Web.UI.Page
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

        
        //string firstname = dt.Rows[0]["f_name"].ToString();
        //string lastname = dt.Rows[0]["l_name"].ToString();
        //string mobile = dt.Rows[0]["mob_no"].ToString();
        //string email = dt.Rows[0]["email_id"].ToString();
        //string card = dt.Rows[0]["card_no"].ToString();
        //string adrs = dt.Rows[0]["address"].ToString();
        //string blnc = dt.Rows[0]["balance"].ToString(); 

        //name_user.Text=Session["user_name"].ToString();
        //fname.Text = firstname;
        //Lname.Text = lastname;
        //dcrd_no.Text = card;
        //add_user.Text = adrs;
        //email_user.Text = email;
        //mo_user.Text = mobile;
        //Abalance.Text = blnc;
       
    }
}