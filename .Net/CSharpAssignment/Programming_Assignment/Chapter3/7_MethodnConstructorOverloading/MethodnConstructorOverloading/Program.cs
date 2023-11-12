using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
   **Method_and_Constructors_Overloading**

1)	We can have same method name and same return type with diff parameters in c#. It’s called method overloading. Whenever we call a overloaded method, compiler check it’s parameters and it’s data type and according to this it’ call a method.
2)	It can be done in same class only.
3)	It can be achieved by 3 ways. 1) diff type of parameters 2) diff sequence 3) No of param
4)	 Method overloading is an example of static binding/ early binding / compile time polymorphis.
*/

namespace MethodnConstructorOverloading
{
    internal class Program
    {
        private int Triple(int val)
        {
            return 3 * val;
        }

        private long Triple(long val)
        {
            return 3 * val;
        }

        public void Test()
        {
            int x = 5;
            int y = Triple(x);
            System.Console.WriteLine("x: {0}  y: {1}", x, y);

            long lx = 10;
            long ly = Triple(lx);
            System.Console.WriteLine("lx: {0}   ly: {1}", lx, ly);

        }

        static void Main(string[] args)
        {
            Program t = new Program();
            t.Test();
            Console.ReadLine();

        }
    }
}
