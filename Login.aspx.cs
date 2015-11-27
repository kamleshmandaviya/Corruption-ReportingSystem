using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignin_Click(object sender, EventArgs e)
    {
        string userid, pass;
        q = "select * from User_Detail where Email='"+txtemail.Text+"'";
        dt = con.fetch_data(q);
        if(dt.Rows.Count!=0)
        {
            for(int i=0;i<dt.Rows.Count;i++)
            {
               if( dt.Rows[i][3].ToString()==txtemail.Text && dt.Rows[i][5].ToString()==txtpass.Text)
               {
                   Session["UserId"] = dt.Rows[i][0].ToString();
                   Session["UserName"] = dt.Rows[i][1].ToString();
                   Response.Redirect("~/home.aspx");
                   
                   
               }
               else
               {
                   ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('User Id Or PassWord Wrong.')", true);
        
               }
            }
        }
        
        
    }
}