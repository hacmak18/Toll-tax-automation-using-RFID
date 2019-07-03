using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signin : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
        }
        else
        {
            Response.Redirect("homepage.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        li.username = username.Text;
        li.password = password.Text;
        dt = li.u_login(li);
        if (dt.Rows.Count > 0)
        {
            Session["user_name"] = dt.Rows[0]["user_name"].ToString();
            Response.Redirect("homepage.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }
    protected void loginsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }

}