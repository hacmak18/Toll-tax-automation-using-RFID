using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class id_db : System.Web.UI.Page
{   
    logiclayer li=new logiclayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        db_id.Focus();
    }
    protected void db_click(object sender,EventArgs e)
    {
        li.iddb_crd = db_id.Text;
        li.cduname = Session["Email"].ToString();
        li.insdb(li);
        Response.Redirect("utable.aspx");
    }
}