using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class HomeLogin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader rdr;
    string strl;
    string utyp;
    protected void Page_Load(object sender, EventArgs e)
    {
        strl = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strl);
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string un = TextBox1.Text;
        string pw = TextBox2.Text;

        con.Open();
        cmd = new SqlCommand("SELECT * From login where username='" + un + "' and password='" + pw + "'", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read())
        {
            utyp = rdr["usertype"].ToString();
        }
        con.Close();
        Session["x"] = un;
        Session["utyp"] = utyp;
        if (utyp == "Admin")
        {
            Response.Redirect("adminHome.aspx");

        }
        else if (utyp == "Citizen")
        {
            Response.Redirect("CitizenHome.aspx");
        }
        else if (utyp == "C/S Government")
        {
            Response.Redirect("csgovHome.aspx");
        }
        else if (utyp == "Director")
        {
            Response.Redirect("direcotrHome.aspx");
        }
        else if (utyp == "Support Team")
        {
            Response.Redirect("SupportHome.aspx");
        }
        else if (utyp == "Financial Agency")
        {
            Response.Redirect("financialHome.aspx");
        }
        else if (utyp == "Leagal Coordinator")
        {
            Response.Redirect("LegalHome.aspx");
        }
        else if (utyp == "Expert")
        {
            Response.Redirect("expertHome.aspx");
        }
        else
        {
            Label3.Text = "Invalid User Name or Password";
        }


    }

}