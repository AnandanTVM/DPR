using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class csgovpackage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        comm = new SqlCommand("insert into pack values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "',0)", con);
        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Label3.Text = "Updated Successfully!!!";

    }
}