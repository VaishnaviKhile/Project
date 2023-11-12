using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1_Array
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Declare a single-dimensional array of 5 integers.
            int[] array1 = new int[5];
            array1[0] = 10;
            array1[1] = 20;
            array1[2] = 30;
            array1[3] = 40;
            array1[4] = 50;
            // Alternative syntax of array declration
            int[] array3 = { 1, 2, 3, 4, 5, 6 };

            // Declare and set array element values.
            int[] array2 = new int[] { 1, 3, 5, 7, 9 };
            for (int i = 0; i < array2.Length; i++)
            {
                Console.WriteLine(array2[i]);
            }


            //jagged array

            int[][] jarr = new int[3][];
            jarr[0] = new int[2];
            jarr[1] = new int[3];
            jarr[2] = new int[4];
            jarr[0][0] = 10;
            jarr[0][1] = 20;
            jarr[1][0] = 100;
            jarr[1][1] = 200;
            jarr[1][2] = 300;
            jarr[2][0] = 1000;
            jarr[2][1] = 2000;
            jarr[2][2] = 3000;
            jarr[2][3] = 4000;
            foreach (int[] row in jarr)
            {
                foreach (int val in row)
                {
                    Console.Write(" " + val);
                }
                Console.WriteLine(" ");
            }
            int[,] darr = new int[2, 3];
            darr[0, 0] = 10;
            darr[0, 1] = 20;
            darr[0, 2] = 30;
            darr[1, 0] = 100;
            darr[1, 1] = 200;
            darr[1, 2] = 300;
            int fdLength = darr.GetLength(0);
            int sdLength = darr.GetLength(1);
            for (int i = 0; i < darr.GetLength(0); i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    Console.Write(" " + darr[i, j]);
                }
                Console.WriteLine("");
            }


            Console.Read();


        }
    }
}
