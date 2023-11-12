using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3_ConstantVarPractice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i = 1;

            Console.WriteLine(i);

            i = 2;
            i = 3;
            i = 4;
            i = 5;
            Console.WriteLine(i);

            // constant variable 

            const int cVar = 1;

            //cVar = 2;

            const float pi = 3.14F;

            const int marks = 80;

            const string strFixName = "This name never be changed..";

            Console.WriteLine(strFixName);

            Console.ReadLine();
        }
    }
}
