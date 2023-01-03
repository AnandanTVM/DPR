using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LegalConspiracy1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        if (!Page.IsPostBack)
        {


            comm = new SqlCommand("select * from consipiracy where ciid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                Label1.Text = reader["date"].ToString();
                Label2.Text = reader["username"].ToString();
                Label3.Text = reader["conspiracy"].ToString();
                Label4.Text = reader["deatils"].ToString();



            }

        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        comm = new SqlCommand("update consipiracy set conupdate='" + TextBox1.Text + "',remark='" + TextBox2.Text + "',status=1 where ciid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("LegalConspiracy.aspx");
    }
}