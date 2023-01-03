using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class citizendoubts : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm1, cmd;
    String strcon, uname,d1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        uname = Session["x"].ToString();
        string utyp = Session["utyp"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        d1 = DateTime.Now.ToString("dd-MM-yyyy");
       
        cmd = new SqlCommand("insert into doubts values('" + uname + "','" + d1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "',null,null,0)", con);
        cmd.ExecuteNonQuery();
        Label1.Text = "Submited Successfuly...";
        //TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
        con.Close();
    }
}