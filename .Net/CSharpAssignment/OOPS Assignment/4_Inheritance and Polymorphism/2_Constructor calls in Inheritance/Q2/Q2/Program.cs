using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 2)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define class Named BaseClass.
b)	Define default constructor in the BaseClass and print some message inside constructor.
c)	Define parameterized (int param) constructor in the BaseClass and 
    print some message with parameter value inside constructor.
d)	Inherit BaseClass into Program class
e)	Define default constructor in Program class and print some message inside constructor.
f)	Define parameterized (int param) constructor in the Program and print some 
    message with parameter value inside constructor.
g)	Create an object of Program class in the main method.
h)	Create an object of Program class in the main method and pass int parameter.
i)	Execute program and observe an ouput and debug the program and write execution.
j)	Create an object of the BaseClass and observe an ouput and debug the program and write execution.
k)	Create an object of the BaseClass and pass int parameter and observe an ouput and 
    debug the program and write execution.

 */
namespace Q2
{
    class BaseClass
    {
        public BaseClass() 
        {
            Console.WriteLine("BaseClass DeFauLt Constructor Called.....");
        }
        public BaseClass(int m)
        {
            Console.WriteLine("BaseClass Parameter Constructor Called With Parameter Value: {0}", m);
        }
    }
    internal class Program : BaseClass
    {
        public Program()
        {
            Console.WriteLine("Program Class DeFauLt Constructor Called.....");
        }
        public Program(int m)
        {
            Console.WriteLine("Program Class Parameterized Constructor Called With Parameter Value: {0}", m);
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            Program q = new Program(3);
            BaseClass b = new BaseClass();  
            BaseClass c = new BaseClass(5);

            Console.ReadLine();
        }
    }
}
