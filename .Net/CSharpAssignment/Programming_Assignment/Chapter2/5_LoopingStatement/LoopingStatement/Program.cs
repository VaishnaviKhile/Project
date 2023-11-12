using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoopingStatement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i;
            //For loop
            for ( i = 0; i < 5; i++)
            {
                Console.WriteLine(i);
            }

            //while loop
            i = 0;
            while (i < 5)
            {
                Console.WriteLine(i);
                i++;

            }

            // Do while loop
            i = 0;
            do
            {
                Console.WriteLine(i);
                i++;
            }
            while (i < 5);


            Console.ReadLine();


        }
    }
}
