using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_OddEven
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //6)Print 1 to 100 odd and even number
            Console.WriteLine("******* Odd No. from 1 to 100 *******");
            for (int i = 1; i <= 100; i++)
            {
                if (i%2 == 1)
                {
                    Console.Write("{0}  ", i);
                }
            }
            Console.WriteLine();
            Console.WriteLine("------------------------------------------------------------------");
            Console.WriteLine("****** Even No. from 1 to 100 ******* ");
            for (int i = 1; i <= 100; i++)
            {
                if (i % 2 == 0)
                {
                    Console.Write("{0}  ", i);
                }
            }
            Console.ReadLine(); 
        }
    }
}
