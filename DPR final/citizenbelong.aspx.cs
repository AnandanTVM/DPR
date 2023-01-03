using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class citizenbelong : System.Web.UI.Page
{
    String str, r, un, y, utyp, d1;
    SqlCommand cmd;
    SqlConnection con;
    int comid;
    String d,drop;
    protected void Page_Load(object sender, EventArgs e)
    {
        y = Session["x"].ToString();
        // Label2.Text = y.ToString();
        utyp = Session["utyp"].ToString();
        // y = "procoo";
        str = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        //d1 = DateTime.Now.ToString("dd-MM-yyyy");
        cmd = new SqlCommand("insert into belong values('" + y + "','" + TextBox2.Text + "'," + TextBox3.Text + "," + TextBox4.Text + ",'" + DropDownList1.SelectedItem.Text + "'," + TextBox9.Text + "," + TextBox8.Text + "," + TextBox6.Text + ",0,0)", con);
        cmd.ExecuteNonQuery();
        con.Close();
       
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox8.Text = "";
        TextBox6.Text = "";
        TextBox9.Text = "";
        


        Label1.Text = "Succesfully Added Your Information..";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       drop = DropDownList1.SelectedItem.Text;
        if(drop =="Land")
        {
            TextBox8.Visible = true;
            Label5.Visible = true;
           
            TextBox6.Visible = false;
            TextBox6.Text = "0";
            TextBox9.Visible = false;
            TextBox9.Text = "0";
            Label3.Visible = false;
            Label4.Visible = false;

        }
        else if (drop == "Land & House")
        {
            TextBox8.Visible = true;
            TextBox6.Visible = true;
            Label5.Visible = true;
            Label3.Visible = true;

            
            TextBox9.Visible = false;
            TextBox9.Text = "0";
            Label4.Visible = false;


        }
        else if (drop == "Land & Tree")
        {
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            Label5.Visible = true;
            Label4.Visible = true;

            TextBox6.Visible = false;
            TextBox6.Text = "0";
            Label3.Visible = false;
        }
        else if (drop == "Land,House & tree")
        {
            TextBox8.Visible = true;
            TextBox6.Visible = true;
            TextBox9.Visible = true;
            Label5.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;

        }
        else
        {
            TextBox8.Visible = false;
            TextBox6.Visible = false;
            TextBox9.Visible = false;
            Label5.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
        }
    }
   
}