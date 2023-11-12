using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace C_Practice_3Ch
{
    public class firstclass
    {
        public static int z;
        int a;
        public int x = 10;
        //constructor
        public firstclass() {
            Console.WriteLine("THis default constructor");
        }
        // destructor
        ~firstclass()
        {
            Console.WriteLine("Destructor Calling");
        }
        public void ReturnNothing()
        {
            Console.WriteLine("Return Nothing ");
        }
        public int ReturnSomething()
        { return x; }

        public int ReturnInt(int a)
        { return a; }
        //property
        public int A
        {
            get { return a; }
            set { a= value; }
        }
        //method overloading and constructor overloading
        public int Add(int a, int b)
        {
            return a + b;
        }
       public int Add (int a, int b, int c)
        { 
            return a + b + c; 
        }
        public int Add (string a)
        {
            return 10;
        }

        public firstclass(string a)
        {
            Console.WriteLine ("Constructor Overloading");
        }

        //RefOut keyword
        public void RefOut(ref int i, out int f)
        {
            f = 1;
            i = 1;
            Console.WriteLine("Value in method " + i);
            
        }


    }
    internal class Program
    {
        static void Main(string[] args)
        {
            int e = 10,u;
            firstclass.z = 34;
            firstclass a = new firstclass();
            a.RefOut(ref e,out u);
            Console.WriteLine("value in by out keyword "+u);
            firstclass f2 = new firstclass("hi");
            firstclass f = new firstclass();
            f.x = 10;
            f.ReturnNothing();
            int x = f.ReturnSomething();
            Console.WriteLine(x);
            Console.WriteLine("first object over");
           // f.z = 10; cannot pass value through object/cannot access through object
            firstclass d = new firstclass();
            d.x = 49;
            //prop
            d.A = 10;
            Console.WriteLine(d.A);
            Console.WriteLine(d.x);

            Console.ReadLine();
        }
    }
}
