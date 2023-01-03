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

public partial class financinterestrate : System.Web.UI.Page
{
    String str, r, un, y, utyp, d1;
    SqlCommand cmd;
    SqlConnection con;
    int comid;
    String d;
    SqlDataReader rdr;
    ArrayList vg = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        y = Session["x"].ToString();
        utyp = Session["utyp"].ToString();
        str = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(str);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        d1 = DateTime.Now.ToString("dd/MM/yyyy");
        cmd = new SqlCommand("insert into interest values('" + y + "','" + d1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        Label1.Text = " Send SuccessFully !  ";
        TextBox1.Text = "";
        TextBox2.Text = "";
        cmd.Dispose();
        con.Close();
    }
   
}