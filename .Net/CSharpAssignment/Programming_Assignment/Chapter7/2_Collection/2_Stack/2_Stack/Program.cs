using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace _2_Stack
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Stack st = new Stack();
            st.Push(10);
            st.Push("string value");
            st.Push(10);
            st.Push("string val");

            Console.WriteLine(st.Peek());

            while (st.Count != 0)
            {
                Console.WriteLine(st.Pop());
            }

            Console.ReadLine();

        }
    }
}
