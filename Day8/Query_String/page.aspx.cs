using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Query_String
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox2.Text = Request.QueryString[0];
            //TextBox3.Text = Request.QueryString[1];
            //TextBox4.Text = Request.QueryString[2];

            TextBox2.Text = Request.QueryString["id"];
            TextBox3.Text = Request.QueryString["name"];
            TextBox4.Text = Request.QueryString["age"];
        }
    }
}