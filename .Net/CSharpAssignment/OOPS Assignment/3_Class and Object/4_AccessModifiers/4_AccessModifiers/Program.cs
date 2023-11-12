using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
1)	Write a class. Name it as “Student” class.  Follow below steps.
2)	Define below variables
Public int I=1;
Private int j=1;
Protected int k =1;
3)	Create an object of the “Student” class in the Program class in Main() method
4)	Access below variables using an object and print an output. Also observer behavior of the variable access. Notify and analyze if any error occurs.


 */
namespace _4_AccessModifiers
{
    class Student
    {
        public int i = 1;
        private int j = 1;
        protected int k = 1;
        internal int l = 1;
        protected internal int m = 1;
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Student s = new Student();
            s.i = 1;
           // s.j = 1;  //it is inaccessible due to protection level
           // s.k = 2;  // it is only accessible to student's subclass
           s.l = 1; // can only access in current project
           s.m = 1; //accessible current project or from its subclass

            Console.ReadLine();
        }
    }
}
