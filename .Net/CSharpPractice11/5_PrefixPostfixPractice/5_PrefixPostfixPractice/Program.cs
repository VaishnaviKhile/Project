using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5_PrefixPostfixPractice
{
    internal class Program
    {
        static void Main(string[] args)
        {
                //prefix

                Console.WriteLine("Check prefix value");

                int iPre = 1;

                Console.WriteLine(iPre);

                ++iPre; //++ prefix operator 

                Console.WriteLine(iPre);

                ++iPre; //++ prefix operator 

                Console.WriteLine(iPre);

                //prefix --
                --iPre;
                Console.WriteLine(iPre);

                --iPre;
                Console.WriteLine(iPre);

                //postfix

                Console.WriteLine("Check postfix value");
                int j = 1;
                j++;

                Console.WriteLine(j);
                j++;

                Console.WriteLine(j);
                j++;
                Console.WriteLine(j);
                j++;
                Console.WriteLine(j);

                //diff between prefix and postfix

                int i = 1;
                i++;

                Console.WriteLine(i);

                Console.WriteLine(i++);

                Console.WriteLine(i);

                //Prefix

                int j = 1;

                Console.WriteLine(++j);
                Console.ReadLine();

            




        }
    }
}
