using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace View_State
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["user"]=TextBox1.Text;
            ViewState["pass"]=TextBox2.Text;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["user"] != null && ViewState["pass"] != null)
            {
                TextBox1.Text = ViewState["user"].ToString();
                TextBox2.Text = ViewState["user"].ToString();
            }
        }
    }
}