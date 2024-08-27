using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Is_Post_Back
{
    public partial class Web_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Write("We are Using IsPostBack");
                AddListBoxItems();
            }
        }

        void AddListBoxItems()
        {
            ListBox1.Items.Add("Item1");
            ListBox1.Items.Add("Item2");
            ListBox1.Items.Add("Item3");
            ListBox1.Items.Add("Item4");
        }
    }
}