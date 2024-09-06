using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Data;
namespace SignUP_Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbrole"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                string qs = Request.QueryString["error"];
                string qs1 = Request.QueryString["signup"];
                if (qs != null)
                {
                    Label1.Text = "Invalid User Name or Password";
                    Label1.ForeColor = Color.Red;
                    Label1.Font.Bold = true; 
                    Label1.Font.Size = FontUnit.Larger; 
                    Label1.BackColor = Color.LightYellow; 
                    Label1.BorderStyle = BorderStyle.Solid; 
                    Label1.BorderColor = Color.Red; 
                    Label1.BorderWidth = Unit.Pixel(2); 
                    Label1.CssClass = "error-message"; 
                }

                if (qs1 != null)
                {
                    Label1.Text = "You have successfully signed up!!";
                    Label1.ForeColor = Color.Green; 
                    Label1.Font.Bold = true; 
                    Label1.Font.Size = FontUnit.Larger; 
                    Label1.BackColor = Color.LightCyan; 
                    Label1.BorderStyle = BorderStyle.Solid; 
                    Label1.BorderColor = Color.Green; 
                    Label1.BorderWidth = Unit.Pixel(2); 
                    Label1.CssClass = "success-message"; 
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from signup1 where userid=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserText.Text);
            cmd.Parameters.AddWithValue("@pass", PassWordText.Text);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read(); 
                string userRole = reader["role"].ToString();

                Session["u"] = UserText.Text.ToString();
                Session["p"] = PassWordText.Text.ToString();


                // New Sessions for Holding Values
                Session["role"] = userRole;
                Session["id"]=reader["id"].ToString();
                Session["email"]=reader["email"].ToString();
                Session["name"]=reader["name"].ToString();
                Session["gender"]=reader["gender"].ToString();


                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                Response.Redirect("WebForm1.aspx" + "?error=" + "100");
            }
            con.Close();
        }
    }
}