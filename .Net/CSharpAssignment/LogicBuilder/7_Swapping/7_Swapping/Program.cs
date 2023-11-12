using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _7_Swapping
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //7)Swap 2 numbers in c# using 3rd variable.
            int a,b,c;
            Console.WriteLine("Enter two no. for swapping operation");
            Console.Write("a = "); 
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write("b = ");
            b = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Before Swapping \n a = {0}\n b = {1}",a,b);
            c = b;
            b = a;
            a = c;
            Console.WriteLine("After Swapping \n a = {0}\n b = {1}", a, b);
            Console.ReadLine();


        }
    }
}
