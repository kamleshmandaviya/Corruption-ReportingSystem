using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SearchCrime : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
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
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlstate.Visible = true;
        lblstate.Visible = true;
        ddlstate.Items.Clear();
        int sid = 0;
        q = "select * from Country where Cou_Name='" + ddlcountry.SelectedValue + "'";
        dt = con.fetch_data(q);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            sid = Convert.ToInt32(dt.Rows[i][0]);
        }
        q = "select * from State where Cou_Id=" + sid;
        dt = con.fetch_data(q);
        for (int i = 0; i < dt.Rows.Count; i++)
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
        q = "select * from State where Sta_Name='" + ddlstate.SelectedValue + "'";
        dt = con.fetch_data(q);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            cid = Convert.ToInt32(dt.Rows[i][1]);
        }
        q = "select * from City where Sta_Id=" + cid;
        dt = con.fetch_data(q);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            ddlcity.Items.Add(dt.Rows[i][2].ToString());
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        q = "select * from Crime_Detail where City='"+ddlcity.SelectedValue+"'";
        dt=con.fetch_data(q);
        if(dt.Rows.Count!=0)
        {
            for(int i=0;i<dt.Rows.Count;i+=3)
            {
                TableRow tr1 = new TableRow();
                TableCell tc1 = new TableCell();

                if(dt.Rows.Count>i)
                {
                    ImageButton imgb = new ImageButton();
                    imgb.Height = 30;
                    imgb.Width = 200;
                    imgb.ImageUrl="~/Crime_Image/" + dt.Rows[i][5];
                    tc1.Controls.Add(imgb);
                    tr1.Cells.Add(tc1);
                }
                if (dt.Rows.Count > i+1)
                {
                    ImageButton imgb = new ImageButton();
                    imgb.Height = 30;
                    imgb.Width = 200;
                    imgb.ImageUrl = "~/Crime_Image/" + dt.Rows[i][5];
                    tc1.Controls.Add(imgb);
                    tr1.Cells.Add(tc1);
                }
                if (dt.Rows.Count > i+2)
                {
                    ImageButton imgb = new ImageButton();
                    imgb.Height = 30;
                    imgb.Width = 200;
                    imgb.ImageUrl = "~/Crime_Image/" + dt.Rows[i][5];
                    tc1.Controls.Add(imgb);
                    tr1.Cells.Add(tc1);
                }
                Table1.Rows.Add(tr1);
            }
        }
    }
}