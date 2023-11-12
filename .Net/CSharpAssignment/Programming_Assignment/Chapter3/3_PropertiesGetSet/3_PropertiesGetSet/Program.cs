using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3_PropertiesGetSet
{
    //Syntax
    // Access modifier data type varname{get;set;}

    class access
    {
        // String Variable declared as private
        private static string name;
        public void print()
        {
            Console.WriteLine("\nMy name is " + name);
        }

        public string Name //Creating Name property
        {
            get//get method for returning value
            {
                return name;
            }
            set// set method for storing value in name field.
            {
                name = value;
            }
        }
    }



    internal class Program
    {
        static void Main(string[] args)
        {
            access ac = new access();
            Console.Write("Enter your name: ");
            // Accepting value via Name property
            ac.Name = Console.ReadLine();
            ac.print();
            Console.ReadLine();

        }
    }
}
