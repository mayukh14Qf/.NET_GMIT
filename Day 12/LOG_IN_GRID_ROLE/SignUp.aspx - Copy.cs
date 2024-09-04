using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace SignUP_Login
{
    public partial class SignUp : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbrole"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con= new SqlConnection(cs);
            string query = "insert into signup1 values(@name,@email,@gender,@userid,@role,@password)";
            SqlCommand cmd= new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", NameText.Text);
            cmd.Parameters.AddWithValue("@email", EmailText.Text);
            cmd.Parameters.AddWithValue("@gender", GenderText.Text);
            cmd.Parameters.AddWithValue("@userid", UserIdText.Text);
            cmd.Parameters.AddWithValue("@role",RoleText.Text);
            cmd.Parameters.AddWithValue("@password", PasswordText.Text);


            con.Open();

            int num= cmd.ExecuteNonQuery();
            if (num > 0)
            {
                Response.Redirect("WebForm1.aspx"+"?signup=10");
            }

            con.Close();



        }
    }
}