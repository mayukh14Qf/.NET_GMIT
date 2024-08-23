using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day_6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "HI, THIS IS ASP .NET CLASS";
            Label1.Font.Italic = true;
            Label1.ForeColor = Color.Brown;
            Label1.Font.Underline = false;
            Label1.Font.Overline = true;

            Label2.Visible = true;
            Label2.Text = "HOPE YOU ARE ENJOYING";

            Response.Redirect("WebForm2.aspx");

        }
    }
}