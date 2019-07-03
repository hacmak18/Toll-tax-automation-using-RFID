using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact_table : System.Web.UI.Page
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
        contact_gv.DataSource = li.cview(li);
        contact_gv.DataBind();
    }
}
