using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5_Fibonacci1to100
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //5)Create Fibonacci series for 1 to 100 number.

            Console.WriteLine("Fibonacci series for 1 to 100");
            int a = 1, b=2,c=a+b;
            Console.Write("{0} {1} ",a,b);
            while (c <= 100)
            {
                Console.WriteLine("{0} ", c);
                a = b;
                b = c;
                c = a + b;
               
               
            }
            Console.ReadLine();
        }
    }
}
