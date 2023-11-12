using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADOFrameworkCrud
{
    public partial class ADOGetAllElements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "Data Source=DESKTOP-P4ROD1M\\SQLEXPRESS; Initial Catalog=ADO; Integrated Security=true";
            SqlConnection sc = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("SP_GetAllElements",sc);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds);
            dt = ds.Tables[0];
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //sc.Open();
            //sc.Close();
        }
    }
}