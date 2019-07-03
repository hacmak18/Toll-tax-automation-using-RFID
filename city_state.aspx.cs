using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class city_state : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
            Response.Redirect("adminsign.aspx");
        }
    if(!IsPostBack)
    {
        fillgrid();
    }
    city_gv.Rows[0].Visible = false;
    //city_gv.Columns[2].Visible = false;
    }
    void fillgrid()
    {
        city_gv.DataSource = li.cityview(li);
        city_gv.DataBind();
    }
}