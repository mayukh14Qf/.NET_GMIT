using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Query_String
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("page.aspx?id="+TextBox1.Text+"&name="+TextBox2.Text+"&age="+TextBox3.Text);

            Response.Redirect("page.aspx?id=" + TextBox1.Text + "&name=" + Server.UrlEncode(TextBox2.Text) + "&age=" + TextBox3.Text);

        }
    }
}