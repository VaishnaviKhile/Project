using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_DataTypePractice
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //0 to 255
            byte byteVar = 32;
            Console.WriteLine(byteVar);

            //-128 to 127
            sbyte sbyteVar = -12;
            Console.WriteLine(sbyteVar);

            int i = 131;
            Console.WriteLine(i);

            //float
            float f = 2.42f;
            Console.WriteLine(f);

            double d = 3.13;
            Console.WriteLine(d);

            //bool,char ,decimal
            bool b = true;
            Console.WriteLine(b);

            b = false;
            Console.WriteLine(b);

            char c = 'A';
            Console.WriteLine(c);

            //decimal deci = 23.23;
            //Console.WriteLine(deci);

            string str = "Zoro";
            Console.WriteLine(str);

            string s = " This is String";
            Console.WriteLine(s);


            //Naming Convention
            Console.WriteLine("Camel Notation");
            string name = "Hancock";
            Console.WriteLine(name);

            string myName = "Chopper";
            Console.WriteLine(myName);
            Console.ReadLine();
        }
    }
}
