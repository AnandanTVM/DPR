using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class citizencompupdate1 : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand comm1, cmd;
    String strcon;
    SqlDataReader reader;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        comm1 = new SqlCommand("select * from complaints where cid=" + id + "", con);
        reader = comm1.ExecuteReader();
        if (reader.Read() == true)
        {
            Label1.Text = reader["type"].ToString();
            Label2.Text = reader["complaint"].ToString();
            Label3.Text = reader["cupdate"].ToString();
            Label4.Text = reader["date"].ToString();
            

        }
        con.Close();
    }
}