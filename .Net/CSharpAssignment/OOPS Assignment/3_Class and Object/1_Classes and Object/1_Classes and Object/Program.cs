using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
  1)	Write a class. Name it as “Program” class.  Follow below steps
a)	Define variables (inside a class, not inside a Main () method) – Id-int, name-String, IsActive – bool, salary – double, gender – char(M/F).
b)	Create an object of this class in Main () method.
c)	Access above variables using an object and assign values to them as per the given data type.
d)	Print each variable value with some meaning full message.


2)	Write a class. Name it as “Student” class.  Follow below steps

e)	Define variables (inside a Student class) – StudentId-int, StudentName-String, IsActive – bool, Marks – double, gender – char(M/F).
f)	Create 4 objects of this class in Main ()(Inside program class) method.
g)	Access above variables using each object and assign unique values to each object and it’s variable as per the given data type.
h)	Print each object variable value with some meaning full message

*/

namespace _1_Classes_and_Object
{

    class Student
    {
        public int StudentId;
        public string StudentName;
        public bool IsActive;
        public double Marks;
        public char Gender;
    }
    internal class Program
    {
        public string name;
        public int id;
        public bool IsActive;
        public double salary;
        public char gender;
        static void Main(string[] args)
        {
            Program myProgram = new Program();
            Console.Write("Enter ur name: ");
            myProgram.name = Console.ReadLine();
            Console.Write("Enter ur Id: ");
            myProgram.id = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter Ur Salary: ");
            myProgram.salary = double.Parse(Console.ReadLine());
            Console.Write("Enter Gender [F/M]: ");
            myProgram.gender = char.Parse(Console.ReadLine());

            Console.WriteLine("\n\n ********* Ur Detail *********\n Name = {0}\n Id = {1}\n Salary = {2}\n Gender = {3}", myProgram.name
                , myProgram.id, myProgram.salary, myProgram.gender);



            //2
            Student a = new Student();
            Student b = new Student();
            Student c = new Student();
            Student d = new Student();
            a.StudentId = 1;
            a.StudentName = "Vaishnavi";
            b.StudentId = 2;
            b.StudentName = "Kira";
            c.StudentId = 3;
            c.StudentName = "Yagami Light";
            d.StudentId = 4;
            d.StudentName = "Ayanokoji";

            Console.WriteLine("\n\n******** STUDENTS DETAIL *********\n " +
                "Student 1:\n Id = {0}\n Name = {1}\n" +
                "Student 2:\n Id = {2}\n Name = {3}\n" +
                "Student 3:\n Id = {4}\n Name = {5}\n" +
                "Student 4:\n Id = {6}\n Name = {7}\n", a.StudentId, a.StudentName, b.StudentId, b.StudentName,
                 c.StudentId, c.StudentName, d.StudentId, d.StudentName);

            Console.ReadLine();
        }
    }
}
