using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class supportoverallcalculation : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon, infsum, ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        

       // sum a column of data base.
        con.Open();
        comm = new SqlCommand("select sum(totalcost) as LL from infrastructure  ", con);
        reader = comm.ExecuteReader();
        if (reader.Read())
        {
            decimal d = (decimal)reader["LL"];
            TextBox1.Text = d.ToString();
        }
        con.Close();
        comm.Dispose();

        con.Open();
        comm = new SqlCommand("select sum(expamount) as BB from infrastructure  ", con);
        reader = comm.ExecuteReader();
        if (reader.Read())
        {
            decimal d = (decimal)reader["BB"];
            TextBox2.Text = d.ToString();
        }
        con.Close();
        comm.Dispose();

        con.Open();
        comm = new SqlCommand("select sum(totalam) as PP from costestimation  ", con);
        reader = comm.ExecuteReader();
        if (reader.Read())
        {
            decimal d = (decimal)reader["PP"];
            TextBox3.Text = d.ToString();
        }
        con.Close();
        comm.Dispose();


      
 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string d1 = DateTime.Now.ToString("dd/MM/yyyy");
        con.Open();
        comm = new SqlCommand("insert into overalcost values('" + d1 + "'," + TextBox1.Text + "," + TextBox2.Text + "," + TextBox3.Text + ",0)", con);
        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
       // TextBox4.Text = "";
        //TextBox5.Text = "";
       // TextBox6.Text = "";
        Label1.Text = "Updated Successfully!!!";
    }
}