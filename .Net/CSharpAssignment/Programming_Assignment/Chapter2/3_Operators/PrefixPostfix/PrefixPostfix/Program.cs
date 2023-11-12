using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrefixPostfix
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num = 10; int num2;
            num2 = ++num; //it firstly increment val by one then assing num val to num2
            Console.WriteLine(num);

            num2 = num++;//here firsly assign num val to num2 then increment 
            Console.WriteLine(num);

            Console.ReadLine();

        }
    }
}
