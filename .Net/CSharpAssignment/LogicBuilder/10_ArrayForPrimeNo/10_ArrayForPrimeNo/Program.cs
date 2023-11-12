using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_ArrayForPrimeNo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //10. Take 1 to 100 numbers. Declare 1 array.
            //    Add all prime number in the array and print this array.
            int[] prime= new int[25];
            int flag , k=0, sum = 0;
            for(int i = 2; i <= 100 ; i++) 
            {
                flag = 0;
                for (int j = 2; j < i; j++)
                {
                   
                    if (i % j==0)
                    { 
                        flag = 1;
                        break;
                    }
                   
                }
                if (flag == 0)
                {

                    prime[k] = i;
                    k++;

                }
            }
            Console.WriteLine("Prime No. between 1 to 100");
            foreach (int i in prime) {
                Console.WriteLine(i); 
            }
            foreach (int i in prime)
            {
                sum += i;
                
            }
            Console.WriteLine("Sum of prime no. between 1 to 100 = {0} ", sum);
            Console.ReadLine();
        }
    } 
}
