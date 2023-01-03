using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class supportcategorywiseamount : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon, uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
         uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string d1 = DateTime.Now.ToString("dd/mm/yyyy");
        
        con.Open();
        comm = new SqlCommand("insert into categorywiseamtextimation values('" + TextBox1.Text + "','" + d1 + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + "," + TextBox5.Text + "," + TextBox6.Text + ",null,null,0)", con);
        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        Label1.Text = "Updated Successfully!!!";
    }
}