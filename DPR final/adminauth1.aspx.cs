using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminauth1 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from reg where regid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                ut.Text = reader["usertype"].ToString();
                un.Text = reader["username"].ToString();
                mid0.Text = reader["password"].ToString();
                //ci.Text = reader["email"].ToString();
                ph.Text = reader["phone"].ToString();

                mid.Text = reader["email"].ToString();





            }

        }

        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         //Label1.Visible = true;
        //TextBox1.Visible = true;
       // Button1.Visible = true;
       // Button2.Visible = true;
       // RequiredFieldValidator1.Visible = true;
       // RequiredFieldValidator1.Enabled = true;

        //RequiredFieldValidator1.Visible = true;
        //RequiredFieldValidator1.Enabled = true;
        con.Open();
        comm = new SqlCommand("insert into login values('" + ut.Text + "','" + un.Text + "','" + mid0.Text + "')", con);
        comm.ExecuteNonQuery();
        con.Close();

        con.Open();
        comm = new SqlCommand("update reg set status =1 where regid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();

       
        Response.Redirect("Adminauth.aspx");
        


    }
    protected void  Button1_Click(object sender, EventArgs e)
{
    con.Open();
    comm = new SqlCommand("delete reg where regid=" + id + "", con);
    comm.ExecuteNonQuery();
    con.Close();
          Response.Redirect("Adminauth.aspx");
}
}
