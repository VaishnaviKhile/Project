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
            //&&
            int x=1;
            bool res = x > 1 && x < 0;

            Console.WriteLine("x>1 && x<0"+res);
            res = x >= 1 && x < 2;

            Console.WriteLine("x>=1 && x<2" + res);
            res = x >= 1 && x < 0;
            Console.WriteLine("x>=1 && x<0" + res);

            res = x >= 1 & x < 0;
            res = x >= 1 || x < 0;

            //Ternary Operator

            string str = "";
            int z = 1;

            str = z > 1 ? "Z is greater than 1" : "Z is greater less 1";
            Console.WriteLine(str);
            int i = z > 1 ? 1 :0;
            Console.WriteLine("if true 1 return else 0 return "+i);
            Console.ReadLine();
        }
    }
}
