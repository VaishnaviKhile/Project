using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _7_IfElsePractice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            //i = 2;

            if (i == 1)
            {
                Console.WriteLine("i is one in only if condition");
            }

            if (i == 1)
            {
                Console.WriteLine("i is one");

            }
            else
            {
                Console.WriteLine("i is not one");
            }

            string name = "Luffy";
            if (name != "Luffy")
            {
                Console.WriteLine("U R not Op Stan");
            }
            else
            {
                Console.WriteLine("U R Op Stan");
            }


            //nested if
            bool isTrue = true;
            if(isTrue)
            {
                if( name =="Luffy")
                { Console.WriteLine("Yo");
                }
            }

            Console.ReadLine();

        }
    }
}
