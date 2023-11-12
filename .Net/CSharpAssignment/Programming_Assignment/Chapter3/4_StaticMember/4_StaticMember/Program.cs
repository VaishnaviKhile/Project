using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
    **	Static class

   1) it’s defined with static keyword.
   2)Cannot create an object of static class
   3) Cannot define non static member in static class
   4) Syntax – public static class ClassName{ }
   5) Cannot be inherited
   6) Static classes cannot have instance
    Constructors
   7) It can have a static constructor 
   8) Can not define private or protected,
   10) can be public or internar and default is internal
*/

/* 
   **Static Method and variable


1)	Method/variable defined with static keyword.
2)	Method Syntax – public static void MethodName(){}
3)	Variable syntax – public static int a=10;
4)	Instance class can have static method.
5)	Static method is called with class name
6)	Eg.  ClassName.MethodName()
7)	Cannot access with class object
8)	Cannot access instance members in the static method.
9)	But we can define instance member inside static method.

*/

namespace _4_StaticMember
{
    // Creating static class
    // Using static keyword
    static class Author
    {

        // Static data members of Author
        public static string A_name = "Utopia";
        public static string L_name = "Csharp";
        public static int T_no = 84;

        // Static method of Author
        public static void details()
        {
            Console.WriteLine("The details of Author is:");
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            // Calling static method of Author
            Author.details();

            // Accessing the static data members of Author
            Console.WriteLine("Author name :{0} ", Author.A_name);
            Console.WriteLine("Language :{0} ", Author.L_name);
            Console.WriteLine("Total number of articles :{0} ", Author.T_no);
            Console.ReadLine();

        }
    }
}
