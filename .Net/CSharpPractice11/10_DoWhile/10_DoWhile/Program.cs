using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_DoWhile
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int i = 1;
            //do while loop
            do
            {
                Console.WriteLine(i);
                i++;
            } while (i <= 5);

            //while loop
            int j = 1;
            while (j <= 10)
            {
                Console.WriteLine(j);
                j++;    
            }
            Console.ReadLine();
        }
    }
}
