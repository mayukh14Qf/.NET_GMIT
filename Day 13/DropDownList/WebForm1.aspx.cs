using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDownList
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    ListItem l1 = new ListItem("Chennai", "5");
            //    ListItem l2 = new ListItem("Mumbai", "6");
            //    ListItem l3 = new ListItem("Delhi", "7", false);

            //    DropDownList1.Items.Add(l1);
            //    DropDownList1.Items.Add(l2);
            //    DropDownList1.Items.Add(l3);
            //    DropDownList1.Items[4].Selected = true;
            //}

            if (!IsPostBack)
            {
                DropDownList1.SelectedValue = "2";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "-1")
            {
                Response.Write("Select A City");
            }
            else
            {
                
                Response.Write("your Selected text :" + DropDownList1.SelectedItem.Text +"<br>");
                Response.Write("your Selected Value :" + DropDownList1.SelectedItem.Value + "<br>");
                Response.Write("your Selected Index :" + DropDownList1.SelectedIndex + "<br>");
            }
        }
    }
}