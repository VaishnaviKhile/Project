using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//7)	Create an array of object class with size 5. 
//    Add diff datatype of values in the array and print values from the created array.
namespace Q7
{
    internal class Program
    {
        static void Main(string[] args)
        {
            object[] o = new object[5] ;
            o[0] = "Luffy";
            o[1] = 'M';
            o[2] = 3;
            o[3] = 4.5;
            o[4] = "Yo";

            Console.WriteLine("Element Present in Object Array : ");
            foreach(object i in o)
            {
                Console.WriteLine("  "+i);
            }
            Console.Read();
           
        }
    }
}
