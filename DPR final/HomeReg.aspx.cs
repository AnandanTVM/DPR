using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader rdr;
    int rid;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
    }
   
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int pass = TextBox3.Text.Length;
        if (pass >= 8)
        {
            Label4.Text = "";
            con.Open();
            //d1 = DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand("insert into reg values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            DropDownList1.SelectedItem.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";


            Label3.Text = "Succesfully Added Your Information..";
        }
        else
        {
            Label4.Text = "Password must be 8 or more charectors ";
        }
    }
}