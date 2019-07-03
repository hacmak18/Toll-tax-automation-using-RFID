using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminSign : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Asignin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        li.user_name = adminUname.Text;
        li.admin_password = adminPassword.Text;
        dt = li.a_login(li);
        if(dt.Rows.Count > 0)
        {
            Session["user_name"] = dt.Rows[0]["user_name"].ToString();
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }

    }
}