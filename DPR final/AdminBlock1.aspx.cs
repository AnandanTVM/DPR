using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class AdminBlock1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm, comm1;
    SqlDataReader reader;
    String strcon;
    string utyp, ps,utt,unn;
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


            comm = new SqlCommand("select * from reg where regid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
               
                ut.Text = reader["usertype"].ToString();
                un.Text = reader["username"].ToString();
                 ps= reader["password"].ToString();
                //ci.Text = reader["email"].ToString();
                ph.Text = reader["phone"].ToString();

                mid.Text = reader["email"].ToString();





            }

        }

        con.Close();
    }
    protected void  Button1_Click(object sender, EventArgs e)
{
        Response.Redirect("AdminBlock.aspx");
}

protected void Button2_Click(object sender, EventArgs e)
{
    con.Open();
    comm = new SqlCommand("delete from reg  where regid=" + id + "", con);
    comm.ExecuteNonQuery();
    con.Close();
    con.Open();
    comm1 = new SqlCommand("delete from login where username='" + un.Text + "' and password='" + ps + "' ", con);
    comm1.ExecuteNonQuery();
    con.Close();
  

  
    Response.Redirect("AdminBlock.aspx");
}
}
