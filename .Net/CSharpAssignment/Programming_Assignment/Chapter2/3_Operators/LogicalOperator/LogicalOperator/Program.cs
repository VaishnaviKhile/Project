using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicalOperator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int x = 5;
            int y = 3;
            // Logical Operator

            //1.&& (Logical and)
            if (x > 3 && y < 10)
            {
                Console.WriteLine("Condition true X is Greater than 3 and y is less than 10");
            }
            else
            {
                Console.WriteLine("Condition False");
            }

            // || (Logical or)
            if (x > 3 || x < 4)
            {
                Console.WriteLine("Condition true ");
            }
            else
            {
                Console.WriteLine("Condition False");
            }

            // ! (Logical not)
            if (!(x > 3 && x < 10))
            {
                Console.WriteLine("Condition true ");
            }
            else
            {
                Console.WriteLine("Condition False");
            }



            Console.Read();



        }
    }
}
