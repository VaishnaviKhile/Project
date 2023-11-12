using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1_Dataset
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Create a DataSet.
            DataSet set = new DataSet("office");
            // Create 1 DataTable instance.
            DataTable table1 = new DataTable("patients");
            //add column name in table
            table1.Columns.Add("name");
            table1.Columns.Add("id");
            //add rows in table
            table1.Rows.Add("sam", 1);
            table1.Rows.Add("mark", 2);

            // Create 2 DataTable instances.
            DataTable table2 = new DataTable("medications");
            //add column name in table
            table2.Columns.Add("id");
            table2.Columns.Add("medication");
            //add rows in table
            table2.Rows.Add(1, "atenolol");
            table2.Rows.Add(2, "amoxicillin");

            //put both tables in it.
            set.Tables.Add(table1);
            set.Tables.Add(table2);

            foreach (DataTable thisTable in set.Tables)
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
            // Visualize DataSet.
            //Console.WriteLine(set.GetXml());
            Console.ReadLine();


        }
    }
}
