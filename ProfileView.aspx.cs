using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ProfileView : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    string q;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from Crime_Detail where U_Id="+Convert.ToInt32(Session["UserId"].ToString());
        dt = con.fetch_data(q);
        if(dt.Rows.Count!=null)
        {
            for(int i=0;i<dt.Rows.Count;i++)
            {
               
                TableRow tr = new TableRow();
                TableCell tc = new TableCell();
                if(dt.Rows.Count>i)
                {
                    ImageButton img = new ImageButton();
                    img.ImageUrl ="~/Crime_Image"+ dt.Rows[i][5].ToString();
                    tc.Controls.Add(img);
                    tr.Cells.Add(tc);
                }
                if(dt.Rows.Count>i)
                {
                    Label lblmess = new Label();
                    lblmess.Text = dt.Rows[i][4].ToString();
                    tc.Controls.Add(lblmess);
                    tr.Cells.Add(tc);
                }
                Table1.Rows.Add(tr);
            }
        }
    }
}