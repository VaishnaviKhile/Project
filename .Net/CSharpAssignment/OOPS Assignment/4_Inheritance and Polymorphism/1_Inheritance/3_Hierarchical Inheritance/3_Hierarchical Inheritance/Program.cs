using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 3)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define a class named “Shape”. Define variables (inside a class) – x-axis - int, y-axis.
b)	Define a method named int Draw (int x, int y) inside “Shape” class.
c)	Define a class named “Circle”.
d)	Define a class named “Rectangular”.
e)	Define a class named “Diamond”.
f)	Inherit Shape class into Circle, Rectangular and Diamond class.
g)	Create an object of Circle class inside program (main method).. 
    Access x-axis and y-axis variables and assign values and call 
    Draw method and pass x-axis and y-axis variables to it.
h)	Create an object of rectangular class inside program (main method).. 
    Access x-axis and y-axis variables and assign values and call 
    Draw method and pass x-axis and y-axis variables to it.
i)	Create an object of Diamond class inside program (main method). 
    Access x-axis and y-axis variables and assign values and call 
    Draw method and pass x-axis and y-axis variables to it.

 */
namespace _3_Hierarchical_Inheritance
{
    internal class Program
    {
        class Shape
        {
            public int x;
            public int y;
            public int Draw(int x, int y)
            {
                return x + y;
            }
        }

        class Circle:Shape
        {

        }

        class Rectangular:Shape
        {

        }

        class Diamond : Shape
        {

        }
        static void Main(string[] args)
        {
            Circle c = new Circle();
            Rectangular r = new Rectangular();
            Diamond d = new Diamond();

            c.x = 5;
            c.y = 5;
            r.x = 4;
            r.y = 2;
            d.x = 3;
            d.y = 1;
            Console.WriteLine("------- Hierarchical Inheritance --------");
            Console.WriteLine("   Draw method called by Circle: {0}",c.Draw(c.x,c.y));
            Console.WriteLine("   Draw method called by Rectangular: {0}", r.Draw(r.x, r.y));
            Console.WriteLine("   Draw method called by Diamond: {0} ", d.Draw(d.x, d.y));

            Console.ReadKey();
        }
    }
}
