using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public class logiclayer
{
    datalayer dl = new datalayer();

    public int state_id { get; set; }
    public string fname { get; set; }
    public string lname { get; set; }
    public string uname { get; set; }

    public string email { get; set; }
    public string pass { get; set; }
    public string address { get; set; }
    public string dstat { get; set; }
    public string dcity { get; set; }
    public decimal pc { get; set; }
    public string mob_no { get; set; }
    public string user_name { get; set; }
    public string admin_password { get; set; }
    public string cntct_user1 { get; set; }
    public string cntct_email1 { get; set; }
    public string cntct_msg { get; set; }
    public string username { get; set; }
    public string password { get; set; }
    public string fb_uname { get; set; }
    public string fb_mail { get; set; }
    public string fb_review { get; set; }
    public string fb_help { get; set; }
    public string card_id { get; set; }
    public string t_amount { get; set; }
    public string t_type { get; set; }
    public string t_uname { get; set; }
    public string t_crdno { get; set; }
    public string ccd { get; set; }
    public string tcd { get; set; }
    public string crd { get; set; }
    public string amount { get; set; }
    public string type { get; set; }
    public string Eid { get; set; }
    public string iddb_crd { get; set; }
    public string cduname { get; set; }
    public string guname { get; set; }
    public string gf_name { get; set; }
    public string gl_name { get; set; }
    public string g_cn { get; set; }
    public string g_email { get; set; }
    public string g_address { get; set; }
    public string g_mobile { get; set; }
    public string tp_uname { get; set; }
    public string ptcn { get; set; }
    public string rcg { get; set; }
   

	public logiclayer()
	{

    }

   public DataTable a_login(logiclayer li)
    {
        return dl.admin_login(li);
    }
    public DataSet getstate()
    {
        return dl.state_query();
    }

    public DataSet getcitiesbyname(logiclayer li)
    {
        return dl.city_query(li);
    }

    public void Reg_User(logiclayer li)
    {
        dl.insert_query(li);
    }
    public void insert_contact(logiclayer li)
    {
        dl.insert_contact(li);
    }
    public DataTable u_login(logiclayer li)
    {
        return dl.user_login(li);
    }
   public void ins_feedback(logiclayer li)
    {
        dl.insert_feedback(li);
    }
   public DataTable view(logiclayer li)
   {
       return dl.view(li);
   }
   public DataTable cview(logiclayer li)
   {
       return dl.contact_view(li);
   }
   public DataTable fbview(logiclayer li)
   {
       return dl.fb_view(li);
   }
    public DataTable toll(logiclayer li)
   {
       return dl.toll_view(li);
   }
    public DataTable trans(logiclayer li)
    {
        return dl.trans_view(li);
    }
    public DataTable tprofile(logiclayer li)
    {
        return dl.t_profile(li);
    }
    public DataTable cityview(logiclayer li)
   {
       return dl.city_view(li);
   }
    public void ins_recharge(logiclayer li)
    {
        dl.insert_recharge(li);
    }
    public void add(logiclayer li)
    {
        dl.ins_add(li);
    }
    public DataTable sss(logiclayer li)
    {

      return  dl.selelectname(li);
    }
    public void truck_ddct(logiclayer li)
    {
        dl.truck(li);
    }
    public void car_ddct(logiclayer li)
    {
        dl.car(li);
    }
    public void ins_db(logiclayer li)
    {
        dl.insert_toll(li);
    }
    public DataTable o_login(logiclayer li)
    {
     return dl.operator_login(li);
    }
    public DataTable database(logiclayer li)
    {
        return dl.databse(li);
    }
    public void insdb(logiclayer li)
    {
        dl.insertdb(li);
    }
    public DataTable pview(logiclayer li)
    {
        return dl.get(li);
    }
    public DataTable archg(logiclayer li)
    {
        return dl.rcg(li);
    }

}
