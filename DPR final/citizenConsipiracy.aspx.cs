using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class citizenConsipiracy : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon, d1, uname;
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
        con.Open();
        d1 = DateTime.Now.ToString("dd-MM-yyyy");

        comm = new SqlCommand("insert into consipiracy values('" + uname + "','" + d1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "',null,null,0)", con);

        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";


        Label1.Text = "Updated Successfully!!!";
    }
}