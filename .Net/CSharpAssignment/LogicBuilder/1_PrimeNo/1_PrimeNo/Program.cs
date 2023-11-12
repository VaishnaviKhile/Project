using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;

namespace _1_PrimeNo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //1)	Print 1 to 100 Prime number(PM: A number which is divisible 1 or itself).
            Console.WriteLine("Prime No. between 1 to 100");
            int flag = 0;
            for(int n=2; n<=100;n++)
            {
                flag = 0;
                for (int i = 2; i <= n / 2; i++)
                {
                    if (n % i == 0)
                    {
                        flag = 1;
                        break;
                    }
                }
                if(flag==0)
                {
                    Console.WriteLine(n);
                }

            }

            Console.ReadLine();

        }
    }
}
