using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace _5_SortedList
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SortedList sl = new SortedList();
            sl.Add(32, "Java");
            sl.Add(22, "C#");
            sl.Add(7, "VB.Net");
            sl.Add(49, "C++");

            Console.WriteLine("The items in the sorted order are...");
            Console.WriteLine("\t Key \t\t Value");
            Console.WriteLine("\t === \t\t =====");
            for (int i = 0; i < sl.Count; i++)
            {
                Console.WriteLine("\t {0} \t\t {1}", sl.GetKey(i), sl.GetByIndex(i));
            }
            Console.ReadLine();



        }
    }
}
