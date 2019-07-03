using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transaction_table : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
            Response.Redirect("adminsign.aspx");
        }
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    void fillgrid()
    {
        fb_gv.DataSource = li.trans(li);
        fb_gv.DataBind();
    }
}