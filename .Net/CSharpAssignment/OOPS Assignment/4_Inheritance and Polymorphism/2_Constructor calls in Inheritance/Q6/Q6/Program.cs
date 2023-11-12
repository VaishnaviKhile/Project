using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//6)	What is an object class? Write methods provided by it.


namespace Q6
{
    //Supports all classes in the.NET Framework class hierarchy and provides low-level
    //     services to derived classes. This is the ultimate base class of all classes in
    //     the .NET Framework; it is the root of the type hierarchy.
    //Object class is the grouping of objects that can be described in terms 
    //    of the attributes its members have in common
    internal class Program : Object
    { 
        
        static void Main(string[] args)
        {
            int a = 3, b = 6;
            Program p = new Program();
            Program q = new Program();
            Console.WriteLine(a.ToString().GetType());
            Console.WriteLine(b.Equals(a));
            Console.WriteLine(ReferenceEquals(p,q));
            Console.WriteLine(a.GetHashCode());//

            Console.ReadLine();
        }
    }
}
