using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class csgovexpectedfund1 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from fountflow where fiid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                Label1.Text = reader["fagencyid"].ToString();
                Label2.Text = reader["dateofupdate"].ToString();
                Label3.Text = reader["typeofproject"].ToString();
                Label4.Text = reader["expectedamt"].ToString();
                Label5.Text = reader["remark"].ToString();



            }

        }

        con.Close();

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        comm = new SqlCommand("update fountflow set status=1 where fiid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("csgovexpectedfund.aspx");
    }

   
}