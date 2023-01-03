using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class csgovnot : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon,d1;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        d1 = DateTime.Now.ToString("dd-MM-yyyy");
        comm = new SqlCommand("insert into notification values('" + d1 + "','" + TextBox1.Text + "','" + TextBox4.Text + "',0)", con);
        
        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox4.Text = "";


        Label3.Text = "Updated Successfully!!!";
    }
}