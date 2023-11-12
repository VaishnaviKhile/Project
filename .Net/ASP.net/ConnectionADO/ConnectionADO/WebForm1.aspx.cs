using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace ConnectionADO
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private object sqlConnection;

        public object MessageBox { get;  set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Con = "Server = DESKTOP-P4ROD1M\\SQLEXPRESS; Database = ADO; Integrated Security = True;";
            SqlConnection Connection = new SqlConnection(Con);
          
          

            SqlCommand cmd = new SqlCommand("Select * from Student", Connection);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DataTable dt = new DataTable();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                Response.Write(dr);
            }


        }
    }
}