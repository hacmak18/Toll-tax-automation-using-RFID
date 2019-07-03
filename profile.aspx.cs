using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class profile : System.Web.UI.Page
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

        //welcomename.Text = firstname;
    }
    protected void so_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("signin.aspx");
    }
}