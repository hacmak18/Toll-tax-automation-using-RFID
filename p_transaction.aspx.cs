using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class p_transaction : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
            Response.Redirect("adminsign.aspx");
        }
        li.guname = Session["user_name"].ToString();
        
            DataTable dt = li.pview(li);
            string card = dt.Rows[0]["card_no"].ToString();
            li.ptcn = card;
            if (dt.Rows.Count > 1)
            {
            DataTable dt1 = li.tprofile(li);
        }
        
        //li.tp_uname = Session["user_name"].ToString();
        
        if (!IsPostBack)
        {
            fillgrid();
        }
        
        
       

    }
    void fillgrid()
    {
        pt_view.DataSource = li.tprofile(li);
        pt_view.DataBind();
    }
}