using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _9_ForLoopPractice
{
    internal class Program
    {
        static void Main(string[] args)
        {

            for(int i = 1; i <= 10;i++)
            {
                Console.WriteLine(i);
            }
            Console.WriteLine();

            int j = 1;
            for(; ; )
            {
                Console.WriteLine("Infinite");
                if(j >= 5)
                {
                    break;
                }
            }

            int k = 1;
            for(; k<=10;k++ )
            {
                Console.WriteLine(k); 
            }



            Console.ReadLine();

        }
    }
}
