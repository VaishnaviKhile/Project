using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 2)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define a class named “StudentMaster”. Define variables (inside a class) –
    Id-int, name-String, IsActive – bool, marks – double, gender – char(M/F).
b)	Define a class named “SubjectMaster”. Define variables (inside a class SubjectMaster) – 
    SubjectId-int, SubjectName-String, IsActive – bool, gender – char(M/F).
c)	Inherit “StudentMaster” into SubjectMaster class.
d)	Inherit “SubjectMaster” into “Program” class.
e)	Create an object of the “Program” class and access both classes’ members.  
    Assign some values and print these variable values.


 */

namespace _2_Multiple_Inheritance
{
    class StudentMaster
    {
       protected int Id;
       protected string name;
       protected bool IsActive;
       protected double marks;
       protected char gender;

    }

    class SubjectMaster:StudentMaster
    {
        protected int SubjectId;
        protected string SubjectName;
        protected bool SIsActive;
        protected char Gender;
    }


    internal class Program: SubjectMaster
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            Console.WriteLine("------ Multilevel Inheritance ------");
            Console.WriteLine("\n Id : {0}\n Name : {1}\n IsActive : {2}\n gender : {3}\n " +
                "Marks : {4}\n SubjectId : {5}\n SubjectName : {6}\n SIsActive : {7}\n Gender : {8}",
                p.Id = 1, p.name = "Vaishnavi", p.IsActive = true, p.gender = 'F', p.marks = 80, 
                p.SubjectId = 54235,p.SubjectName = "SQL", p.SIsActive = true, p.Gender = 'F');
            Console.ReadKey();
        }
    }
}
