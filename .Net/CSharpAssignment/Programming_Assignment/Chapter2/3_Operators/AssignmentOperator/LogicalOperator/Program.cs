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
            //Assigment oprator
            // = ,+= ,-= ,*= ,/= ,%=
            int x = 10; //here we define x with the value 10.

            x += 3; //here we add value and assign it to variable. 
            Console.WriteLine("Additon  assingment oprator =" + x);
            x -= 3; //13=10
            Console.WriteLine("substractive assignment =" + x);
            x *= 3;//10*3=30
            Console.WriteLine("Multipicative Assignment =" + x);
            x /= 3; //30/3=10
            Console.WriteLine("Division Assignnment =" + x);
            Console.ReadLine();

        }
    }
}
