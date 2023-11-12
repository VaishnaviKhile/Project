using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 1)	Write A “Maths” with below some overloaded method
a)	Write below method

    Public int Add(int a, int b) – it should add 2 values and return sum.
    Public int Add(int a, int b, int c) – it should add 3 values and return sum.
    Public int Add(int a, int b, int c , int d) – it should add 4 values and return sum.

Public int Sub(int a, int b) – it should subs 2 values and return subs.
Public int Sub(int a, int b, int c) – it should subs 3 values and return subs.
Public int Sub(int a, int b, int c, int d) – it should subs 4 values and return subs.

Public int Div(int a, int b) – it should divide 2 values and return div.
Public int Div(int a, int b, int c) – it should divide 3 values and return div.
Public int Div(int a, int b, int c, int d) – it should divide 4 values and return div.


Public int Mult(int a, int b) – it should Mult 2 values and return Mult.
     Public int Mult(int a, int b, int c) – it should Mult 3 values and return Mult.
     Public int Mult(int a, int b, int c, int d) – it should Mult 4 values and return Mult.
d)	Create an object of the “Maths” class in Program class in the Main() method.
e)	Call above method using an object and print an output for each method with some meaning full message.


 */

namespace _6_MethodOverloading
{
    class Maths
    {
        public int Add(int a, int b)
        { 
            return a + b; 
        }
        public int Add(int a, int b, int c)
        {
            return a + b + c;
        }

        public int Add(int a, int b, int c, int d)
        { 
            return a + b + c + d;
        }


        public int Sub(int a, int b)
        {
            return a - b;
        }
        public int Sub(int a, int b, int c)
        { return a - b - c; }
        public int Sub(int a, int b, int c, int d)
        { return a - b - c - d;}


        public int Mult(int a, int b)
        {
            return a * b;
        }
        public int Mult(int a, int b, int c)
        {
            return a * b * c;
        }
        public int Mult(int a, int b, int c, int d)
        { return a * b * c * d;}

        public int Div(int a, int b)
        { return a / b; }
        public int Div(int a, int b, int c)
        { return a / b / c; }
        public int Div(int a, int b, int c, int d)
        { return a / b / c / d;}

    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Maths m = new Maths();
            Console.WriteLine("****** Method Overloading *******");
            Console.WriteLine("Addition of 2 no. : {0}", m.Add(4, 5));
            Console.WriteLine("Addition of 3 no. : {0}", m.Add(1, 5, 6));
            Console.WriteLine("Addition of 4 no. : {0}", m.Add(1, 5, 2, 3));
            Console.WriteLine("Subtraction of 2 no. : {0}", m.Sub(6, 5));
            Console.WriteLine("Subtraction of 3 no. : {0}", m.Sub(6, 3,2));
            Console.WriteLine("Subtraction of 4 no. : {0}", m.Sub(9, 2, 3, 1));
            Console.WriteLine("Multiplication of 2 no. : {0}", m.Mult(2, 2));
            Console.WriteLine("Multiplication of 3 no. : {0}", m.Mult(2, 3, 1));
            Console.WriteLine("Multiplication of 4 no. : {0}", m.Mult(4, 2, 3, 2));
            Console.WriteLine("Division of 2 no. : {0}", m.Div(2, 2));
            Console.WriteLine("Division of 3 no. : {0}", m.Div(12, 2, 4));
            Console.WriteLine("Division of 4 no. : {0}", m.Div(24, 2, 3, 4));


            Console.Read();



        }
    }
}
