using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CrimeDetail : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt=new DataTable();
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ddlcountry.Items.Clear();
            q = "Select * from Country";
            dt = con.fetch_data(q);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlcountry.Items.Add(dt.Rows[i][1].ToString());
            }
        }
        q = "select MAX(U_ID) from User_Detail";
        dt = con.fetch_data(q);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Session["User_Id"] = Convert.ToInt32(dt.Rows[i][0]) ;
        }
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlstate.Visible = true;
        lblstate.Visible = true;
        ddlstate.Items.Clear();
        int sid=0;
        q = "select * from Country where Cou_Name='"+ddlcountry.SelectedValue+"'";
        dt = con.fetch_data(q);
        for(int i=0;i<dt.Rows.Count;i++)
        {
            sid = Convert.ToInt32(dt.Rows[i][0]);
        }
        q = "select * from State where Cou_Id="+sid;
        dt = con.fetch_data(q);
        for(int i=0;i<dt.Rows.Count;i++)
        {
            ddlstate.Items.Add(dt.Rows[i][2].ToString());
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcity.Visible = true;
        lblcity.Visible = true;
        ddlcity.Items.Clear();
        int cid = 0;
        q = "select * from State where Sta_Name='"+ddlstate.SelectedValue+"'";
        dt=con.fetch_data(q);
        for(int i=0;i<dt.Rows.Count;i++)
        {
            cid = Convert.ToInt32(dt.Rows[i][1]);
        }
        q = "select * from City where Sta_Id="+cid;
        dt = con.fetch_data(q);
        for(int i=0;i<dt.Rows.Count;i++)
        {
            ddlcity.Items.Add(dt.Rows[i][2].ToString());
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string critype="";
        if(radio1.Checked)
        {
            critype = "Abuse of public funds and/or resources.";
        }
        else if(radio2.Checked)
        {
            critype = "Abuse of assets.";
        }
        else if(radio3.Checked)
        {
            critype = "Abusing a position.";
        }
        else if(radio4.Checked)
        {
            critype = "Corruption to get a job.";
        }
        else if(radio5.Checked)
        {
            critype = "Fake/ghost work.";
        }
        else if(radio6.Checked)
        {
            critype = "Corruption to get a tender.";
        }
        else if(radio7.Checked)
        {
            critype = "Irregularities related to a tender process.";
        }
        else if(radio8.Checked)
        {
            critype = "A bribe was involved";
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz select Any Crime type')", true);
            
        }
        if(txtmessage.Text=="")
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz enter A Message')", true);
            
        }
        if (fileupload.HasFile)
        {
            string filePath = Server.MapPath("~/Crime_Image/" + fileupload.FileName);
            fileupload.SaveAs(filePath);
            q = "insert into Crime_Detail values('" + Convert.ToInt32(Session["User_Id"]) + "','" + ddlcity.SelectedValue + "','" + critype + " ','" + txtmessage.Text + "','" + fileupload.FileName + "')";
            if (con.modify_data(q))
            {
                Response.Write("Data submited successfully");
            }
            Response.Redirect("~/Home.aspx");
            
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Plz select an immage')", true);
            
        }
    }
}