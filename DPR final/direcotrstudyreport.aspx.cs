using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class direcotrstudyreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    String strcon;
    protected void Page_Load(object sender, EventArgs e)
    {

        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        string pfr = "Support Team";
        con.Open();
        da = new SqlDataAdapter("select * from report where preparedfrom='" + pfr + "' and preparedto='" + utyp + "' and status=0", con);
        ds = new DataSet();
        da.Fill(ds, "comm");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}