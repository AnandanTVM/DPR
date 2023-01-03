using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class citizencomapp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm1, cmd;
    SqlDataAdapter da;
    SqlDataReader reader;
    DataSet ds;
    // int id;
    String strcon,uname;
    protected void Page_Load(object sender, EventArgs e)
    {

        // id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
         uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        comm1 = new SqlCommand("select * from costestimation where name='" + uname + "'", con);
        reader = comm1.ExecuteReader();
        if (reader.Read() == true)
        {
            Label1.Text = reader["type"].ToString();
            Label2.Text = reader["name"].ToString();
            Label3.Text = reader["address"].ToString();
            Label4.Text = reader["phone"].ToString();
            Label5.Text = reader["date"].ToString();
            Label6.Text = reader["land"].ToString();
            Label7.Text = reader["landam"].ToString();
            Label8.Text = reader["tree"].ToString();
            Label9.Text = reader["treeam"].ToString();
            Label10.Text = reader["house"].ToString();
            Label11.Text = reader["houseam"].ToString();
            Label12.Text = reader["totalam"].ToString();
            Label13.Text = reader["remark"].ToString();
            con.Close();

        }
        else
        {
            Response.Redirect("citizennotfound.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("update costestimation set status=2  where name='" + uname + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("citizenHome.aspx");
        
    }
}