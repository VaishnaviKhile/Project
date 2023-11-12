using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_DataTable
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DataTable table2 = new DataTable("medications");
            //add column name in table
            table2.Columns.Add("id");
            table2.Columns.Add("medication");
            //add rows in table
            table2.Rows.Add(1, "atenolol");
            table2.Rows.Add(2, "amoxicillin");


        }
    }
}
