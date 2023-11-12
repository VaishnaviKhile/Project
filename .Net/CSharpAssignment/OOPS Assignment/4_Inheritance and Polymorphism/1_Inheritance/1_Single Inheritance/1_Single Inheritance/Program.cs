using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 1)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define a class named “BaseClass”. Define variables (inside a class) – Id-int, name-String,
    IsActive – bool, salary – double, gender – char(M/F).
b)	Inherit “BaseClass” into Program class.
c)	Create an object of the Program class and access id,name,isactiveand salry, gender variables. 
    Assign some values and print these variable values.

 */

namespace _1_Single_Inheritance
{
    class BaseClass
    {
        protected int Id;
        protected string Name;
        protected bool IsActive;
        protected double Salary;
        protected char Gender;
    }
    internal class Program : BaseClass
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            Console.WriteLine("-------- Single Inheritance ---------");
            Console.WriteLine("\n Id : {0}\n Name : {1}\n Isactive : {2}\n Salary : {3}\n" +
                " Gender : {4}",p.Id = 1,p.Name= "johan", p.IsActive = true, p.Salary= 200000
                ,p.Gender= 'M');

            Console.ReadLine();
        }
    }
}
