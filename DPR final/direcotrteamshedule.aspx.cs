using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class direcotrteamshedule : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm1, cmd;
    String strcon, uname;
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

        cmd = new SqlCommand("insert into teamshedule values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        Label1.Text = "Updated Successfully...";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
        con.Close();
    }
}