using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 1)	Write a class. Name it as “Program” class.  Follow below steps

a)	Define variables (inside a class, not inside a Main () method) – 
    Id-int, name-String, IsActive – bool, salary – double, gender – char(M/F).
b)	Create an object of this class in Main () method.
c)	Access above variables using an object and do assign values to them.
d)	Print each variable value with some meaning full message.
e)	Refer below visualization for this assignment. 
f)	Define all variables for below data types.

 */

namespace _2_Default_Values
{
    internal class Program
    {
        public int Id;
        public string Name;
        public bool  IsActive;
        public double Salary;
        public char Gender;

        //For Default Values
        public int i;
        public long l;
        public double d;
        public float f;
        public char c;
        public string s;
        public bool b;
        public Program p;
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Id = 1;
            p.Name = "Tanjiro";
            p.IsActive = true;
            p.Salary = 200000;
            p.Gender = 'M';
            Console.WriteLine("********* Personal Detail ********\n" +
                " ID = {0}\n Name = {1}\n Salary = {2}\n Gender = {3}",p.Id,
                p.Name,p.Salary,p.Gender);

            Program a = new Program();
            Console.WriteLine("\n\n  #Default values of Datatypes(if nothing show means null)\n  " +
                "int = {0}\n  long = {1}\n  float = {2}\n  double = {3}\n " +
                " char = \"{4}\"\n  string = \"{5}\"\n  bool = {6}\n  Object = \"{7}\"",
                a.i,a.l,a.f,a.d,a.c,a.s,a.b,a.p);


            Console.ReadKey();
        }
    }
}
