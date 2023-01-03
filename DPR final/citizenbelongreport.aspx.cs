using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class citizenbelongreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm1, cmd;
    SqlDataAdapter da;
    SqlDataReader reader;
    DataSet ds;
    String strcon;
    int status;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
         comm1 = new SqlCommand("select * from belong where username='" + uname + "'", con);
            reader = comm1.ExecuteReader();
            if (reader.Read() == true)
            {
                Label2.Text= reader["username"].ToString();
               Label1.Text= reader["typeofbelong"].ToString();
               Label3.Text= reader["address"].ToString();
              Label9.Text = reader["adhar"].ToString();
               Label4.Text = reader["phone"].ToString();
                Label6.Text = reader["tree"].ToString();
                Label5.Text = reader["land"].ToString();
                Label7.Text= reader["house"].ToString();
                string st = reader["status"].ToString();
                if ( st =="0")
                {
                    Label8.Text="Pending";
                }
                else if ( st =="1")
                {
                    Label10.Text="Cost Estimated & Approvel Pending";
                }
                else if (st == "2")
                {
                    Label11.Text = "Found Approved";
                }
              }
            else
            {
                Response.Redirect("citizennotfound.aspx");
            }
                
    }
    }