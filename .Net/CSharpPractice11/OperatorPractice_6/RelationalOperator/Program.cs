using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RelationalOperator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            int j = 1;

            //==
            bool isEqual= i== j;
            Console.WriteLine("Equal operator == "+isEqual);//true

            bool isNotEqual= i!= j;
            Console.WriteLine("Not Equal operator != "+isNotEqual);

            bool isGreaterThan= i > j;//false
            Console.WriteLine("Greater operator == " + isGreaterThan);
            bool isLessThan= i < j;
            Console.WriteLine("less operator == " + isLessThan);

            bool isGreaterThanEq = i >= j;//false
            Console.WriteLine("Greater Eaual operator == " + isGreaterThanEq);
            bool isLessThanEq = i <= j;
            Console.WriteLine("Less Equal operator == " + isLessThanEq);
        }
    }
}
