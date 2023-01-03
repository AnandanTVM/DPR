using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class supportbelong1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm1,cmd;
    SqlDataAdapter da;
    SqlDataReader reader;
    DataSet ds;
    String strcon,us,ty,ad,ah,ph,tr,la,ho,d1;
    int id,total;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //string s1 = "Admin";
        // Label1.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();

        da = new SqlDataAdapter("select * from belong where bid=" + id + " ", con);
        ds = new DataSet();
        da.Fill(ds, "comm");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        
      
        con.Open();
        


            comm1 = new SqlCommand("select * from belong where bid=" + id + "", con);
            reader = comm1.ExecuteReader();
            if (reader.Read() == true)
            {
                us = reader["username"].ToString();
                ty = reader["typeofbelong"].ToString();
                ad = reader["address"].ToString();
                ah = reader["adhar"].ToString();
                ph = reader["phone"].ToString();
                tr = reader["tree"].ToString();
                la = reader["land"].ToString();
                
                ho = reader["house"].ToString();
                Label2.Text = la;
                Label7.Text = ho;
                Label12.Text = tr;

            }
            if(ty =="Land")
        {
           Label1.Visible = true;
           Label2.Visible = true;
           Label3.Visible = true;
           Label4.Visible = true;
           Label5.Visible = true;
           Label17.Visible = true;
           TextBox1.Visible= true;

           TextBox2.Visible = false;
           Label6.Visible = false;
           Label7.Visible = false;
           Label8.Visible = false;
           Label9.Visible = false;
           Label10.Visible = false;
           Label18.Visible = false;

           TextBox3.Visible = false;
           Label11.Visible = false;
           Label12.Visible = false;
           Label13.Visible = false;
           Label14.Visible = false;
           Label15.Visible = false;
           
          
          
           


        }
        else if (ty == "Land & House")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label17.Visible = true;
            TextBox1.Visible = true;

            TextBox2.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label18.Visible = true;

            TextBox3.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;


        }
        else if (ty == "Land & Tree")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label17.Visible = true;
            TextBox1.Visible = true;

            TextBox2.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label18.Visible = false;

            TextBox3.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
           
        }
        else if (ty == "Land,House & tree")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label17.Visible = true;
            TextBox1.Visible = true;

            TextBox2.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label18.Visible = true;

            TextBox3.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;

       
           

        }

        con.Close();
        
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Label19.Text = ty;
        con.Open();
        d1 = DateTime.Now.ToString("dd/MM/yyyy");
        //Label19.Text = "insert into costestimation values('" + ty + "','" + us + "','" + ad + "'," + ph + ",'" + d1 + "'," + Label12.Text + "," + Label15.Text + "," + Label2.Text + "," + Label5.Text + "," + Label7.Text + "," + Label10.Text + "," + Label20.Text + ",'" + TextBox4.Text + "',0)";

       cmd = new SqlCommand("insert into costestimation values('" + ty + "','" + us + "','" + ad + "'," + ph + ",'" + d1 + "'," + Label12.Text + "," + Label15.Text + "," + Label2.Text + "," + Label5.Text + "," + Label7.Text + "," + Label10.Text + "," + Label20.Text + ",'" + TextBox4.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        con.Open();
        cmd = new SqlCommand("update belong set status=1  where bid=" + id + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("supportbelong.aspx");
       
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (ty == "Land")
        {
            int l1, t1, h1, v1, v2, v3, e1, t2, t3, total;
            l1 = Convert.ToInt16(TextBox1.Text);
            v1 = Convert.ToInt16(Label2.Text);
            e1 = l1 * v1;
            Label5.Text = Convert.ToString(e1);
            int total4 = 4 * e1;
            Label20.Text = Convert.ToString(total4);
            TextBox2.Text = "0";
            TextBox3.Text = "0";
            Label10.Text = "0";
            Label15.Text = "0";
            /*h1 = Convert.ToInt16(TextBox2.Text);
             v3 = Convert.ToInt16(Label17.Text);
            t2 = h1 * v1;
            Label10.Text = Convert.ToString(t2);


            t1 = Convert.ToInt16(TextBox3.Text);
            v2 = Convert.ToInt16(Label12.Text);
            t3 = t1 * v1;
            Label16.Text = Convert.ToString(t3);

            total = e1 + 0 + t3;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);
            */

        }
        else if (ty == "Land & House")
        {
            int l1, t1, h1, v1, v2, v3, e1, t2, t3, total;
            l1 = Convert.ToInt16(TextBox1.Text);
            v1 = Convert.ToInt16(Label2.Text);
            e1 = l1 * v1;
            Label5.Text = Convert.ToString(e1);

            h1 = Convert.ToInt16(TextBox2.Text);
             v3 = Convert.ToInt16(Label7.Text);
            t2 = h1 * v3;
            Label10.Text = Convert.ToString(t2);

            total = e1 + t2;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);

            TextBox3.Text = "0";
            Label15.Text = "0";
            
           /* t1 = Convert.ToInt16(TextBox3.Text);
            v2 = Convert.ToInt16(Label12.Text);
            t3 = t1 * v1;
            Label16.Text = Convert.ToString(t3);
           

            total = e1 + 0 + t3;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);
            */ 


        }
        else if (ty == "Land & Tree")
        {
            int l1, t1, h1, v1, v2, v3, e1, t2, t3, total;
            l1 = Convert.ToInt16(TextBox1.Text);
            v1 = Convert.ToInt16(Label2.Text);
            e1 = l1 * v1;
            Label5.Text = Convert.ToString(e1);



            t1 = Convert.ToInt16(TextBox3.Text);
            v2 = Convert.ToInt16(Label12.Text);
            t3 = t1 * v2;
            Label15.Text = Convert.ToString(t3);

            total = e1 + t3;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);

            TextBox2.Text = "0";
            Label10.Text = "0";
         

            /* h1 = Convert.ToInt16(TextBox2.Text);
             v3 = Convert.ToInt16(Label17.Text);
            t2 = h1 * v1;
            Label10.Text = Convert.ToString(t2);
            total = e1 + 0 + t3;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);
             */ 
        }
        else if (ty == "Land,House & tree")
        {
            int l1, t1, h1, v1, v2, v3, e1, t2, t3, total;
            l1 = Convert.ToInt32(TextBox1.Text);
            v1 = Convert.ToInt32(Label2.Text);
            e1 = l1 * v1;
            Label5.Text = Convert.ToString(e1);

            h1 = Convert.ToInt32(TextBox2.Text);
            v3 = Convert.ToInt32(Label7.Text);
            t2 = h1 * v3;
            Label10.Text = Convert.ToString(t2);


            t1 = Convert.ToInt32(TextBox3.Text);
            v2 = Convert.ToInt32(Label12.Text);
            t3 = t1 * v2;
            Label15.Text = Convert.ToString(t3);

            total = e1 + t2 + t3;
            Label16.Text = Convert.ToString(total);
            int total4 = 4 * total;
            Label20.Text = Convert.ToString(total4);



        }
    }
}