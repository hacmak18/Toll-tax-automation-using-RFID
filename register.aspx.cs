using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    logiclayer li = new logiclayer();


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            dstate.DataSource = li.getstate();
            dstate.DataTextField = "state_name";
            dstate.DataValueField = "state_id";
            dstate.DataBind();
        }
    }


    protected void dstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        li.state_id = Convert.ToInt16(dstate.SelectedValue);
        dcity.DataSource = li.getcitiesbyname(li);
        dcity.DataTextField = "city_name";
        dcity.DataValueField = "city_id";
        dcity.DataBind();
    }

    protected void rsubmit_Click(object sender, EventArgs e)
    {
        li.state_id = Convert.ToInt16(dstate.SelectedValue);
        li.fname = fname.Text;
        li.lname = lname.Text;
        li.email = email.Text;
        li.uname = uname.Text;
        li.pass = password.Text;
        li.address = address.Text;
        li.dcity = dcity.SelectedItem.Text;
        li.mob_no = mob_no.Text;
        li.pc = Convert.ToInt32(pc.Text);


        li.Reg_User(li);
        Response.Redirect("signin.aspx");
    }
}