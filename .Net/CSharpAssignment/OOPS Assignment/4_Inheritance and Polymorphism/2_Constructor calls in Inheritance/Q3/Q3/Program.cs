using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//3)  Write and program where define BaseClass and inherit this in the program class. 
//    Define default parameterized constructor in the BaseClass. In the Program class 
//    use “base” keyword to call base class default and parameterized constructor. 
//    Create an object of the program class in main method and write execution and output.

namespace Q3
{
    class BaseClass
    {
        public BaseClass() 
        {
            Console.WriteLine("BaseClass Default Constructor Called....");
        }
        public BaseClass(string name)
        {
           Console.WriteLine("Hi {0}, BaseClass parameterized Constructor Called",name);
        }
    }
    internal class Program: BaseClass
    {
        public Program(): base()
        {
            Console.WriteLine("Program Class Default Constructor Called....");
        }

        public Program(string name): base("Johan") 
        {
            Console.WriteLine("Program Class Parameterized Constructor Called....");
        }

        static void Main(string[] args)
        {
            Program p = new Program();
            Program q = new Program("Vaishnavi");
           // BaseClass b = new BaseClass();


            Console.ReadKey();
        }
    }
}
