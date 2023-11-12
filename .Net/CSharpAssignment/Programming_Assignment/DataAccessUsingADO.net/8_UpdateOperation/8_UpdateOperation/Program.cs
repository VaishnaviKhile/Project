using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _8_UpdateOperation
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Id");
            int ID = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter Name");
            string name = Console.ReadLine();

            Console.WriteLine("Enter add");
            string add = Console.ReadLine();

            DataSet ds = new DataSet();
            DataTable dt = new DataTable();

            string conn = @"Data Source=LAPTOP-E0PK0G7Q;Initial Catalog=DemoDB;Integrated Security=True";

            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("updateEmploeePro1", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", ID);
            cmd.Parameters.AddWithValue("@empname", name);
            cmd.Parameters.AddWithValue("@empadd", add);
            cmd.ExecuteNonQuery();





            Console.ReadLine();

        }
    }
}
