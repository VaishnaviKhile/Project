using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//5)	Write BaseClass with sealed keyword and inherit this in the program class.
//    Compile the program and write an output.

namespace Q5
{
    sealed class BaseClass
    {
        public BaseClass()
        {
            Console.WriteLine("BaseClass Default Constructor Called....");
        }
        
    }
    //sealed class can't inherited into any subclass
    internal class Program //: BaseClass
    {
        static void Main(string[] args)
        {
            Program p = new Program();

            Console.ReadKey();
        }
    }
}
