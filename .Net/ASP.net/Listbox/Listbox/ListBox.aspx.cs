using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Listbox
{
    public partial class ListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListItem Rlst = new ListItem();
            foreach (ListItem i in ListBox2.Items)
            {
                if (i.Selected)
                { 
                    ListBox1.Items.Add(i);
                    ListBox2.Items.Remove(i);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (ListItem i in ListBox1.Items)
            {
                if (ListBox1.SelectedItem == i)
                {
                    ListBox2.Items.Add(i);
                    ListBox1.Items.Remove(i);
                }
            }
        }
    }
}