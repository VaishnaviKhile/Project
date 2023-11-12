using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_DebuggingPractice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            Console.WriteLine(i);

            string name = "Tanjiro";
            Console.WriteLine(name);

            int j = 1;
            int res = i + j;
            Console.WriteLine("Addition = "+res);


            string strName = "Luffy";
            if (strName == "Luffy")//true
            {

            }

            if (strName== "Tanjiro")//false
            {
                
            }

            Console.ReadLine();
        }
    }
}
