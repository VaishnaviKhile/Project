using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleInput
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Plz One Enter Enter");
            string str1= Console.ReadLine();
            Console.WriteLine("Plz Second Enter Enter");
            string str2 = Console.ReadLine();


            int i = Convert.ToInt32(str1);
            int j = Convert.ToInt32(str2);

            int res = i+j;
            Console.WriteLine("Addition = "+res);


            Console.WriteLine("Enter name");
            string str = Console.ReadLine();

            Console.WriteLine("Enter no: ");
            int z = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter double value");
            double d = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Boolean Value");
            string s= Console.ReadLine();
            bool b = Convert.ToBoolean(s);
            Console.ReadLine();
        }
    }
}
