using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 1)	Write a class. Name it as “Program” class.  Follow below steps.

a)	Write below methods
Public Void Print() – it will print some message.
Public int Add(int a, int b) – it should add 2 values and return sum.
Public int Sub(int a, int b) – it should subs 2 values and return subs.
Public int Div(int a, int b) – it should divide 2 values and return div.
Public int Mult(int a, int b) – it should Mult 2 values and return Mult.
b)	Create an object of the Program class in the Main() method.
c)	Call above method using an object and print an output for each method with some meaning full message.

 */
namespace _3_Method
{
    internal class Program
    {
       // public int a, b;
        public void Print()
        {
            Console.WriteLine("Arithmatic Operation");
           

        }

        public int Add(int a, int b)
        { 
            return a + b;
        }

        public int Sub(int a, int b)
        { return a - b; }

        public int Div(int a, int b)
        { return a / b; }

        public int Mult(int a, int b)
        { return a * b; }


        static void Main(string[] args)
        {
            
            Program p = new Program();  
            p.Print();
            Console.WriteLine("Addition = {0}", p.Add(2, 3));
           
            Console.WriteLine("Subtraction = {0}", p.Sub(7, 5));
            
            Console.WriteLine("Multiplication = {0}", p.Mult(4, 5));
            
            Console.WriteLine("Division = {0}", p.Div(10, 5));
            


            Console.ReadLine();

        }
    }
}
