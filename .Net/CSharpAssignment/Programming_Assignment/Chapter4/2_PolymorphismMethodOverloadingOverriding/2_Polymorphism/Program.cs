using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_Polymorphism
{
    //** 2.Method Overriding
    class Class1
    {
        public virtual void show()
        {
            Console.WriteLine("Super class show method");
        }
    }
    class Class2 : Class1
    {
        public override void show()
        {
            base.show();
            Console.WriteLine("Sub class override show method");
        }
    }

    internal class Program
    {

        //**1.Method Overloading
        public void AddNumbers(int a, int b)
        {
            Console.WriteLine("a + b = {0}", a + b);
        }
        public void AddNumbers(int a, int b, int c)
        {
            Console.WriteLine("a + b + c = {0}", a + b + c);
        }

        static void Main(string[] args)
        {
            //1_Method Overloading
            Program c = new Program();
            c.AddNumbers(1, 2);
            c.AddNumbers(1, 2, 3);



            //2_Method Overriding
            Class2 obj = new Class2();
            obj.show();

            Console.WriteLine("\nPress Enter Key to Exit..");




            Console.ReadLine();

        }
    }
}
