using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*

//Passing Reference Type Variable
Reference Type
It refers to a memory location. Using multiple variables, the reference types can refer to a memory location. If the data in the memory location is changed by one of the variables, the other variable automatically reflects this change in value.
Reference Type variables are stored in the heap.
Example of built-in reference types are −
•	object
•	dynamic
•	string


*/
namespace _9_PassingReferenceTypeVariable
{
    public class Student
    {

        public string StudentName { get; set; }

    }

    internal class Program
    {
        public static void ChangeReferenceType(Student std2)
        {
            std2.StudentName = "Yorichi";
        }

        static void Main(string[] args)
        {
            Student std1 = new Student();

            std1.StudentName = "Doma";

            Console.WriteLine("before passing as a ref = " + std1.StudentName);

            ChangeReferenceType(std1);

            Console.WriteLine("after passing as a ref = " + std1.StudentName);
            Console.ReadLine();

        }
    }
}
