using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3_Factorial
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //3)Take a number as an input value and calculate it’s factorial and print 
            int fact=1;
            Console.WriteLine("Enter no. to calculate factorial");
            int n= Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= n; i++)
            {
                fact= fact*i;
            }
            Console.WriteLine("Factorial of {0} is {1}", n, fact);
            Console.ReadLine();
        }
    }
}
