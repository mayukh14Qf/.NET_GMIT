using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GridView_Database
{
    public partial class GridView1 : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["grid"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con= new SqlConnection(cs);
            string query = "select * from student";
            SqlDataAdapter sql= new SqlDataAdapter(query, con);
            DataTable table = new DataTable();
            sql.Fill(table);

            GridView.DataSource= table;
            GridView.DataBind();    


        }
    }
} 