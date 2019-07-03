using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class operator_login : System.Web.UI.Page
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
        dt = li.o_login(li);
        if (dt.Rows.Count > 0)
        {
            Session["Uplace_name"] = dt.Rows[0]["Uplace_name"].ToString();
            Response.Redirect("operator_home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }

    }
}