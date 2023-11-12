using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_CheckPrime
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 2)	Take a number as an input value and print if the given number prime.
            int flag =0;
            Console.WriteLine("Enter no. to check whether it is prime or not");
            int n= Convert.ToInt32(Console.ReadLine());
            for (int i = 2;  i <= n/2; i++)
            {
                  flag = 0;
                if (n%i == 0)
                {  flag = 1;
                    Console.WriteLine("{0} is composite no.",n);
                    break;
                }

            }
            if(flag==0)
            {
                Console.WriteLine("{0} is prime no.",n);
            }

            Console.ReadLine();
        }
    }
}
