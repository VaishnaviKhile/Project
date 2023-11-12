using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 1)	Write a class. Name it as “Student” class.  Follow below steps.

 a)	Define below properties
 Public int ID – get access
 Private string name  - set access
 Protected double Marks  -  get and set access
b)	Create an object of the “Student” class in the Program class in Main() method
c)	Access properties using an object and assign value to get,set and get/set properties.
d)	Try to set value to get properties and observer issue.
e)	Try to get – read/print value from set property and observer issue.
f)	Read/Write Marks property.


 */
namespace _5_Properties
{
    class Student
    {
        public int ID;
        private string name;
        protected double Marks;
        public int Id 
        {
            get {
                    return ID;
            }
            set
            {
                ID = value;
            }
        }
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        
        public double Mark
        {
            get
            {
                return Marks;
            }
            set
            {
                Marks = value; 
            
            }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Student s = new Student();
            s.Name = "Vaishnavi";
            s.Mark = 70;
            s.Id = 1;
            Console.WriteLine("******* Personal Detail ********" +
                "\n Id = {2}\n Name = {0}\n Marks = {1}\n ",s.Name,s.Mark,s.Id);

            Console.ReadLine();
        }
    }
}
