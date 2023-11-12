using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


//9)	Define 1 Base class and inherit this in the program class. 
//    Define Public Void Draw() method in the Base and 
//    program class with same definition only use “new” keyword in the program class method.
//    Compile the program and check if any warning show there.


namespace Q9
{
    class Base
    {
        public void Draw()
        {
            Console.WriteLine("Warning Message from Super Class.....");
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
        }
    }
}
