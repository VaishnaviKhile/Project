using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _8_SwitchCase
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i = 1;

            if (i == 1)
            {
                Console.WriteLine("THis is one");
            }
            else if (i == 2)
            {
                Console.WriteLine("THis is two");
            }
            else if (i == 3)
            {
                Console.WriteLine("THis is three");
            }
            else
            {
                Console.WriteLine("U entered wrong no.");
            }


            switch (i)
            {
                case 1:
                    Console.WriteLine("THis is one");
                    break;
                case 2:
                    Console.WriteLine("This is two");
                    break;
                case 3:
                    Console.WriteLine("THis is three");
                    break;
                default:
                    Console.WriteLine("U Entered Wrong no.");
                    break;

            }
            Console.ReadLine();


        }
    }
}
