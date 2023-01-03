using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class supportsurvey1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm, cmd;
    String strcon;
    SqlDataReader reader;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        comm = new SqlCommand("select * from survey where sid=" + id + "", con);
        reader = comm.ExecuteReader();
        if (reader.Read() == true)
        {
            Label1.Text = reader["username"].ToString();
            Label2.Text = reader["type"].ToString();
            Label3.Text = reader["report"].ToString();
           

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        comm = new SqlCommand("update survey set status=1,updatre='" + TextBox1.Text + "'  where sid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("supportsurvey.aspx");
    }
}