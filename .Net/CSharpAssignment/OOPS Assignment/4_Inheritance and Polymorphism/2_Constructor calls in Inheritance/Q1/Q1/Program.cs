using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 1)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define class Named BaseClass.
b)	Define default constructor in the BaseClass and print some message inside constructor.
c)	Inherit BaseClass into Program class
d)	Define default constructor in Program class and print some message inside constructor.
e)	Create an object of Program class in the main method
f)	Execute program and observe an ouput and debug the program and write execution.
g)	Create an object of the BaseClass and observe an ouput and debug the program and write execution.

 */
namespace Q1
{
    class BaseClass
    {
        public BaseClass()
        {
            Console.WriteLine("BaseClass Constructor called.....");

        }
    }
    internal class Program : BaseClass
    {
        public Program()
        {
            Console.WriteLine("Program class Constructor Called....");
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            BaseClass b  = new BaseClass();
            BaseClass c = new Program();

            Console.ReadKey();
        }
    }
}
