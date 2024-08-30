using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Log_In_Page
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dblg"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {     
            try
            {
                string qs = Request.QueryString["error"];
                if(qs != null)
                {
                    Label1.Text = "InValid User Name or Password ";
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con= new SqlConnection(cs);
            string query = "select * from login where userid=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserText.Text);
            cmd.Parameters.AddWithValue("@pass", PassWordText.Text);
            con.Open();
            SqlDataReader reader= cmd.ExecuteReader();
            if(reader.HasRows){
                Session["u"] = UserText.Text.ToString();
                Session["p"] = PassWordText.Text.ToString();
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                Response.Redirect("WebForm1.aspx"+"?error="+"100");    
            }
            con.Close();



        }
    }
}