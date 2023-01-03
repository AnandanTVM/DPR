using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Adminfeedback1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon;
    string utyp;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;


        // Name = Session["x"].ToString();
        //utyp = Session["utyp"].ToString();
        // ids = Session["id"].ToString();

        // Label1.Text = Name;


        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        utyp = Session["utyp"].ToString();
        con.Open();
        if (!Page.IsPostBack)
        {


            comm = new SqlCommand("select * from feedback where fid='"+id+"'", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                nam.Text = reader["name"].ToString();
                da.Text = reader["date"].ToString();
                ph.Text = reader["phone"].ToString();
                tit.Text = reader["title"].ToString();
                fee.Text = reader["feedback"].ToString();







            }

        }

        con.Close();
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Adminfeedback.aspx");
    }
}