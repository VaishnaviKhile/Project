using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _12_Reverse
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //12. Take a number as an input and reverse it and print it.
            int n, rev=0;
            Console.Write("Enter no. : ");
            n= int.Parse(Console.ReadLine());
            while(n>0)
            {
                rev= rev*10 + n%10;
                n/= 10;

            }
            Console.WriteLine("Reverse of entered no. is {0}",rev);
            Console.ReadLine();
        }
    }
}
