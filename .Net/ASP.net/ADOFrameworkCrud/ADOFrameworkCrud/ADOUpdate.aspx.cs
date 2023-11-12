using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADOFrameworkCrud
{
    public partial class ADOUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int result = 0;
            string str = "Data Source=DESKTOP-P4ROD1M\\SQLEXPRESS; Initial Catalog=ADO; Integrated Security=true";
            SqlConnection sc = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_Updation", sc);
            cmd.CommandType = CommandType.StoredProcedure;

            int StudentId = Convert.ToInt32(TextBox1.Text);
            cmd.Parameters.AddWithValue("@id", StudentId);

            string StudentName = TextBox2.Text;
            cmd.Parameters.AddWithValue("@name", StudentName);

            sc.Open();
            result = cmd.ExecuteNonQuery();
            sc.Close();

            if (result > 0)
            {
                Response.Write("<script>alert('Updated Successfully....')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error Occured....')</script>");
            }

        }
    }
}