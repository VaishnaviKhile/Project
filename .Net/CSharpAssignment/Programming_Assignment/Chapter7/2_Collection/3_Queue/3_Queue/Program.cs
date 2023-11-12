using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;


namespace _3_Queue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue qu = new Queue();
            qu.Enqueue("First Value");
            qu.Enqueue(10);
            qu.Enqueue(10.11);

            while (qu.Count != 0)
            {
                Console.WriteLine(qu.Dequeue());
            }

            Console.ReadLine();


        }
    }
}
