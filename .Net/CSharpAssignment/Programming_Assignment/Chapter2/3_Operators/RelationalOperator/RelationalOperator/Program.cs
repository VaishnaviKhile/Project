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

            int x = 10;

            //1. check Equality
            if (x == 10)//here we check Equality x==10 .
                        //it check equality either  true and false

            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }



            //2.check IS not Equality
            if (x != 9)//true  //if (x != 10)false  //it return true and execute if 
            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }


            //3.check greater Than
            if (x > 9)//check x is greater than 9
            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }

            //4.check Less Than
            if (x < 20)//check x is Less than 20 
            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }


            //check greter than or equal to
            if (x >= 10)//check x is greter than or equal to 10
            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }



            //5. less than or equal to
            if (x <= 15)//check x is less than or equal to 10
            {
                Console.WriteLine("true x=" + x);

            }
            else
            {
                Console.WriteLine("False x=" + x);
            }



            Console.Read();


        }
    }
}
