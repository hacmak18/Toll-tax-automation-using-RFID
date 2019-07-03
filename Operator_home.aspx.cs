using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Operator_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uplace_name"] == null)
        {
            Response.Redirect("operatior_login.aspx");
        }

    }
    protected void asignout_click(object sender,EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Operator_login.aspx");
    }

}