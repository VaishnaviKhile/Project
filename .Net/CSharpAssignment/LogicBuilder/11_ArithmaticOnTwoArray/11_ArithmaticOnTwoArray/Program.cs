using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_ArithmaticOnTwoArray
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //11. Take 2 arrays. Do the following operation on this and
            //    store them in 3rd array.
            //     Operation – add, multi, subs, divide +, -, *, /.

            int[] a = { 1, 2, 3, 4, 5, 6, 7, 8 };
            int[] b = { 7, 2, 4, 6, 5, 2, 6, 9 };
            int[] c = new int[8];
            Console.Write("Array element of 1st array : ");
            foreach (int i in a)
            {
                Console.Write("{0} ",i);
            }
            Console.Write("\nArray element of 2nd array : ");
            foreach (int i in b)
            {
                Console.Write("{0} ", i);
            }


           


            //addition of 2 array
            Console.Write("\nAddition of two array : ");
            for (int i = 0; i < a.Length; i++)
            {
                c[i] = a[i] + b[i];
            }
            foreach (int i in c)
            {
                Console.Write("{0} ", i);
            }


            //multiplication of 2 array
            Console.Write("\nMultiplication of two array : ");
            for (int i = 0; i < a.Length; i++)
            {
                c[i] = a[i] * b[i];
            }
            foreach (int i in c)
            {
                Console.Write("{0} ", i);
            }


            //subtraction of 2 array
            Console.Write("\nSubtraction of two array : ");
            for (int i = 0; i < a.Length; i++)
            {
                c[i] = a[i] - b[i];
            }
            foreach (int i in c)
            {
                Console.Write("{0} ", i);
            }


            //division of 2 array
            Console.Write("\nDivision of two array : ");
            for (int i = 0; i < a.Length; i++)
            {
                c[i] = a[i] / b[i];
            }
            foreach (int i in c)
            {
                Console.Write("{0} ", i);
            }


            Console.ReadLine();
        }
    }
}
