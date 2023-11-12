using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace _2_AccessModifiers
{
   // 1)Public – accessible throughout the project and other project as well.Accessible anywhere in the solution.
   // 2)Private – Accessible only within a class.
   // 3)Protected – Accessible within a class and its inherited types.
   // 4)Protected Internal – Accessible in Current project only.


    internal class Car
    {
        //decler(private) the access modifiers
        private string model = "Gucci";

        static void Main(string[] args)
        {
            Car myObj = new Car();
            Console.WriteLine(myObj.model);
            Console.ReadLine();

        }
    }
}
