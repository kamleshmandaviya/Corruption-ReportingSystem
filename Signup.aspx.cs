using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Signup : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt=new DataTable();
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int id=0;
        string gender="",message="";
        bool email = true;
        
        if (txtname.Text == "" || txtemail.Text == "" || txtpass.Text == "" || txtphone.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz Enter Proper Detail')", true);
        }
        else
        {
            if (radfemale.Checked || radmale.Checked)
            {
                if (radfemale.Checked)
                {
                    gender = "Female";
                }
                else if (radmale.Checked)
                {
                    gender = "Male";
                }
                q = "select * from User_Detail where Email='"+txtemail.Text+"'";
                dt = con.fetch_data(q);
                for (int i = 0; i < dt.Rows.Count;i++ )
                {
                    email = false;
                }
                if (email == true)
                {
                    q = "insert into User_Detail values('" + txtname.Text + "','" + gender + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtpass.Text + "')";
                    if (con.modify_data(q))
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Submited sucessfully')", true);
                        Response.Redirect("~/CrimeDetail.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Error genreted u have try again')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Your email is generated please forgot password.')", true);
                    
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz select Gender')", true);
            }
        }
        
    }
}