using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _9_CheckPalindrome
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //9)Check if given number is palindrome or not.
            int n;
            Console.WriteLine("Enter no. to check whether it is palindrome or not");
            n = Convert.ToInt32(Console.ReadLine());
            int temp = n, rev = 0;
            while (temp > 0)
            {
                rev = rev * 10 + (temp % 10);
                temp /= 10;
            }
            if (n == rev)
            {
                Console.WriteLine("{0} is palindrome No.", n);

            }
            else
            {
                Console.WriteLine("{0} is not palindrome no.", n);
            }
            Console.ReadLine();
        }
    }
}
