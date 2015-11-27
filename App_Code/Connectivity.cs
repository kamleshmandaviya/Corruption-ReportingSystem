using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Connectivity
/// </summary>
public class Connectivity
{
    SqlConnection con;
    SqlCommand cmd;
    DataTable dt;
    SqlDataAdapter da=new SqlDataAdapter();
	public Connectivity()
	{
        con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Corruption;Integrated Security=True");
        con.Open();
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable fetch_data(string q)
    {
        da = new SqlDataAdapter(q, con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public bool modify_data(string q)
    {
        cmd = new SqlCommand(q, con);
        if (cmd.ExecuteNonQuery() == 0)
            return false;
        else
            return true;

    }
}