using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;


/*
   **Passing Value Type**
   Value Type
Value type variables can be assigned a value directly. They are derived from the class System.ValueType. The value types directly contain data. When you declare an int type, the system allocates memory to store the value.
Value Type variables are stored in the stack.
Examples are int, char, and float, which stores numbers, alphabets, and floating point numbers, respectively.

 */

namespace _8_PassingValueType
{
    internal class Program
    {
        static void ChangeValue(int x)
        {
            x = 300;

            Console.WriteLine(x);
        }


        static void Main(string[] args)
        {
            int i = 100;

            Console.WriteLine("before passing as a ref = "+i);
            ChangeValue(i);

            Console.WriteLine("after passing as a ref = "+i);
            Console.ReadLine();


        }
    }
}
