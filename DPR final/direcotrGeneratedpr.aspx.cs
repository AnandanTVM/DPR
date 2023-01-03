using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class direcotrGeneratedpr : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da,da1,da2,da3,da4,da5;
    DataSet ds,ds1,ds2,ds3,ds4,ds5;
    String strcon;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        da = new SqlDataAdapter("select * from report", con);
        ds = new DataSet();
        da.Fill(ds, "comm");
        GridView1.DataSource = ds;
        GridView1.DataBind();
       
        da1 = new SqlDataAdapter("select * from projectinfo", con);
        ds1 = new DataSet();
        da1.Fill(ds1, "projectinfo");
        GridView2.DataSource = ds1;
        GridView2.DataBind();

        da2 = new SqlDataAdapter("select * from infrastructure", con);
        ds2 = new DataSet();
        da2.Fill(ds2, "projectinfo");
        GridView3.DataSource = ds2;
        GridView3.DataBind();

        da3 = new SqlDataAdapter("select * from costestimation", con);
        ds3 = new DataSet();
        da3.Fill(ds3, "projectinfo");
        GridView4.DataSource = ds3;
        GridView4.DataBind();

        da4 = new SqlDataAdapter("select * from infrastructure", con);
        ds4 = new DataSet();
        da4.Fill(ds4, "projectinfo");
        GridView5.DataSource = ds4;
        GridView5.DataBind();

        da5 = new SqlDataAdapter("select * from overalcost", con);
        ds5 = new DataSet();
        da5.Fill(ds5, "projectinfo");
        GridView6.DataSource = ds5;
        GridView6.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}