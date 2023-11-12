using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 1)	Write a class. Name it as “Program” class.  Follow below steps.
a)	Define default constructor (without parameter) and inside it prints some message.
b)	Create an object of the “Program” class and debug the program and write observation.
2)	Write a class. Name it as “Program” class.  Follow below steps.
c)	Define default constructor (without parameter) and inside it prints some message.
d)	Define Parameterized constructor. Provide string parameter as a name and inside it prints name.
e)	Define Parameterized constructor. Provide string parameter as a name, Id parameter as int and 
    inside it prints Name and Id.
f)	Create an object of the “Program” class for default object, parameterized object with 
    string parameter and parameterized object with 2 param – string and int. and 
    debug the program and write observation.


 */

namespace _7_Constructor_Overloading
{
    internal class Program
    {
        public Program()
        {
            Console.WriteLine(" Default Constructor called\n");
        }
        public Program(string name)
        { 
            Console.WriteLine(" Name : {0}",name);
        }
        public Program(string name,int id)
        {
            Console.WriteLine("\n ID : {1}\n Name : {0}", name,id);
        }
        static void Main(string[] args)
        {
            Program p = new Program();  
            Program q = new Program("Yagami Light");
            Program r = new Program("Ayanokoji", 1);

            Console.ReadKey();  

        }
    }
}
