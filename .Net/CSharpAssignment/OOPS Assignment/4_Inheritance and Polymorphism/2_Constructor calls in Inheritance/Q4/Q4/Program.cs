using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q4
{
    class BaseClass
    {
        public BaseClass()
        {
            Console.WriteLine("BaseClass Default Constructor Called....");
        }
        public BaseClass(int i)
        {
            Console.WriteLine($"{i}");
        }
        public BaseClass(string i)
        {
            Console.WriteLine( i);
        }
    }
    internal class Program : BaseClass
    {
        public Program(): base("str val") 
        {

        }
        static void Main(string[] args)
        {
            Program p = new Program();
            BaseClass c = new BaseClass("Str Some Value");

            Console.ReadKey();
        }
    }
}
