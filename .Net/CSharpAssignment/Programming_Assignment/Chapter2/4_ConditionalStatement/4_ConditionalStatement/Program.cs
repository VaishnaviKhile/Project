using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _4_ConditionalStatement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int x = 20, y = 10;

            //1) if
            if (x > y)
            {
                Console.WriteLine(" X is greater than  Y ");
            }

            //2) if-else
            if (x < y)
            {
                Console.WriteLine(" X is greater than  Y ");
            }
            else
            {
                Console.WriteLine(" y is greter than  x ");
            }

            //3) Switch Statement
            int day = 4;
            switch (day)
            {
                case 1:
                    Console.WriteLine("Monday");
                    break;
                case 2:
                    Console.WriteLine("Tuesday");
                    break;
                case 3:
                    Console.WriteLine("Wednesday");
                    break;
                case 4:
                    Console.WriteLine("Thursday");
                    break;
                case 5:
                    Console.WriteLine("Friday");
                    break;
                case 6:
                    Console.WriteLine("Saturday");
                    break;
                case 7:
                    Console.WriteLine("Sunday");
                    break;
            }



            Console.ReadLine();

        }
    }
}
