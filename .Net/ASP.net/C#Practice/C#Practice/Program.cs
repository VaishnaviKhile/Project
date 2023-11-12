using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C_Practice
{
    class vaishnavi
    {
         int a, b;
        public vaishnavi() {
            Console.WriteLine("This is constructor calling ");

        }
        public vaishnavi(string a)
        {
            Console.WriteLine("HI {0}", a);
        }
        public int Add(int a, int b)
        {
            return a + b;
        } 
    }
    internal class Program
    {

        static void Main(string[] args)
        {
            vaishnavi va= new vaishnavi();
            vaishnavi v = new vaishnavi("Jungkook");


            Console.WriteLine("Addition is {0} ", va.Add(1, 2));
            Console.ReadLine();
        }
    }
}
