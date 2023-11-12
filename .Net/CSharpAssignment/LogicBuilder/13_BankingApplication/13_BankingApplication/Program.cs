using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _13_BankingApplication
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             13)	  Project – Create Baking transaction management system in c# console application. Design a product as per requirement given below.

               1)	Add 4 options on the console screen
                    1)	Create account
                    2)	Deposit amount
                    3)	Withdraw amount.
                    4)	Check balance.

               2)	Create input design for each option.
                    1)	For option 1 – Take user name, account as an input parameter.
                    2)	For Option 2 – Amount, account number.
                    3)	For option 3 - amount and account number
                    4)	For option 4 – account number.

               3)	Keep Do you want to continue options after each transaction.


             */
            int a;
            string name, account, amount , c="y";
            Console.WriteLine("************ Banking Application **************\n\n");
            Console.WriteLine("  Press no. for below operation\n\n  1)\tCreate account\r\n" +
                "  2)\tDeposit amount\r\n  3)\tWithdraw amount.\r\n  4)\tCheck balance\n");
            Console.Write("Enter Operation No. : ");
            a = int.Parse(Console.ReadLine());

            while (c=="y")
            {

                switch (a)
                {
                    case 1:
                        Console.Write("\nEnter Your Name: ");
                        name = Console.ReadLine();
                        Console.WriteLine();
                        break;

                    case 2:
                        Console.Write("\nEnter Deposit amount: ");
                        amount = Console.ReadLine();
                        Console.Write("\nEnter Account No.: ");
                        account = Console.ReadLine();
                        break;

                    case 3:
                        Console.Write("\nEnter Withdraw amount: ");
                        amount = Console.ReadLine();
                        Console.Write("\nEnter Account No.: ");
                        account = Console.ReadLine();
                        break;

                    case 4:
                        Console.Write("\nTo Check Account\nEnter Account No.: ");
                        account = Console.ReadLine();
                        break;

                    default:
                        break;
                }
                c = "n";
                Console.WriteLine("If U Wanna Continue press y");
                c = Console.ReadLine();

            }

            Console.ReadLine();
        }
    }
}
