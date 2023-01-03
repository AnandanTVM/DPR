using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class supportviability : System.Web.UI.Page
{
    String str, utyp, d1,y;
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        y = Session["x"].ToString();
        // Label2.Text = y.ToString();
        utyp = Session["utyp"].ToString();
        // y = "procoo";
        str = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(str);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        d1 = DateTime.Now.ToString("dd/MM/yyyy");
        cmd = new SqlCommand("insert into viability values('" + d1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        Label1.Text = " Message Send SuccessFully !  ";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        cmd.Dispose();
        con.Close();
    }
}