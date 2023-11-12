using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_SQLconnection
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();

            string conn = @"Data Source=LAPTOP-E0PK0G7Q;Initial Catalog=DemoDB;Integrated Security=True";

            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("fill", con);

            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(ds);

            foreach (DataTable thisTable in ds.Tables)
            {
                // For each row, print the values of each column.
                foreach (DataRow row in thisTable.Rows)
                {
                    foreach (DataColumn column in thisTable.Columns)
                    {
                        Console.WriteLine(row[column]);
                    }
                }
            }

            //sql command
            SqlCommand cd = new SqlCommand();


            //sql adapter
            SqlDataAdapter sda = new SqlDataAdapter();

            Console.ReadLine();


        }
    }
}
