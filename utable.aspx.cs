using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class utable : System.Web.UI.Page
{
    logiclayer li = new logiclayer();
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();

            foreach (GridViewRow item in GridView1.Rows)
            {
                Button btn = (Button)item.FindControl("Button1");
                string cno = ((Label)item.FindControl("Label10")).Text;

                if (cno == "")
                {
                    btn.Visible = true;
                }
                else
                {
                    btn.Visible = false;
                }
            }
        }
    }
    void fillgrid()
    {
        GridView1.DataSource = li.view(li);
        GridView1.DataBind();

    }

    protected void ins_click(object sender, EventArgs e)
    {
        
        
        
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
      
        if (e.CommandName == "assign")
        {
            li.cduname = e.CommandArgument.ToString();
            Session["email"] = e.CommandArgument.ToString();
            
            li.cduname = s;
            Response.Redirect("id_db.aspx");
        }
        else if (e.CommandName == "as_submit")
        {  int index;
            index = Convert.ToInt16(e.CommandArgument);
            int id = Convert.ToInt32(((Label)GridView1.Rows[index].FindControl("Label11")).Text);
            string c = ((TextBox)GridView1.Rows[index].FindControl("TextBox1")).Text;
            SqlCommand cmd = new SqlCommand("update user_table set card_no=@cno where user_id=@id", cn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@cno", c);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.EditIndex = -1;
            fillgrid();
            foreach (GridViewRow item in GridView1.Rows)
            {
                Button btn = (Button)item.FindControl("Button1");
                string cno = ((Label)item.FindControl("Label10")).Text;

                if (cno == "")
                {
                    btn.Visible = true;
                }
                else
                {
                    btn.Visible = false;
                }
            }

        }
    }
}