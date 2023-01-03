using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class suppotdoubts1 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from doubts where did=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {

                Label1.Text = reader["sendingdate"].ToString();
                Label2.Text = reader["username"].ToString();
                Label3.Text = reader["doubts"].ToString();
                Label4.Text = reader["remark"].ToString();
               


            }

        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string d1 = DateTime.Now.ToString("dd/MM/yyyy");

        con.Open();
        comm = new SqlCommand("update doubts set status=1,replay='" + TextBox1.Text + "',replaydate='" + d1 + "'  where did=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("suppotdoubts.aspx");
    }
}