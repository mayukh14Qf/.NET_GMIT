using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUP_Login
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Your User Id Is:  " + Session["u"].ToString() + "<br>");
            Response.Write("Your password Id Is : " + Session["p"].ToString() + "<br>");
        }
    }
}