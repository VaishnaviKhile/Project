using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//8)	Define 1 Base class and inherit this in the program class. 
//    Define Public Void Draw() method in the Base and program class with same definition. 
//    Write warning message in the assignment file.

namespace Q8
{
    class Base
    {
        public void Draw()
        {
            Console.WriteLine("Warning Message from Super Class.....");
        }
    }
    internal class Program : Base
    {
        public void Draw()
        {
            Console.WriteLine("Warning Message from Subclass Class.....");
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Draw();
            Base q = new Base();
            q.Draw();

            Console.Read();
        }
    }
}
