using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public class datalayer
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;

    public datalayer()
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    }

    public DataSet state_query()
    {
        da = new SqlDataAdapter("select * from state_table", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public DataSet city_query(logiclayer li)
    {
        cmd = new SqlCommand("select * from city_table where state_id=@sid", cn);
        cmd.Parameters.AddWithValue("@sid", li.state_id);

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        return ds;

    }

    public void insert_query(logiclayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO tolltax.dbo.User_table(F_name,L_name,Mob_no,Email_id,Address,City_name,Pin_code,[User_name],Password) 
                                                        VALUES (@fn,@ln,@mob,@em,@add,@ct,@pin,@un,@pass)", cn);

        cmd.Parameters.AddWithValue("@fn", li.fname);
        cmd.Parameters.AddWithValue("@ln", li.lname);
        cmd.Parameters.AddWithValue("@em", li.email);
        cmd.Parameters.AddWithValue("@un", li.uname);
        cmd.Parameters.AddWithValue("@pass", li.pass);
        cmd.Parameters.AddWithValue("@add", li.address);
        cmd.Parameters.AddWithValue("@ct", li.dcity);
        cmd.Parameters.AddWithValue("@mob", li.mob_no);
        cmd.Parameters.AddWithValue("@pin", li.pc);





        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable admin_login(logiclayer li)
    {
        SqlCommand cmd = new SqlCommand("select * from Admin_login where  User_Name =@Ausername and admin_Password=@password", cn);
        cmd.Parameters.AddWithValue("@Ausername", li.user_name);
        cmd.Parameters.AddWithValue("@password", li.admin_password);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable operator_login(logiclayer li)
    {
        SqlCommand cmd = new SqlCommand("select * from operator_table where  Uplace_name =@Ausername and Password=@password", cn);
        cmd.Parameters.AddWithValue("@Ausername", li.user_name);
        cmd.Parameters.AddWithValue("@password", li.admin_password);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insert_contact(logiclayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO tolltax.dbo.contact(Username,Email,Message) VALUES(@UN,@mail,@msg)", cn);

        cmd.Parameters.AddWithValue("@UN", li.cntct_user1);
        cmd.Parameters.AddWithValue("@mail", li.cntct_email1);
        cmd.Parameters.AddWithValue("@msg", li.cntct_msg);


        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable user_login(logiclayer li)
    {
        SqlCommand cmd = new SqlCommand("select * from user_table where  user_name =@username and Password=@user_password", cn);
        cmd.Parameters.AddWithValue("@username", li.username);
        cmd.Parameters.AddWithValue("@user_password", li.password);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insert_feedback(logiclayer li)
    {
        cmd = new SqlCommand(@"INSERT INTO feedback(fb_uname,fb_mail,fb_help,fb_review) 
                                                        VALUES (@fbname,@fbmail,@fbhelp,@fbreview)", cn);

        cmd.Parameters.AddWithValue("@fbname", li.fb_uname);
        cmd.Parameters.AddWithValue("@fbmail", li.fb_mail);
        cmd.Parameters.AddWithValue("@fbhelp", li.fb_help);
        cmd.Parameters.AddWithValue("@fbreview", li.fb_review);



        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable view(logiclayer li)
    {
        cmd = new SqlCommand("select * from User_table", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    public DataTable contact_view(logiclayer li)
    {
        cmd = new SqlCommand("select * from contact", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable fb_view(logiclayer li)
    {
        cmd = new SqlCommand("select * from feedback", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable toll_view(logiclayer li)
    {
        cmd = new SqlCommand("select * from toll_trans", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable t_profile(logiclayer li)
    {
        cmd = new SqlCommand("select * from toll_trans where card_no=@cd ", cn);
        cmd.Parameters.AddWithValue("@cd", li.ptcn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable trans_view(logiclayer li)
    {
        cmd = new SqlCommand("select * from transaction_table", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable selelectname(logiclayer li)
    {
        cmd = new SqlCommand("select * from user_table where card_no =@tp", cn);
        cmd.Parameters.AddWithValue("@tp", li.ccd);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable city_view(logiclayer li)
    {
        cmd = new SqlCommand(" select * from City_table c inner join State_table s on s.State_id=c.State_id", cn);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insert_recharge(logiclayer li)
    {

        cmd = new SqlCommand(@"INSERT INTO tolltax.dbo.transaction_table(user_name,card_no,trans_date,Balance,trans_type) VALUES(@un,@cn,getdate(),@ta,@tt)", cn);

        cmd.Parameters.AddWithValue("@un", li.t_uname);
        cmd.Parameters.AddWithValue("@cn", li.t_crdno);
        cmd.Parameters.AddWithValue("@ta", li.t_amount);
        cmd.Parameters.AddWithValue("@tt", li.t_type);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public void ins_add(logiclayer li)
    {
        cmd = new SqlCommand("update user_table set balance=(balance+@amount) where card_no=@crdno", cn);
        cmd.Parameters.AddWithValue("@crdno", li.t_crdno);
        cmd.Parameters.AddWithValue("@amount", li.t_amount);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    public void truck(logiclayer li)
    {
        cmd = new SqlCommand("update user_table set balance=(balance-100) where card_no=@crdno", cn);
        cmd.Parameters.AddWithValue("@crdno", li.tcd);


        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public void car(logiclayer li)
    {
        cmd = new SqlCommand("update user_table set balance=(balance-50) where card_no=@crdno", cn);
        cmd.Parameters.AddWithValue("@crdno", li.ccd);


        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public void insert_toll(logiclayer li)
    {

        cmd = new SqlCommand(@"INSERT INTO tolltax.dbo.toll_trans(card_no,amount,type,date) VALUES(@cn,@amount,@type,getdate())", cn);

        cmd.Parameters.AddWithValue("@cn", li.crd);
        cmd.Parameters.AddWithValue("@amount", li.amount);
        cmd.Parameters.AddWithValue("@type", li.type);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable databse(logiclayer li)
    {
        cmd = new SqlCommand("select * from user_table where user_name=@Eid", cn);
        cmd.Parameters.AddWithValue("@Eid", li.Eid);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void insertdb(logiclayer li)
    {
        cmd = new SqlCommand("update user_table set card_no=@crd_no where User_name=@uname", cn);
        cmd.Parameters.AddWithValue("@crd_no", li.iddb_crd);
        cmd.Parameters.AddWithValue("@uname", li.cduname);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public DataTable get(logiclayer li)
    {
        cmd = new SqlCommand("select * from User_table where user_name=@guname", cn);
         cmd.Parameters.AddWithValue("@guname",li.guname);

         da = new SqlDataAdapter(cmd);
         dt = new DataTable();
         da.Fill(dt);
         return dt;

    }
    public DataTable rcg(logiclayer li)
    {
        cmd = new SqlCommand("select * from user_table where card_no=@cdno", cn);
        cmd.Parameters.AddWithValue("@cdno", li.rcg);

        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}
